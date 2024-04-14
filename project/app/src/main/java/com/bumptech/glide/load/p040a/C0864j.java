package com.bumptech.glide.load.p040a;

import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.C1020e;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.p040a.InterfaceC0858d;
import com.bumptech.glide.load.p047c.C0943g;
import com.bumptech.glide.util.C1077b;
import com.bumptech.glide.util.C1080e;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* renamed from: com.bumptech.glide.load.a.j */
/* loaded from: classes.dex */
public final class C0864j implements InterfaceC0858d<InputStream> {

    /* renamed from: a */
    @VisibleForTesting
    static final b f2459a = new a();

    /* renamed from: b */
    private static final String f2460b = "HttpUrlFetcher";

    /* renamed from: c */
    private static final int f2461c = 5;

    /* renamed from: d */
    private static final int f2462d = -1;

    /* renamed from: e */
    private final C0943g f2463e;

    /* renamed from: f */
    private final int f2464f;

    /* renamed from: g */
    private final b f2465g;

    /* renamed from: h */
    private HttpURLConnection f2466h;

    /* renamed from: i */
    private InputStream f2467i;

    /* renamed from: j */
    private volatile boolean f2468j;

    /* renamed from: com.bumptech.glide.load.a.j$a */
    /* loaded from: classes.dex */
    private static class a implements b {
        a() {
        }

        @Override // com.bumptech.glide.load.p040a.C0864j.b
        /* renamed from: a */
        public final HttpURLConnection mo2423a(URL url) throws IOException {
            return (HttpURLConnection) url.openConnection();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.a.j$b */
    /* loaded from: classes.dex */
    public interface b {
        /* renamed from: a */
        HttpURLConnection mo2423a(URL url) throws IOException;
    }

    public C0864j(C0943g c0943g, int i) {
        this(c0943g, i, f2459a);
    }

    @VisibleForTesting
    private C0864j(C0943g c0943g, int i, b bVar) {
        this.f2463e = c0943g;
        this.f2464f = i;
        this.f2465g = bVar;
    }

    /* renamed from: a */
    private InputStream m2419a(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream;
        if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
            inputStream = C1077b.m3445a(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
        } else {
            if (Log.isLoggable(f2460b, 3)) {
                Log.d(f2460b, "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
            }
            inputStream = httpURLConnection.getInputStream();
        }
        this.f2467i = inputStream;
        return this.f2467i;
    }

    /* renamed from: a */
    private InputStream m2420a(URL url, int i, URL url2, Map<String, String> map) throws IOException {
        InputStream inputStream;
        while (i < 5) {
            if (url2 != null) {
                try {
                    if (url.toURI().equals(url2.toURI())) {
                        throw new C1020e("In re-direct loop");
                        break;
                    }
                } catch (URISyntaxException unused) {
                }
            }
            this.f2466h = this.f2465g.mo2423a(url);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.f2466h.addRequestProperty(entry.getKey(), entry.getValue());
            }
            this.f2466h.setConnectTimeout(this.f2464f);
            this.f2466h.setReadTimeout(this.f2464f);
            this.f2466h.setUseCaches(false);
            this.f2466h.setDoInput(true);
            this.f2466h.setInstanceFollowRedirects(false);
            this.f2466h.connect();
            this.f2467i = this.f2466h.getInputStream();
            if (this.f2468j) {
                return null;
            }
            int responseCode = this.f2466h.getResponseCode();
            int i2 = responseCode / 100;
            if (i2 == 2) {
                HttpURLConnection httpURLConnection = this.f2466h;
                if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
                    inputStream = C1077b.m3445a(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
                } else {
                    if (Log.isLoggable(f2460b, 3)) {
                        Log.d(f2460b, "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
                    }
                    inputStream = httpURLConnection.getInputStream();
                }
                this.f2467i = inputStream;
                return this.f2467i;
            }
            if (!(i2 == 3)) {
                if (responseCode == -1) {
                    throw new C1020e(responseCode);
                }
                throw new C1020e(this.f2466h.getResponseMessage(), responseCode);
            }
            String headerField = this.f2466h.getHeaderField("Location");
            if (TextUtils.isEmpty(headerField)) {
                throw new C1020e("Received empty or null redirect url");
            }
            URL url3 = new URL(url, headerField);
            mo2396b();
            i++;
            url2 = url;
            url = url3;
        }
        throw new C1020e("Too many (> 5) redirects!");
    }

    /* renamed from: a */
    private static boolean m2421a(int i) {
        return i / 100 == 2;
    }

    /* renamed from: b */
    private static boolean m2422b(int i) {
        return i / 100 == 3;
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    @NonNull
    /* renamed from: a */
    public final Class<InputStream> mo2380a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    /* renamed from: a */
    public final void mo2395a(@NonNull EnumC0848l enumC0848l, @NonNull InterfaceC0858d.a<? super InputStream> aVar) {
        String str;
        StringBuilder sb;
        long m3453a = C1080e.m3453a();
        try {
            try {
                C0943g c0943g = this.f2463e;
                if (c0943g.f2913d == null) {
                    c0943g.f2913d = new URL(c0943g.m2788a());
                }
                aVar.mo2410a((InterfaceC0858d.a<? super InputStream>) m2420a(c0943g.f2913d, 0, null, this.f2463e.f2912c.mo2789a()));
            } catch (IOException e) {
                if (Log.isLoggable(f2460b, 3)) {
                    Log.d(f2460b, "Failed to load data for url", e);
                }
                aVar.mo2409a((Exception) e);
                if (!Log.isLoggable(f2460b, 2)) {
                    return;
                }
                str = f2460b;
                sb = new StringBuilder("Finished http url fetcher fetch in ");
            }
            if (Log.isLoggable(f2460b, 2)) {
                str = f2460b;
                sb = new StringBuilder("Finished http url fetcher fetch in ");
                sb.append(C1080e.m3452a(m3453a));
                Log.v(str, sb.toString());
            }
        } catch (Throwable th) {
            if (Log.isLoggable(f2460b, 2)) {
                Log.v(f2460b, "Finished http url fetcher fetch in " + C1080e.m3452a(m3453a));
            }
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    /* renamed from: b */
    public final void mo2396b() {
        if (this.f2467i != null) {
            try {
                this.f2467i.close();
            } catch (IOException unused) {
            }
        }
        if (this.f2466h != null) {
            this.f2466h.disconnect();
        }
        this.f2466h = null;
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    /* renamed from: c */
    public final void mo2397c() {
        this.f2468j = true;
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    @NonNull
    /* renamed from: d */
    public final EnumC0849a mo2398d() {
        return EnumC0849a.REMOTE;
    }
}
