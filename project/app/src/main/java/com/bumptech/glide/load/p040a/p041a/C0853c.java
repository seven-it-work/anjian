package com.bumptech.glide.load.p040a.p041a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.ComponentCallbacks2C0838f;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.p040a.C0861g;
import com.bumptech.glide.load.p040a.InterfaceC0858d;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.a.a.c */
/* loaded from: classes.dex */
public final class C0853c implements InterfaceC0858d<InputStream> {

    /* renamed from: a */
    private static final String f2425a = "MediaStoreThumbFetcher";

    /* renamed from: b */
    private final Uri f2426b;

    /* renamed from: c */
    private final C0855e f2427c;

    /* renamed from: d */
    private InputStream f2428d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.a.a.c$a */
    /* loaded from: classes.dex */
    public static class a implements InterfaceC0854d {

        /* renamed from: b */
        private static final String[] f2429b = {"_data"};

        /* renamed from: c */
        private static final String f2430c = "kind = 1 AND image_id = ?";

        /* renamed from: a */
        private final ContentResolver f2431a;

        public a(ContentResolver contentResolver) {
            this.f2431a = contentResolver;
        }

        @Override // com.bumptech.glide.load.p040a.p041a.InterfaceC0854d
        /* renamed from: a */
        public final Cursor mo2399a(Uri uri) {
            return this.f2431a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f2429b, f2430c, new String[]{uri.getLastPathSegment()}, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.a.a.c$b */
    /* loaded from: classes.dex */
    public static class b implements InterfaceC0854d {

        /* renamed from: b */
        private static final String[] f2432b = {"_data"};

        /* renamed from: c */
        private static final String f2433c = "kind = 1 AND video_id = ?";

        /* renamed from: a */
        private final ContentResolver f2434a;

        public b(ContentResolver contentResolver) {
            this.f2434a = contentResolver;
        }

        @Override // com.bumptech.glide.load.p040a.p041a.InterfaceC0854d
        /* renamed from: a */
        public final Cursor mo2399a(Uri uri) {
            return this.f2434a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f2432b, f2433c, new String[]{uri.getLastPathSegment()}, null);
        }
    }

    @VisibleForTesting
    private C0853c(Uri uri, C0855e c0855e) {
        this.f2426b = uri;
        this.f2427c = c0855e;
    }

    /* renamed from: a */
    private static C0853c m2391a(Context context, Uri uri) {
        return m2392a(context, uri, new a(context.getContentResolver()));
    }

    /* renamed from: a */
    public static C0853c m2392a(Context context, Uri uri, InterfaceC0854d interfaceC0854d) {
        return new C0853c(uri, new C0855e(ComponentCallbacks2C0838f.m2307b(context).f2369c.m3089a(), interfaceC0854d, ComponentCallbacks2C0838f.m2307b(context).f2370d, context.getContentResolver()));
    }

    /* renamed from: b */
    private static C0853c m2393b(Context context, Uri uri) {
        return m2392a(context, uri, new b(context.getContentResolver()));
    }

    /* renamed from: e */
    private InputStream m2394e() throws FileNotFoundException {
        InputStream m2403b = this.f2427c.m2403b(this.f2426b);
        int m2402a = m2403b != null ? this.f2427c.m2402a(this.f2426b) : -1;
        return m2402a != -1 ? new C0861g(m2403b, m2402a) : m2403b;
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
        try {
            InputStream m2403b = this.f2427c.m2403b(this.f2426b);
            int m2402a = m2403b != null ? this.f2427c.m2402a(this.f2426b) : -1;
            if (m2402a != -1) {
                m2403b = new C0861g(m2403b, m2402a);
            }
            this.f2428d = m2403b;
            aVar.mo2410a((InterfaceC0858d.a<? super InputStream>) this.f2428d);
        } catch (FileNotFoundException e) {
            if (Log.isLoggable(f2425a, 3)) {
                Log.d(f2425a, "Failed to find thumbnail file", e);
            }
            aVar.mo2409a((Exception) e);
        }
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    /* renamed from: b */
    public final void mo2396b() {
        if (this.f2428d != null) {
            try {
                this.f2428d.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    /* renamed from: c */
    public final void mo2397c() {
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    @NonNull
    /* renamed from: d */
    public final EnumC0849a mo2398d() {
        return EnumC0849a.LOCAL;
    }
}
