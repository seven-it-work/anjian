package com.goldcoast.sdk.p128b;

import android.content.Context;
import com.github.kevinsawicki.http.HttpRequest;
import com.goldcoast.sdk.p129c.C1781e;
import com.goldcoast.sdk.p129c.C1783g;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.apache.commons.mail.EmailConstants;

/* renamed from: com.goldcoast.sdk.b.a */
/* loaded from: classes.dex */
public final class C1775a {
    /* renamed from: a */
    public static String m8094a(String str, Context context, String str2) {
        String str3 = context.getFilesDir().getPath() + File.separator + "ota" + File.separator + "elf" + File.separator + str2;
        C1783g.m8120a();
        C1783g.m8122a(str);
        C1783g.m8120a();
        C1783g.m8122a("download filename=" + str2);
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod(HttpRequest.METHOD_GET);
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setConnectTimeout(EmailConstants.SOCKET_TIMEOUT_MS);
        httpURLConnection.setReadTimeout(EmailConstants.SOCKET_TIMEOUT_MS);
        httpURLConnection.addRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36");
        System.setProperty("http.keepAlive", "false");
        httpURLConnection.connect();
        if (httpURLConnection.getResponseCode() == 200) {
            FileOutputStream fileOutputStream = new FileOutputStream(str3);
            InputStream inputStream = httpURLConnection.getInputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            }
            fileOutputStream.close();
            C1781e.m8114a(str3, 493);
            httpURLConnection.disconnect();
        }
        return str3;
    }
}
