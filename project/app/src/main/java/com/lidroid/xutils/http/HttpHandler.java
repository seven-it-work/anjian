package com.lidroid.xutils.http;

import android.os.SystemClock;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.callback.DefaultHttpRedirectHandler;
import com.lidroid.xutils.http.callback.FileDownloadHandler;
import com.lidroid.xutils.http.callback.HttpRedirectHandler;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.http.callback.StringDownloadHandler;
import com.lidroid.xutils.task.PriorityAsyncTask;
import com.lidroid.xutils.util.OtherUtils;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.UnknownHostException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes.dex */
public class HttpHandler<T> extends PriorityAsyncTask<Object, Object, Void> implements RequestCallBackHandler {
    private static final int UPDATE_FAILURE = 3;
    private static final int UPDATE_LOADING = 2;
    private static final int UPDATE_START = 1;
    private static final int UPDATE_SUCCESS = 4;
    private static final NotUseApacheRedirectHandler notUseApacheRedirectHandler = new NotUseApacheRedirectHandler(null);
    private RequestCallBack<T> callback;
    private String charset;
    private final AbstractHttpClient client;
    private final HttpContext context;
    private HttpRedirectHandler httpRedirectHandler;
    private long lastUpdateTime;
    private HttpRequestBase request;
    private String requestMethod;
    private String requestUrl;
    private boolean isUploading = true;
    private int retriedCount = 0;
    private String fileSavePath = null;
    private boolean isDownloadingFile = false;
    private boolean autoResume = false;
    private boolean autoRename = false;
    private State state = State.WAITING;
    private long expiry = HttpCache.getDefaultExpiryTime();

    /* loaded from: classes.dex */
    private static final class NotUseApacheRedirectHandler implements RedirectHandler {
        private NotUseApacheRedirectHandler() {
        }

        /* synthetic */ NotUseApacheRedirectHandler(NotUseApacheRedirectHandler notUseApacheRedirectHandler) {
            this();
        }

        @Override // org.apache.http.client.RedirectHandler
        public final URI getLocationURI(HttpResponse httpResponse, HttpContext httpContext) throws ProtocolException {
            return null;
        }

        @Override // org.apache.http.client.RedirectHandler
        public final boolean isRedirectRequested(HttpResponse httpResponse, HttpContext httpContext) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public enum State {
        WAITING(0),
        STARTED(1),
        LOADING(2),
        FAILURE(3),
        CANCELLED(4),
        SUCCESS(5);

        private int value;

        State(int i) {
            this.value = 0;
            this.value = i;
        }

        public static State valueOf(int i) {
            switch (i) {
                case 0:
                    return WAITING;
                case 1:
                    return STARTED;
                case 2:
                    return LOADING;
                case 3:
                    return FAILURE;
                case 4:
                    return CANCELLED;
                case 5:
                    return SUCCESS;
                default:
                    return FAILURE;
            }
        }

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static State[] valuesCustom() {
            State[] valuesCustom = values();
            int length = valuesCustom.length;
            State[] stateArr = new State[length];
            System.arraycopy(valuesCustom, 0, stateArr, 0, length);
            return stateArr;
        }

        public final int value() {
            return this.value;
        }
    }

