package com.alibaba.sdk.android.oss.internal;

import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.utils.BinaryUtil;
import com.alibaba.sdk.android.oss.model.CompleteMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.CompleteMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.MultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.PartETag;
import com.alibaba.sdk.android.oss.model.UploadPartRequest;
import com.alibaba.sdk.android.oss.model.UploadPartResult;
import com.alibaba.sdk.android.oss.network.ExecutionContext;
import com.hlzn.socketclient.p163b.C2146a;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class BaseMultipartUploadTask<Request extends MultipartUploadRequest, Result extends CompleteMultipartUploadResult> implements Callable<Result> {
    protected final int CPU_SIZE = Runtime.getRuntime().availableProcessors() * 2;
    protected final int KEEP_ALIVE_TIME;
    protected final int MAX_CORE_POOL_SIZE;
    protected final int MAX_IMUM_POOL_SIZE;
    protected final int MAX_QUEUE_SIZE;
    protected InternalRequestOperation mApiOperation;
    protected OSSCompletedCallback<Request, Result> mCompletedCallback;
    protected ExecutionContext mContext;
    protected long mFileLength;
    protected boolean mIsCancel;
    protected Object mLock;
    protected List<PartETag> mPartETags;
    protected int mPartExceptionCount;
    protected ThreadPoolExecutor mPoolExecutor;
    protected OSSProgressCallback<Request> mProgressCallback;
    protected Request mRequest;
    protected Exception mUploadException;
    protected File mUploadFile;
    protected String mUploadId;
    protected long mUploadedLength;

    public BaseMultipartUploadTask(InternalRequestOperation internalRequestOperation, Request request, OSSCompletedCallback<Request, Result> oSSCompletedCallback, ExecutionContext executionContext) {
        this.MAX_CORE_POOL_SIZE = this.CPU_SIZE < 5 ? this.CPU_SIZE : 5;
        this.MAX_IMUM_POOL_SIZE = this.CPU_SIZE;
        this.KEEP_ALIVE_TIME = 3000;
        this.MAX_QUEUE_SIZE = C2146a.f8101t;
        this.mPoolExecutor = new ThreadPoolExecutor(this.MAX_CORE_POOL_SIZE, this.MAX_IMUM_POOL_SIZE, 3000L, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(C2146a.f8101t), new ThreadFactory() { // from class: com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "oss-android-multipart-thread");
            }
        });
        this.mPartETags = new ArrayList();
        this.mLock = new Object();
        this.mUploadedLength = 0L;
        this.mApiOperation = internalRequestOperation;
        this.mRequest = request;
        this.mProgressCallback = request.getProgressCallback();
        this.mCompletedCallback = oSSCompletedCallback;
        this.mContext = executionContext;
    }

    protected abstract void abortThisUpload();

    @Override // java.util.concurrent.Callable
    public Result call() throws Exception {
        try {
            initMultipartUploadId();
            Result doMultipartUpload = doMultipartUpload();
            if (this.mCompletedCallback != null) {
                this.mCompletedCallback.onSuccess(this.mRequest, doMultipartUpload);
            }
            return doMultipartUpload;
        } catch (ServiceException e) {
            if (this.mCompletedCallback != null) {
                this.mCompletedCallback.onFailure(this.mRequest, null, e);
            }
            throw e;
        } catch (Exception e2) {
            ClientException clientException = new ClientException(e2.toString(), e2);
            if (this.mCompletedCallback == null) {
                throw clientException;
            }
            this.mCompletedCallback.onFailure(this.mRequest, clientException, null);
            throw clientException;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkCancel() throws ClientException {
        if (this.mContext.getCancellationHandler().isCancelled()) {
            IOException iOException = new IOException("multipart cancel");
            throw new ClientException(iOException.getMessage(), iOException);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkException() throws IOException, ServiceException, ClientException {
        if (this.mUploadException != null) {
            releasePool();
            if (this.mUploadException instanceof IOException) {
                throw ((IOException) this.mUploadException);
            }
            if (this.mUploadException instanceof ServiceException) {
                throw ((ServiceException) this.mUploadException);
            }
            if (!(this.mUploadException instanceof ClientException)) {
                throw new ClientException(this.mUploadException.getMessage(), this.mUploadException);
            }
            throw ((ClientException) this.mUploadException);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkPartSize(int[] iArr) {
        long partSize = this.mRequest.getPartSize();
        int i = (int) (this.mFileLength / partSize);
        if (this.mFileLength % partSize != 0) {
            i++;
        }
        if (i > 5000) {
            partSize = this.mFileLength / 5000;
        }
        iArr[0] = (int) partSize;
        iArr[1] = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean checkWaitCondition(int i) {
        return this.mPartETags.size() != i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CompleteMultipartUploadResult completeMultipartUploadResult() throws ClientException, ServiceException {
        CompleteMultipartUploadResult completeMultipartUploadResult = null;
        if (this.mPartETags.size() > 0) {
            Collections.sort(this.mPartETags, new Comparator<PartETag>() { // from class: com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask.2
                @Override // java.util.Comparator
                public int compare(PartETag partETag, PartETag partETag2) {
                    if (partETag.getPartNumber() < partETag2.getPartNumber()) {
                        return -1;
                    }
                    return partETag.getPartNumber() > partETag2.getPartNumber() ? 1 : 0;
                }
            });
            CompleteMultipartUploadRequest completeMultipartUploadRequest = new CompleteMultipartUploadRequest(this.mRequest.getBucketName(), this.mRequest.getObjectKey(), this.mUploadId, this.mPartETags);
            completeMultipartUploadRequest.setMetadata(this.mRequest.getMetadata());
            if (this.mRequest.getCallbackParam() != null) {
                completeMultipartUploadRequest.setCallbackParam(this.mRequest.getCallbackParam());
            }
            if (this.mRequest.getCallbackVars() != null) {
                completeMultipartUploadRequest.setCallbackVars(this.mRequest.getCallbackVars());
            }
            completeMultipartUploadResult = this.mApiOperation.completeMultipartUpload(completeMultipartUploadRequest, null).getResult();
        }
        this.mUploadedLength = 0L;
        return completeMultipartUploadResult;
    }

    protected abstract Result doMultipartUpload() throws IOException, ServiceException, ClientException, InterruptedException;

    protected abstract void initMultipartUploadId() throws IOException, ClientException, ServiceException;

    protected void notifyMultipartThread() {
        this.mLock.notify();
        this.mPartExceptionCount = 0;
    }

    protected void onProgressCallback(Request request, long j, long j2) {
        if (this.mProgressCallback != null) {
            this.mProgressCallback.onProgress(request, j, j2);
        }
    }

    protected void preUploadPart(int i, int i2, int i3) throws Exception {
    }

    protected abstract void processException(Exception exc);

    /* JADX INFO: Access modifiers changed from: protected */
    public void releasePool() {
        if (this.mPoolExecutor != null) {
            this.mPoolExecutor.getQueue().clear();
            this.mPoolExecutor.shutdown();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void uploadPart(int i, int i2, int i3) {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2 = null;
        try {
            try {
                checkCancel();
                preUploadPart(i, i2, i3);
                randomAccessFile = new RandomAccessFile(this.mUploadFile, "r");
                try {
                    UploadPartRequest uploadPartRequest = new UploadPartRequest(this.mRequest.getBucketName(), this.mRequest.getObjectKey(), this.mUploadId, i + 1);
                    long partSize = i * this.mRequest.getPartSize();
                    byte[] bArr = new byte[i2];
                    randomAccessFile.seek(partSize);
                    randomAccessFile.readFully(bArr, 0, i2);
                    uploadPartRequest.setPartContent(bArr);
                    uploadPartRequest.setMd5Digest(BinaryUtil.calculateBase64Md5(bArr));
                    UploadPartResult result = this.mApiOperation.uploadPart(uploadPartRequest, null).getResult();
                    synchronized (this.mLock) {
                        this.mPartETags.add(new PartETag(uploadPartRequest.getPartNumber(), result.getETag()));
                        this.mUploadedLength += i2;
                        if (this.mPartETags.size() == i3 - this.mPartExceptionCount) {
                            notifyMultipartThread();
                        }
                        onProgressCallback(this.mRequest, this.mUploadedLength, this.mFileLength);
                    }
                    try {
                        randomAccessFile.close();
                    } catch (IOException e) {
                        OSSLog.logThrowable2Local(e);
                    }
                } catch (Exception e2) {
                    e = e2;
                    randomAccessFile2 = randomAccessFile;
                    processException(e);
                    if (randomAccessFile2 != null) {
                        try {
                            randomAccessFile2.close();
                        } catch (IOException e3) {
                            OSSLog.logThrowable2Local(e3);
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e4) {
                            OSSLog.logThrowable2Local(e4);
                        }
                    }
                    throw th;
                }
            } catch (Exception e5) {
                e = e5;
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }
}
