package com.google.p130a.p140d.p142b;

import com.google.p130a.C2016m;
import com.google.p130a.C2023t;
import com.google.p130a.p137c.AbstractC1864i;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p137c.p138a.C1849a;
import com.google.p130a.p137c.p138a.C1851c;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Map;
import org.apache.commons.io.IOUtils;

/* renamed from: com.google.a.d.b.a */
/* loaded from: classes.dex */
public final class C1876a {

    /* renamed from: a */
    public final C1852b f7349a;

    /* renamed from: b */
    public final C1851c f7350b;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.a.d.b.a$a */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a */
        public final C2023t f7351a;

        /* renamed from: b */
        public final C2023t f7352b;

        /* renamed from: c */
        public final int f7353c;

        private a(C2023t c2023t, C2023t c2023t2, int i) {
            this.f7351a = c2023t;
            this.f7352b = c2023t2;
            this.f7353c = i;
        }

        /* synthetic */ a(C2023t c2023t, C2023t c2023t2, int i, byte b2) {
            this(c2023t, c2023t2, i);
        }

        /* renamed from: a */
        private C2023t m8602a() {
            return this.f7351a;
        }

        /* renamed from: b */
        private C2023t m8603b() {
            return this.f7352b;
        }

        /* renamed from: c */
        private int m8604c() {
            return this.f7353c;
        }

