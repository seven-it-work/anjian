package com.android.volley.toolbox;

import com.android.volley.AbstractC0599l;
import com.android.volley.C0588a;
import com.android.volley.toolbox.C0616g;
import com.github.kevinsawicki.http.HttpRequest;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.HttpEntity;
import org.apache.http.entity.BasicHttpEntity;

/* renamed from: com.android.volley.toolbox.j */
/* loaded from: classes.dex */
public final class C0619j implements InterfaceC0618i {

    /* renamed from: a */
    private static final String f1350a = "Content-Type";

    /* renamed from: b */
    private final a f1351b;

    /* renamed from: c */
    private final SSLSocketFactory f1352c;

    /* renamed from: com.android.volley.toolbox.j$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        String m1475a();
    }

    public C0619j() {
        this((byte) 0);
    }

    private C0619j(byte b2) {
        this((char) 0);
    }

    private C0619j(char c2) {
        this.f1351b = null;
        this.f1352c = null;
    }

    /* renamed from: a */
    private static HttpURLConnection m1470a(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    /* renamed from: a */
    private HttpURLConnection m1471a(URL url, AbstractC0599l<?> abstractC0599l) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        int m1391i = abstractC0599l.m1391i();
        httpURLConnection.setConnectTimeout(m1391i);
        httpURLConnection.setReadTimeout(m1391i);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        if ("https".equals(url.getProtocol()) && this.f1352c != null) {
            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(this.f1352c);
        }
        return httpURLConnection;
    }

    /* renamed from: a */
    private static HttpEntity m1472a(HttpURLConnection httpURLConnection) {
        InputStream errorStream;
        BasicHttpEntity basicHttpEntity = new BasicHttpEntity();
        try {
            errorStream = httpURLConnection.getInputStream();
        } catch (IOException unused) {
            errorStream = httpURLConnection.getErrorStream();
        }
        basicHttpEntity.setContent(errorStream);
        basicHttpEntity.setContentLength(httpURLConnection.getContentLength());
        basicHttpEntity.setContentEncoding(httpURLConnection.getContentEncoding());
        basicHttpEntity.setContentType(httpURLConnection.getContentType());
        return basicHttpEntity;
    }

    /* renamed from: a */
    private static void m1473a(HttpURLConnection httpURLConnection, AbstractC0599l<?> abstractC0599l) throws IOException, C0588a {
        switch (abstractC0599l.f1251a) {
            case -1:
                byte[] mo1386d = abstractC0599l.mo1386d();
                if (mo1386d != null) {
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.addRequestProperty("Content-Type", abstractC0599l.mo1385c());
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    dataOutputStream.write(mo1386d);
                    dataOutputStream.close();
                    return;
                }
                return;
            case 0:
                httpURLConnection.setRequestMethod(HttpRequest.METHOD_GET);
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                m1474b(httpURLConnection, abstractC0599l);
                return;
            case 2:
                httpURLConnection.setRequestMethod(HttpRequest.METHOD_PUT);
                m1474b(httpURLConnection, abstractC0599l);
                return;
            case 3:
                httpURLConnection.setRequestMethod(HttpRequest.METHOD_DELETE);
                return;
            case 4:
                httpURLConnection.setRequestMethod("HEAD");
                return;
            case 5:
                httpURLConnection.setRequestMethod(HttpRequest.METHOD_OPTIONS);
                return;
            case 6:
                httpURLConnection.setRequestMethod(HttpRequest.METHOD_TRACE);
                return;
            case 7:
                httpURLConnection.setRequestMethod(C0616g.a.f1349a);
                m1474b(httpURLConnection, abstractC0599l);
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    /* renamed from: b */
    private static void m1474b(HttpURLConnection httpURLConnection, AbstractC0599l<?> abstractC0599l) throws IOException, C0588a {
        byte[] mo1389g = abstractC0599l.mo1389g();
        if (mo1389g != null) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.addRequestProperty("Content-Type", abstractC0599l.mo1388f());
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(mo1389g);
            dataOutputStream.close();
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x0087. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ef  */
    @Override // com.android.volley.toolbox.InterfaceC0618i
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final org.apache.http.HttpResponse mo1465a(com.android.volley.AbstractC0599l<?> r7, java.util.Map<java.lang.String, java.lang.String> r8) throws java.io.IOException, com.android.volley.C0588a {
        /*
            Method dump skipped, instructions count: 344
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.volley.toolbox.C0619j.mo1465a(com.android.volley.l, java.util.Map):org.apache.http.HttpResponse");
    }
}
