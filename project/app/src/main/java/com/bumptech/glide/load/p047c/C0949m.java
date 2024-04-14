package com.bumptech.glide.load.p047c;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.util.C1081f;
import com.bumptech.glide.util.C1086k;
import java.util.Queue;

/* renamed from: com.bumptech.glide.load.c.m */
/* loaded from: classes.dex */
public final class C0949m<A, B> {

    /* renamed from: a */
    private static final int f2935a = 250;

    /* renamed from: b */
    private final C1081f<a<A>, B> f2936b;

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.c.m$a */
    /* loaded from: classes.dex */
    static final class a<A> {

        /* renamed from: a */
        private static final Queue<a<?>> f2938a = C1086k.m3484a(0);

        /* renamed from: b */
        private int f2939b;

        /* renamed from: c */
        private int f2940c;

        /* renamed from: d */
        private A f2941d;

        private a() {
        }

        /* renamed from: a */
        static <A> a<A> m2808a(A a2, int i, int i2) {
            a<A> aVar;
            synchronized (f2938a) {
                aVar = (a) f2938a.poll();
            }
            if (aVar == null) {
                aVar = new a<>();
            }
            ((a) aVar).f2941d = a2;
            ((a) aVar).f2940c = i;
            ((a) aVar).f2939b = i2;
            return aVar;
        }

        /* renamed from: b */
        private void m2809b(A a2, int i, int i2) {
            this.f2941d = a2;
            this.f2940c = i;
            this.f2939b = i2;
        }

        /* renamed from: a */
        public final void m2810a() {
            synchronized (f2938a) {
                f2938a.offer(this);
            }
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (this.f2940c == aVar.f2940c && this.f2939b == aVar.f2939b && this.f2941d.equals(aVar.f2941d)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return (((this.f2939b * 31) + this.f2940c) * 31) + this.f2941d.hashCode();
        }
    }

    public C0949m() {
        this(250L);
    }

    public C0949m(long j) {
        this.f2936b = new C1081f<a<A>, B>(j) { // from class: com.bumptech.glide.load.c.m.1
            /* renamed from: a */
            private static void m2807a(@NonNull a<A> aVar) {
                aVar.m2810a();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.bumptech.glide.util.C1081f
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ void mo2551a(@NonNull Object obj, @Nullable Object obj2) {
                ((a) obj).m2810a();
            }
        };
    }

    /* renamed from: a */
    private void m2804a() {
        this.f2936b.m3464c();
    }

    @Nullable
    /* renamed from: a */
    public final B m2805a(A a2, int i, int i2) {
        a<A> m2808a = a.m2808a(a2, i, i2);
        B m3461b = this.f2936b.m3461b(m2808a);
        m2808a.m2810a();
        return m3461b;
    }

    /* renamed from: a */
    public final void m2806a(A a2, int i, int i2, B b2) {
        this.f2936b.m3462b(a.m2808a(a2, i, i2), b2);
    }
}
