package com.google.p130a.p137c;

import java.util.Arrays;
import org.apache.commons.io.FilenameUtils;

/* renamed from: com.google.a.c.a */
/* loaded from: classes.dex */
public final class C1848a implements Cloneable {

    /* renamed from: a */
    public int[] f7242a;

    /* renamed from: b */
    public int f7243b;

    public C1848a() {
        this.f7243b = 0;
        this.f7242a = new int[1];
    }

    public C1848a(int i) {
        this.f7243b = i;
        this.f7242a = m8440g(i);
    }

    private C1848a(int[] iArr, int i) {
        this.f7242a = iArr;
        this.f7243b = i;
    }

    /* renamed from: b */
    private void m8432b(C1848a c1848a) {
        if (this.f7243b != c1848a.f7243b) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        for (int i = 0; i < this.f7242a.length; i++) {
            int[] iArr = this.f7242a;
            iArr[i] = iArr[i] ^ c1848a.f7242a[i];
        }
    }

    /* renamed from: c */
    private void m8433c(int i, int i2) {
        this.f7242a[i / 32] = i2;
    }

    /* renamed from: d */
    private int m8434d() {
        return this.f7243b;
    }

    /* renamed from: d */
    private void m8435d(int i, int i2) {
        if (i2 < i || i < 0 || i2 > this.f7243b) {
            throw new IllegalArgumentException();
        }
        if (i2 == i) {
            return;
        }
        int i3 = i2 - 1;
        int i4 = i / 32;
        int i5 = i3 / 32;
        int i6 = i4;
        while (i6 <= i5) {
            int i7 = 31;
            int i8 = i6 > i4 ? 0 : i & 31;
            if (i6 >= i5) {
                i7 = 31 & i3;
            }
            int i9 = (2 << i7) - (1 << i8);
            int[] iArr = this.f7242a;
            iArr[i6] = i9 | iArr[i6];
            i6++;
        }
    }

    /* renamed from: e */
    private void m8436e(int i) {
        if (i > (this.f7242a.length << 5)) {
            int[] m8440g = m8440g(i);
            System.arraycopy(this.f7242a, 0, m8440g, 0, this.f7242a.length);
            this.f7242a = m8440g;
        }
    }

    /* renamed from: e */
    private int[] m8437e() {
        return this.f7242a;
    }

    /* renamed from: f */
    private C1848a m8438f() {
        return new C1848a((int[]) this.f7242a.clone(), this.f7243b);
    }

    /* renamed from: f */
    private void m8439f(int i) {
        int[] iArr = this.f7242a;
        int i2 = i / 32;
        iArr[i2] = (1 << (i & 31)) ^ iArr[i2];
    }

    /* renamed from: g */
    private static int[] m8440g(int i) {
        return new int[(i + 31) / 32];
    }

    /* renamed from: a */
    public final int m8441a() {
        return (this.f7243b + 7) / 8;
    }

    /* renamed from: a */
    public final void m8442a(int i, byte[] bArr, int i2) {
        int i3 = i;
        int i4 = 0;
        while (i4 < i2) {
            int i5 = i3;
            int i6 = 0;
            for (int i7 = 0; i7 < 8; i7++) {
                if (m8445a(i5)) {
                    i6 |= 1 << (7 - i7);
                }
                i5++;
            }
            bArr[i4 + 0] = (byte) i6;
            i4++;
            i3 = i5;
        }
    }

    /* renamed from: a */
    public final void m8443a(C1848a c1848a) {
        int i = c1848a.f7243b;
        m8436e(this.f7243b + i);
        for (int i2 = 0; i2 < i; i2++) {
            m8444a(c1848a.m8445a(i2));
        }
    }

    /* renamed from: a */
    public final void m8444a(boolean z) {
        m8436e(this.f7243b + 1);
        if (z) {
            int[] iArr = this.f7242a;
            int i = this.f7243b / 32;
            iArr[i] = iArr[i] | (1 << (this.f7243b & 31));
        }
        this.f7243b++;
    }

    /* renamed from: a */
    public final boolean m8445a(int i) {
        return ((1 << (i & 31)) & this.f7242a[i / 32]) != 0;
    }

