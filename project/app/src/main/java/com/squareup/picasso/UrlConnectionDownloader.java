package com.squareup.picasso;

import android.content.Context;
import android.net.Uri;
import android.net.http.HttpResponseCache;
import android.os.Build;
import com.cyjh.common.util.C1176s;
import com.hlzn.socketclient.p163b.C2146a;
import com.squareup.picasso.Downloader;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes.dex */
public class UrlConnectionDownloader implements Downloader {
    private static final String FORCE_CACHE = "only-if-cached,max-age=2147483647";
    static final String RESPONSE_SOURCE = "X-Android-Response-Source";
    static volatile Object cache;
    private final Context context;
    private static final Object lock = new Object();
    private static final ThreadLocal<StringBuilder> CACHE_HEADER_BUILDER = new ThreadLocal<StringBuilder>() { // from class: com.squareup.picasso.UrlConnectionDownloader.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public final StringBuilder initialValue() {
            return new StringBuilder();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ResponseCacheIcs {
        private ResponseCacheIcs() {
        }

        static void close(Object obj) {
            try {
                ((HttpResponseCache) obj).close();
            } catch (IOException unused) {
            }
        }

        static Object install(Context context) throws IOException {
            File createDefaultCacheDir = Utils.createDefaultCacheDir(context);
            HttpResponseCache installed = HttpResponseCache.getInstalled();
            return installed == null ? HttpResponseCache.install(createDefaultCacheDir, Utils.calculateDiskCacheSize(createDefaultCacheDir)) : installed;
        }
    }

    public UrlConnectionDownloader(Context context) {
        this.context = context.getApplicationContext();
    }

    private static void installCacheIfNeeded(Context context) {
        if (cache == null) {
            try {
                synchronized (lock) {
                    if (cache == null) {
                        cache = ResponseCacheIcs.install(context);
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.squareup.picasso.Downloader
    public Downloader.Response load(Uri uri, int i) throws IOException {
        String sb;
        if (Build.VERSION.SDK_INT >= 14) {
            installCacheIfNeeded(this.context);
        }
        HttpURLConnection openConnection = openConnection(uri);
        openConnection.setUseCaches(true);
        if (i != 0) {
            if (NetworkPolicy.isOfflineOnly(i)) {
                sb = FORCE_CACHE;
            } else {
                StringBuilder sb2 = CACHE_HEADER_BUILDER.get();
                sb2.setLength(0);
                if (!NetworkPolicy.shouldReadFromDiskCache(i)) {
                    sb2.append("no-cache");
                }
                if (!NetworkPolicy.shouldWriteToDiskCache(i)) {
                    if (sb2.length() > 0) {
                        sb2.append(',');
                    }
                    sb2.append("no-store");
                }
                sb = sb2.toString();
            }
            openConnection.setRequestProperty("Cache-Control", sb);
        }
        int responseCode = openConnection.getResponseCode();
        if (responseCode < 300) {
            return new Downloader.Response(openConnection.getInputStream(), Utils.parseResponseSourceHeader(openConnection.getHeaderField(RESPONSE_SOURCE)), openConnection.getHeaderFieldInt("Content-Length", -1));
        }
        openConnection.disconnect();
        throw new Downloader.ResponseException(responseCode + C1176s.a.f4108a + openConnection.getResponseMessage(), i, responseCode);
    }

    protected HttpURLConnection openConnection(Uri uri) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri.toString()).openConnection();
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(C2146a.f8099r);
        return httpURLConnection;
    }

    @Override // com.squareup.picasso.Downloader
    public void shutdown() {
        if (Build.VERSION.SDK_INT < 14 || cache == null) {
            return;
        }
        ResponseCacheIcs.close(cache);
    }
}
