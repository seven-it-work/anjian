package com.lidroid.xutils.http.client;

import com.lidroid.xutils.http.RequestParams;
import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.http.client.entity.UploadEntity;
import com.lidroid.xutils.http.client.util.URIBuilder;
import com.lidroid.xutils.util.LogUtils;
import com.lidroid.xutils.util.OtherUtils;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.NameValuePair;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.utils.CloneUtils;

/* loaded from: classes.dex */
public class HttpRequest extends HttpRequestBase implements HttpEntityEnclosingRequest {
    private HttpEntity entity;
    private HttpMethod method;
    private URIBuilder uriBuilder;
    private Charset uriCharset;

    /* loaded from: classes.dex */
    public enum HttpMethod {
        GET(com.github.kevinsawicki.http.HttpRequest.METHOD_GET),
        POST("POST"),
        PUT(com.github.kevinsawicki.http.HttpRequest.METHOD_PUT),
        HEAD("HEAD"),
        MOVE("MOVE"),
        COPY("COPY"),
        DELETE(com.github.kevinsawicki.http.HttpRequest.METHOD_DELETE),
        OPTIONS(com.github.kevinsawicki.http.HttpRequest.METHOD_OPTIONS),
        TRACE(com.github.kevinsawicki.http.HttpRequest.METHOD_TRACE),
        CONNECT("CONNECT");

        private final String value;

        HttpMethod(String str) {
            this.value = str;
        }

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static HttpMethod[] valuesCustom() {
            HttpMethod[] valuesCustom = values();
            int length = valuesCustom.length;
            HttpMethod[] httpMethodArr = new HttpMethod[length];
            System.arraycopy(valuesCustom, 0, httpMethodArr, 0, length);
            return httpMethodArr;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.value;
        }
    }

    public HttpRequest(HttpMethod httpMethod) {
        this.method = httpMethod;
    }

    public HttpRequest(HttpMethod httpMethod, String str) {
        this.method = httpMethod;
        setURI(str);
    }

    public HttpRequest(HttpMethod httpMethod, URI uri) {
        this.method = httpMethod;
        setURI(uri);
    }

    public HttpRequest addQueryStringParameter(String str, String str2) {
        this.uriBuilder.addParameter(str, str2);
        return this;
    }

    public HttpRequest addQueryStringParameter(NameValuePair nameValuePair) {
        this.uriBuilder.addParameter(nameValuePair.getName(), nameValuePair.getValue());
        return this;
    }

    public HttpRequest addQueryStringParams(List<NameValuePair> list) {
        if (list == null) {
            return this;
        }
        for (NameValuePair nameValuePair : list) {
            this.uriBuilder.addParameter(nameValuePair.getName(), nameValuePair.getValue());
        }
        return this;
    }

    @Override // org.apache.http.client.methods.HttpRequestBase
    public Object clone() throws CloneNotSupportedException {
        HttpRequest httpRequest = (HttpRequest) super.clone();
        if (this.entity != null) {
            httpRequest.entity = (HttpEntity) CloneUtils.clone(this.entity);
        }
        return httpRequest;
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public boolean expectContinue() {
        Header firstHeader = getFirstHeader("Expect");
        return firstHeader != null && "100-continue".equalsIgnoreCase(firstHeader.getValue());
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public HttpEntity getEntity() {
        return this.entity;
    }

    @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return this.method.toString();
    }

    @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
    public URI getURI() {
        try {
            if (this.uriCharset == null) {
                this.uriCharset = OtherUtils.getCharsetFromHttpRequest(this);
            }
            if (this.uriCharset == null) {
                this.uriCharset = Charset.forName("UTF-8");
            }
            return this.uriBuilder.build(this.uriCharset);
        } catch (URISyntaxException e) {
            LogUtils.m10369e(e.getMessage(), e);
            return null;
        }
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public void setEntity(HttpEntity httpEntity) {
        this.entity = httpEntity;
    }

    public void setRequestParams(RequestParams requestParams) {
        if (requestParams != null) {
            if (this.uriCharset == null) {
                this.uriCharset = Charset.forName(requestParams.getCharset());
            }
            List<RequestParams.HeaderItem> headers = requestParams.getHeaders();
            if (headers != null) {
                for (RequestParams.HeaderItem headerItem : headers) {
                    if (headerItem.overwrite) {
                        setHeader(headerItem.header);
                    } else {
                        addHeader(headerItem.header);
                    }
                }
            }
            addQueryStringParams(requestParams.getQueryStringParams());
            setEntity(requestParams.getEntity());
        }
    }

    public void setRequestParams(RequestParams requestParams, RequestCallBackHandler requestCallBackHandler) {
        if (requestParams != null) {
            if (this.uriCharset == null) {
                this.uriCharset = Charset.forName(requestParams.getCharset());
            }
            List<RequestParams.HeaderItem> headers = requestParams.getHeaders();
            if (headers != null) {
                for (RequestParams.HeaderItem headerItem : headers) {
                    if (headerItem.overwrite) {
                        setHeader(headerItem.header);
                    } else {
                        addHeader(headerItem.header);
                    }
                }
            }
            addQueryStringParams(requestParams.getQueryStringParams());
            HttpEntity entity = requestParams.getEntity();
            if (entity != null) {
                if (entity instanceof UploadEntity) {
                    ((UploadEntity) entity).setCallBackHandler(requestCallBackHandler);
                }
                setEntity(entity);
            }
        }
    }

    public void setURI(String str) {
        this.uriBuilder = new URIBuilder(str);
    }

    @Override // org.apache.http.client.methods.HttpRequestBase
    public void setURI(URI uri) {
        this.uriBuilder = new URIBuilder(uri);
    }
}
