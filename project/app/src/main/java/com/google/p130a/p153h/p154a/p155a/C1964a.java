package com.google.p130a.p153h.p154a.p155a;

import com.google.p130a.C1868d;

/* renamed from: com.google.a.h.a.a.a */
/* loaded from: classes.dex */
public final class C1964a {

    /* renamed from: a */
    public final C1965b f7653a = C1965b.f7654a;

    /* renamed from: a */
    private int m8903a(int[] iArr, int i, int[] iArr2) throws C1868d {
        int i2;
        C1966c c1966c;
        C1966c c1966c2 = new C1966c(this.f7653a, iArr);
        int[] iArr3 = new int[i];
        int i3 = i;
        boolean z = false;
        while (true) {
            i2 = 1;
            if (i3 <= 0) {
                break;
            }
            int m8923b = c1966c2.m8923b(this.f7653a.f7655b[i3]);
            iArr3[i - i3] = m8923b;
            if (m8923b != 0) {
                z = true;
            }
            i3--;
        }
        if (!z) {
            return 0;
        }
        C1966c c1966c3 = this.f7653a.f7658e;
        if (iArr2 != null) {
            C1966c c1966c4 = c1966c3;
            for (int i4 : iArr2) {
                c1966c4 = c1966c4.m8927c(new C1966c(this.f7653a, new int[]{this.f7653a.m8915c(0, this.f7653a.f7655b[(iArr.length - 1) - i4]), 1}));
            }
        }
        C1966c c1966c5 = new C1966c(this.f7653a, iArr3);
        C1966c m8913a = this.f7653a.m8913a(i, 1);
        if (m8913a.f7661b.length - 1 >= c1966c5.f7661b.length - 1) {
            m8913a = c1966c5;
            c1966c5 = m8913a;
        }
        C1966c c1966c6 = this.f7653a.f7657d;
        C1966c c1966c7 = this.f7653a.f7658e;
        C1966c c1966c8 = m8913a;
        C1966c c1966c9 = c1966c5;
        C1966c c1966c10 = c1966c8;
        while (c1966c10.f7661b.length - i2 >= i / 2) {
            if (c1966c10.m8922a()) {
                throw C1868d.getChecksumInstance();
            }
            C1966c c1966c11 = this.f7653a.f7657d;
            int m8912a = this.f7653a.m8912a(c1966c10.m8920a(c1966c10.f7661b.length - i2));
            while (c1966c9.f7661b.length - i2 >= c1966c10.f7661b.length - i2 && !c1966c9.m8922a()) {
                int length = (c1966c9.f7661b.length - i2) - (c1966c10.f7661b.length - i2);
                int m8916d = this.f7653a.m8916d(c1966c9.m8920a(c1966c9.f7661b.length - i2), m8912a);
                c1966c11 = c1966c11.m8921a(this.f7653a.m8913a(length, m8916d));
                if (length < 0) {
                    throw new IllegalArgumentException();
                }
                if (m8916d == 0) {
                    c1966c = c1966c10.f7660a.f7657d;
                } else {
                    int length2 = c1966c10.f7661b.length;
                    int[] iArr4 = new int[length + length2];
                    for (int i5 = 0; i5 < length2; i5++) {
                        iArr4[i5] = c1966c10.f7660a.m8916d(c1966c10.f7661b[i5], m8916d);
                    }
                    c1966c = new C1966c(c1966c10.f7660a, iArr4);
                }
                c1966c9 = c1966c9.m8925b(c1966c);
                i2 = 1;
            }
            i2 = 1;
            C1966c c1966c12 = c1966c9;
            c1966c9 = c1966c10;
            c1966c10 = c1966c12;
            C1966c c1966c13 = c1966c7;
            c1966c7 = c1966c11.m8927c(c1966c7).m8925b(c1966c6).m8924b();
            c1966c6 = c1966c13;
        }
        int m8920a = c1966c7.m8920a(0);
        if (m8920a == 0) {
            throw C1868d.getChecksumInstance();
        }
        int m8912a2 = this.f7653a.m8912a(m8920a);
        C1966c[] c1966cArr = {c1966c7.m8926c(m8912a2), c1966c10.m8926c(m8912a2)};
        C1966c c1966c14 = c1966cArr[0];
        C1966c c1966c15 = c1966cArr[1];
        int[] m8905a = m8905a(c1966c14);
        int[] m8906a = m8906a(c1966c15, c1966c14, m8905a);
        for (int i6 = 0; i6 < m8905a.length; i6++) {
            int length3 = iArr.length - 1;
            C1965b c1965b = this.f7653a;
            int i7 = m8905a[i6];
            if (i7 == 0) {
                throw new IllegalArgumentException();
            }
            int i8 = length3 - c1965b.f7656c[i7];
            if (i8 < 0) {
                throw C1868d.getChecksumInstance();
            }
            iArr[i8] = this.f7653a.m8915c(iArr[i8], m8906a[i6]);
        }
        return m8905a.length;
    }