        public final String toString() {
            return this.f7351a + "/" + this.f7352b + IOUtils.DIR_SEPARATOR_UNIX + this.f7353c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.a.d.b.a$b */
    /* loaded from: classes.dex */
    public static final class b implements Serializable, Comparator<a> {
        private b() {
        }

        @Override // java.util.Comparator
        public final int compare(a aVar, a aVar2) {
            return aVar.f7353c - aVar2.f7353c;
        }
    }

    public C1876a(C1852b c1852b) throws C2016m {
        this.f7349a = c1852b;
        this.f7350b = new C1851c(c1852b);
    }

    /* renamed from: a */
    public static int m8594a(C2023t c2023t, C2023t c2023t2) {
        return C1849a.m8455a(C2023t.m9292a(c2023t, c2023t2));
    }

    /* renamed from: a */
    public static C1852b m8595a(C1852b c1852b, C2023t c2023t, C2023t c2023t2, C2023t c2023t3, C2023t c2023t4, int i, int i2) throws C2016m {
        float f = i - 0.5f;
        float f2 = i2 - 0.5f;
        return AbstractC1864i.m8537a().mo8531a(c1852b, i, i2, 0.5f, 0.5f, f, 0.5f, f, f2, 0.5f, f2, c2023t.f7901a, c2023t.f7902b, c2023t4.f7901a, c2023t4.f7902b, c2023t3.f7901a, c2023t3.f7902b, c2023t2.f7901a, c2023t2.f7902b);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x026d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.google.p130a.p137c.C1862g m8596a() throws com.google.p130a.C2016m {
        /*
            Method dump skipped, instructions count: 662
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p140d.p142b.C1876a.m8596a():com.google.a.c.g");
    }

    /* renamed from: a */
    private C2023t m8597a(C2023t c2023t, C2023t c2023t2, C2023t c2023t3, C2023t c2023t4, int i) {
        float f = i;
        float m8594a = m8594a(c2023t, c2023t2) / f;
        float m8594a2 = m8594a(c2023t3, c2023t4);
        C2023t c2023t5 = new C2023t(c2023t4.f7901a + (((c2023t4.f7901a - c2023t3.f7901a) / m8594a2) * m8594a), c2023t4.f7902b + (m8594a * ((c2023t4.f7902b - c2023t3.f7902b) / m8594a2)));
        float m8594a3 = m8594a(c2023t, c2023t3) / f;
        float m8594a4 = m8594a(c2023t2, c2023t4);
        C2023t c2023t6 = new C2023t(c2023t4.f7901a + (((c2023t4.f7901a - c2023t2.f7901a) / m8594a4) * m8594a3), c2023t4.f7902b + (m8594a3 * ((c2023t4.f7902b - c2023t2.f7902b) / m8594a4)));
        if (m8600a(c2023t5)) {
            return (m8600a(c2023t6) && Math.abs(m8601b(c2023t3, c2023t5).f7353c - m8601b(c2023t2, c2023t5).f7353c) > Math.abs(m8601b(c2023t3, c2023t6).f7353c - m8601b(c2023t2, c2023t6).f7353c)) ? c2023t6 : c2023t5;
        }
        if (m8600a(c2023t6)) {
            return c2023t6;
        }
        return null;
    }

    /* renamed from: a */
    private C2023t m8598a(C2023t c2023t, C2023t c2023t2, C2023t c2023t3, C2023t c2023t4, int i, int i2) {
        float m8594a = m8594a(c2023t, c2023t2) / i;
        float m8594a2 = m8594a(c2023t3, c2023t4);
        C2023t c2023t5 = new C2023t(c2023t4.f7901a + (((c2023t4.f7901a - c2023t3.f7901a) / m8594a2) * m8594a), c2023t4.f7902b + (m8594a * ((c2023t4.f7902b - c2023t3.f7902b) / m8594a2)));
        float m8594a3 = m8594a(c2023t, c2023t3) / i2;
        float m8594a4 = m8594a(c2023t2, c2023t4);
        C2023t c2023t6 = new C2023t(c2023t4.f7901a + (((c2023t4.f7901a - c2023t2.f7901a) / m8594a4) * m8594a3), c2023t4.f7902b + (m8594a3 * ((c2023t4.f7902b - c2023t2.f7902b) / m8594a4)));
        if (m8600a(c2023t5)) {
            return (m8600a(c2023t6) && Math.abs(i - m8601b(c2023t3, c2023t5).f7353c) + Math.abs(i2 - m8601b(c2023t2, c2023t5).f7353c) > Math.abs(i - m8601b(c2023t3, c2023t6).f7353c) + Math.abs(i2 - m8601b(c2023t2, c2023t6).f7353c)) ? c2023t6 : c2023t5;
        }
        if (m8600a(c2023t6)) {
            return c2023t6;
        }
        return null;
    }

    /* renamed from: a */
    public static void m8599a(Map<C2023t, Integer> map, C2023t c2023t) {
        Integer num = map.get(c2023t);
        map.put(c2023t, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    /* renamed from: a */
    public final boolean m8600a(C2023t c2023t) {
        return c2023t.f7901a >= 0.0f && c2023t.f7901a < ((float) this.f7349a.f7255a) && c2023t.f7902b > 0.0f && c2023t.f7902b < ((float) this.f7349a.f7256b);
    }

    /* renamed from: b */
    public final a m8601b(C2023t c2023t, C2023t c2023t2) {
        int i;
        int i2;
        C1876a c1876a = this;
        int i3 = (int) c2023t.f7901a;
        int i4 = (int) c2023t.f7902b;
        int i5 = (int) c2023t2.f7901a;
        int i6 = (int) c2023t2.f7902b;
        boolean z = Math.abs(i6 - i4) > Math.abs(i5 - i3);
        if (z) {
            i4 = i3;
            i3 = i4;
            i6 = i5;
            i5 = i6;
        }
        int abs = Math.abs(i5 - i3);
        int abs2 = Math.abs(i6 - i4);
        int i7 = (-abs) / 2;
        int i8 = i4 < i6 ? 1 : -1;
        int i9 = i3 < i5 ? 1 : -1;
        boolean m8479a = c1876a.f7349a.m8479a(z ? i4 : i3, z ? i3 : i4);
        int i10 = 0;
        while (i3 != i5) {
            C1852b c1852b = c1876a.f7349a;
            int i11 = z ? i4 : i3;
            if (z) {
                i = i5;
                i2 = i3;
            } else {
                i = i5;
                i2 = i4;
            }
            boolean m8479a2 = c1852b.m8479a(i11, i2);
            if (m8479a2 != m8479a) {
                i10++;
                m8479a = m8479a2;
            }
            i7 += abs2;
            if (i7 > 0) {
                if (i4 == i6) {
                    break;
                }
                i4 += i8;
                i7 -= abs;
            }
            i3 += i9;
            i5 = i;
            c1876a = this;
        }
        return new a(c2023t, c2023t2, i10, (byte) 0);
    }
}
