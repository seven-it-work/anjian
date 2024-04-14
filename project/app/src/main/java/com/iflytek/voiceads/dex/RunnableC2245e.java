package com.iflytek.voiceads.dex;

import com.github.kevinsawicki.http.HttpRequest;
import com.hlzn.socketclient.p163b.C2146a;
import com.iflytek.voiceads.config.SDKLogger;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* renamed from: com.iflytek.voiceads.dex.e */
/* loaded from: classes.dex */
final class RunnableC2245e implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f8434a;

    /* renamed from: b */
    final /* synthetic */ String f8435b;

    /* renamed from: c */
    final /* synthetic */ String f8436c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2245e(String str, String str2, String str3) {
        this.f8434a = str;
        this.f8435b = str2;
        this.f8436c = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        FileOutputStream fileOutputStream;
        SDKLogger.m9847d("downloading new version:" + this.f8434a);
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f8435b).openConnection();
            httpURLConnection.setReadTimeout(C2146a.f8101t);
            httpURLConnection.setConnectTimeout(C2146a.f8101t);
            httpURLConnection.setRequestMethod(HttpRequest.METHOD_GET);
            InputStream inputStream = null;
            if (httpURLConnection.getResponseCode() == 200) {
                inputStream = httpURLConnection.getInputStream();
                fileOutputStream = new FileOutputStream(this.f8436c + this.f8434a);
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read < 0) {
                        break;
                    } else {
                        fileOutputStream.write(bArr, 0, read);
                    }
                }
                fileOutputStream.flush();
                SDKLogger.m9847d("download " + this.f8434a + " completed, it will be loaded next time");
            } else {
                fileOutputStream = null;
            }
            if (inputStream != null) {
                inputStream.close();
            }
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
        } catch (IOException e) {
            SDKLogger.m9849e("downloadRemote thread:" + e.getMessage());
        }
    }
}
