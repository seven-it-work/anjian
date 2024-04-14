package com.bumptech.glide.load.p042b.p043a;

import android.graphics.Bitmap;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.util.C1086k;
import java.util.NavigableMap;

@RequiresApi(19)
/* renamed from: com.bumptech.glide.load.b.a.p */
/* loaded from: classes.dex */
final class C0886p implements InterfaceC0882l {

    /* renamed from: a */
    private static final int f2551a = 8;

    /* renamed from: b */
    private final b f2552b = new b();

    /* renamed from: c */
    private final C0878h<a, Bitmap> f2553c = new C0878h<>();

    /* renamed from: d */
    private final NavigableMap<Integer, Integer> f2554d = new C0884n();

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.b.a.p$a */
    /* loaded from: classes.dex */
    public static final class a implements InterfaceC0883m {

        /* renamed from: a */
        int f2555a;

        /* renamed from: b */
        private final b f2556b;

        a(b bVar) {
            this.f2556b = bVar;
        }

        /* renamed from: a */
        private void m2523a(int i) {
            this.f2555a = i;
        }

        @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0883m
        /* renamed from: a */
        public final void mo2459a() {
            this.f2556b.m2463a((b) this);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof a) && this.f2555a == ((a) obj).f2555a;
        }

        public final int hashCode() {
            return this.f2555a;
        }

        public final String toString() {
            return C0886p.m2520a(this.f2555a);
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.b.a.p$b */
    /* loaded from: classes.dex */
    static class b extends AbstractC0874d<a> {
        b() {
        }

        /* renamed from: c */
        private a m2524c() {
            return new a(this);
        }

        @Override // com.bumptech.glide.load.p042b.p043a.AbstractC0874d
        /* renamed from: a */
        protected final /* synthetic */ a mo2462a() {
            return new a(this);
        }

        /* renamed from: a */
        public final a m2525a(int i) {
            a aVar = (a) super.m2464b();
            aVar.f2555a = i;
            return aVar;
        }
    }

    C0886p() {
    }

    /* renamed from: a */
    static String m2520a(int i) {
        return "[" + i + "]";
    }

    /* renamed from: a */
    private void m2521a(Integer num) {
        Integer num2 = (Integer) this.f2554d.get(num);
        if (num2.intValue() == 1) {
            this.f2554d.remove(num);
        } else {
            this.f2554d.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    /* renamed from: d */
    private static String m2522d(Bitmap bitmap) {
        return m2520a(C1086k.m3477a(bitmap));
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0882l
    @Nullable
    /* renamed from: a */
    public final Bitmap mo2452a() {
        Bitmap m2477a = this.f2553c.m2477a();
        if (m2477a != null) {
            m2521a(Integer.valueOf(C1086k.m3477a(m2477a)));
        }
        return m2477a;
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0882l
    @Nullable
    /* renamed from: a */
    public final Bitmap mo2453a(int i, int i2, Bitmap.Config config) {
        int m3475a = C1086k.m3475a(i, i2, config);
        a m2525a = this.f2552b.m2525a(m3475a);
        Integer ceilingKey = this.f2554d.ceilingKey(Integer.valueOf(m3475a));
        if (ceilingKey != null && ceilingKey.intValue() != m3475a && ceilingKey.intValue() <= m3475a * 8) {
            this.f2552b.m2463a((b) m2525a);
            m2525a = this.f2552b.m2525a(ceilingKey.intValue());
        }
        Bitmap m2478a = this.f2553c.m2478a((C0878h<a, Bitmap>) m2525a);
        if (m2478a != null) {
            m2478a.reconfigure(i, i2, config);
            m2521a(ceilingKey);
        }
        return m2478a;
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0882l
    /* renamed from: a */
    public final void mo2454a(Bitmap bitmap) {
        a m2525a = this.f2552b.m2525a(C1086k.m3477a(bitmap));
        this.f2553c.m2479a(m2525a, bitmap);
        Integer num = (Integer) this.f2554d.get(Integer.valueOf(m2525a.f2555a));
        this.f2554d.put(Integer.valueOf(m2525a.f2555a), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0882l
    /* renamed from: b */
    public final String mo2455b(int i, int i2, Bitmap.Config config) {
        return m2520a(C1086k.m3475a(i, i2, config));
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0882l
    /* renamed from: b */
    public final String mo2456b(Bitmap bitmap) {
        return m2520a(C1086k.m3477a(bitmap));
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0882l
    /* renamed from: c */
    public final int mo2457c(Bitmap bitmap) {
        return C1086k.m3477a(bitmap);
    }

    public final String toString() {
        return "SizeStrategy:\n  " + this.f2553c + "\n  SortedSizes" + this.f2554d;
    }
}
