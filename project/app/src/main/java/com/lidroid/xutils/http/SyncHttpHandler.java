package com.lidroid.xutils.http;

import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.callback.DefaultHttpRedirectHandler;
import com.lidroid.xutils.http.callback.HttpRedirectHandler;
import java.io.IOException;
import java.net.UnknownHostException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes.dex */
public class SyncHttpHandler {
    private String charset;
    private final AbstractHttpClient client;
    private final HttpContext context;
    private HttpRedirectHandler httpRedirectHandler;
    private String requestMethod;
    private String requestUrl;
    private int retriedTimes = 0;
    private long expiry = HttpCache.getDefaultExpiryTime();

    public SyncHttpHandler(AbstractHttpClient abstractHttpClient, HttpContext httpContext, String str) {
        this.client = abstractHttpClient;
        this.context = httpContext;
        this.charset = str;
    }

    private ResponseStream handleResponse(HttpResponse httpResponse) throws HttpException, IOException {
        if (httpResponse == null) {
            throw new HttpException("response is null");
        }
        StatusLine statusLine = httpResponse.getStatusLine();
        int statusCode = statusLine.getStatusCode();
        if (statusCode < 300) {
            ResponseStream responseStream = new ResponseStream(httpResponse, this.charset, this.requestUrl, this.expiry);
            responseStream.setRequestMethod(this.requestMethod);
            return responseStream;
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

    public ResponseStream sendRequest(HttpRequestBase httpRequestBase) throws HttpException {
        IOException iOException;
        int i;
        IOException iOException2;
        Throwable th;
        String str;
        HttpRequestRetryHandler httpRequestRetryHandler = this.client.getHttpRequestRetryHandler();
        do {
            try {
                this.requestUrl = httpRequestBase.getURI().toString();
                this.requestMethod = httpRequestBase.getMethod();
                return (!HttpUtils.sHttpCache.isEnabled(this.requestMethod) || (str = HttpUtils.sHttpCache.get(this.requestUrl)) == null) ? handleResponse(this.client.execute(httpRequestBase, this.context)) : new ResponseStream(str);
            } catch (HttpException e) {
                throw e;
            } catch (NullPointerException e2) {
                IOException iOException3 = new IOException(e2.getMessage());
                th = e2;
                iOException2 = iOException3;
                iOException2.initCause(th);
                iOException = iOException2;
                i = this.retriedTimes + 1;
                this.retriedTimes = i;
            } catch (UnknownHostException | IOException e3) {
                iOException = e3;
                i = this.retriedTimes + 1;
                this.retriedTimes = i;
            } catch (Throwable th2) {
                IOException iOException4 = new IOException(th2.getMessage());
                th = th2;
                iOException2 = iOException4;
                iOException2.initCause(th);
                iOException = iOException2;
                i = this.retriedTimes + 1;
                this.retriedTimes = i;
            }
        } while (httpRequestRetryHandler.retryRequest(iOException, i, this.context));
        throw new HttpException(iOException);
    }

    public void setExpiry(long j) {
        this.expiry = j;
    }

    public void setHttpRedirectHandler(HttpRedirectHandler httpRedirectHandler) {
        this.httpRedirectHandler = httpRedirectHandler;
    }
}
