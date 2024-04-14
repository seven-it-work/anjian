package com.google.p130a.p140d.p143c;

import java.util.Arrays;

/* renamed from: com.google.a.d.c.e */
/* loaded from: classes.dex */
public final class C1881e {

    /* renamed from: a */
    public final int f7354a;

    /* renamed from: b */
    public final byte[] f7355b;

    /* renamed from: c */
    private final CharSequence f7356c;

    /* renamed from: d */
    private final int f7357d;

    public C1881e(CharSequence charSequence, int i, int i2) {
        this.f7356c = charSequence;
        this.f7354a = i;
        this.f7357d = i2;
        this.f7355b = new byte[i * i2];
        Arrays.fill(this.f7355b, (byte) -1);
    }

    /* renamed from: a */
    private void m8616a(int i) {
        m8618a(this.f7357d - 1, 0, i, 1);
        m8618a(this.f7357d - 1, 1, i, 2);
        m8618a(this.f7357d - 1, 2, i, 3);
        m8618a(0, this.f7354a - 2, i, 4);
        m8618a(0, this.f7354a - 1, i, 5);
        m8618a(1, this.f7354a - 1, i, 6);
        m8618a(2, this.f7354a - 1, i, 7);
        m8618a(3, this.f7354a - 1, i, 8);
    }

    /* renamed from: a */
    private void m8617a(int i, int i2, int i3) {
        int i4 = i - 2;
        int i5 = i2 - 2;
        m8618a(i4, i5, i3, 1);
        int i6 = i2 - 1;
        m8618a(i4, i6, i3, 2);
        int i7 = i - 1;
        m8618a(i7, i5, i3, 3);
        m8618a(i7, i6, i3, 4);
        m8618a(i7, i2, i3, 5);
        m8618a(i, i5, i3, 6);
        m8618a(i, i6, i3, 7);
        m8618a(i, i2, i3, 8);
    }

    /* renamed from: a */
    private void m8618a(int i, int i2, int i3, int i4) {
        if (i < 0) {
            i += this.f7357d;
            i2 += 4 - ((this.f7357d + 4) % 8);
        }
        if (i2 < 0) {
            i2 += this.f7354a;
            i += 4 - ((this.f7354a + 4) % 8);
        }
        m8619a(i2, i, (this.f7356c.charAt(i3) & (1 << (8 - i4))) != 0);
    }

    /* renamed from: a */
    private void m8619a(int i, int i2, boolean z) {
        this.f7355b[(i2 * this.f7354a) + i] = z ? (byte) 1 : (byte) 0;
    }

    /* renamed from: a */
    private boolean m8620a(int i, int i2) {
        return this.f7355b[(i2 * this.f7354a) + i] == 1;
    }

    /* renamed from: b */
    private int m8621b() {
        return this.f7357d;
    }

    /* renamed from: b */
    private void m8622b(int i) {
        m8618a(this.f7357d - 3, 0, i, 1);
        m8618a(this.f7357d - 2, 0, i, 2);
        m8618a(this.f7357d - 1, 0, i, 3);
        m8618a(0, this.f7354a - 4, i, 4);
        m8618a(0, this.f7354a - 3, i, 5);
        m8618a(0, this.f7354a - 2, i, 6);
        m8618a(0, this.f7354a - 1, i, 7);
        m8618a(1, this.f7354a - 1, i, 8);
    }

    /* renamed from: b */
    private boolean m8623b(int i, int i2) {
        return this.f7355b[(i2 * this.f7354a) + i] >= 0;
    }

    /* renamed from: c */
    private int m8624c() {
        return this.f7354a;
    }

    /* renamed from: c */
    private void m8625c(int i) {
        m8618a(this.f7357d - 3, 0, i, 1);
        m8618a(this.f7357d - 2, 0, i, 2);
        m8618a(this.f7357d - 1, 0, i, 3);
        m8618a(0, this.f7354a - 2, i, 4);
        m8618a(0, this.f7354a - 1, i, 5);
        m8618a(1, this.f7354a - 1, i, 6);
        m8618a(2, this.f7354a - 1, i, 7);
        m8618a(3, this.f7354a - 1, i, 8);
    }

