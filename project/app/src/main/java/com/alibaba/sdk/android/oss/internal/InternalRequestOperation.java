package com.alibaba.sdk.android.oss.internal;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.ClientConfiguration;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.common.HttpMethod;
import com.alibaba.sdk.android.oss.common.OSSHeaders;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.alibaba.sdk.android.oss.common.auth.OSSCredentialProvider;
import com.alibaba.sdk.android.oss.common.utils.DateUtil;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.alibaba.sdk.android.oss.common.utils.OSSUtils;
import com.alibaba.sdk.android.oss.common.utils.VersionInfoUtils;
import com.alibaba.sdk.android.oss.internal.ResponseParsers;
import com.alibaba.sdk.android.oss.model.AbortMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.AbortMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.AppendObjectRequest;
import com.alibaba.sdk.android.oss.model.AppendObjectResult;
import com.alibaba.sdk.android.oss.model.CompleteMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.CompleteMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.CopyObjectRequest;
import com.alibaba.sdk.android.oss.model.CopyObjectResult;
import com.alibaba.sdk.android.oss.model.CreateBucketRequest;
import com.alibaba.sdk.android.oss.model.CreateBucketResult;
import com.alibaba.sdk.android.oss.model.DeleteBucketRequest;
import com.alibaba.sdk.android.oss.model.DeleteBucketResult;
import com.alibaba.sdk.android.oss.model.DeleteObjectRequest;
import com.alibaba.sdk.android.oss.model.DeleteObjectResult;
import com.alibaba.sdk.android.oss.model.GetBucketACLRequest;
import com.alibaba.sdk.android.oss.model.GetBucketACLResult;
import com.alibaba.sdk.android.oss.model.GetObjectRequest;
import com.alibaba.sdk.android.oss.model.GetObjectResult;
import com.alibaba.sdk.android.oss.model.HeadObjectRequest;
import com.alibaba.sdk.android.oss.model.HeadObjectResult;
import com.alibaba.sdk.android.oss.model.InitiateMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.InitiateMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.ListObjectsRequest;
import com.alibaba.sdk.android.oss.model.ListObjectsResult;
import com.alibaba.sdk.android.oss.model.ListPartsRequest;
import com.alibaba.sdk.android.oss.model.ListPartsResult;
import com.alibaba.sdk.android.oss.model.PutObjectRequest;
import com.alibaba.sdk.android.oss.model.PutObjectResult;
import com.alibaba.sdk.android.oss.model.UploadPartRequest;
import com.alibaba.sdk.android.oss.model.UploadPartResult;
import com.alibaba.sdk.android.oss.network.ExecutionContext;
import com.alibaba.sdk.android.oss.network.OSSRequestTask;
import com.umeng.commonsdk.amap.UMAmapConfig;
import java.io.UnsupportedEncodingException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URI;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import p003b.C0518p;
import p003b.C0528z;

