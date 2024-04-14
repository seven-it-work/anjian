package com.bumptech.glide.load.p047c;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.p040a.InterfaceC0858d;
import com.bumptech.glide.load.p040a.p041a.C0852b;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import com.bumptech.glide.p039f.C0842d;
import java.io.File;
import java.io.FileNotFoundException;

/* renamed from: com.bumptech.glide.load.c.k */
/* loaded from: classes.dex */
public final class C0947k implements InterfaceC0950n<Uri, File> {

    /* renamed from: a */
    private final Context f2930a;

    /* renamed from: com.bumptech.glide.load.c.k$a */
    /* loaded from: classes.dex */
    public static final class a implements InterfaceC0951o<Uri, File> {

        /* renamed from: a */
        private final Context f2931a;

        public a(Context context) {
            this.f2931a = context;
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<Uri, File> mo2759a(C0954r c0954r) {
            return new C0947k(this.f2931a);
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    /* renamed from: com.bumptech.glide.load.c.k$b */
    /* loaded from: classes.dex */
    private static class b implements InterfaceC0858d<File> {

        /* renamed from: a */
        private static final String[] f2932a = {"_data"};

        /* renamed from: b */
        private final Context f2933b;

        /* renamed from: c */
        private final Uri f2934c;

        b(Context context, Uri uri) {
            this.f2933b = context;
            this.f2934c = uri;
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        @NonNull
        /* renamed from: a */
        public final Class<File> mo2380a() {
            return File.class;
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        /* renamed from: a */
        public final void mo2395a(@NonNull EnumC0848l enumC0848l, @NonNull InterfaceC0858d.a<? super File> aVar) {
            Cursor query = this.f2933b.getContentResolver().query(this.f2934c, f2932a, null, null, null);
            if (query != null) {
                try {
                    r0 = query.moveToFirst() ? query.getString(query.getColumnIndexOrThrow("_data")) : null;
                } finally {
                    query.close();
                }
            }
            if (!TextUtils.isEmpty(r0)) {
                aVar.mo2410a((InterfaceC0858d.a<? super File>) new File(r0));
                return;
            }
            aVar.mo2409a((Exception) new FileNotFoundException("Failed to find file path for: " + this.f2934c));
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        /* renamed from: b */
        public final void mo2396b() {
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

    public C0947k(Context context) {
        this.f2930a = context;
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private InterfaceC0950n.a<File> a2(@NonNull Uri uri) {
        return new InterfaceC0950n.a<>(new C0842d(uri), new b(this.f2930a, uri));
    }

    /* renamed from: b */
    private static boolean m2802b(@NonNull Uri uri) {
        return C0852b.m2387a(uri);
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0950n.a<File> mo2750a(@NonNull Uri uri, int i, int i2, @NonNull C1025j c1025j) {
        Uri uri2 = uri;
        return new InterfaceC0950n.a<>(new C0842d(uri2), new b(this.f2930a, uri2));
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo2751a(@NonNull Uri uri) {
        return C0852b.m2387a(uri);
    }
}
