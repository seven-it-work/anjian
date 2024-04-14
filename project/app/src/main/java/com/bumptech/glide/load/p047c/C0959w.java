package com.bumptech.glide.load.p047c;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.p040a.C0850a;
import com.bumptech.glide.load.p040a.C0863i;
import com.bumptech.glide.load.p040a.C0868n;
import com.bumptech.glide.load.p040a.InterfaceC0858d;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import com.bumptech.glide.p039f.C0842d;
import com.umeng.analytics.pro.C2427b;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* renamed from: com.bumptech.glide.load.c.w */
/* loaded from: classes.dex */
public final class C0959w<Data> implements InterfaceC0950n<Uri, Data> {

    /* renamed from: a */
    private static final Set<String> f2979a = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "android.resource", C2427b.f8956W)));

    /* renamed from: b */
    private final c<Data> f2980b;

    /* renamed from: com.bumptech.glide.load.c.w$a */
    /* loaded from: classes.dex */
    public static final class a implements InterfaceC0951o<Uri, AssetFileDescriptor>, c<AssetFileDescriptor> {

        /* renamed from: a */
        private final ContentResolver f2981a;

        public a(ContentResolver contentResolver) {
            this.f2981a = contentResolver;
        }

        @Override // com.bumptech.glide.load.p047c.C0959w.c
        /* renamed from: a */
        public final InterfaceC0858d<AssetFileDescriptor> mo2846a(Uri uri) {
            return new C0850a(this.f2981a, uri);
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final InterfaceC0950n<Uri, AssetFileDescriptor> mo2759a(C0954r c0954r) {
            return new C0959w(this);
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    /* renamed from: com.bumptech.glide.load.c.w$b */
    /* loaded from: classes.dex */
    public static class b implements InterfaceC0951o<Uri, ParcelFileDescriptor>, c<ParcelFileDescriptor> {

        /* renamed from: a */
        private final ContentResolver f2982a;

        public b(ContentResolver contentResolver) {
            this.f2982a = contentResolver;
        }

        @Override // com.bumptech.glide.load.p047c.C0959w.c
        /* renamed from: a */
        public final InterfaceC0858d<ParcelFileDescriptor> mo2846a(Uri uri) {
            return new C0863i(this.f2982a, uri);
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<Uri, ParcelFileDescriptor> mo2759a(C0954r c0954r) {
            return new C0959w(this);
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    /* renamed from: com.bumptech.glide.load.c.w$c */
    /* loaded from: classes.dex */
    public interface c<Data> {
        /* renamed from: a */
        InterfaceC0858d<Data> mo2846a(Uri uri);
    }

    /* renamed from: com.bumptech.glide.load.c.w$d */
    /* loaded from: classes.dex */
    public static class d implements InterfaceC0951o<Uri, InputStream>, c<InputStream> {

        /* renamed from: a */
        private final ContentResolver f2983a;

        public d(ContentResolver contentResolver) {
            this.f2983a = contentResolver;
        }

        @Override // com.bumptech.glide.load.p047c.C0959w.c
        /* renamed from: a */
        public final InterfaceC0858d<InputStream> mo2846a(Uri uri) {
            return new C0868n(this.f2983a, uri);
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<Uri, InputStream> mo2759a(C0954r c0954r) {
            return new C0959w(this);
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    public C0959w(c<Data> cVar) {
        this.f2980b = cVar;
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private InterfaceC0950n.a<Data> a2(@NonNull Uri uri) {
        return new InterfaceC0950n.a<>(new C0842d(uri), this.f2980b.mo2846a(uri));
    }

    /* renamed from: b */
    private static boolean m2845b(@NonNull Uri uri) {
        return f2979a.contains(uri.getScheme());
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0950n.a mo2750a(@NonNull Uri uri, int i, int i2, @NonNull C1025j c1025j) {
        Uri uri2 = uri;
        return new InterfaceC0950n.a(new C0842d(uri2), this.f2980b.mo2846a(uri2));
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* synthetic */ boolean mo2751a(@NonNull Uri uri) {
        return f2979a.contains(uri.getScheme());
    }
}
