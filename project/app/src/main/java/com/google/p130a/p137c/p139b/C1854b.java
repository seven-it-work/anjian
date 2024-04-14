package com.google.p130a.p137c.p139b;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.a.c.b.b */
/* loaded from: classes.dex */
public final class C1854b {

    /* renamed from: a */
    final int[] f7274a;

    /* renamed from: b */
    private final C1853a f7275b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1854b(C1853a c1853a, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f7275b = c1853a;
        int length = iArr.length;
        if (length <= 1 || iArr[0] != 0) {
            this.f7274a = iArr;
            return;
        }
        int i = 1;
        while (i < length && iArr[i] == 0) {
            i++;
        }
        if (i == length) {
            this.f7274a = new int[]{0};
        } else {
            this.f7274a = new int[length - i];
            System.arraycopy(iArr, i, this.f7274a, 0, this.f7274a.length);
        }
    }

    /* renamed from: b */
    private int[] m8496b() {
        return this.f7274a;
    }

    /* renamed from: c */
    private int m8497c() {
        return this.f7274a.length - 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m8498a(int i) {
        return this.f7274a[(this.f7274a.length - 1) - i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C1854b m8499a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f7275b.f7268j;
        }
        int length = this.f7274a.length;
        int[] iArr = new int[i + length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = this.f7275b.m8495c(this.f7274a[i3], i2);
        }
        return new C1854b(this.f7275b, iArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C1854b m8500a(C1854b c1854b) {
        if (!this.f7275b.equals(c1854b.f7275b)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (m8501a()) {
            return c1854b;
        }
        if (c1854b.m8501a()) {
            return this;
        }
        int[] iArr = this.f7274a;
        int[] iArr2 = c1854b.f7274a;
        if (iArr.length > iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr2.length];
        int length = iArr2.length - iArr.length;
        System.arraycopy(iArr2, 0, iArr3, 0, length);
        for (int i = length; i < iArr2.length; i++) {
            iArr3[i] = C1853a.m8487b(iArr[i - length], iArr2[i]);
        }
        return new C1854b(this.f7275b, iArr3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m8501a() {
        return this.f7274a[0] == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final int m8502b(int i) {
        if (i == 0) {
            return m8498a(0);
        }
        if (i != 1) {
            int i2 = this.f7274a[0];
            int length = this.f7274a.length;
            for (int i3 = 1; i3 < length; i3++) {
                i2 = C1853a.m8487b(this.f7275b.m8495c(i, i2), this.f7274a[i3]);
            }
            return i2;
        }
        int i4 = 0;
        for (int i5 : this.f7274a) {
            i4 = C1853a.m8487b(i4, i5);
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final C1854b m8503b(C1854b c1854b) {
        if (!this.f7275b.equals(c1854b.f7275b)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (m8501a() || c1854b.m8501a()) {
            return this.f7275b.f7268j;
        }
        int[] iArr = this.f7274a;
        int length = iArr.length;
        int[] iArr2 = c1854b.f7274a;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                int i4 = i + i3;
                iArr3[i4] = C1853a.m8487b(iArr3[i4], this.f7275b.m8495c(i2, iArr2[i3]));
            }
        }
        return new C1854b(this.f7275b, iArr3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final C1854b m8504c(int i) {
        if (i == 0) {
            return this.f7275b.f7268j;
        }
        if (i == 1) {
            return this;
        }
        int length = this.f7274a.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = this.f7275b.m8495c(this.f7274a[i2], i);
        }
        return new C1854b(this.f7275b, iArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final C1854b[] m8505c(C1854b c1854b) {
        if (!this.f7275b.equals(c1854b.f7275b)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (c1854b.m8501a()) {
            throw new IllegalArgumentException("Divide by 0");
        }
        C1854b c1854b2 = this.f7275b.f7268j;
        int m8494b = this.f7275b.m8494b(c1854b.m8498a(c1854b.f7274a.length - 1));
        C1854b c1854b3 = c1854b2;
        C1854b c1854b4 = this;
        while (c1854b4.f7274a.length - 1 >= c1854b.f7274a.length - 1 && !c1854b4.m8501a()) {
            int length = (c1854b4.f7274a.length - 1) - (c1854b.f7274a.length - 1);
            int m8495c = this.f7275b.m8495c(c1854b4.m8498a(c1854b4.f7274a.length - 1), m8494b);
            C1854b m8499a = c1854b.m8499a(length, m8495c);
            c1854b3 = c1854b3.m8500a(this.f7275b.m8493a(length, m8495c));
            c1854b4 = c1854b4.m8500a(m8499a);
        }
        return new C1854b[]{c1854b3, c1854b4};
    }

    public final String toString() {
        char c2;
        StringBuilder sb = new StringBuilder((this.f7274a.length - 1) * 8);
        for (int length = this.f7274a.length - 1; length >= 0; length--) {
            int m8498a = m8498a(length);
            if (m8498a != 0) {
                if (m8498a < 0) {
                    sb.append(" - ");
                    m8498a = -m8498a;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (length == 0 || m8498a != 1) {
                    int m8492a = this.f7275b.m8492a(m8498a);
                    if (m8492a == 0) {
                        c2 = '1';
                    } else if (m8492a == 1) {
                        c2 = 'a';
                    } else {
                        sb.append("a^");
                        sb.append(m8492a);
                    }
                    sb.append(c2);
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
