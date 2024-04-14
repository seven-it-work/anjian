package com.bumptech.glide.load.p047c;

import android.net.Uri;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* renamed from: com.bumptech.glide.load.c.x */
/* loaded from: classes.dex */
public final class C0960x<Data> implements InterfaceC0950n<Uri, Data> {

    /* renamed from: a */
    private static final Set<String> f2984a = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* renamed from: b */
    private final InterfaceC0950n<C0943g, Data> f2985b;

    /* renamed from: com.bumptech.glide.load.c.x$a */
    /* loaded from: classes.dex */
    public static class a implements InterfaceC0951o<Uri, InputStream> {
        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<Uri, InputStream> mo2759a(C0954r c0954r) {
            return new C0960x(c0954r.m2832b(C0943g.class, InputStream.class));
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    public C0960x(InterfaceC0950n<C0943g, Data> interfaceC0950n) {
        this.f2985b = interfaceC0950n;
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private InterfaceC0950n.a<Data> a2(@NonNull Uri uri, int i, int i2, @NonNull C1025j c1025j) {
        return this.f2985b.mo2750a(new C0943g(uri.toString()), i, i2, c1025j);
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private static boolean a2(@NonNull Uri uri) {
        return f2984a.contains(uri.getScheme());
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0950n.a mo2750a(@NonNull Uri uri, int i, int i2, @NonNull C1025j c1025j) {
        return this.f2985b.mo2750a(new C0943g(uri.toString()), i, i2, c1025j);
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* synthetic */ boolean mo2751a(@NonNull Uri uri) {
        return f2984a.contains(uri.getScheme());
    }
}
