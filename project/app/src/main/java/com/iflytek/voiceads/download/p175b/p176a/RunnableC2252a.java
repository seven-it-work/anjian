package com.iflytek.voiceads.download.p175b.p176a;

import android.os.Process;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cyjh.elfin.p073a.C1225b;
import com.github.kevinsawicki.http.HttpRequest;
import com.iflytek.voiceads.download.p175b.InterfaceC2251a;
import com.iflytek.voiceads.download.p179d.C2262a;
import com.iflytek.voiceads.download.p180e.C2265a;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;

/* renamed from: com.iflytek.voiceads.download.b.a.a */
/* loaded from: assets/AdDex.4.0.1.dex */
public class RunnableC2252a implements Runnable {

    /* renamed from: a */
    private InterfaceC2251a f8450a;

    /* renamed from: b */
    private C2262a f8451b;

    /* renamed from: c */
    private a f8452c;

    /* renamed from: d */
    private final int f8453d = C1225b.f4496ak;

    /* renamed from: e */
    private final int f8454e = C1225b.f4496ak;

    /* renamed from: com.iflytek.voiceads.download.b.a.a$a */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public interface a {
        /* renamed from: a */
        void mo9899a(long j, boolean z);

        /* renamed from: b */
        void mo9900b();
    }

    public RunnableC2252a(InterfaceC2251a interfaceC2251a, C2262a c2262a, a aVar) {
        this.f8450a = interfaceC2251a;
        this.f8451b = c2262a;
        this.f8452c = aVar;
    }

    /* renamed from: a */
    private void m9897a() throws C2265a {
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(this.f8451b.m9958b()).openConnection();
                try {
                    httpURLConnection2.setConnectTimeout(C1225b.f4496ak);
                    httpURLConnection2.setReadTimeout(C1225b.f4496ak);
                    httpURLConnection2.setRequestMethod(HttpRequest.METHOD_GET);
                    httpURLConnection2.setRequestProperty(HttpHeaders.RANGE, "bytes=0-");
                    int responseCode = httpURLConnection2.getResponseCode();
                    if (responseCode == 200) {
                        m9898a(httpURLConnection2, false);
                    } else {
                        if (responseCode != 206) {
                            throw new C2265a(3, "UnSupported response code:" + responseCode);
                        }
                        m9898a(httpURLConnection2, true);
                    }
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                } catch (MalformedURLException e) {
                    e = e;
                    throw new C2265a(2, "Bad url.", e);
                } catch (ProtocolException e2) {
                    e = e2;
                    throw new C2265a(4, "Protocol error", e);
                } catch (IOException e3) {
                    e = e3;
                    throw new C2265a(5, "IO error", e);
                } catch (Exception e4) {
                    e = e4;
                    throw new C2265a(5, "Unknown error", e);
                } catch (Throwable th) {
                    httpURLConnection = httpURLConnection2;
                    th = th;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (MalformedURLException e5) {
                e = e5;
            } catch (ProtocolException e6) {
                e = e6;
            } catch (IOException e7) {
                e = e7;
            } catch (Exception e8) {
                e = e8;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: a */
    private void m9898a(HttpURLConnection httpURLConnection, boolean z) throws C2265a {
        String headerField = httpURLConnection.getHeaderField("Content-Length");
        long contentLength = (TextUtils.isEmpty(headerField) || headerField.equals("0") || headerField.equals("-1")) ? httpURLConnection.getContentLength() : Long.parseLong(headerField);
        if (contentLength <= 0) {
            throw new C2265a(6, "length <= 0");
        }
        if (this.f8451b.m9970k()) {
            throw new C2265a(7);
        }
        this.f8452c.mo9899a(contentLength, z);
    }

    @Override // java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        try {
            m9897a();
        } catch (C2265a e) {
            this.f8452c.mo9900b();
            this.f8451b.m9954a(e);
            this.f8451b.m9951a(5);
            this.f8450a.mo9896a(this.f8451b);
        }
    }
}
