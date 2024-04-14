package com.android.volley.toolbox;

import com.android.volley.AbstractC0599l;
import com.android.volley.C0588a;
import com.hlzn.socketclient.p163b.C2146a;
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

/* renamed from: com.android.volley.toolbox.g */
/* loaded from: classes.dex */
public final class C0616g implements InterfaceC0618i {

    /* renamed from: b */
    private static final String f1347b = "Content-Type";

    /* renamed from: a */
    protected final HttpClient f1348a;

    /* renamed from: com.android.volley.toolbox.g$a */
    /* loaded from: classes.dex */
    public static final class a extends HttpEntityEnclosingRequestBase {

        /* renamed from: a */
        public static final String f1349a = "PATCH";

        public a() {
        }

        public a(String str) {
            setURI(URI.create(str));
        }

        private a(URI uri) {
            setURI(uri);
        }

        @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
        public final String getMethod() {
            return f1349a;
        }
    }

    public C0616g(HttpClient httpClient) {
        this.f1348a = httpClient;
    }

    /* renamed from: a */
    private static List<NameValuePair> m1460a(Map<String, String> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (String str : map.keySet()) {
            arrayList.add(new BasicNameValuePair(str, map.get(str)));
        }
        return arrayList;
    }

    /* renamed from: a */
    private static HttpUriRequest m1461a(AbstractC0599l<?> abstractC0599l) throws C0588a {
        switch (abstractC0599l.f1251a) {
            case -1:
                byte[] mo1386d = abstractC0599l.mo1386d();
                if (mo1386d == null) {
                    return new HttpGet(abstractC0599l.f1252b);
                }
                HttpPost httpPost = new HttpPost(abstractC0599l.f1252b);
                httpPost.addHeader("Content-Type", abstractC0599l.mo1385c());
                httpPost.setEntity(new ByteArrayEntity(mo1386d));
                return httpPost;
            case 0:
                return new HttpGet(abstractC0599l.f1252b);
            case 1:
                HttpPost httpPost2 = new HttpPost(abstractC0599l.f1252b);
                httpPost2.addHeader("Content-Type", abstractC0599l.mo1388f());
                m1463a(httpPost2, abstractC0599l);
                return httpPost2;
            case 2:
                HttpPut httpPut = new HttpPut(abstractC0599l.f1252b);
                httpPut.addHeader("Content-Type", abstractC0599l.mo1388f());
                m1463a(httpPut, abstractC0599l);
                return httpPut;
            case 3:
                return new HttpDelete(abstractC0599l.f1252b);
            case 4:
                return new HttpHead(abstractC0599l.f1252b);
            case 5:
                return new HttpOptions(abstractC0599l.f1252b);
            case 6:
                return new HttpTrace(abstractC0599l.f1252b);
            case 7:
                a aVar = new a(abstractC0599l.f1252b);
                aVar.addHeader("Content-Type", abstractC0599l.mo1388f());
                m1463a(aVar, abstractC0599l);
                return aVar;
            default:
                throw new IllegalStateException("Unknown request method.");
        }
    }

    /* renamed from: a */
    private static void m1462a() throws IOException {
    }

    /* renamed from: a */
    private static void m1463a(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, AbstractC0599l<?> abstractC0599l) throws C0588a {
        byte[] mo1389g = abstractC0599l.mo1389g();
        if (mo1389g != null) {
            httpEntityEnclosingRequestBase.setEntity(new ByteArrayEntity(mo1389g));
        }
    }

