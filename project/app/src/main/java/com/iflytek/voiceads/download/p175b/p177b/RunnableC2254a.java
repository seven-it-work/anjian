package com.iflytek.voiceads.download.p175b.p177b;

import android.os.Process;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cyjh.elfin.p073a.C1225b;
import com.github.kevinsawicki.http.HttpRequest;
import com.iflytek.voiceads.download.p175b.InterfaceC2251a;
import com.iflytek.voiceads.download.p179d.C2262a;
import com.iflytek.voiceads.download.p179d.C2263b;
import com.iflytek.voiceads.download.p180e.C2265a;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;

/* renamed from: com.iflytek.voiceads.download.b.b.a */
/* loaded from: assets/AdDex.4.0.1.dex */
public class RunnableC2254a implements Runnable {

    /* renamed from: a */
    private C2263b f8457a;

    /* renamed from: b */
    private InterfaceC2251a f8458b;

    /* renamed from: c */
    private C2262a f8459c;

    /* renamed from: d */
    private a f8460d;

    /* renamed from: e */
    private InputStream f8461e;

    /* renamed from: f */
    private long f8462f;

    /* renamed from: com.iflytek.voiceads.download.b.b.a$a */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public interface a {
        /* renamed from: c */
        void mo9903c();

        /* renamed from: d */
        void mo9904d();

        /* renamed from: e */
        void mo9905e();
    }

    public RunnableC2254a(C2263b c2263b, InterfaceC2251a interfaceC2251a, C2262a c2262a, a aVar) {
        this.f8457a = c2263b;
        this.f8458b = interfaceC2251a;
        this.f8459c = c2262a;
        this.f8462f = c2263b.m9979d();
        this.f8460d = aVar;
    }

    /* renamed from: a */
    private void m9901a() {
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(this.f8457a.m9975a()).openConnection();
                try {
                    httpURLConnection2.setConnectTimeout(C1225b.f4496ak);
                    httpURLConnection2.setReadTimeout(C1225b.f4496ak);
                    httpURLConnection2.setRequestMethod(HttpRequest.METHOD_GET);
                    httpURLConnection2.setRequestProperty(HttpRequest.HEADER_ACCEPT, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*");
                    httpURLConnection2.setRequestProperty("Accept-Language", "zh-CN");
                    httpURLConnection2.setRequestProperty("Charset", "UTF-8");
                    httpURLConnection2.setRequestProperty("Connection", "Keep-Alive");
                    long m9977b = this.f8457a.m9977b() + this.f8462f;
                    if (this.f8459c.m9968i()) {
                        httpURLConnection2.setRequestProperty(HttpHeaders.RANGE, "bytes=" + m9977b + "-" + this.f8457a.m9978c());
                    }
                    int responseCode = httpURLConnection2.getResponseCode();
                    if (responseCode != 206 && responseCode != 200) {
                        throw new C2265a(8, "UnSupported response code:" + responseCode);
                    }
                    m9902b();
                    this.f8461e = httpURLConnection2.getInputStream();
                    RandomAccessFile randomAccessFile = new RandomAccessFile(this.f8459c.m9962c(), "rwd");
                    randomAccessFile.seek(m9977b);
                    byte[] bArr = new byte[4096];
                    int i = 0;
                    while (true) {
                        int read = this.f8461e.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        randomAccessFile.write(bArr, 0, read);
                        i += read;
                        synchronized (this.f8460d) {
                            this.f8457a.m9976a(this.f8462f + i);
                            this.f8460d.mo9903c();
                        }
                    }
                    this.f8460d.mo9904d();
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                } catch (C2265a e) {
                    e = e;
                    throw new C2265a(7, "illegal error", e);
                } catch (ProtocolException e2) {
                    e = e2;
                    throw new C2265a(4, "Protocol error", e);
                } catch (IOException e3) {
                    e = e3;
                    throw new C2265a(5, "IO error", e);
                } catch (Exception e4) {
                    e = e4;
                    throw new C2265a(9, "other error", e);
                } catch (Throwable th) {
                    httpURLConnection = httpURLConnection2;
                    th = th;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (C2265a e5) {
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

    /* renamed from: b */
    private void m9902b() {
        if (this.f8459c != null && this.f8459c.m9970k()) {
            throw new C2265a(7);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        try {
            m9902b();
            m9901a();
        } catch (C2265a e) {
            this.f8460d.mo9905e();
            this.f8459c.m9954a(e);
            this.f8459c.m9951a(5);
            this.f8458b.mo9896a(this.f8459c);
        }
    }
}
