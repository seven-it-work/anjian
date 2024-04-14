package com.bumptech.glide.load.p047c;

import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.p040a.InterfaceC0858d;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import com.bumptech.glide.p039f.C0842d;
import com.bumptech.glide.util.C1073a;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* renamed from: com.bumptech.glide.load.c.d */
/* loaded from: classes.dex */
public final class C0940d implements InterfaceC0950n<File, ByteBuffer> {

    /* renamed from: a */
    private static final String f2895a = "ByteBufferFileLoader";

    /* renamed from: com.bumptech.glide.load.c.d$a */
    /* loaded from: classes.dex */
    private static final class a implements InterfaceC0858d<ByteBuffer> {

        /* renamed from: a */
        private final File f2896a;

        a(File file) {
            this.f2896a = file;
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        @NonNull
        /* renamed from: a */
        public final Class<ByteBuffer> mo2380a() {
            return ByteBuffer.class;
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        /* renamed from: a */
        public final void mo2395a(@NonNull EnumC0848l enumC0848l, @NonNull InterfaceC0858d.a<? super ByteBuffer> aVar) {
            try {
                aVar.mo2410a((InterfaceC0858d.a<? super ByteBuffer>) C1073a.m3417a(this.f2896a));
            } catch (IOException e) {
                if (Log.isLoggable(C0940d.f2895a, 3)) {
                    Log.d(C0940d.f2895a, "Failed to obtain ByteBuffer for file", e);
                }
                aVar.mo2409a((Exception) e);
            }
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

    /* renamed from: com.bumptech.glide.load.c.d$b */
    /* loaded from: classes.dex */
    public static class b implements InterfaceC0951o<File, ByteBuffer> {
        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<File, ByteBuffer> mo2759a(@NonNull C0954r c0954r) {
            return new C0940d();
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private static InterfaceC0950n.a<ByteBuffer> a2(@NonNull File file) {
        return new InterfaceC0950n.a<>(new C0842d(file), new a(file));
    }

    /* renamed from: a */
    private static boolean m2771a() {
        return true;
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0950n.a<ByteBuffer> mo2750a(@NonNull File file, int i, int i2, @NonNull C1025j c1025j) {
        File file2 = file;
        return new InterfaceC0950n.a<>(new C0842d(file2), new a(file2));
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo2751a(@NonNull File file) {
        return true;
    }
}