    public HttpHandler(AbstractHttpClient abstractHttpClient, HttpContext httpContext, String str, RequestCallBack<T> requestCallBack) {
        this.client = abstractHttpClient;
        this.context = httpContext;
        this.callback = requestCallBack;
        this.charset = str;
        this.client.setRedirectHandler(notUseApacheRedirectHandler);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ResponseInfo<T> handleResponse(HttpResponse httpResponse) throws HttpException, IOException {
        if (httpResponse == null) {
            throw new HttpException("response is null");
        }
        if (isCancelled()) {
            return null;
        }
        StatusLine statusLine = httpResponse.getStatusLine();
        int statusCode = statusLine.getStatusCode();
        if (statusCode < 300) {
            HttpEntity entity = httpResponse.getEntity();
            if (entity != null) {
                this.isUploading = false;
                if (this.isDownloadingFile) {
                    this.autoResume = this.autoResume && OtherUtils.isSupportRange(httpResponse);
                    r1 = new FileDownloadHandler().handleEntity(entity, this, this.fileSavePath, this.autoResume, this.autoRename ? OtherUtils.getFileNameFromHttpResponse(httpResponse) : null);
                } else {
                    r1 = new StringDownloadHandler().handleEntity(entity, this, this.charset);
                    if (HttpUtils.sHttpCache.isEnabled(this.requestMethod)) {
                        HttpUtils.sHttpCache.put(this.requestUrl, (String) r1, this.expiry);
                    }
                }
            }
            return new ResponseInfo<>(httpResponse, r1, false);
        }
        if (statusCode != 301 && statusCode != 302) {
            if (statusCode == 416) {
                throw new HttpException(statusCode, "maybe the file has downloaded completely");
            }
            throw new HttpException(statusCode, statusLine.getReasonPhrase());
        }
        if (this.httpRedirectHandler == null) {
            this.httpRedirectHandler = new DefaultHttpRedirectHandler();
        }
        HttpRequestBase directRequest = this.httpRedirectHandler.getDirectRequest(httpResponse);
        if (directRequest != null) {
            return sendRequest(directRequest);
        }
        return null;
    }

    private ResponseInfo<T> sendRequest(HttpRequestBase httpRequestBase) throws HttpException {
        IOException iOException;
        int i;
        IOException iOException2;
        Throwable th;
        String str;
        HttpRequestRetryHandler httpRequestRetryHandler = this.client.getHttpRequestRetryHandler();
        do {
            if (this.autoResume && this.isDownloadingFile) {
                File file = new File(this.fileSavePath);
                long length = (file.isFile() && file.exists()) ? file.length() : 0L;
                if (length > 0) {
                    httpRequestBase.setHeader("RANGE", "bytes=" + length + "-");
                }
            }
            try {
                this.requestMethod = httpRequestBase.getMethod();
                if (HttpUtils.sHttpCache.isEnabled(this.requestMethod) && (str = HttpUtils.sHttpCache.get(this.requestUrl)) != null) {
                    return new ResponseInfo<>(null, str, true);
                }
                if (isCancelled()) {
                    return null;
                }
                return handleResponse(this.client.execute(httpRequestBase, this.context));
            } catch (HttpException e) {
                throw e;
            } catch (NullPointerException e2) {
                IOException iOException3 = new IOException(e2.getMessage());
                th = e2;
                iOException2 = iOException3;
                iOException2.initCause(th);
                iOException = iOException2;
                i = this.retriedCount + 1;
                this.retriedCount = i;
            } catch (UnknownHostException | IOException e3) {
                iOException = e3;
                i = this.retriedCount + 1;
                this.retriedCount = i;
            } catch (Throwable th2) {
                IOException iOException4 = new IOException(th2.getMessage());
                th = th2;
                iOException2 = iOException4;
                iOException2.initCause(th);
                iOException = iOException2;
                i = this.retriedCount + 1;
                this.retriedCount = i;
            }
        } while (httpRequestRetryHandler.retryRequest(iOException, i, this.context));
        throw new HttpException(iOException);
    }

    @Override // com.lidroid.xutils.task.PriorityAsyncTask, com.lidroid.xutils.task.TaskHandler
    public void cancel() {
        this.state = State.CANCELLED;
        if (this.request != null && !this.request.isAborted()) {
            try {
                this.request.abort();
            } catch (Throwable unused) {
            }
        }
        if (!isCancelled()) {
            try {
                cancel(true);
            } catch (Throwable unused2) {
            }
        }
        if (this.callback != null) {
            this.callback.onCancelled();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.lidroid.xutils.task.PriorityAsyncTask
    public Void doInBackground(Object... objArr) {
        if (this.state == State.CANCELLED || objArr == null || objArr.length == 0) {
            return null;
        }
        if (objArr.length > 3) {
            this.fileSavePath = String.valueOf(objArr[1]);
            this.isDownloadingFile = this.fileSavePath != null;
            this.autoResume = ((Boolean) objArr[2]).booleanValue();
            this.autoRename = ((Boolean) objArr[3]).booleanValue();
        }
        try {
        } catch (HttpException e) {
            publishProgress(3, e, e.getMessage());
        }
        if (this.state == State.CANCELLED) {
            return null;
        }
        this.request = (HttpRequestBase) objArr[0];
        this.requestUrl = this.request.getURI().toString();
        if (this.callback != null) {
            this.callback.setRequestUrl(this.requestUrl);
        }
        publishProgress(1);
        this.lastUpdateTime = SystemClock.uptimeMillis();
        ResponseInfo<T> sendRequest = sendRequest(this.request);
        if (sendRequest != null) {
            publishProgress(4, sendRequest);
            return null;
        }
        return null;
    }

    public RequestCallBack<T> getRequestCallBack() {
        return this.callback;
    }

    public State getState() {
        return this.state;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.lidroid.xutils.task.PriorityAsyncTask
    public void onProgressUpdate(Object... objArr) {
        if (this.state == State.CANCELLED || objArr == null || objArr.length == 0 || this.callback == null) {
            return;
        }
        switch (((Integer) objArr[0]).intValue()) {
            case 1:
                this.state = State.STARTED;
                this.callback.onStart();
                return;
            case 2:
                if (objArr.length != 3) {
                    return;
                }
                this.state = State.LOADING;
                this.callback.onLoading(Long.valueOf(String.valueOf(objArr[1])).longValue(), Long.valueOf(String.valueOf(objArr[2])).longValue(), this.isUploading);
                return;
            case 3:
                if (objArr.length != 3) {
                    return;
                }
                this.state = State.FAILURE;
                this.callback.onFailure((HttpException) objArr[1], (String) objArr[2]);
                return;
            case 4:
                if (objArr.length != 2) {
                    return;
                }
                this.state = State.SUCCESS;
                this.callback.onSuccess((ResponseInfo) objArr[1]);
                return;
            default:
                return;
        }
    }

    public void setExpiry(long j) {
        this.expiry = j;
    }

    public void setHttpRedirectHandler(HttpRedirectHandler httpRedirectHandler) {
        if (httpRedirectHandler != null) {
            this.httpRedirectHandler = httpRedirectHandler;
        }
    }

    public void setRequestCallBack(RequestCallBack<T> requestCallBack) {
        this.callback = requestCallBack;
    }

    @Override // com.lidroid.xutils.http.callback.RequestCallBackHandler
    public boolean updateProgress(long j, long j2, boolean z) {
        Object[] objArr;
        if (this.callback != null && this.state != State.CANCELLED) {
            if (z) {
                objArr = new Object[]{2, Long.valueOf(j), Long.valueOf(j2)};
            } else {
                long uptimeMillis = SystemClock.uptimeMillis();
                if (uptimeMillis - this.lastUpdateTime >= this.callback.getRate()) {
                    this.lastUpdateTime = uptimeMillis;
                    objArr = new Object[]{2, Long.valueOf(j), Long.valueOf(j2)};
                }
            }
            publishProgress(objArr);
        }
        return this.state != State.CANCELLED;
    }
}
