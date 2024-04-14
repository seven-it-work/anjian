package com.google.p130a.p158i.p159a;

import com.google.p130a.C1961h;
import com.google.p130a.p137c.C1852b;

/* renamed from: com.google.a.i.a.a */
/* loaded from: classes.dex */
final class C1990a {

    /* renamed from: a */
    final C1852b f7798a;

    /* renamed from: b */
    C1999j f7799b;

    /* renamed from: c */
    C1996g f7800c;

    /* renamed from: d */
    boolean f7801d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1990a(C1852b c1852b) throws C1961h {
        int i = c1852b.f7256b;
        if (i < 21 || (i & 3) != 1) {
            throw C1961h.getFormatInstance();
        }
        this.f7798a = c1852b;
    }

    /* renamed from: a */
    private int m9108a(int i, int i2, int i3) {
        return this.f7801d ? this.f7798a.m8479a(i2, i) : this.f7798a.m8479a(i, i2) ? (i3 << 1) | 1 : i3 << 1;
    }

    /* renamed from: c */
    private byte[] m9109c() throws C1961h {
        int i;
        C1996g m9113a = m9113a();
        C1999j m9114b = m9114b();
        EnumC1992c enumC1992c = EnumC1992c.values()[m9113a.f7815b];
        int i2 = this.f7798a.f7256b;
        enumC1992c.unmaskBitMatrix(this.f7798a, i2);
        int m9147a = m9114b.m9147a();
        C1852b c1852b = new C1852b(m9147a);
        c1852b.m8478a(0, 0, 9, 9);
        int i3 = m9147a - 8;
        c1852b.m8478a(i3, 0, 8, 9);
        c1852b.m8478a(0, i3, 9, 8);
        int length = m9114b.f7820b.length;
        int i4 = 0;
        while (true) {
            i = 2;
            if (i4 >= length) {
                break;
            }
            int i5 = m9114b.f7820b[i4] - 2;
            for (int i6 = 0; i6 < length; i6++) {
                if ((i4 != 0 || (i6 != 0 && i6 != length - 1)) && (i4 != length - 1 || i6 != 0)) {
                    c1852b.m8478a(m9114b.f7820b[i6] - 2, i5, 5, 5);
                }
            }
            i4++;
        }
        int i7 = m9147a - 17;
        int i8 = 6;
        c1852b.m8478a(6, 9, 1, i7);
        c1852b.m8478a(9, 6, i7, 1);
        if (m9114b.f7819a > 6) {
            int i9 = m9147a - 11;
            c1852b.m8478a(i9, 0, 3, 6);
            c1852b.m8478a(0, i9, 6, 3);
        }
        byte[] bArr = new byte[m9114b.f7821c];
        int i10 = i2 - 1;
        int i11 = i10;
        int i12 = 0;
        boolean z = true;
        int i13 = 0;
        int i14 = 0;
        while (i11 > 0) {
            if (i11 == i8) {
                i11--;
            }
            int i15 = i14;
            int i16 = i13;
            int i17 = i12;
            int i18 = 0;
            while (i18 < i2) {
                int i19 = z ? i10 - i18 : i18;
                int i20 = i16;
                int i21 = i17;
                int i22 = 0;
                while (i22 < i) {
                    int i23 = i11 - i22;
                    if (!c1852b.m8479a(i23, i19)) {
                        i15++;
                        int i24 = i20 << 1;
                        int i25 = this.f7798a.m8479a(i23, i19) ? i24 | 1 : i24;
                        if (i15 == 8) {
                            bArr[i21] = (byte) i25;
                            i21++;
                            i15 = 0;
                            i20 = 0;
                        } else {
                            i20 = i25;
                        }
                    }
                    i22++;
                    i = 2;
                }
                i18++;
                i17 = i21;
                i16 = i20;
                i = 2;
            }
            z = !z;
            i11 -= 2;
            i12 = i17;
            i13 = i16;
            i14 = i15;
            i8 = 6;
            i = 2;
        }
        if (i12 != m9114b.f7821c) {
            throw C1961h.getFormatInstance();
        }
        return bArr;
    }

    /* renamed from: d */
    private void m9110d() {
        if (this.f7800c == null) {
            return;
        }
        EnumC1992c.values()[this.f7800c.f7815b].unmaskBitMatrix(this.f7798a, this.f7798a.f7256b);
    }

    /* renamed from: e */
    private void m9111e() {
        this.f7799b = null;
        this.f7800c = null;
        this.f7801d = true;
    }

    /* renamed from: f */
    private void m9112f() {
        int i = 0;
        while (i < this.f7798a.f7255a) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < this.f7798a.f7256b; i3++) {
                if (this.f7798a.m8479a(i, i3) != this.f7798a.m8479a(i3, i)) {
                    this.f7798a.m8483c(i3, i);
                    this.f7798a.m8483c(i, i3);
                }
            }
            i = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C1996g m9113a() throws C1961h {
        if (this.f7800c != null) {
            return this.f7800c;
        }
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 6; i3++) {
            i2 = m9108a(i3, 8, i2);
        }
        int m9108a = m9108a(8, 7, m9108a(8, 8, m9108a(7, 8, i2)));
        for (int i4 = 5; i4 >= 0; i4--) {
            m9108a = m9108a(8, i4, m9108a);
        }
        int i5 = this.f7798a.f7256b;
        int i6 = i5 - 7;
        for (int i7 = i5 - 1; i7 >= i6; i7--) {
            i = m9108a(8, i7, i);
        }
        for (int i8 = i5 - 8; i8 < i5; i8++) {
            i = m9108a(i8, 8, i);
        }
        this.f7800c = C1996g.m9135b(m9108a, i);
        if (this.f7800c != null) {
            return this.f7800c;
        }
        throw C1961h.getFormatInstance();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final C1999j m9114b() throws C1961h {
        if (this.f7799b != null) {
            return this.f7799b;
        }
        int i = this.f7798a.f7256b;
        int i2 = (i - 17) / 4;
        if (i2 <= 6) {
            return C1999j.m9141b(i2);
        }
        int i3 = i - 11;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 5; i6 >= 0; i6--) {
            for (int i7 = i - 9; i7 >= i3; i7--) {
                i5 = m9108a(i7, i6, i5);
            }
        }
        C1999j m9142c = C1999j.m9142c(i5);
        if (m9142c != null && m9142c.m9147a() == i) {
            this.f7799b = m9142c;
            return m9142c;
        }
        for (int i8 = 5; i8 >= 0; i8--) {
            for (int i9 = i - 9; i9 >= i3; i9--) {
                i4 = m9108a(i8, i9, i4);
            }
        }
        C1999j m9142c2 = C1999j.m9142c(i4);
        if (m9142c2 == null || m9142c2.m9147a() != i) {
            throw C1961h.getFormatInstance();
        }
        this.f7799b = m9142c2;
        return m9142c2;
    }
}