    /* renamed from: d */
    private void m8626d(int i) {
        m8618a(this.f7357d - 1, 0, i, 1);
        m8618a(this.f7357d - 1, this.f7354a - 1, i, 2);
        m8618a(0, this.f7354a - 3, i, 3);
        m8618a(0, this.f7354a - 2, i, 4);
        m8618a(0, this.f7354a - 1, i, 5);
        m8618a(1, this.f7354a - 3, i, 6);
        m8618a(1, this.f7354a - 2, i, 7);
        m8618a(1, this.f7354a - 1, i, 8);
    }

    /* renamed from: d */
    private byte[] m8627d() {
        return this.f7355b;
    }

    /* renamed from: a */
    public final void m8628a() {
        int i = 4;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i == this.f7357d && i2 == 0) {
                m8618a(this.f7357d - 1, 0, i3, 1);
                m8618a(this.f7357d - 1, 1, i3, 2);
                m8618a(this.f7357d - 1, 2, i3, 3);
                m8618a(0, this.f7354a - 2, i3, 4);
                m8618a(0, this.f7354a - 1, i3, 5);
                m8618a(1, this.f7354a - 1, i3, 6);
                m8618a(2, this.f7354a - 1, i3, 7);
                m8618a(3, this.f7354a - 1, i3, 8);
                i3++;
            }
            if (i == this.f7357d - 2 && i2 == 0 && this.f7354a % 4 != 0) {
                m8618a(this.f7357d - 3, 0, i3, 1);
                m8618a(this.f7357d - 2, 0, i3, 2);
                m8618a(this.f7357d - 1, 0, i3, 3);
                m8618a(0, this.f7354a - 4, i3, 4);
                m8618a(0, this.f7354a - 3, i3, 5);
                m8618a(0, this.f7354a - 2, i3, 6);
                m8618a(0, this.f7354a - 1, i3, 7);
                m8618a(1, this.f7354a - 1, i3, 8);
                i3++;
            }
            if (i == this.f7357d - 2 && i2 == 0 && this.f7354a % 8 == 4) {
                m8618a(this.f7357d - 3, 0, i3, 1);
                m8618a(this.f7357d - 2, 0, i3, 2);
                m8618a(this.f7357d - 1, 0, i3, 3);
                m8618a(0, this.f7354a - 2, i3, 4);
                m8618a(0, this.f7354a - 1, i3, 5);
                m8618a(1, this.f7354a - 1, i3, 6);
                m8618a(2, this.f7354a - 1, i3, 7);
                m8618a(3, this.f7354a - 1, i3, 8);
                i3++;
            }
            if (i == this.f7357d + 4 && i2 == 2 && this.f7354a % 8 == 0) {
                m8618a(this.f7357d - 1, 0, i3, 1);
                m8618a(this.f7357d - 1, this.f7354a - 1, i3, 2);
                m8618a(0, this.f7354a - 3, i3, 3);
                m8618a(0, this.f7354a - 2, i3, 4);
                m8618a(0, this.f7354a - 1, i3, 5);
                m8618a(1, this.f7354a - 3, i3, 6);
                m8618a(1, this.f7354a - 2, i3, 7);
                m8618a(1, this.f7354a - 1, i3, 8);
                i3++;
            }
            do {
                if (i < this.f7357d && i2 >= 0 && !m8623b(i2, i)) {
                    m8617a(i, i2, i3);
                    i3++;
                }
                i -= 2;
                i2 += 2;
                if (i < 0) {
                    break;
                }
            } while (i2 < this.f7354a);
            int i4 = i + 1;
            int i5 = i2 + 3;
            do {
                if (i4 >= 0 && i5 < this.f7354a && !m8623b(i5, i4)) {
                    m8617a(i4, i5, i3);
                    i3++;
                }
                i4 += 2;
                i5 -= 2;
                if (i4 >= this.f7357d) {
                    break;
                }
            } while (i5 >= 0);
            i = i4 + 3;
            i2 = i5 + 1;
            if (i >= this.f7357d && i2 >= this.f7354a) {
                break;
            }
        }
        if (m8623b(this.f7354a - 1, this.f7357d - 1)) {
            return;
        }
        m8619a(this.f7354a - 1, this.f7357d - 1, true);
        m8619a(this.f7354a - 2, this.f7357d - 2, true);
    }
}
