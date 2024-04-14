package com.bumptech.glide.load.p047c;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import java.io.InputStream;
import org.apache.commons.io.IOUtils;

/* renamed from: com.bumptech.glide.load.c.s */
/* loaded from: classes.dex */
public final class C0955s<Data> implements InterfaceC0950n<Integer, Data> {

    /* renamed from: a */
    private static final String f2966a = "ResourceLoader";

    /* renamed from: b */
    private final InterfaceC0950n<Uri, Data> f2967b;

    /* renamed from: c */
    private final Resources f2968c;

    /* renamed from: com.bumptech.glide.load.c.s$a */
    /* loaded from: classes.dex */
    public static final class a implements InterfaceC0951o<Integer, AssetFileDescriptor> {

        /* renamed from: a */
        private final Resources f2969a;

        public a(Resources resources) {
            this.f2969a = resources;
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final InterfaceC0950n<Integer, AssetFileDescriptor> mo2759a(C0954r c0954r) {
            return new C0955s(this.f2969a, c0954r.m2832b(Uri.class, AssetFileDescriptor.class));
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    /* renamed from: com.bumptech.glide.load.c.s$b */
    /* loaded from: classes.dex */
    public static class b implements InterfaceC0951o<Integer, ParcelFileDescriptor> {

        /* renamed from: a */
        private final Resources f2970a;

        public b(Resources resources) {
            this.f2970a = resources;
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<Integer, ParcelFileDescriptor> mo2759a(C0954r c0954r) {
            return new C0955s(this.f2970a, c0954r.m2832b(Uri.class, ParcelFileDescriptor.class));
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    /* renamed from: com.bumptech.glide.load.c.s$c */
    /* loaded from: classes.dex */
    public static class c implements InterfaceC0951o<Integer, InputStream> {

        /* renamed from: a */
        private final Resources f2971a;

        public c(Resources resources) {
            this.f2971a = resources;
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<Integer, InputStream> mo2759a(C0954r c0954r) {
            return new C0955s(this.f2971a, c0954r.m2832b(Uri.class, InputStream.class));
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    /* renamed from: com.bumptech.glide.load.c.s$d */
    /* loaded from: classes.dex */
    public static class d implements InterfaceC0951o<Integer, Uri> {

        /* renamed from: a */
        private final Resources f2972a;

        public d(Resources resources) {
            this.f2972a = resources;
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<Integer, Uri> mo2759a(C0954r c0954r) {
            return new C0955s(this.f2972a, C0958v.m2843a());
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    public C0955s(Resources resources, InterfaceC0950n<Uri, Data> interfaceC0950n) {
        this.f2968c = resources;
        this.f2967b = interfaceC0950n;
    }

    @Nullable
    /* renamed from: a, reason: avoid collision after fix types in other method */
    private Uri a2(Integer num) {
        try {
            return Uri.parse("android.resource://" + this.f2968c.getResourcePackageName(num.intValue()) + IOUtils.DIR_SEPARATOR_UNIX + this.f2968c.getResourceTypeName(num.intValue()) + IOUtils.DIR_SEPARATOR_UNIX + this.f2968c.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException e) {
            if (!Log.isLoggable(f2966a, 5)) {
                return null;
            }
            Log.w(f2966a, "Received invalid resource id: " + num, e);
            return null;
        }
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private InterfaceC0950n.a<Data> a2(@NonNull Integer num, int i, int i2, @NonNull C1025j c1025j) {
        Uri a2 = a2(num);
        if (a2 == null) {
            return null;
        }
        return this.f2967b.mo2750a(a2, i, i2, c1025j);
    }

    /* renamed from: a */
    private static boolean m2839a() {
        return true;
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ InterfaceC0950n.a mo2750a(@NonNull Integer num, int i, int i2, @NonNull C1025j c1025j) {
        Uri a2 = a2(num);
        if (a2 == null) {
            return null;
        }
        return this.f2967b.mo2750a(a2, i, i2, c1025j);
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo2751a(@NonNull Integer num) {
        return true;
    }
}