/* loaded from: classes.dex */
public class InternalRequestOperation {
    private static final int LIST_PART_MAX_RETURNS = 1000;
    private static final int MAX_PART_NUMBER = 10000;
    private static ExecutorService executorService = Executors.newFixedThreadPool(5, new ThreadFactory() { // from class: com.alibaba.sdk.android.oss.internal.InternalRequestOperation.1
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return new Thread(runnable, "oss-android-api-thread");
        }
    });
    private Context applicationContext;
    private ClientConfiguration conf;
    private OSSCredentialProvider credentialProvider;
    private volatile URI endpoint;
    private C0528z innerClient;
    private int maxRetryCount;

    public InternalRequestOperation(Context context, final URI uri, OSSCredentialProvider oSSCredentialProvider, ClientConfiguration clientConfiguration) {
        this.maxRetryCount = 2;
        this.applicationContext = context;
        this.endpoint = uri;
        this.credentialProvider = oSSCredentialProvider;
        this.conf = clientConfiguration;
        C0528z.a m1035a = new C0528z.a().m1038c().m1036b().m1040d().m1030a().m1035a(new HostnameVerifier() { // from class: com.alibaba.sdk.android.oss.internal.InternalRequestOperation.2
            @Override // javax.net.ssl.HostnameVerifier
            public boolean verify(String str, SSLSession sSLSession) {
                return HttpsURLConnection.getDefaultHostnameVerifier().verify(uri.getHost(), sSLSession);
            }
        });
        if (clientConfiguration != null) {
            C0518p c0518p = new C0518p();
            c0518p.m804a(clientConfiguration.getMaxConcurrentRequest());
            m1035a.m1031a(clientConfiguration.getConnectionTimeout(), TimeUnit.MILLISECONDS).m1037b(clientConfiguration.getSocketTimeout(), TimeUnit.MILLISECONDS).m1039c(clientConfiguration.getSocketTimeout(), TimeUnit.MILLISECONDS).m1032a(c0518p);
            if (clientConfiguration.getProxyHost() != null && clientConfiguration.getProxyPort() != 0) {
                m1035a.m1034a(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(clientConfiguration.getProxyHost(), clientConfiguration.getProxyPort())));
            }
            this.maxRetryCount = clientConfiguration.getMaxErrorRetry();
        }
        this.innerClient = m1035a.m1041e();
    }

    private void canonicalizeRequestMessage(RequestMessage requestMessage) {
        Map<String, String> headers = requestMessage.getHeaders();
        if (headers.get("Date") == null) {
            headers.put("Date", DateUtil.currentFixedSkewedTimeInRFC822Format());
        }
        if ((requestMessage.getMethod() == HttpMethod.POST || requestMessage.getMethod() == HttpMethod.PUT) && OSSUtils.isEmptyString(headers.get("Content-Type"))) {
            headers.put("Content-Type", OSSUtils.determineContentType(null, requestMessage.getUploadFilePath(), requestMessage.getObjectKey()));
        }
        requestMessage.setHttpDnsEnable(checkIfHttpDnsAvailable(this.conf.isHttpDnsEnable()));
        requestMessage.setCredentialProvider(this.credentialProvider);
        requestMessage.getHeaders().put("User-Agent", VersionInfoUtils.getUserAgent(this.conf.getCustomUserMark()));
        requestMessage.setIsInCustomCnameExcludeList(OSSUtils.isInCustomCnameExcludeList(this.endpoint.getHost(), this.conf.getCustomCnameExcludeList()));
    }

    private boolean checkIfHttpDnsAvailable(boolean z) {
        if (!z || this.applicationContext == null) {
            return false;
        }
        String property = Build.VERSION.SDK_INT >= 14 ? System.getProperty("http.proxyHost") : android.net.Proxy.getHost(this.applicationContext);
        String proxyHost = this.conf.getProxyHost();
        if (!TextUtils.isEmpty(proxyHost)) {
            property = proxyHost;
        }
        return TextUtils.isEmpty(property);
    }

    public OSSAsyncTask<AbortMultipartUploadResult> abortMultipartUpload(AbortMultipartUploadRequest abortMultipartUploadRequest, OSSCompletedCallback<AbortMultipartUploadRequest, AbortMultipartUploadResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(abortMultipartUploadRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.endpoint);
        requestMessage.setMethod(HttpMethod.DELETE);
        requestMessage.setBucketName(abortMultipartUploadRequest.getBucketName());
        requestMessage.setObjectKey(abortMultipartUploadRequest.getObjectKey());
        requestMessage.getParameters().put(RequestParameters.UPLOAD_ID, abortMultipartUploadRequest.getUploadId());
        canonicalizeRequestMessage(requestMessage);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), abortMultipartUploadRequest, this.applicationContext);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(executorService.submit(new OSSRequestTask(requestMessage, new ResponseParsers.AbortMultipartUploadResponseParser(), executionContext, this.maxRetryCount)), executionContext);
    }

    public OSSAsyncTask<AppendObjectResult> appendObject(AppendObjectRequest appendObjectRequest, OSSCompletedCallback<AppendObjectRequest, AppendObjectResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(appendObjectRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.endpoint);
        requestMessage.setMethod(HttpMethod.POST);
        requestMessage.setBucketName(appendObjectRequest.getBucketName());
        requestMessage.setObjectKey(appendObjectRequest.getObjectKey());
        if (appendObjectRequest.getUploadData() != null) {
            requestMessage.setUploadData(appendObjectRequest.getUploadData());
        }
        if (appendObjectRequest.getUploadFilePath() != null) {
            requestMessage.setUploadFilePath(appendObjectRequest.getUploadFilePath());
        }
        requestMessage.getParameters().put(RequestParameters.SUBRESOURCE_APPEND, "");
        requestMessage.getParameters().put(RequestParameters.POSITION, String.valueOf(appendObjectRequest.getPosition()));
        OSSUtils.populateRequestMetadata(requestMessage.getHeaders(), appendObjectRequest.getMetadata());
        canonicalizeRequestMessage(requestMessage);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), appendObjectRequest, this.applicationContext);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        executionContext.setProgressCallback(appendObjectRequest.getProgressCallback());
        return OSSAsyncTask.wrapRequestTask(executorService.submit(new OSSRequestTask(requestMessage, new ResponseParsers.AppendObjectResponseParser(), executionContext, this.maxRetryCount)), executionContext);
    }

    public OSSAsyncTask<CompleteMultipartUploadResult> completeMultipartUpload(CompleteMultipartUploadRequest completeMultipartUploadRequest, OSSCompletedCallback<CompleteMultipartUploadRequest, CompleteMultipartUploadResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(completeMultipartUploadRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.endpoint);
        requestMessage.setMethod(HttpMethod.POST);
        requestMessage.setBucketName(completeMultipartUploadRequest.getBucketName());
        requestMessage.setObjectKey(completeMultipartUploadRequest.getObjectKey());
        requestMessage.setUploadData(OSSUtils.buildXMLFromPartEtagList(completeMultipartUploadRequest.getPartETags()).getBytes());
        requestMessage.getParameters().put(RequestParameters.UPLOAD_ID, completeMultipartUploadRequest.getUploadId());
        if (completeMultipartUploadRequest.getCallbackParam() != null) {
            requestMessage.getHeaders().put("x-oss-callback", OSSUtils.populateMapToBase64JsonString(completeMultipartUploadRequest.getCallbackParam()));
        }
        if (completeMultipartUploadRequest.getCallbackVars() != null) {
            requestMessage.getHeaders().put("x-oss-callback-var", OSSUtils.populateMapToBase64JsonString(completeMultipartUploadRequest.getCallbackVars()));
        }
        OSSUtils.populateRequestMetadata(requestMessage.getHeaders(), completeMultipartUploadRequest.getMetadata());
        canonicalizeRequestMessage(requestMessage);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), completeMultipartUploadRequest, this.applicationContext);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(executorService.submit(new OSSRequestTask(requestMessage, new ResponseParsers.CompleteMultipartUploadResponseParser(), executionContext, this.maxRetryCount)), executionContext);
    }

    public OSSAsyncTask<CopyObjectResult> copyObject(CopyObjectRequest copyObjectRequest, OSSCompletedCallback<CopyObjectRequest, CopyObjectResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(copyObjectRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.endpoint);
        requestMessage.setMethod(HttpMethod.PUT);
        requestMessage.setBucketName(copyObjectRequest.getDestinationBucketName());
        requestMessage.setObjectKey(copyObjectRequest.getDestinationKey());
        OSSUtils.populateCopyObjectHeaders(copyObjectRequest, requestMessage.getHeaders());
        canonicalizeRequestMessage(requestMessage);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), copyObjectRequest, this.applicationContext);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(executorService.submit(new OSSRequestTask(requestMessage, new ResponseParsers.CopyObjectResponseParser(), executionContext, this.maxRetryCount)), executionContext);
    }

    public OSSAsyncTask<CreateBucketResult> createBucket(CreateBucketRequest createBucketRequest, OSSCompletedCallback<CreateBucketRequest, CreateBucketResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(createBucketRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.endpoint);
        requestMessage.setMethod(HttpMethod.PUT);
        requestMessage.setBucketName(createBucketRequest.getBucketName());
        if (createBucketRequest.getBucketACL() != null) {
            requestMessage.getHeaders().put(OSSHeaders.OSS_CANNED_ACL, createBucketRequest.getBucketACL().toString());
        }
        try {
            requestMessage.createBucketRequestBodyMarshall(createBucketRequest.getLocationConstraint());
            canonicalizeRequestMessage(requestMessage);
            ExecutionContext executionContext = new ExecutionContext(getInnerClient(), createBucketRequest, this.applicationContext);
            if (oSSCompletedCallback != null) {
                executionContext.setCompletedCallback(oSSCompletedCallback);
            }
            return OSSAsyncTask.wrapRequestTask(executorService.submit(new OSSRequestTask(requestMessage, new ResponseParsers.CreateBucketResponseParser(), executionContext, this.maxRetryCount)), executionContext);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public OSSAsyncTask<DeleteBucketResult> deleteBucket(DeleteBucketRequest deleteBucketRequest, OSSCompletedCallback<DeleteBucketRequest, DeleteBucketResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(deleteBucketRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.endpoint);
        requestMessage.setMethod(HttpMethod.DELETE);
        requestMessage.setBucketName(deleteBucketRequest.getBucketName());
        canonicalizeRequestMessage(requestMessage);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), deleteBucketRequest, this.applicationContext);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(executorService.submit(new OSSRequestTask(requestMessage, new ResponseParsers.DeleteBucketResponseParser(), executionContext, this.maxRetryCount)), executionContext);
    }

    public OSSAsyncTask<DeleteObjectResult> deleteObject(DeleteObjectRequest deleteObjectRequest, OSSCompletedCallback<DeleteObjectRequest, DeleteObjectResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(deleteObjectRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.endpoint);
        requestMessage.setMethod(HttpMethod.DELETE);
        requestMessage.setBucketName(deleteObjectRequest.getBucketName());
        requestMessage.setObjectKey(deleteObjectRequest.getObjectKey());
        canonicalizeRequestMessage(requestMessage);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), deleteObjectRequest, this.applicationContext);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(executorService.submit(new OSSRequestTask(requestMessage, new ResponseParsers.DeleteObjectResponseParser(), executionContext, this.maxRetryCount)), executionContext);
    }

    public OSSAsyncTask<GetBucketACLResult> getBucketACL(GetBucketACLRequest getBucketACLRequest, OSSCompletedCallback<GetBucketACLRequest, GetBucketACLResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.SUBRESOURCE_ACL, "");
        requestMessage.setIsAuthorizationRequired(getBucketACLRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.endpoint);
        requestMessage.setMethod(HttpMethod.GET);
        requestMessage.setBucketName(getBucketACLRequest.getBucketName());
        requestMessage.setParameters(linkedHashMap);
        canonicalizeRequestMessage(requestMessage);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), getBucketACLRequest, this.applicationContext);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(executorService.submit(new OSSRequestTask(requestMessage, new ResponseParsers.GetBucketACLResponseParser(), executionContext, this.maxRetryCount)), executionContext);
    }

    public C0528z getInnerClient() {
        return this.innerClient;
    }

    public OSSAsyncTask<GetObjectResult> getObject(GetObjectRequest getObjectRequest, OSSCompletedCallback<GetObjectRequest, GetObjectResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(getObjectRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.endpoint);
        requestMessage.setMethod(HttpMethod.GET);
        requestMessage.setBucketName(getObjectRequest.getBucketName());
        requestMessage.setObjectKey(getObjectRequest.getObjectKey());
        if (getObjectRequest.getRange() != null) {
            requestMessage.getHeaders().put(HttpHeaders.RANGE, getObjectRequest.getRange().toString());
        }
        if (getObjectRequest.getxOssProcess() != null) {
            requestMessage.getParameters().put(RequestParameters.X_OSS_PROCESS, getObjectRequest.getxOssProcess());
        }
        canonicalizeRequestMessage(requestMessage);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), getObjectRequest, this.applicationContext);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        executionContext.setProgressCallback(getObjectRequest.getProgressListener());
        return OSSAsyncTask.wrapRequestTask(executorService.submit(new OSSRequestTask(requestMessage, new ResponseParsers.GetObjectResponseParser(), executionContext, this.maxRetryCount)), executionContext);
    }

    public OSSAsyncTask<HeadObjectResult> headObject(HeadObjectRequest headObjectRequest, OSSCompletedCallback<HeadObjectRequest, HeadObjectResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(headObjectRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.endpoint);
        requestMessage.setMethod(HttpMethod.HEAD);
        requestMessage.setBucketName(headObjectRequest.getBucketName());
        requestMessage.setObjectKey(headObjectRequest.getObjectKey());
        canonicalizeRequestMessage(requestMessage);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), headObjectRequest, this.applicationContext);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(executorService.submit(new OSSRequestTask(requestMessage, new ResponseParsers.HeadObjectResponseParser(), executionContext, this.maxRetryCount)), executionContext);
    }

    public OSSAsyncTask<InitiateMultipartUploadResult> initMultipartUpload(InitiateMultipartUploadRequest initiateMultipartUploadRequest, OSSCompletedCallback<InitiateMultipartUploadRequest, InitiateMultipartUploadResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(initiateMultipartUploadRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.endpoint);
        requestMessage.setMethod(HttpMethod.POST);
        requestMessage.setBucketName(initiateMultipartUploadRequest.getBucketName());
        requestMessage.setObjectKey(initiateMultipartUploadRequest.getObjectKey());
        requestMessage.getParameters().put(RequestParameters.SUBRESOURCE_UPLOADS, "");
        OSSUtils.populateRequestMetadata(requestMessage.getHeaders(), initiateMultipartUploadRequest.getMetadata());
        canonicalizeRequestMessage(requestMessage);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), initiateMultipartUploadRequest, this.applicationContext);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(executorService.submit(new OSSRequestTask(requestMessage, new ResponseParsers.InitMultipartResponseParser(), executionContext, this.maxRetryCount)), executionContext);
    }

    public OSSAsyncTask<ListObjectsResult> listObjects(ListObjectsRequest listObjectsRequest, OSSCompletedCallback<ListObjectsRequest, ListObjectsResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(listObjectsRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.endpoint);
        requestMessage.setMethod(HttpMethod.GET);
        requestMessage.setBucketName(listObjectsRequest.getBucketName());
        canonicalizeRequestMessage(requestMessage);
        OSSUtils.populateListObjectsRequestParameters(listObjectsRequest, requestMessage.getParameters());
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), listObjectsRequest, this.applicationContext);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(executorService.submit(new OSSRequestTask(requestMessage, new ResponseParsers.ListObjectsResponseParser(), executionContext, this.maxRetryCount)), executionContext);
    }

    public OSSAsyncTask<ListPartsResult> listParts(ListPartsRequest listPartsRequest, OSSCompletedCallback<ListPartsRequest, ListPartsResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(listPartsRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.endpoint);
        requestMessage.setMethod(HttpMethod.GET);
        requestMessage.setBucketName(listPartsRequest.getBucketName());
        requestMessage.setObjectKey(listPartsRequest.getObjectKey());
        requestMessage.getParameters().put(RequestParameters.UPLOAD_ID, listPartsRequest.getUploadId());
        Integer maxParts = listPartsRequest.getMaxParts();
        if (maxParts != null) {
            if (!OSSUtils.checkParamRange(maxParts.intValue(), 0L, true, 1000L, true)) {
                throw new IllegalArgumentException("MaxPartsOutOfRange: 1000");
            }
            requestMessage.getParameters().put(RequestParameters.MAX_PARTS, maxParts.toString());
        }
        Integer partNumberMarker = listPartsRequest.getPartNumberMarker();
        if (partNumberMarker != null) {
            if (!OSSUtils.checkParamRange(partNumberMarker.intValue(), 0L, false, UMAmapConfig.AMAP_CACHE_WRITE_TIME, true)) {
                throw new IllegalArgumentException("PartNumberMarkerOutOfRange: 10000");
            }
            requestMessage.getParameters().put(RequestParameters.PART_NUMBER_MARKER, partNumberMarker.toString());
        }
        canonicalizeRequestMessage(requestMessage);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), listPartsRequest, this.applicationContext);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        return OSSAsyncTask.wrapRequestTask(executorService.submit(new OSSRequestTask(requestMessage, new ResponseParsers.ListPartsResponseParser(), executionContext, this.maxRetryCount)), executionContext);
    }

    public OSSAsyncTask<PutObjectResult> putObject(PutObjectRequest putObjectRequest, OSSCompletedCallback<PutObjectRequest, PutObjectResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(putObjectRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.endpoint);
        requestMessage.setMethod(HttpMethod.PUT);
        requestMessage.setBucketName(putObjectRequest.getBucketName());
        requestMessage.setObjectKey(putObjectRequest.getObjectKey());
        if (putObjectRequest.getUploadData() != null) {
            requestMessage.setUploadData(putObjectRequest.getUploadData());
        }
        if (putObjectRequest.getUploadFilePath() != null) {
            requestMessage.setUploadFilePath(putObjectRequest.getUploadFilePath());
        }
        if (putObjectRequest.getCallbackParam() != null) {
            requestMessage.getHeaders().put("x-oss-callback", OSSUtils.populateMapToBase64JsonString(putObjectRequest.getCallbackParam()));
        }
        if (putObjectRequest.getCallbackVars() != null) {
            requestMessage.getHeaders().put("x-oss-callback-var", OSSUtils.populateMapToBase64JsonString(putObjectRequest.getCallbackVars()));
        }
        OSSUtils.populateRequestMetadata(requestMessage.getHeaders(), putObjectRequest.getMetadata());
        canonicalizeRequestMessage(requestMessage);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), putObjectRequest, this.applicationContext);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        if (putObjectRequest.getRetryCallback() != null) {
            executionContext.setRetryCallback(putObjectRequest.getRetryCallback());
        }
        executionContext.setProgressCallback(putObjectRequest.getProgressCallback());
        return OSSAsyncTask.wrapRequestTask(executorService.submit(new OSSRequestTask(requestMessage, new ResponseParsers.PutObjectResponseParser(), executionContext, this.maxRetryCount)), executionContext);
    }

    public void setCredentialProvider(OSSCredentialProvider oSSCredentialProvider) {
        this.credentialProvider = oSSCredentialProvider;
    }

    public OSSAsyncTask<UploadPartResult> uploadPart(UploadPartRequest uploadPartRequest, OSSCompletedCallback<UploadPartRequest, UploadPartResult> oSSCompletedCallback) {
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setIsAuthorizationRequired(uploadPartRequest.isAuthorizationRequired());
        requestMessage.setEndpoint(this.endpoint);
        requestMessage.setMethod(HttpMethod.PUT);
        requestMessage.setBucketName(uploadPartRequest.getBucketName());
        requestMessage.setObjectKey(uploadPartRequest.getObjectKey());
        requestMessage.getParameters().put(RequestParameters.UPLOAD_ID, uploadPartRequest.getUploadId());
        requestMessage.getParameters().put(RequestParameters.PART_NUMBER, String.valueOf(uploadPartRequest.getPartNumber()));
        requestMessage.setUploadData(uploadPartRequest.getPartContent());
        if (uploadPartRequest.getMd5Digest() != null) {
            requestMessage.getHeaders().put(HttpHeaders.CONTENT_MD5, uploadPartRequest.getMd5Digest());
        }
        canonicalizeRequestMessage(requestMessage);
        ExecutionContext executionContext = new ExecutionContext(getInnerClient(), uploadPartRequest, this.applicationContext);
        if (oSSCompletedCallback != null) {
            executionContext.setCompletedCallback(oSSCompletedCallback);
        }
        executionContext.setProgressCallback(uploadPartRequest.getProgressCallback());
        return OSSAsyncTask.wrapRequestTask(executorService.submit(new OSSRequestTask(requestMessage, new ResponseParsers.UploadPartResponseParser(), executionContext, this.maxRetryCount)), executionContext);
    }
}