    /* renamed from: a */
    public final boolean m8446a(int i, int i2) {
        if (i2 < i || i < 0 || i2 > this.f7243b) {
            throw new IllegalArgumentException();
        }
        if (i2 == i) {
            return true;
        }
        int i3 = i2 - 1;
        int i4 = i / 32;
        int i5 = i3 / 32;
        int i6 = i4;
        while (i6 <= i5) {
            if ((((2 << (i6 >= i5 ? 31 & i3 : 31)) - (1 << (i6 > i4 ? 0 : i & 31))) & this.f7242a[i6]) != 0) {
                return false;
            }
            i6++;
        }
        return true;
    }

    /* renamed from: b */
    public final void m8447b() {
        int length = this.f7242a.length;
        for (int i = 0; i < length; i++) {
            this.f7242a[i] = 0;
        }
    }

    /* renamed from: b */
    public final void m8448b(int i) {
        int[] iArr = this.f7242a;
        int i2 = i / 32;
        iArr[i2] = (1 << (i & 31)) | iArr[i2];
    }

    /* renamed from: b */
    public final void m8449b(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        m8436e(this.f7243b + i2);
        while (i2 > 0) {
            boolean z = true;
            if (((i >> (i2 - 1)) & 1) != 1) {
                z = false;
            }
            m8444a(z);
            i2--;
        }
    }

    /* renamed from: c */
    public final int m8450c(int i) {
        if (i >= this.f7243b) {
            return this.f7243b;
        }
        int i2 = i / 32;
        int i3 = (((1 << (i & 31)) - 1) ^ (-1)) & this.f7242a[i2];
        while (i3 == 0) {
            i2++;
            if (i2 == this.f7242a.length) {
                return this.f7243b;
            }
            i3 = this.f7242a[i2];
        }
        int numberOfTrailingZeros = (i2 << 5) + Integer.numberOfTrailingZeros(i3);
        return numberOfTrailingZeros > this.f7243b ? this.f7243b : numberOfTrailingZeros;
    }

    /* renamed from: c */
    public final void m8451c() {
        int[] iArr = new int[this.f7242a.length];
        int i = (this.f7243b - 1) / 32;
        int i2 = i + 1;
        for (int i3 = 0; i3 < i2; i3++) {
            long j = this.f7242a[i3];
            long j2 = ((j >> 1) & 1431655765) | ((j & 1431655765) << 1);
            long j3 = ((j2 >> 2) & 858993459) | ((j2 & 858993459) << 2);
            long j4 = ((j3 >> 4) & 252645135) | ((j3 & 252645135) << 4);
            long j5 = ((j4 >> 8) & 16711935) | ((j4 & 16711935) << 8);
            iArr[i - i3] = (int) (((j5 >> 16) & 65535) | ((j5 & 65535) << 16));
        }
        int i4 = i2 << 5;
        if (this.f7243b != i4) {
            int i5 = i4 - this.f7243b;
            int i6 = iArr[0] >>> i5;
            for (int i7 = 1; i7 < i2; i7++) {
                int i8 = iArr[i7];
                iArr[i7 - 1] = i6 | (i8 << (32 - i5));
                i6 = i8 >>> i5;
            }
            iArr[i2 - 1] = i6;
        }
        this.f7242a = iArr;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return new C1848a((int[]) this.f7242a.clone(), this.f7243b);
    }

    /* renamed from: d */
    public final int m8452d(int i) {
        if (i >= this.f7243b) {
            return this.f7243b;
        }
        int i2 = i / 32;
        int i3 = (((1 << (i & 31)) - 1) ^ (-1)) & (this.f7242a[i2] ^ (-1));
        while (i3 == 0) {
            i2++;
            if (i2 == this.f7242a.length) {
                return this.f7243b;
            }
            i3 = this.f7242a[i2] ^ (-1);
        }
        int numberOfTrailingZeros = (i2 << 5) + Integer.numberOfTrailingZeros(i3);
        return numberOfTrailingZeros > this.f7243b ? this.f7243b : numberOfTrailingZeros;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1848a)) {
            return false;
        }
        C1848a c1848a = (C1848a) obj;
        return this.f7243b == c1848a.f7243b && Arrays.equals(this.f7242a, c1848a.f7242a);
    }

    public final int hashCode() {
        return (this.f7243b * 31) + Arrays.hashCode(this.f7242a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(this.f7243b + (this.f7243b / 8) + 1);
        for (int i = 0; i < this.f7243b; i++) {
            if ((i & 7) == 0) {
                sb.append(' ');
            }
            sb.append(m8445a(i) ? 'X' : FilenameUtils.EXTENSION_SEPARATOR);
        }
        return sb.toString();
    }
}
