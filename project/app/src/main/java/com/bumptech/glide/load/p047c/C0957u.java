package com.bumptech.glide.load.p047c;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import java.io.File;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.c.u */
/* loaded from: classes.dex */
public final class C0957u<Data> implements InterfaceC0950n<String, Data> {

    /* renamed from: a */
    private final InterfaceC0950n<Uri, Data> f2975a;

    /* renamed from: com.bumptech.glide.load.c.u$a */
    /* loaded from: classes.dex */
    public static final class a implements InterfaceC0951o<String, AssetFileDescriptor> {
        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final InterfaceC0950n<String, AssetFileDescriptor> mo2759a(@NonNull C0954r c0954r) {
            return new C0957u(c0954r.m2832b(Uri.class, AssetFileDescriptor.class));
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    /* renamed from: com.bumptech.glide.load.c.u$b */
    /* loaded from: classes.dex */
    public static class b implements InterfaceC0951o<String, ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<String, ParcelFileDescriptor> mo2759a(@NonNull C0954r c0954r) {
            return new C0957u(c0954r.m2832b(Uri.class, ParcelFileDescriptor.class));
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    /* renamed from: com.bumptech.glide.load.c.u$c */
    /* loaded from: classes.dex */
    public static class c implements InterfaceC0951o<String, InputStream> {
        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<String, InputStream> mo2759a(@NonNull C0954r c0954r) {
            return new C0957u(c0954r.m2832b(Uri.class, InputStream.class));
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    public C0957u(InterfaceC0950n<Uri, Data> interfaceC0950n) {
        this.f2975a = interfaceC0950n;
    }

    @Nullable
    /* renamed from: a, reason: avoid collision after fix types in other method */
    private static Uri a2(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.charAt(0) != '/') {
            Uri parse = Uri.parse(str);
            if (parse.getScheme() != null) {
                return parse;
            }
        }
        return m2842b(str);
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private InterfaceC0950n.a<Data> a2(@NonNull String str, int i, int i2, @NonNull C1025j c1025j) {
        Uri uri;
        if (TextUtils.isEmpty(str)) {
            uri = null;
        } else {
            if (str.charAt(0) != '/') {
                Uri parse = Uri.parse(str);
                if (parse.getScheme() != null) {
                    uri = parse;
                }
            }
            uri = m2842b(str);
        }
        if (uri == null || !this.f2975a.mo2751a(uri)) {
            return null;
        }
        return this.f2975a.mo2750a(uri, i, i2, c1025j);
    }

    /* renamed from: a */
    private static boolean m2841a() {
        return true;
    }

    /* renamed from: b */
    private static Uri m2842b(String str) {
        return Uri.fromFile(new File(str));
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0950n.a mo2750a(@NonNull String str, int i, int i2, @NonNull C1025j c1025j) {
        Uri uri;
        String str2 = str;
        if (TextUtils.isEmpty(str2)) {
            uri = null;
        } else {
            if (str2.charAt(0) != '/') {
                Uri parse = Uri.parse(str2);
                if (parse.getScheme() != null) {
                    uri = parse;
                }
            }
            uri = m2842b(str2);
        }
        if (uri == null || !this.f2975a.mo2751a(uri)) {
            return null;
        }
        return this.f2975a.mo2750a(uri, i, i2, c1025j);
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo2751a(@NonNull String str) {
        return true;
    }
}