    /* renamed from: a */
    private C1966c[] m8904a(C1966c c1966c, C1966c c1966c2, int i) throws C1868d {
        C1966c c1966c3;
        C1966c c1966c4 = c1966c;
        C1966c c1966c5 = c1966c2;
        if (c1966c4.f7661b.length - 1 < c1966c5.f7661b.length - 1) {
            c1966c5 = c1966c4;
            c1966c4 = c1966c5;
        }
        C1966c c1966c6 = this.f7653a.f7657d;
        C1966c c1966c7 = this.f7653a.f7658e;
        C1966c c1966c8 = c1966c4;
        C1966c c1966c9 = c1966c5;
        C1966c c1966c10 = c1966c6;
        while (c1966c9.f7661b.length - 1 >= i / 2) {
            if (c1966c9.m8922a()) {
                throw C1868d.getChecksumInstance();
            }
            C1966c c1966c11 = this.f7653a.f7657d;
            int m8912a = this.f7653a.m8912a(c1966c9.m8920a(c1966c9.f7661b.length - 1));
            while (c1966c8.f7661b.length - 1 >= c1966c9.f7661b.length - 1 && !c1966c8.m8922a()) {
                int length = (c1966c8.f7661b.length - 1) - (c1966c9.f7661b.length - 1);
                int m8916d = this.f7653a.m8916d(c1966c8.m8920a(c1966c8.f7661b.length - 1), m8912a);
                c1966c11 = c1966c11.m8921a(this.f7653a.m8913a(length, m8916d));
                if (length < 0) {
                    throw new IllegalArgumentException();
                }
                if (m8916d == 0) {
                    c1966c3 = c1966c9.f7660a.f7657d;
                } else {
                    int length2 = c1966c9.f7661b.length;
                    int[] iArr = new int[length + length2];
                    for (int i2 = 0; i2 < length2; i2++) {
                        iArr[i2] = c1966c9.f7660a.m8916d(c1966c9.f7661b[i2], m8916d);
                    }
                    c1966c3 = new C1966c(c1966c9.f7660a, iArr);
                }
                c1966c8 = c1966c8.m8925b(c1966c3);
            }
            C1966c c1966c12 = c1966c8;
            c1966c8 = c1966c9;
            c1966c9 = c1966c12;
            C1966c c1966c13 = c1966c7;
            c1966c7 = c1966c11.m8927c(c1966c7).m8925b(c1966c10).m8924b();
            c1966c10 = c1966c13;
        }
        int m8920a = c1966c7.m8920a(0);
        if (m8920a == 0) {
            throw C1868d.getChecksumInstance();
        }
        int m8912a2 = this.f7653a.m8912a(m8920a);
        return new C1966c[]{c1966c7.m8926c(m8912a2), c1966c9.m8926c(m8912a2)};
    }

    /* renamed from: a */
    public final int[] m8905a(C1966c c1966c) throws C1868d {
        int length = c1966c.f7661b.length - 1;
        int[] iArr = new int[length];
        int i = 0;
        for (int i2 = 1; i2 < this.f7653a.f7659f && i < length; i2++) {
            if (c1966c.m8923b(i2) == 0) {
                iArr[i] = this.f7653a.m8912a(i2);
                i++;
            }
        }
        if (i != length) {
            throw C1868d.getChecksumInstance();
        }
        return iArr;
    }

    /* renamed from: a */
    public final int[] m8906a(C1966c c1966c, C1966c c1966c2, int[] iArr) {
        int length = c1966c2.f7661b.length - 1;
        int[] iArr2 = new int[length];
        for (int i = 1; i <= length; i++) {
            iArr2[length - i] = this.f7653a.m8916d(i, c1966c2.m8920a(i));
        }
        C1966c c1966c3 = new C1966c(this.f7653a, iArr2);
        int length2 = iArr.length;
        int[] iArr3 = new int[length2];
        for (int i2 = 0; i2 < length2; i2++) {
            int m8912a = this.f7653a.m8912a(iArr[i2]);
            iArr3[i2] = this.f7653a.m8916d(this.f7653a.m8915c(0, c1966c.m8923b(m8912a)), this.f7653a.m8912a(c1966c3.m8923b(m8912a)));
        }
        return iArr3;
    }
}
