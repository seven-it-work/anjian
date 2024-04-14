package com.google.p130a.p153h.p154a.p155a;

/* renamed from: com.google.a.h.a.a.c */
/* loaded from: classes.dex */
public final class C1966c {

    /* renamed from: a */
    public final C1965b f7660a;

    /* renamed from: b */
    public final int[] f7661b;

    public C1966c(C1965b c1965b, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f7660a = c1965b;
        int length = iArr.length;
        if (length <= 1 || iArr[0] != 0) {
            this.f7661b = iArr;
            return;
        }
        int i = 1;
        while (i < length && iArr[i] == 0) {
            i++;
        }
        if (i == length) {
            this.f7661b = new int[]{0};
        } else {
            this.f7661b = new int[length - i];
            System.arraycopy(iArr, i, this.f7661b, 0, this.f7661b.length);
        }
    }

    /* renamed from: a */
    private C1966c m8917a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f7660a.f7657d;
        }
        int length = this.f7661b.length;
        int[] iArr = new int[i + length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = this.f7660a.m8916d(this.f7661b[i3], i2);
        }
        return new C1966c(this.f7660a, iArr);
    }

    /* renamed from: c */
    private int[] m8918c() {
        return this.f7661b;
    }

    /* renamed from: d */
    private int m8919d() {
        return this.f7661b.length - 1;
    }

    /* renamed from: a */
    public final int m8920a(int i) {
        return this.f7661b[(this.f7661b.length - 1) - i];
    }

    /* renamed from: a */
    public final C1966c m8921a(C1966c c1966c) {
        if (!this.f7660a.equals(c1966c.f7660a)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (m8922a()) {
            return c1966c;
        }
        if (c1966c.m8922a()) {
            return this;
        }
        int[] iArr = this.f7661b;
        int[] iArr2 = c1966c.f7661b;
        if (iArr.length > iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr2.length];
        int length = iArr2.length - iArr.length;
        System.arraycopy(iArr2, 0, iArr3, 0, length);
        for (int i = length; i < iArr2.length; i++) {
            iArr3[i] = this.f7660a.m8914b(iArr[i - length], iArr2[i]);
        }
        return new C1966c(this.f7660a, iArr3);
    }

    /* renamed from: a */
    public final boolean m8922a() {
        return this.f7661b[0] == 0;
    }

    /* renamed from: b */
    public final int m8923b(int i) {
        if (i == 0) {
            return m8920a(0);
        }
        if (i != 1) {
            int i2 = this.f7661b[0];
            int length = this.f7661b.length;
            for (int i3 = 1; i3 < length; i3++) {
                i2 = this.f7660a.m8914b(this.f7660a.m8916d(i, i2), this.f7661b[i3]);
            }
            return i2;
        }
        int i4 = 0;
        for (int i5 : this.f7661b) {
            i4 = this.f7660a.m8914b(i4, i5);
        }
        return i4;
    }

    /* renamed from: b */
    public final C1966c m8924b() {
        int length = this.f7661b.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = this.f7660a.m8915c(0, this.f7661b[i]);
        }
        return new C1966c(this.f7660a, iArr);
    }

    /* renamed from: b */
    public final C1966c m8925b(C1966c c1966c) {
        if (this.f7660a.equals(c1966c.f7660a)) {
            return c1966c.m8922a() ? this : m8921a(c1966c.m8924b());
        }
        throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }

    /* renamed from: c */
    public final C1966c m8926c(int i) {
        if (i == 0) {
            return this.f7660a.f7657d;
        }
        if (i == 1) {
            return this;
        }
        int length = this.f7661b.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = this.f7660a.m8916d(this.f7661b[i2], i);
        }
        return new C1966c(this.f7660a, iArr);
    }

    /* renamed from: c */
    public final C1966c m8927c(C1966c c1966c) {
        if (!this.f7660a.equals(c1966c.f7660a)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (m8922a() || c1966c.m8922a()) {
            return this.f7660a.f7657d;
        }
        int[] iArr = this.f7661b;
        int length = iArr.length;
        int[] iArr2 = c1966c.f7661b;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                int i4 = i + i3;
                iArr3[i4] = this.f7660a.m8914b(iArr3[i4], this.f7660a.m8916d(i2, iArr2[i3]));
            }
        }
        return new C1966c(this.f7660a, iArr3);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((this.f7661b.length - 1) * 8);
        for (int length = this.f7661b.length - 1; length >= 0; length--) {
            int m8920a = m8920a(length);
            if (m8920a != 0) {
                if (m8920a < 0) {
                    sb.append(" - ");
                    m8920a = -m8920a;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (length == 0 || m8920a != 1) {
                    sb.append(m8920a);
                }
                if (length != 0) {
                    if (length == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(length);
                    }
                }
            }
        }
        return sb.toString();
    }
}
