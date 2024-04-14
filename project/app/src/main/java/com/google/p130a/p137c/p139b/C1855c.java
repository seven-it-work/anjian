package com.google.p130a.p137c.p139b;

/* renamed from: com.google.a.c.b.c */
/* loaded from: classes.dex */
public final class C1855c {

    /* renamed from: a */
    private final C1853a f7276a;

    public C1855c(C1853a c1853a) {
        this.f7276a = c1853a;
    }

    /* renamed from: a */
    private int[] m8506a(C1854b c1854b) throws C1857e {
        int length = c1854b.f7274a.length - 1;
        int i = 0;
        if (length == 1) {
            return new int[]{c1854b.m8498a(1)};
        }
        int[] iArr = new int[length];
        for (int i2 = 1; i2 < this.f7276a.f7270l && i < length; i2++) {
            if (c1854b.m8502b(i2) == 0) {
                iArr[i] = this.f7276a.m8494b(i2);
                i++;
            }
        }
        if (i != length) {
            throw new C1857e("Error locator degree does not match number of roots");
        }
        return iArr;
    }

    /* renamed from: a */
    private int[] m8507a(C1854b c1854b, int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i = 0; i < length; i++) {
            int m8494b = this.f7276a.m8494b(iArr[i]);
            int i2 = 1;
            for (int i3 = 0; i3 < length; i3++) {
                if (i != i3) {
                    int m8495c = this.f7276a.m8495c(iArr[i3], m8494b);
                    i2 = this.f7276a.m8495c(i2, (m8495c & 1) == 0 ? m8495c | 1 : m8495c & (-2));
                }
            }
            iArr2[i] = this.f7276a.m8495c(c1854b.m8502b(m8494b), this.f7276a.m8494b(i2));
            if (this.f7276a.f7271m != 0) {
                iArr2[i] = this.f7276a.m8495c(iArr2[i], m8494b);
            }
        }
        return iArr2;
    }

    /* renamed from: a */
    private C1854b[] m8508a(C1854b c1854b, C1854b c1854b2, int i) throws C1857e {
        if (c1854b.f7274a.length - 1 < c1854b2.f7274a.length - 1) {
            c1854b2 = c1854b;
            c1854b = c1854b2;
        }
        C1854b c1854b3 = this.f7276a.f7268j;
        C1854b c1854b4 = this.f7276a.f7269k;
        C1854b c1854b5 = c1854b2;
        C1854b c1854b6 = c1854b;
        C1854b c1854b7 = c1854b5;
        while (c1854b7.f7274a.length - 1 >= i / 2) {
            if (c1854b7.m8501a()) {
                throw new C1857e("r_{i-1} was zero");
            }
            C1854b c1854b8 = this.f7276a.f7268j;
            int m8494b = this.f7276a.m8494b(c1854b7.m8498a(c1854b7.f7274a.length - 1));
            while (c1854b6.f7274a.length - 1 >= c1854b7.f7274a.length - 1 && !c1854b6.m8501a()) {
                int length = (c1854b6.f7274a.length - 1) - (c1854b7.f7274a.length - 1);
                int m8495c = this.f7276a.m8495c(c1854b6.m8498a(c1854b6.f7274a.length - 1), m8494b);
                c1854b8 = c1854b8.m8500a(this.f7276a.m8493a(length, m8495c));
                c1854b6 = c1854b6.m8500a(c1854b7.m8499a(length, m8495c));
            }
            C1854b m8500a = c1854b8.m8503b(c1854b4).m8500a(c1854b3);
            if (c1854b6.f7274a.length - 1 >= c1854b7.f7274a.length - 1) {
                throw new IllegalStateException("Division algorithm failed to reduce polynomial?");
            }
            C1854b c1854b9 = c1854b6;
            c1854b6 = c1854b7;
            c1854b7 = c1854b9;
            C1854b c1854b10 = c1854b4;
            c1854b4 = m8500a;
            c1854b3 = c1854b10;
        }
        int m8498a = c1854b4.m8498a(0);
        if (m8498a == 0) {
            throw new C1857e("sigmaTilde(0) was zero");
        }
        int m8494b2 = this.f7276a.m8494b(m8498a);
        return new C1854b[]{c1854b4.m8504c(m8494b2), c1854b7.m8504c(m8494b2)};
    }

    /* renamed from: a */
    public final void m8509a(int[] iArr, int i) throws C1857e {
        C1854b c1854b = new C1854b(this.f7276a, iArr);
        int[] iArr2 = new int[i];
        boolean z = true;
        for (int i2 = 0; i2 < i; i2++) {
            C1853a c1853a = this.f7276a;
            int m8502b = c1854b.m8502b(c1853a.f7267i[c1853a.f7271m + i2]);
            iArr2[(i - 1) - i2] = m8502b;
            if (m8502b != 0) {
                z = false;
            }
        }
        if (z) {
            return;
        }
        C1854b c1854b2 = new C1854b(this.f7276a, iArr2);
        C1854b m8493a = this.f7276a.m8493a(i, 1);
        if (m8493a.f7274a.length - 1 >= c1854b2.f7274a.length - 1) {
            m8493a = c1854b2;
            c1854b2 = m8493a;
        }
        C1854b c1854b3 = this.f7276a.f7268j;
        C1854b c1854b4 = this.f7276a.f7269k;
        C1854b c1854b5 = m8493a;
        C1854b c1854b6 = c1854b2;
        C1854b c1854b7 = c1854b5;
        while (c1854b7.f7274a.length - 1 >= i / 2) {
            if (c1854b7.m8501a()) {
                throw new C1857e("r_{i-1} was zero");
            }
            C1854b c1854b8 = this.f7276a.f7268j;
            int m8494b = this.f7276a.m8494b(c1854b7.m8498a(c1854b7.f7274a.length - 1));
            while (c1854b6.f7274a.length - 1 >= c1854b7.f7274a.length - 1 && !c1854b6.m8501a()) {
                int length = (c1854b6.f7274a.length - 1) - (c1854b7.f7274a.length - 1);
                int m8495c = this.f7276a.m8495c(c1854b6.m8498a(c1854b6.f7274a.length - 1), m8494b);
                c1854b8 = c1854b8.m8500a(this.f7276a.m8493a(length, m8495c));
                c1854b6 = c1854b6.m8500a(c1854b7.m8499a(length, m8495c));
            }
            C1854b m8500a = c1854b8.m8503b(c1854b4).m8500a(c1854b3);
            if (c1854b6.f7274a.length - 1 >= c1854b7.f7274a.length - 1) {
                throw new IllegalStateException("Division algorithm failed to reduce polynomial?");
            }
            C1854b c1854b9 = c1854b6;
            c1854b6 = c1854b7;
            c1854b7 = c1854b9;
            C1854b c1854b10 = c1854b4;
            c1854b4 = m8500a;
            c1854b3 = c1854b10;
        }
        int m8498a = c1854b4.m8498a(0);
        if (m8498a == 0) {
            throw new C1857e("sigmaTilde(0) was zero");
        }
        int m8494b2 = this.f7276a.m8494b(m8498a);
        C1854b[] c1854bArr = {c1854b4.m8504c(m8494b2), c1854b7.m8504c(m8494b2)};
        C1854b c1854b11 = c1854bArr[0];
        C1854b c1854b12 = c1854bArr[1];
        int[] m8506a = m8506a(c1854b11);
        int[] m8507a = m8507a(c1854b12, m8506a);
        for (int i3 = 0; i3 < m8506a.length; i3++) {
            int length2 = (iArr.length - 1) - this.f7276a.m8492a(m8506a[i3]);
            if (length2 < 0) {
                throw new C1857e("Bad error location");
            }
            iArr[length2] = C1853a.m8487b(iArr[length2], m8507a[i3]);
        }
    }
}
