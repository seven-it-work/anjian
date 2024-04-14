package com.bumptech.glide.load.p047c.p048a;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.p040a.p041a.C0852b;
import com.bumptech.glide.load.p040a.p041a.C0853c;
import com.bumptech.glide.load.p047c.C0954r;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import com.bumptech.glide.load.p047c.InterfaceC0951o;
import com.bumptech.glide.p039f.C0842d;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.c.a.d */
/* loaded from: classes.dex */
public final class C0935d implements InterfaceC0950n<Uri, InputStream> {

    /* renamed from: a */
    private final Context f2884a;

    /* renamed from: com.bumptech.glide.load.c.a.d$a */
    /* loaded from: classes.dex */
    public static class a implements InterfaceC0951o<Uri, InputStream> {

        /* renamed from: a */
        private final Context f2885a;

        public a(Context context) {
            this.f2885a = context;
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<Uri, InputStream> mo2759a(C0954r c0954r) {
            return new C0935d(this.f2885a);
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    public C0935d(Context context) {
        this.f2884a = context.getApplicationContext();
    }

    /* renamed from: a */
    private InterfaceC0950n.a<InputStream> m2761a(@NonNull Uri uri, int i, int i2) {
        if (!C0852b.m2386a(i, i2)) {
            return null;
        }
        C0842d c0842d = new C0842d(uri);
        Context context = this.f2884a;
        return new InterfaceC0950n.a<>(c0842d, C0853c.m2392a(context, uri, new C0853c.a(context.getContentResolver())));
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private static boolean a2(@NonNull Uri uri) {
        return C0852b.m2387a(uri) && !C0852b.m2388b(uri);
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0950n.a<InputStream> mo2750a(@NonNull Uri uri, int i, int i2, @NonNull C1025j c1025j) {
        Uri uri2 = uri;
        if (!C0852b.m2386a(i, i2)) {
            return null;
        }
        C0842d c0842d = new C0842d(uri2);
        Context context = this.f2884a;
        return new InterfaceC0950n.a<>(c0842d, C0853c.m2392a(context, uri2, new C0853c.a(context.getContentResolver())));
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* synthetic */ boolean mo2751a(@NonNull Uri uri) {
        Uri uri2 = uri;
        return C0852b.m2387a(uri2) && !C0852b.m2388b(uri2);
    }
}
