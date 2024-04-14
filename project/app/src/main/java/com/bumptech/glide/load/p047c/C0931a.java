package com.bumptech.glide.load.p047c;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.p040a.C0862h;
import com.bumptech.glide.load.p040a.C0867m;
import com.bumptech.glide.load.p040a.InterfaceC0858d;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import com.bumptech.glide.p039f.C0842d;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.c.a */
/* loaded from: classes.dex */
public final class C0931a<Data> implements InterfaceC0950n<Uri, Data> {

    /* renamed from: a */
    private static final String f2870a = "android_asset";

    /* renamed from: b */
    private static final String f2871b = "file:///android_asset/";

    /* renamed from: c */
    private static final int f2872c = 22;

    /* renamed from: d */
    private final AssetManager f2873d;

    /* renamed from: e */
    private final a<Data> f2874e;

    /* renamed from: com.bumptech.glide.load.c.a$a */
    /* loaded from: classes.dex */
    public interface a<Data> {
        /* renamed from: a */
        InterfaceC0858d<Data> mo2756a(AssetManager assetManager, String str);
    }

    /* renamed from: com.bumptech.glide.load.c.a$b */
    /* loaded from: classes.dex */
    public static class b implements a<ParcelFileDescriptor>, InterfaceC0951o<Uri, ParcelFileDescriptor> {

        /* renamed from: a */
        private final AssetManager f2879a;

        public b(AssetManager assetManager) {
            this.f2879a = assetManager;
        }

        @Override // com.bumptech.glide.load.p047c.C0931a.a
        /* renamed from: a */
        public final InterfaceC0858d<ParcelFileDescriptor> mo2756a(AssetManager assetManager, String str) {
            return new C0862h(assetManager, str);
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<Uri, ParcelFileDescriptor> mo2759a(C0954r c0954r) {
            return new C0931a(this.f2879a, this);
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    /* renamed from: com.bumptech.glide.load.c.a$c */
    /* loaded from: classes.dex */
    public static class c implements a<InputStream>, InterfaceC0951o<Uri, InputStream> {

        /* renamed from: a */
        private final AssetManager f2883a;

        public c(AssetManager assetManager) {
            this.f2883a = assetManager;
        }

        @Override // com.bumptech.glide.load.p047c.C0931a.a
        /* renamed from: a */
        public final InterfaceC0858d<InputStream> mo2756a(AssetManager assetManager, String str) {
            return new C0867m(assetManager, str);
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<Uri, InputStream> mo2759a(C0954r c0954r) {
            return new C0931a(this.f2883a, this);
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    public C0931a(AssetManager assetManager, a<Data> aVar) {
        this.f2873d = assetManager;
        this.f2874e = aVar;
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private InterfaceC0950n.a<Data> a2(@NonNull Uri uri) {
        return new InterfaceC0950n.a<>(new C0842d(uri), this.f2874e.mo2756a(this.f2873d, uri.toString().substring(f2872c)));
    }

    /* renamed from: b */
    private static boolean m2749b(@NonNull Uri uri) {
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && f2870a.equals(uri.getPathSegments().get(0));
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0950n.a mo2750a(@NonNull Uri uri, int i, int i2, @NonNull C1025j c1025j) {
        Uri uri2 = uri;
        return new InterfaceC0950n.a(new C0842d(uri2), this.f2874e.mo2756a(this.f2873d, uri2.toString().substring(f2872c)));
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* synthetic */ boolean mo2751a(@NonNull Uri uri) {
        Uri uri2 = uri;
        return "file".equals(uri2.getScheme()) && !uri2.getPathSegments().isEmpty() && f2870a.equals(uri2.getPathSegments().get(0));
    }
}
