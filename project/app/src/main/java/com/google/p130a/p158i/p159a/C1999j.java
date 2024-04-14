package com.google.p130a.p158i.p159a;

import android.support.v7.widget.ActivityChooserView;
import com.google.p130a.C1961h;
import com.google.p130a.p137c.C1852b;

/* renamed from: com.google.a.i.a.j */
/* loaded from: classes.dex */
public final class C1999j {

    /* renamed from: d */
    private static final int[] f7817d = {31892, 34236, 39577, 42195, 48118, 51042, 55367, 58893, 63784, 68472, 70749, 76311, 79154, 84390, 87683, 92361, 96236, 102084, 102881, 110507, 110734, 117786, 119615, 126325, 127568, 133589, 136944, 141498, 145311, 150283, 152622, 158308, 161089, 167017};

    /* renamed from: e */
    private static final C1999j[] f7818e = m9146f();

    /* renamed from: a */
    public final int f7819a;

    /* renamed from: b */
    public final int[] f7820b;

    /* renamed from: c */
    public final int f7821c;

    /* renamed from: f */
    private final b[] f7822f;

    /* renamed from: com.google.a.i.a.j$a */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a */
        final int f7823a;

        /* renamed from: b */
        final int f7824b;

        a(int i, int i2) {
            this.f7823a = i;
            this.f7824b = i2;
        }

        /* renamed from: a */
        private int m9149a() {
            return this.f7823a;
        }