    /* renamed from: a */
    private static void m1464a(HttpUriRequest httpUriRequest, Map<String, String> map) {
        for (String str : map.keySet()) {
            httpUriRequest.setHeader(str, map.get(str));
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
    @Override // com.android.volley.toolbox.InterfaceC0618i
    /* renamed from: a */
    public final HttpResponse mo1465a(AbstractC0599l<?> abstractC0599l, Map<String, String> map) throws IOException, C0588a {
        HttpRequestBase httpRequestBase;
        HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase;
        switch (abstractC0599l.f1251a) {
            case -1:
                byte[] mo1386d = abstractC0599l.mo1386d();
                if (mo1386d != null) {
                    HttpPost httpPost = new HttpPost(abstractC0599l.f1252b);
                    httpPost.addHeader("Content-Type", abstractC0599l.mo1385c());
                    httpPost.setEntity(new ByteArrayEntity(mo1386d));
                    httpRequestBase = httpPost;
                } else {
                    httpRequestBase = new HttpGet(abstractC0599l.f1252b);
                }
                m1464a(httpRequestBase, map);
                m1464a(httpRequestBase, abstractC0599l.mo1383b());
                HttpParams params = httpRequestBase.getParams();
                int m1391i = abstractC0599l.m1391i();
                HttpConnectionParams.setConnectionTimeout(params, C2146a.f8101t);
                HttpConnectionParams.setSoTimeout(params, m1391i);
                return this.f1348a.execute(httpRequestBase);
            case 0:
                httpRequestBase = new HttpGet(abstractC0599l.f1252b);
                m1464a(httpRequestBase, map);
                m1464a(httpRequestBase, abstractC0599l.mo1383b());
                HttpParams params2 = httpRequestBase.getParams();
                int m1391i2 = abstractC0599l.m1391i();
                HttpConnectionParams.setConnectionTimeout(params2, C2146a.f8101t);
                HttpConnectionParams.setSoTimeout(params2, m1391i2);
                return this.f1348a.execute(httpRequestBase);
            case 1:
                HttpPost httpPost2 = new HttpPost(abstractC0599l.f1252b);
                httpPost2.addHeader("Content-Type", abstractC0599l.mo1388f());
                httpEntityEnclosingRequestBase = httpPost2;
                m1463a(httpEntityEnclosingRequestBase, abstractC0599l);
                httpRequestBase = httpEntityEnclosingRequestBase;
                m1464a(httpRequestBase, map);
                m1464a(httpRequestBase, abstractC0599l.mo1383b());
                HttpParams params22 = httpRequestBase.getParams();
                int m1391i22 = abstractC0599l.m1391i();
                HttpConnectionParams.setConnectionTimeout(params22, C2146a.f8101t);
                HttpConnectionParams.setSoTimeout(params22, m1391i22);
                return this.f1348a.execute(httpRequestBase);
            case 2:
                HttpPut httpPut = new HttpPut(abstractC0599l.f1252b);
                httpPut.addHeader("Content-Type", abstractC0599l.mo1388f());
                httpEntityEnclosingRequestBase = httpPut;
                m1463a(httpEntityEnclosingRequestBase, abstractC0599l);
                httpRequestBase = httpEntityEnclosingRequestBase;
                m1464a(httpRequestBase, map);
                m1464a(httpRequestBase, abstractC0599l.mo1383b());
                HttpParams params222 = httpRequestBase.getParams();
                int m1391i222 = abstractC0599l.m1391i();
                HttpConnectionParams.setConnectionTimeout(params222, C2146a.f8101t);
                HttpConnectionParams.setSoTimeout(params222, m1391i222);
                return this.f1348a.execute(httpRequestBase);
            case 3:
                httpRequestBase = new HttpDelete(abstractC0599l.f1252b);
                m1464a(httpRequestBase, map);
                m1464a(httpRequestBase, abstractC0599l.mo1383b());
                HttpParams params2222 = httpRequestBase.getParams();
                int m1391i2222 = abstractC0599l.m1391i();
                HttpConnectionParams.setConnectionTimeout(params2222, C2146a.f8101t);
                HttpConnectionParams.setSoTimeout(params2222, m1391i2222);
                return this.f1348a.execute(httpRequestBase);
            case 4:
                httpRequestBase = new HttpHead(abstractC0599l.f1252b);
                m1464a(httpRequestBase, map);
                m1464a(httpRequestBase, abstractC0599l.mo1383b());
                HttpParams params22222 = httpRequestBase.getParams();
                int m1391i22222 = abstractC0599l.m1391i();
                HttpConnectionParams.setConnectionTimeout(params22222, C2146a.f8101t);
                HttpConnectionParams.setSoTimeout(params22222, m1391i22222);
                return this.f1348a.execute(httpRequestBase);
            case 5:
                httpRequestBase = new HttpOptions(abstractC0599l.f1252b);
                m1464a(httpRequestBase, map);
                m1464a(httpRequestBase, abstractC0599l.mo1383b());
                HttpParams params222222 = httpRequestBase.getParams();
                int m1391i222222 = abstractC0599l.m1391i();
                HttpConnectionParams.setConnectionTimeout(params222222, C2146a.f8101t);
                HttpConnectionParams.setSoTimeout(params222222, m1391i222222);
                return this.f1348a.execute(httpRequestBase);
            case 6:
                httpRequestBase = new HttpTrace(abstractC0599l.f1252b);
                m1464a(httpRequestBase, map);
                m1464a(httpRequestBase, abstractC0599l.mo1383b());
                HttpParams params2222222 = httpRequestBase.getParams();
                int m1391i2222222 = abstractC0599l.m1391i();
                HttpConnectionParams.setConnectionTimeout(params2222222, C2146a.f8101t);
                HttpConnectionParams.setSoTimeout(params2222222, m1391i2222222);
                return this.f1348a.execute(httpRequestBase);
            case 7:
                a aVar = new a(abstractC0599l.f1252b);
                aVar.addHeader("Content-Type", abstractC0599l.mo1388f());
                httpEntityEnclosingRequestBase = aVar;
                m1463a(httpEntityEnclosingRequestBase, abstractC0599l);
                httpRequestBase = httpEntityEnclosingRequestBase;
                m1464a(httpRequestBase, map);
                m1464a(httpRequestBase, abstractC0599l.mo1383b());
                HttpParams params22222222 = httpRequestBase.getParams();
                int m1391i22222222 = abstractC0599l.m1391i();
                HttpConnectionParams.setConnectionTimeout(params22222222, C2146a.f8101t);
                HttpConnectionParams.setSoTimeout(params22222222, m1391i22222222);
                return this.f1348a.execute(httpRequestBase);
            default:
                throw new IllegalStateException("Unknown request method.");
        }
    }
}
