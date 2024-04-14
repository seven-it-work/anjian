package com.bumptech.glide.load.p047c;

import android.support.annotation.NonNull;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.p040a.InterfaceC0858d;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import com.bumptech.glide.p039f.C0842d;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* renamed from: com.bumptech.glide.load.c.b */
/* loaded from: classes.dex */
public final class C0938b<Data> implements InterfaceC0950n<byte[], Data> {

    /* renamed from: a */
    private final b<Data> f2889a;

    /* renamed from: com.bumptech.glide.load.c.b$a */
    /* loaded from: classes.dex */
    public static class a implements InterfaceC0951o<byte[], ByteBuffer> {
        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<byte[], ByteBuffer> mo2759a(@NonNull C0954r c0954r) {
            return new C0938b(new b<ByteBuffer>() { // from class: com.bumptech.glide.load.c.b.a.1
                /* renamed from: b */
                private static ByteBuffer m2765b(byte[] bArr) {
                    return ByteBuffer.wrap(bArr);
                }

                @Override // com.bumptech.glide.load.p047c.C0938b.b
                /* renamed from: a */
                public final Class<ByteBuffer> mo2766a() {
                    return ByteBuffer.class;
                }

                @Override // com.bumptech.glide.load.p047c.C0938b.b
                /* renamed from: a */
                public final /* synthetic */ ByteBuffer mo2767a(byte[] bArr) {
                    return ByteBuffer.wrap(bArr);
                }
            });
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    /* renamed from: com.bumptech.glide.load.c.b$b */
    /* loaded from: classes.dex */
    public interface b<Data> {
        /* renamed from: a */
        Class<Data> mo2766a();

        /* renamed from: a */
        Data mo2767a(byte[] bArr);
    }

    /* renamed from: com.bumptech.glide.load.c.b$c */
    /* loaded from: classes.dex */
    private static class c<Data> implements InterfaceC0858d<Data> {

        /* renamed from: a */
        private final byte[] f2891a;

        /* renamed from: b */
        private final b<Data> f2892b;

        c(byte[] bArr, b<Data> bVar) {
            this.f2891a = bArr;
            this.f2892b = bVar;
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        @NonNull
        /* renamed from: a */
        public final Class<Data> mo2380a() {
            return this.f2892b.mo2766a();
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        /* renamed from: a */
        public final void mo2395a(@NonNull EnumC0848l enumC0848l, @NonNull InterfaceC0858d.a<? super Data> aVar) {
            aVar.mo2410a((InterfaceC0858d.a<? super Data>) this.f2892b.mo2767a(this.f2891a));
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

    /* renamed from: com.bumptech.glide.load.c.b$d */
    /* loaded from: classes.dex */
    public static class d implements InterfaceC0951o<byte[], InputStream> {
        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<byte[], InputStream> mo2759a(@NonNull C0954r c0954r) {
            return new C0938b(new b<InputStream>() { // from class: com.bumptech.glide.load.c.b.d.1
                /* renamed from: b */
                private static InputStream m2768b(byte[] bArr) {
                    return new ByteArrayInputStream(bArr);
                }

                @Override // com.bumptech.glide.load.p047c.C0938b.b
                /* renamed from: a */
                public final Class<InputStream> mo2766a() {
                    return InputStream.class;
                }

                @Override // com.bumptech.glide.load.p047c.C0938b.b
                /* renamed from: a */
                public final /* synthetic */ InputStream mo2767a(byte[] bArr) {
                    return new ByteArrayInputStream(bArr);
                }
            });
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    public C0938b(b<Data> bVar) {
        this.f2889a = bVar;
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private InterfaceC0950n.a<Data> a2(@NonNull byte[] bArr) {
        return new InterfaceC0950n.a<>(new C0842d(bArr), new c(bArr, this.f2889a));
    }

    /* renamed from: a */
    private static boolean m2764a() {
        return true;
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0950n.a mo2750a(@NonNull byte[] bArr, int i, int i2, @NonNull C1025j c1025j) {
        byte[] bArr2 = bArr;
        return new InterfaceC0950n.a(new C0842d(bArr2), new c(bArr2, this.f2889a));
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo2751a(@NonNull byte[] bArr) {
        return true;
    }
}