        /* renamed from: b */
        private int m9150b() {
            return this.f7824b;
        }
    }

    /* renamed from: com.google.a.i.a.j$b */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a */
        final int f7825a;

        /* renamed from: b */
        final a[] f7826b;

        b(int i, a... aVarArr) {
            this.f7825a = i;
            this.f7826b = aVarArr;
        }

        /* renamed from: c */
        private int m9151c() {
            return this.f7825a;
        }

        /* renamed from: d */
        private a[] m9152d() {
            return this.f7826b;
        }

        /* renamed from: a */
        public final int m9153a() {
            int i = 0;
            for (a aVar : this.f7826b) {
                i += aVar.f7823a;
            }
            return i;
        }

        /* renamed from: b */
        public final int m9154b() {
            return this.f7825a * m9153a();
        }
    }

    private C1999j(int i, int[] iArr, b... bVarArr) {
        this.f7819a = i;
        this.f7820b = iArr;
        this.f7822f = bVarArr;
        int i2 = bVarArr[0].f7825a;
        int i3 = 0;
        for (a aVar : bVarArr[0].f7826b) {
            i3 += aVar.f7823a * (aVar.f7824b + i2);
        }
        this.f7821c = i3;
    }

    /* renamed from: a */
    public static C1999j m9139a(int i) throws C1961h {
        if (i % 4 != 1) {
            throw C1961h.getFormatInstance();
        }
        try {
            return m9141b((i - 17) / 4);
        } catch (IllegalArgumentException unused) {
            throw C1961h.getFormatInstance();
        }
    }

    /* renamed from: b */
    private int m9140b() {
        return this.f7819a;
    }

    /* renamed from: b */
    public static C1999j m9141b(int i) {
        if (i <= 0 || i > 40) {
            throw new IllegalArgumentException();
        }
        return f7818e[i - 1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static C1999j m9142c(int i) {
        int i2 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i3 = 0;
        for (int i4 = 0; i4 < f7817d.length; i4++) {
            int i5 = f7817d[i4];
            if (i5 == i) {
                return m9141b(i4 + 7);
            }
            int m9132a = C1996g.m9132a(i, i5);
            if (m9132a < i2) {
                i3 = i4 + 7;
                i2 = m9132a;
            }
        }
        if (i2 <= 3) {
            return m9141b(i3);
        }
        return null;
    }

    /* renamed from: c */
    private int[] m9143c() {
        return this.f7820b;
    }

    /* renamed from: d */
    private int m9144d() {
        return this.f7821c;
    }

    /* renamed from: e */
    private C1852b m9145e() {
        int m9147a = m9147a();
        C1852b c1852b = new C1852b(m9147a);
        c1852b.m8478a(0, 0, 9, 9);
        int i = m9147a - 8;
        c1852b.m8478a(i, 0, 8, 9);
        c1852b.m8478a(0, i, 9, 8);
        int length = this.f7820b.length;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = this.f7820b[i2] - 2;
            for (int i4 = 0; i4 < length; i4++) {
                if ((i2 != 0 || (i4 != 0 && i4 != length - 1)) && (i2 != length - 1 || i4 != 0)) {
                    c1852b.m8478a(this.f7820b[i4] - 2, i3, 5, 5);
                }
            }
        }
        int i5 = m9147a - 17;
        c1852b.m8478a(6, 9, 1, i5);
        c1852b.m8478a(9, 6, i5, 1);
        if (this.f7819a > 6) {
            int i6 = m9147a - 11;
            c1852b.m8478a(i6, 0, 3, 6);
            c1852b.m8478a(0, i6, 6, 3);
        }
        return c1852b;
    }

    /* renamed from: f */
    private static C1999j[] m9146f() {
        return new C1999j[]{new C1999j(1, new int[0], new b(7, new a(1, 19)), new b(10, new a(1, 16)), new b(13, new a(1, 13)), new b(17, new a(1, 9))), new C1999j(2, new int[]{6, 18}, new b(10, new a(1, 34)), new b(16, new a(1, 28)), new b(22, new a(1, 22)), new b(28, new a(1, 16))), new C1999j(3, new int[]{6, 22}, new b(15, new a(1, 55)), new b(26, new a(1, 44)), new b(18, new a(2, 17)), new b(22, new a(2, 13))), new C1999j(4, new int[]{6, 26}, new b(20, new a(1, 80)), new b(18, new a(2, 32)), new b(26, new a(2, 24)), new b(16, new a(4, 9))), new C1999j(5, new int[]{6, 30}, new b(26, new a(1, 108)), new b(24, new a(2, 43)), new b(18, new a(2, 15), new a(2, 16)), new b(22, new a(2, 11), new a(2, 12))), new C1999j(6, new int[]{6, 34}, new b(18, new a(2, 68)), new b(16, new a(4, 27)), new b(24, new a(4, 19)), new b(28, new a(4, 15))), new C1999j(7, new int[]{6, 22, 38}, new b(20, new a(2, 78)), new b(18, new a(4, 31)), new b(18, new a(2, 14), new a(4, 15)), new b(26, new a(4, 13), new a(1, 14))), new C1999j(8, new int[]{6, 24, 42}, new b(24, new a(2, 97)), new b(22, new a(2, 38), new a(2, 39)), new b(22, new a(4, 18), new a(2, 19)), new b(26, new a(4, 14), new a(2, 15))), new C1999j(9, new int[]{6, 26, 46}, new b(30, new a(2, 116)), new b(22, new a(3, 36), new a(2, 37)), new b(20, new a(4, 16), new a(4, 17)), new b(24, new a(4, 12), new a(4, 13))), new C1999j(10, new int[]{6, 28, 50}, new b(18, new a(2, 68), new a(2, 69)), new b(26, new a(4, 43), new a(1, 44)), new b(24, new a(6, 19), new a(2, 20)), new b(28, new a(6, 15), new a(2, 16))), new C1999j(11, new int[]{6, 30, 54}, new b(20, new a(4, 81)), new b(30, new a(1, 50), new a(4, 51)), new b(28, new a(4, 22), new a(4, 23)), new b(24, new a(3, 12), new a(8, 13))), new C1999j(12, new int[]{6, 32, 58}, new b(24, new a(2, 92), new a(2, 93)), new b(22, new a(6, 36), new a(2, 37)), new b(26, new a(4, 20), new a(6, 21)), new b(28, new a(7, 14), new a(4, 15))), new C1999j(13, new int[]{6, 34, 62}, new b(26, new a(4, 107)), new b(22, new a(8, 37), new a(1, 38)), new b(24, new a(8, 20), new a(4, 21)), new b(22, new a(12, 11), new a(4, 12))), new C1999j(14, new int[]{6, 26, 46, 66}, new b(30, new a(3, 115), new a(1, 116)), new b(24, new a(4, 40), new a(5, 41)), new b(20, new a(11, 16), new a(5, 17)), new b(24, new a(11, 12), new a(5, 13))), new C1999j(15, new int[]{6, 26, 48, 70}, new b(22, new a(5, 87), new a(1, 88)), new b(24, new a(5, 41), new a(5, 42)), new b(30, new a(5, 24), new a(7, 25)), new b(24, new a(11, 12), new a(7, 13))), new C1999j(16, new int[]{6, 26, 50, 74}, new b(24, new a(5, 98), new a(1, 99)), new b(28, new a(7, 45), new a(3, 46)), new b(24, new a(15, 19), new a(2, 20)), new b(30, new a(3, 15), new a(13, 16))), new C1999j(17, new int[]{6, 30, 54, 78}, new b(28, new a(1, 107), new a(5, 108)), new b(28, new a(10, 46), new a(1, 47)), new b(28, new a(1, 22), new a(15, 23)), new b(28, new a(2, 14), new a(17, 15))), new C1999j(18, new int[]{6, 30, 56, 82}, new b(30, new a(5, 120), new a(1, 121)), new b(26, new a(9, 43), new a(4, 44)), new b(28, new a(17, 22), new a(1, 23)), new b(28, new a(2, 14), new a(19, 15))), new C1999j(19, new int[]{6, 30, 58, 86}, new b(28, new a(3, 113), new a(4, 114)), new b(26, new a(3, 44), new a(11, 45)), new b(26, new a(17, 21), new a(4, 22)), new b(26, new a(9, 13), new a(16, 14))), new C1999j(20, new int[]{6, 34, 62, 90}, new b(28, new a(3, 107), new a(5, 108)), new b(26, new a(3, 41), new a(13, 42)), new b(30, new a(15, 24), new a(5, 25)), new b(28, new a(15, 15), new a(10, 16))), new C1999j(21, new int[]{6, 28, 50, 72, 94}, new b(28, new a(4, 116), new a(4, 117)), new b(26, new a(17, 42)), new b(28, new a(17, 22), new a(6, 23)), new b(30, new a(19, 16), new a(6, 17))), new C1999j(22, new int[]{6, 26, 50, 74, 98}, new b(28, new a(2, 111), new a(7, 112)), new b(28, new a(17, 46)), new b(30, new a(7, 24), new a(16, 25)), new b(24, new a(34, 13))), new C1999j(23, new int[]{6, 30, 54, 78, 102}, new b(30, new a(4, 121), new a(5, 122)), new b(28, new a(4, 47), new a(14, 48)), new b(30, new a(11, 24), new a(14, 25)), new b(30, new a(16, 15), new a(14, 16))), new C1999j(24, new int[]{6, 28, 54, 80, 106}, new b(30, new a(6, 117), new a(4, 118)), new b(28, new a(6, 45), new a(14, 46)), new b(30, new a(11, 24), new a(16, 25)), new b(30, new a(30, 16), new a(2, 17))), new C1999j(25, new int[]{6, 32, 58, 84, 110}, new b(26, new a(8, 106), new a(4, 107)), new b(28, new a(8, 47), new a(13, 48)), new b(30, new a(7, 24), new a(22, 25)), new b(30, new a(22, 15), new a(13, 16))), new C1999j(26, new int[]{6, 30, 58, 86, 114}, new b(28, new a(10, 114), new a(2, 115)), new b(28, new a(19, 46), new a(4, 47)), new b(28, new a(28, 22), new a(6, 23)), new b(30, new a(33, 16), new a(4, 17))), new C1999j(27, new int[]{6, 34, 62, 90, 118}, new b(30, new a(8, 122), new a(4, 123)), new b(28, new a(22, 45), new a(3, 46)), new b(30, new a(8, 23), new a(26, 24)), new b(30, new a(12, 15), new a(28, 16))), new C1999j(28, new int[]{6, 26, 50, 74, 98, 122}, new b(30, new a(3, 117), new a(10, 118)), new b(28, new a(3, 45), new a(23, 46)), new b(30, new a(4, 24), new a(31, 25)), new b(30, new a(11, 15), new a(31, 16))), new C1999j(29, new int[]{6, 30, 54, 78, 102, 126}, new b(30, new a(7, 116), new a(7, 117)), new b(28, new a(21, 45), new a(7, 46)), new b(30, new a(1, 23), new a(37, 24)), new b(30, new a(19, 15), new a(26, 16))), new C1999j(30, new int[]{6, 26, 52, 78, 104, 130}, new b(30, new a(5, 115), new a(10, 116)), new b(28, new a(19, 47), new a(10, 48)), new b(30, new a(15, 24), new a(25, 25)), new b(30, new a(23, 15), new a(25, 16))), new C1999j(31, new int[]{6, 30, 56, 82, 108, 134}, new b(30, new a(13, 115), new a(3, 116)), new b(28, new a(2, 46), new a(29, 47)), new b(30, new a(42, 24), new a(1, 25)), new b(30, new a(23, 15), new a(28, 16))), new C1999j(32, new int[]{6, 34, 60, 86, 112, 138}, new b(30, new a(17, 115)), new b(28, new a(10, 46), new a(23, 47)), new b(30, new a(10, 24), new a(35, 25)), new b(30, new a(19, 15), new a(35, 16))), new C1999j(33, new int[]{6, 30, 58, 86, 114, 142}, new b(30, new a(17, 115), new a(1, 116)), new b(28, new a(14, 46), new a(21, 47)), new b(30, new a(29, 24), new a(19, 25)), new b(30, new a(11, 15), new a(46, 16))), new C1999j(34, new int[]{6, 34, 62, 90, 118, 146}, new b(30, new a(13, 115), new a(6, 116)), new b(28, new a(14, 46), new a(23, 47)), new b(30, new a(44, 24), new a(7, 25)), new b(30, new a(59, 16), new a(1, 17))), new C1999j(35, new int[]{6, 30, 54, 78, 102, 126, 150}, new b(30, new a(12, 121), new a(7, 122)), new b(28, new a(12, 47), new a(26, 48)), new b(30, new a(39, 24), new a(14, 25)), new b(30, new a(22, 15), new a(41, 16))), new C1999j(36, new int[]{6, 24, 50, 76, 102, 128, 154}, new b(30, new a(6, 121), new a(14, 122)), new b(28, new a(6, 47), new a(34, 48)), new b(30, new a(46, 24), new a(10, 25)), new b(30, new a(2, 15), new a(64, 16))), new C1999j(37, new int[]{6, 28, 54, 80, 106, 132, 158}, new b(30, new a(17, 122), new a(4, 123)), new b(28, new a(29, 46), new a(14, 47)), new b(30, new a(49, 24), new a(10, 25)), new b(30, new a(24, 15), new a(46, 16))), new C1999j(38, new int[]{6, 32, 58, 84, 110, 136, 162}, new b(30, new a(4, 122), new a(18, 123)), new b(28, new a(13, 46), new a(32, 47)), new b(30, new a(48, 24), new a(14, 25)), new b(30, new a(42, 15), new a(32, 16))), new C1999j(39, new int[]{6, 26, 54, 82, 110, 138, 166}, new b(30, new a(20, 117), new a(4, 118)), new b(28, new a(40, 47), new a(7, 48)), new b(30, new a(43, 24), new a(22, 25)), new b(30, new a(10, 15), new a(67, 16))), new C1999j(40, new int[]{6, 30, 58, 86, 114, 142, 170}, new b(30, new a(19, 118), new a(6, 119)), new b(28, new a(18, 47), new a(31, 48)), new b(30, new a(34, 24), new a(34, 25)), new b(30, new a(20, 15), new a(61, 16)))};
    }

    /* renamed from: a */
    public final int m9147a() {
        return (this.f7819a * 4) + 17;
    }

    /* renamed from: a */
    public final b m9148a(EnumC1995f enumC1995f) {
        return this.f7822f[enumC1995f.ordinal()];
    }

    public final String toString() {
        return String.valueOf(this.f7819a);
    }
}
