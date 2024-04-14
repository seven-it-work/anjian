package com.iflytek.voiceads.dex;

import com.github.kevinsawicki.http.HttpRequest;
import com.hlzn.socketclient.p163b.C2146a;
import com.iflytek.voiceads.config.SDKLogger;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.dex.d */
/* loaded from: classes.dex */
public final class RunnableC2244d implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f8430a;

    /* renamed from: b */
    final /* synthetic */ String f8431b;

    /* renamed from: c */
    final /* synthetic */ String f8432c;

    /* renamed from: d */
    final /* synthetic */ String f8433d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2244d(String str, String str2, String str3, String str4) {
        this.f8430a = str;
        this.f8431b = str2;
        this.f8432c = str3;
        this.f8433d = str4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InputStream inputStream;
        int m9873b;
        int m9873b2;
        SDKLogger.m9847d("checking update");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f8430a).openConnection();
            httpURLConnection.setReadTimeout(C2146a.f8101t);
            httpURLConnection.setConnectTimeout(C2146a.f8101t);
            httpURLConnection.setRequestMethod(HttpRequest.METHOD_GET);
            httpURLConnection.setRequestProperty("Charset", "utf-8");
            if (httpURLConnection.getResponseCode() == 200) {
                inputStream = httpURLConnection.getInputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read < 0) {
                        break;
                    } else {
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                }
                C2242b c2242b = new C2242b(new String(byteArrayOutputStream.toByteArray()));
                if (c2242b.m9866b() != null && c2242b.m9865a() != null) {
                    m9873b = C2243c.m9873b(c2242b.m9866b(), this.f8431b);
                    m9873b2 = C2243c.m9873b(this.f8432c, this.f8431b);
                    if (m9873b > m9873b2) {
                        SDKLogger.m9847d("find new version:" + c2242b.m9866b());
                        C2243c.m9875b(this.f8433d, c2242b.m9866b(), c2242b.m9865a());
                    } else {
                        SDKLogger.m9847d("no new version dex");
                    }
                }
                SDKLogger.m9847d("no version");
                return;
            }
            inputStream = null;
            if (inputStream != null) {
                inputStream.close();
            }
            byteArrayOutputStream.close();
        } catch (IOException e) {
            SDKLogger.m9849e("checkDexUpdate thread" + e.getMessage());
        }
    }
}
