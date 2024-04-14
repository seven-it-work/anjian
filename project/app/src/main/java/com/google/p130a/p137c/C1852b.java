package com.google.p130a.p137c;

import java.util.Arrays;

/* renamed from: com.google.a.c.b */
/* loaded from: classes.dex */
public final class C1852b implements Cloneable {

    /* renamed from: a */
    public final int f7255a;

    /* renamed from: b */
    public final int f7256b;

    /* renamed from: c */
    public final int f7257c;

    /* renamed from: d */
    public final int[] f7258d;

    public C1852b(int i) {
        this(i, i);
    }

    public C1852b(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.f7255a = i;
        this.f7256b = i2;
        this.f7257c = (i + 31) / 32;
        this.f7258d = new int[this.f7257c * i2];
    }

    private C1852b(int i, int i2, int i3, int[] iArr) {
        this.f7255a = i;
        this.f7256b = i2;
        this.f7257c = i3;
        this.f7258d = iArr;
    }

    /* renamed from: a */
    private static C1852b m8464a(String str, String str2, String str3) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        boolean[] zArr = new boolean[str.length()];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = -1;
        int i5 = 0;
        while (i < str.length()) {
            if (str.charAt(i) == '\n' || str.charAt(i) == '\r') {
                if (i2 > i3) {
                    if (i4 == -1) {
                        i4 = i2 - i3;
                    } else if (i2 - i3 != i4) {
                        throw new IllegalArgumentException("row lengths do not match");
                    }
                    i5++;
                    i3 = i2;
                }
                i++;
            } else {
                if (str.substring(i, str2.length() + i).equals(str2)) {
                    i += str2.length();
                    zArr[i2] = true;
                } else {
                    if (!str.substring(i, str3.length() + i).equals(str3)) {
                        throw new IllegalArgumentException("illegal character encountered: " + str.substring(i));
                    }
                    i += str3.length();
                    zArr[i2] = false;
                }
                i2++;
            }
        }
        if (i2 > i3) {
            if (i4 == -1) {
                i4 = i2 - i3;
            } else if (i2 - i3 != i4) {
                throw new IllegalArgumentException("row lengths do not match");
            }
            i5++;
        }
        C1852b c1852b = new C1852b(i4, i5);
        for (int i6 = 0; i6 < i2; i6++) {
            if (zArr[i6]) {
                c1852b.m8480b(i6 % i4, i6 / i4);
            }
        }
        return c1852b;
    }

    /* renamed from: a */
    public static C1852b m8465a(boolean[][] zArr) {
        int length = zArr.length;
        int length2 = zArr[0].length;
        C1852b c1852b = new C1852b(length2, length);
        for (int i = 0; i < length; i++) {
            boolean[] zArr2 = zArr[i];
            for (int i2 = 0; i2 < length2; i2++) {
                if (zArr2[i2]) {
                    c1852b.m8480b(i2, i);
                }
            }
        }
        return c1852b;
    }

    /* renamed from: a */
    private String m8466a(String str, String str2) {
        return m8469c(str, str2, "\n");
    }

    /* renamed from: a */
    private void m8467a(C1852b c1852b) {
        if (this.f7255a != c1852b.f7255a || this.f7256b != c1852b.f7256b || this.f7257c != c1852b.f7257c) {
            throw new IllegalArgumentException("input matrix dimensions do not match");
        }
        C1848a c1848a = new C1848a(this.f7255a);
        for (int i = 0; i < this.f7256b; i++) {
            int i2 = this.f7257c * i;
            int[] iArr = c1852b.m8476a(i, c1848a).f7242a;
            for (int i3 = 0; i3 < this.f7257c; i3++) {
                int[] iArr2 = this.f7258d;
                int i4 = i2 + i3;
                iArr2[i4] = iArr2[i4] ^ iArr[i3];
            }
        }
    }

    @Deprecated
    /* renamed from: b */
    private String m8468b(String str, String str2, String str3) {
        return m8469c(str, str2, str3);
    }

    /* renamed from: c */
    private String m8469c(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(this.f7256b * (this.f7255a + 1));
        for (int i = 0; i < this.f7256b; i++) {
            for (int i2 = 0; i2 < this.f7255a; i2++) {
                sb.append(m8479a(i2, i) ? str : str2);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    /* renamed from: d */
    private void m8470d(int i, int i2) {
        int i3 = (i2 * this.f7257c) + (i / 32);
        int[] iArr = this.f7258d;
        iArr[i3] = ((1 << (i & 31)) ^ (-1)) & iArr[i3];
    }

    /* renamed from: e */
    private void m8471e() {
        int i = this.f7255a;
        int i2 = this.f7256b;
        C1848a c1848a = new C1848a(i);
        C1848a c1848a2 = new C1848a(i);
        for (int i3 = 0; i3 < (i2 + 1) / 2; i3++) {
            c1848a = m8476a(i3, c1848a);
            int i4 = (i2 - 1) - i3;
            c1848a2 = m8476a(i4, c1848a2);
            c1848a.m8451c();
            c1848a2.m8451c();
            m8481b(i3, c1848a2);
            m8481b(i4, c1848a);
        }
    }

    /* renamed from: f */
    private int[] m8472f() {
        int i = this.f7255a;
        int i2 = -1;
        int i3 = this.f7256b;
        int i4 = -1;
        int i5 = i;
        int i6 = 0;
        while (i6 < this.f7256b) {
            int i7 = i4;
            int i8 = i2;
            int i9 = i5;
            for (int i10 = 0; i10 < this.f7257c; i10++) {
                int i11 = this.f7258d[(this.f7257c * i6) + i10];
                if (i11 != 0) {
                    if (i6 < i3) {
                        i3 = i6;
                    }
                    if (i6 > i7) {
                        i7 = i6;
                    }
                    int i12 = i10 << 5;
                    int i13 = 31;
                    if (i12 < i9) {
                        int i14 = 0;
                        while ((i11 << (31 - i14)) == 0) {
                            i14++;
                        }
                        int i15 = i14 + i12;
                        if (i15 < i9) {
                            i9 = i15;
                        }
                    }
                    if (i12 + 31 > i8) {
                        while ((i11 >>> i13) == 0) {
                            i13--;
                        }
                        int i16 = i12 + i13;
                        if (i16 > i8) {
                            i8 = i16;
                        }
                    }
                }
            }
            i6++;
            i5 = i9;
            i2 = i8;
            i4 = i7;
        }
        if (i2 < i5 || i4 < i3) {
            return null;
        }
        return new int[]{i5, i3, (i2 - i5) + 1, (i4 - i3) + 1};
    }

    /* renamed from: g */
    private int m8473g() {
        return this.f7255a;
    }

    /* renamed from: h */
    private int m8474h() {
        return this.f7256b;
    }

    /* renamed from: i */
    private int m8475i() {
        return this.f7257c;
    }

    /* renamed from: a */
    public final C1848a m8476a(int i, C1848a c1848a) {
        if (c1848a == null || c1848a.f7243b < this.f7255a) {
            c1848a = new C1848a(this.f7255a);
        } else {
            c1848a.m8447b();
        }
        int i2 = i * this.f7257c;
        for (int i3 = 0; i3 < this.f7257c; i3++) {
            c1848a.f7242a[(i3 << 5) / 32] = this.f7258d[i2 + i3];
        }
        return c1848a;
    }

    /* renamed from: a */
    public final void m8477a() {
        int length = this.f7258d.length;
        for (int i = 0; i < length; i++) {
            this.f7258d[i] = 0;
        }
    }

    /* renamed from: a */
    public final void m8478a(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i4 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i5 = i3 + i;
        int i6 = i4 + i2;
        if (i6 > this.f7256b || i5 > this.f7255a) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i2 < i6) {
            int i7 = this.f7257c * i2;
            for (int i8 = i; i8 < i5; i8++) {
                int[] iArr = this.f7258d;
                int i9 = (i8 / 32) + i7;
                iArr[i9] = iArr[i9] | (1 << (i8 & 31));
            }
            i2++;
        }
    }

    /* renamed from: a */
    public final boolean m8479a(int i, int i2) {
        return ((this.f7258d[(i2 * this.f7257c) + (i / 32)] >>> (i & 31)) & 1) != 0;
    }

    /* renamed from: b */
    public final void m8480b(int i, int i2) {
        int i3 = (i2 * this.f7257c) + (i / 32);
        int[] iArr = this.f7258d;
        iArr[i3] = (1 << (i & 31)) | iArr[i3];
    }

    /* renamed from: b */
    public final void m8481b(int i, C1848a c1848a) {
        System.arraycopy(c1848a.f7242a, 0, this.f7258d, i * this.f7257c, this.f7257c);
    }

    /* renamed from: b */
    public final int[] m8482b() {
        int i = 0;
        while (i < this.f7258d.length && this.f7258d[i] == 0) {
            i++;
        }
        if (i == this.f7258d.length) {
            return null;
        }
        int i2 = i / this.f7257c;
        int i3 = (i % this.f7257c) << 5;
        int i4 = 0;
        while ((this.f7258d[i] << (31 - i4)) == 0) {
            i4++;
        }
        return new int[]{i3 + i4, i2};
    }

    /* renamed from: c */
    public final void m8483c(int i, int i2) {
        int i3 = (i2 * this.f7257c) + (i / 32);
        int[] iArr = this.f7258d;
        iArr[i3] = (1 << (i & 31)) ^ iArr[i3];
    }

    /* renamed from: c */
    public final int[] m8484c() {
        int length = this.f7258d.length - 1;
        while (length >= 0 && this.f7258d[length] == 0) {
            length--;
        }
        if (length < 0) {
            return null;
        }
        int i = length / this.f7257c;
        int i2 = (length % this.f7257c) << 5;
        int i3 = 31;
        while ((this.f7258d[length] >>> i3) == 0) {
            i3--;
        }
        return new int[]{i2 + i3, i};
    }

    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final C1852b clone() {
        return new C1852b(this.f7255a, this.f7256b, this.f7257c, (int[]) this.f7258d.clone());
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1852b)) {
            return false;
        }
        C1852b c1852b = (C1852b) obj;
        return this.f7255a == c1852b.f7255a && this.f7256b == c1852b.f7256b && this.f7257c == c1852b.f7257c && Arrays.equals(this.f7258d, c1852b.f7258d);
    }

    public final int hashCode() {
        return (((((((this.f7255a * 31) + this.f7255a) * 31) + this.f7256b) * 31) + this.f7257c) * 31) + Arrays.hashCode(this.f7258d);
    }

    public final String toString() {
        return m8469c("X ", "  ", "\n");
    }
}
