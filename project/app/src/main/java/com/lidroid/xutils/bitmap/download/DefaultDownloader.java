package com.lidroid.xutils.bitmap.download;

import com.lidroid.xutils.BitmapUtils;
import com.lidroid.xutils.util.IOUtils;
import com.lidroid.xutils.util.LogUtils;
import com.lidroid.xutils.util.OtherUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;

/* loaded from: classes.dex */
public class DefaultDownloader extends Downloader {
    @Override // com.lidroid.xutils.bitmap.download.Downloader
    public long downloadToStream(String str, OutputStream outputStream, BitmapUtils.BitmapLoadTask<?> bitmapLoadTask) {
        Throwable th;
        Throwable th2;
        long contentLength;
        long j;
        if (bitmapLoadTask == null || bitmapLoadTask.isCancelled() || bitmapLoadTask.getTargetContainer() == null) {
            return -1L;
        }
        BufferedInputStream bufferedInputStream = null;
        OtherUtils.trustAllHttpsURLConnection();
        long j2 = 0;
        try {
            try {
                if (str.startsWith("/")) {
                    FileInputStream fileInputStream = new FileInputStream(str);
                    contentLength = fileInputStream.available();
                    BufferedInputStream bufferedInputStream2 = new BufferedInputStream(fileInputStream);
                    try {
                        bufferedInputStream = bufferedInputStream2;
                        j = System.currentTimeMillis() + getDefaultExpiry();
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedInputStream = bufferedInputStream2;
                        th = th;
                        IOUtils.closeQuietly(bufferedInputStream);
                        throw th;
                    }
                } else if (str.startsWith("assets/")) {
                    InputStream open = getContext().getAssets().open(str.substring(7, str.length()));
                    contentLength = open.available();
                    j = Long.MAX_VALUE;
                    bufferedInputStream = new BufferedInputStream(open);
                } else {
                    URLConnection openConnection = new URL(str).openConnection();
                    openConnection.setConnectTimeout(getDefaultConnectTimeout());
                    openConnection.setReadTimeout(getDefaultReadTimeout());
                    BufferedInputStream bufferedInputStream3 = new BufferedInputStream(openConnection.getInputStream());
                    try {
                        long expiration = openConnection.getExpiration();
                        long currentTimeMillis = expiration < System.currentTimeMillis() ? System.currentTimeMillis() + getDefaultExpiry() : expiration;
                        contentLength = openConnection.getContentLength();
                        bufferedInputStream = bufferedInputStream3;
                        j = currentTimeMillis;
                    } catch (Throwable th4) {
                        th2 = th4;
                        bufferedInputStream = bufferedInputStream3;
                        LogUtils.m10369e(th2.getMessage(), th2);
                        IOUtils.closeQuietly(bufferedInputStream);
                        return -1L;
                    }
                }
                if (!bitmapLoadTask.isCancelled() && bitmapLoadTask.getTargetContainer() != null) {
                    byte[] bArr = new byte[4096];
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
                    while (true) {
                        int read = bufferedInputStream.read(bArr);
                        if (read != -1) {
                            bufferedOutputStream.write(bArr, 0, read);
                            long j3 = j2 + read;
                            if (bitmapLoadTask.isCancelled() || bitmapLoadTask.getTargetContainer() == null) {
                                break;
                            }
                            bitmapLoadTask.updateProgress(contentLength, j3);
                            j2 = j3;
                        } else {
                            bufferedOutputStream.flush();
                            IOUtils.closeQuietly(bufferedInputStream);
                            return j;
                        }
                    }
                }
                IOUtils.closeQuietly(bufferedInputStream);
                return -1L;
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }
}
