package com.bumptech.glide.load.p042b.p043a;

import android.graphics.Bitmap;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.util.C1086k;

/* renamed from: com.bumptech.glide.load.b.a.c */
/* loaded from: classes.dex */
final class C0873c implements InterfaceC0882l {

    /* renamed from: a */
    private final b f2497a = new b();

    /* renamed from: b */
    private final C0878h<a, Bitmap> f2498b = new C0878h<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.b.a.c$a */
    /* loaded from: classes.dex */
    public static class a implements InterfaceC0883m {

        /* renamed from: a */
        int f2499a;

        /* renamed from: b */
        int f2500b;

        /* renamed from: c */
        Bitmap.Config f2501c;

        /* renamed from: d */
        private final b f2502d;

        public a(b bVar) {
            this.f2502d = bVar;
        }

        /* renamed from: a */
        private void m2458a(int i, int i2, Bitmap.Config config) {
            this.f2499a = i;
            this.f2500b = i2;
            this.f2501c = config;
        }

        @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0883m
        /* renamed from: a */
        public final void mo2459a() {
            this.f2502d.m2463a(this);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (this.f2499a == aVar.f2499a && this.f2500b == aVar.f2500b && this.f2501c == aVar.f2501c) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return (((this.f2499a * 31) + this.f2500b) * 31) + (this.f2501c != null ? this.f2501c.hashCode() : 0);
        }

        public final String toString() {
            return C0873c.m2450c(this.f2499a, this.f2500b, this.f2501c);
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.b.a.c$b */
    /* loaded from: classes.dex */
    static class b extends AbstractC0874d<a> {
        b() {
        }

        /* renamed from: c */
        private a m2460c() {
            return new a(this);
        }

        /* renamed from: a */
        final a m2461a(int i, int i2, Bitmap.Config config) {
            a b2 = m2464b();
            b2.f2499a = i;
            b2.f2500b = i2;
            b2.f2501c = config;
            return b2;
        }

        @Override // com.bumptech.glide.load.p042b.p043a.AbstractC0874d
        /* renamed from: a */
        protected final /* synthetic */ a mo2462a() {
            return new a(this);
        }
    }

    /* renamed from: c */
    static String m2450c(int i, int i2, Bitmap.Config config) {
        return "[" + i + "x" + i2 + "], " + config;
    }

    /* renamed from: d */
    private static String m2451d(Bitmap bitmap) {
        return m2450c(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0882l
    /* renamed from: a */
    public final Bitmap mo2452a() {
        return this.f2498b.m2477a();
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0882l
    /* renamed from: a */
    public final Bitmap mo2453a(int i, int i2, Bitmap.Config config) {
        return this.f2498b.m2478a((C0878h<a, Bitmap>) this.f2497a.m2461a(i, i2, config));
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0882l
    /* renamed from: a */
    public final void mo2454a(Bitmap bitmap) {
        this.f2498b.m2479a(this.f2497a.m2461a(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0882l
    /* renamed from: b */
    public final String mo2455b(int i, int i2, Bitmap.Config config) {
        return m2450c(i, i2, config);
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0882l
    /* renamed from: b */
    public final String mo2456b(Bitmap bitmap) {
        return m2450c(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0882l
    /* renamed from: c */
    public final int mo2457c(Bitmap bitmap) {
        return C1086k.m3477a(bitmap);
    }

    public final String toString() {
        return "AttributeStrategy:\n  " + this.f2498b;
    }
}
