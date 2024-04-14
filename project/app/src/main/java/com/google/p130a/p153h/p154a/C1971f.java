package com.google.p130a.p153h.p154a;

import com.google.p130a.C2023t;
import com.google.p130a.p153h.C1962a;
import java.util.Formatter;

/* renamed from: com.google.a.h.a.f */
/* loaded from: classes.dex */
final class C1971f {

    /* renamed from: e */
    private static final int f7709e = 2;

    /* renamed from: a */
    final C1963a f7710a;

    /* renamed from: b */
    final C1972g[] f7711b;

    /* renamed from: c */
    C1968c f7712c;

    /* renamed from: d */
    final int f7713d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1971f(C1963a c1963a, C1968c c1968c) {
        this.f7710a = c1963a;
        this.f7713d = c1963a.f7648a;
        this.f7712c = c1968c;
        this.f7711b = new C1972g[this.f7713d + 2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m8958a(int i, int i2, C1969d c1969d) {
        if (c1969d == null || c1969d.m8947a()) {
            return i2;
        }
        if (!c1969d.m8948a(i)) {
            return i2 + 1;
        }
        c1969d.f7677e = i;
        return 0;
    }

    /* renamed from: a */
    private C1972g m8959a(int i) {
        return this.f7711b[i];
    }

    /* renamed from: a */
    private void m8960a(int i, int i2, C1969d[] c1969dArr) {
        boolean z;
        C1969d c1969d = c1969dArr[i2];
        C1969d[] c1969dArr2 = this.f7711b[i - 1].f7716b;
        int i3 = i + 1;
        C1969d[] c1969dArr3 = this.f7711b[i3] != null ? this.f7711b[i3].f7716b : c1969dArr2;
        C1969d[] c1969dArr4 = new C1969d[14];
        c1969dArr4[2] = c1969dArr2[i2];
        c1969dArr4[3] = c1969dArr3[i2];
        if (i2 > 0) {
            int i4 = i2 - 1;
            c1969dArr4[0] = c1969dArr[i4];
            c1969dArr4[4] = c1969dArr2[i4];
            c1969dArr4[5] = c1969dArr3[i4];
        }
        if (i2 > 1) {
            int i5 = i2 - 2;
            c1969dArr4[8] = c1969dArr[i5];
            c1969dArr4[10] = c1969dArr2[i5];
            c1969dArr4[11] = c1969dArr3[i5];
        }
        if (i2 < c1969dArr.length - 1) {
            int i6 = i2 + 1;
            c1969dArr4[1] = c1969dArr[i6];
            c1969dArr4[6] = c1969dArr2[i6];
            c1969dArr4[7] = c1969dArr3[i6];
        }
        if (i2 < c1969dArr.length - 2) {
            int i7 = i2 + 2;
            c1969dArr4[9] = c1969dArr[i7];
            c1969dArr4[12] = c1969dArr2[i7];
            c1969dArr4[13] = c1969dArr3[i7];
        }
        for (int i8 = 0; i8 < 14; i8++) {
            C1969d c1969d2 = c1969dArr4[i8];
            if (c1969d2 != null && c1969d2.m8947a() && c1969d2.f7675c == c1969d.f7675c) {
                c1969d.f7677e = c1969d2.f7677e;
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return;
            }
        }
    }

    /* renamed from: a */
    private void m8961a(int i, C1972g c1972g) {
        this.f7711b[i] = c1972g;
    }

    /* renamed from: a */
    private void m8962a(C1968c c1968c) {
        this.f7712c = c1968c;
    }

    /* renamed from: a */
    private static boolean m8963a(C1969d c1969d, C1969d c1969d2) {
        if (c1969d2 == null || !c1969d2.m8947a() || c1969d2.f7675c != c1969d.f7675c) {
            return false;
        }
        c1969d.f7677e = c1969d2.f7677e;
        return true;
    }

    /* renamed from: a */
    private C1972g[] m8964a() {
        int i;
        int i2;
        int i3;
        boolean z;
        m8974a(this.f7711b[0]);
        m8974a(this.f7711b[this.f7713d + 1]);
        int i4 = C1962a.f7639b;
        while (true) {
            if (this.f7711b[0] != null && this.f7711b[this.f7713d + 1] != null) {
                C1969d[] c1969dArr = this.f7711b[0].f7716b;
                C1969d[] c1969dArr2 = this.f7711b[this.f7713d + 1].f7716b;
                for (int i5 = 0; i5 < c1969dArr.length; i5++) {
                    if (c1969dArr[i5] != null && c1969dArr2[i5] != null && c1969dArr[i5].f7677e == c1969dArr2[i5].f7677e) {
                        for (int i6 = 1; i6 <= this.f7713d; i6++) {
                            C1969d c1969d = this.f7711b[i6].f7716b[i5];
                            if (c1969d != null) {
                                c1969d.f7677e = c1969dArr[i5].f7677e;
                                if (!c1969d.m8947a()) {
                                    this.f7711b[i6].f7716b[i5] = null;
                                }
                            }
                        }
                    }
                }
            }
            if (this.f7711b[0] == null) {
                i = 0;
            } else {
                C1969d[] c1969dArr3 = this.f7711b[0].f7716b;
                i = 0;
                for (int i7 = 0; i7 < c1969dArr3.length; i7++) {
                    if (c1969dArr3[i7] != null) {
                        int i8 = c1969dArr3[i7].f7677e;
                        int i9 = i;
                        int i10 = 0;
                        for (int i11 = 1; i11 < this.f7713d + 1 && i10 < 2; i11++) {
                            C1969d c1969d2 = this.f7711b[i11].f7716b[i7];
                            if (c1969d2 != null) {
                                i10 = m8958a(i8, i10, c1969d2);
                                if (!c1969d2.m8947a()) {
                                    i9++;
                                }
                            }
                        }
                        i = i9;
                    }
                }
            }
            if (this.f7711b[this.f7713d + 1] == null) {
                i2 = 0;
            } else {
                C1969d[] c1969dArr4 = this.f7711b[this.f7713d + 1].f7716b;
                i2 = 0;
                for (int i12 = 0; i12 < c1969dArr4.length; i12++) {
                    if (c1969dArr4[i12] != null) {
                        int i13 = c1969dArr4[i12].f7677e;
                        int i14 = i2;
                        int i15 = 0;
                        for (int i16 = this.f7713d + 1; i16 > 0 && i15 < 2; i16--) {
                            C1969d c1969d3 = this.f7711b[i16].f7716b[i12];
                            if (c1969d3 != null) {
                                i15 = m8958a(i13, i15, c1969d3);
                                if (!c1969d3.m8947a()) {
                                    i14++;
                                }
                            }
                        }
                        i2 = i14;
                    }
                }
            }
            int i17 = i + i2;
            if (i17 == 0) {
                i17 = 0;
            } else {
                for (int i18 = 1; i18 < this.f7713d + 1; i18++) {
                    C1969d[] c1969dArr5 = this.f7711b[i18].f7716b;
                    for (int i19 = 0; i19 < c1969dArr5.length; i19++) {
                        if (c1969dArr5[i19] != null && !c1969dArr5[i19].m8947a()) {
                            C1969d c1969d4 = c1969dArr5[i19];
                            C1969d[] c1969dArr6 = this.f7711b[i18 - 1].f7716b;
                            int i20 = i18 + 1;
                            C1969d[] c1969dArr7 = this.f7711b[i20] != null ? this.f7711b[i20].f7716b : c1969dArr6;
                            C1969d[] c1969dArr8 = new C1969d[14];
                            c1969dArr8[2] = c1969dArr6[i19];
                            c1969dArr8[3] = c1969dArr7[i19];
                            if (i19 > 0) {
                                int i21 = i19 - 1;
                                c1969dArr8[0] = c1969dArr5[i21];
                                c1969dArr8[4] = c1969dArr6[i21];
                                c1969dArr8[5] = c1969dArr7[i21];
                            }
                            if (i19 > 1) {
                                int i22 = i19 - 2;
                                c1969dArr8[8] = c1969dArr5[i22];
                                c1969dArr8[10] = c1969dArr6[i22];
                                c1969dArr8[11] = c1969dArr7[i22];
                            }
                            if (i19 < c1969dArr5.length - 1) {
                                int i23 = i19 + 1;
                                c1969dArr8[1] = c1969dArr5[i23];
                                c1969dArr8[6] = c1969dArr6[i23];
                                c1969dArr8[7] = c1969dArr7[i23];
                            }
                            if (i19 < c1969dArr5.length - 2) {
                                int i24 = i19 + 2;
                                c1969dArr8[9] = c1969dArr5[i24];
                                c1969dArr8[12] = c1969dArr6[i24];
                                c1969dArr8[13] = c1969dArr7[i24];
                            }
                            while (i3 < 14) {
                                C1969d c1969d5 = c1969dArr8[i3];
                                if (c1969d5 != null && c1969d5.m8947a() && c1969d5.f7675c == c1969d4.f7675c) {
                                    c1969d4.f7677e = c1969d5.f7677e;
                                    z = true;
                                } else {
                                    z = false;
                                }
                                i3 = z ? 0 : i3 + 1;
                            }
                        }
                    }
                }
            }
            if (i17 <= 0 || i17 >= i4) {
                break;
            }
            i4 = i17;
        }
        return this.f7711b;
    }

    /* renamed from: b */
    private int m8965b() {
        int i;
        int i2;
        int i3;
        boolean z;
        if (this.f7711b[0] != null && this.f7711b[this.f7713d + 1] != null) {
            C1969d[] c1969dArr = this.f7711b[0].f7716b;
            C1969d[] c1969dArr2 = this.f7711b[this.f7713d + 1].f7716b;
            for (int i4 = 0; i4 < c1969dArr.length; i4++) {
                if (c1969dArr[i4] != null && c1969dArr2[i4] != null && c1969dArr[i4].f7677e == c1969dArr2[i4].f7677e) {
                    for (int i5 = 1; i5 <= this.f7713d; i5++) {
                        C1969d c1969d = this.f7711b[i5].f7716b[i4];
                        if (c1969d != null) {
                            c1969d.f7677e = c1969dArr[i4].f7677e;
                            if (!c1969d.m8947a()) {
                                this.f7711b[i5].f7716b[i4] = null;
                            }
                        }
                    }
                }
            }
        }
        if (this.f7711b[0] == null) {
            i = 0;
        } else {
            C1969d[] c1969dArr3 = this.f7711b[0].f7716b;
            i = 0;
            for (int i6 = 0; i6 < c1969dArr3.length; i6++) {
                if (c1969dArr3[i6] != null) {
                    int i7 = c1969dArr3[i6].f7677e;
                    int i8 = i;
                    int i9 = 0;
                    for (int i10 = 1; i10 < this.f7713d + 1 && i9 < 2; i10++) {
                        C1969d c1969d2 = this.f7711b[i10].f7716b[i6];
                        if (c1969d2 != null) {
                            i9 = m8958a(i7, i9, c1969d2);
                            if (!c1969d2.m8947a()) {
                                i8++;
                            }
                        }
                    }
                    i = i8;
                }
            }
        }
        if (this.f7711b[this.f7713d + 1] == null) {
            i2 = 0;
        } else {
            C1969d[] c1969dArr4 = this.f7711b[this.f7713d + 1].f7716b;
            i2 = 0;
            for (int i11 = 0; i11 < c1969dArr4.length; i11++) {
                if (c1969dArr4[i11] != null) {
                    int i12 = c1969dArr4[i11].f7677e;
                    int i13 = i2;
                    int i14 = 0;
                    for (int i15 = this.f7713d + 1; i15 > 0 && i14 < 2; i15--) {
                        C1969d c1969d3 = this.f7711b[i15].f7716b[i11];
                        if (c1969d3 != null) {
                            i14 = m8958a(i12, i14, c1969d3);
                            if (!c1969d3.m8947a()) {
                                i13++;
                            }
                        }
                    }
                    i2 = i13;
                }
            }
        }
        int i16 = i + i2;
        if (i16 == 0) {
            return 0;
        }
        for (int i17 = 1; i17 < this.f7713d + 1; i17++) {
            C1969d[] c1969dArr5 = this.f7711b[i17].f7716b;
            for (int i18 = 0; i18 < c1969dArr5.length; i18++) {
                if (c1969dArr5[i18] != null && !c1969dArr5[i18].m8947a()) {
                    C1969d c1969d4 = c1969dArr5[i18];
                    C1969d[] c1969dArr6 = this.f7711b[i17 - 1].f7716b;
                    int i19 = i17 + 1;
                    C1969d[] c1969dArr7 = this.f7711b[i19] != null ? this.f7711b[i19].f7716b : c1969dArr6;
                    C1969d[] c1969dArr8 = new C1969d[14];
                    c1969dArr8[2] = c1969dArr6[i18];
                    c1969dArr8[3] = c1969dArr7[i18];
                    if (i18 > 0) {
                        int i20 = i18 - 1;
                        c1969dArr8[0] = c1969dArr5[i20];
                        c1969dArr8[4] = c1969dArr6[i20];
                        c1969dArr8[5] = c1969dArr7[i20];
                    }
                    if (i18 > 1) {
                        int i21 = i18 - 2;
                        c1969dArr8[8] = c1969dArr5[i21];
                        c1969dArr8[10] = c1969dArr6[i21];
                        c1969dArr8[11] = c1969dArr7[i21];
                    }
                    if (i18 < c1969dArr5.length - 1) {
                        int i22 = i18 + 1;
                        c1969dArr8[1] = c1969dArr5[i22];
                        c1969dArr8[6] = c1969dArr6[i22];
                        c1969dArr8[7] = c1969dArr7[i22];
                    }
                    if (i18 < c1969dArr5.length - 2) {
                        int i23 = i18 + 2;
                        c1969dArr8[9] = c1969dArr5[i23];
                        c1969dArr8[12] = c1969dArr6[i23];
                        c1969dArr8[13] = c1969dArr7[i23];
                    }
                    while (i3 < 14) {
                        C1969d c1969d5 = c1969dArr8[i3];
                        if (c1969d5 != null && c1969d5.m8947a() && c1969d5.f7675c == c1969d4.f7675c) {
                            c1969d4.f7677e = c1969d5.f7677e;
                            z = true;
                        } else {
                            z = false;
                        }
                        i3 = z ? 0 : i3 + 1;
                    }
                }
            }
        }
        return i16;
    }

    /* renamed from: c */
    private int m8966c() {
        int i;
        int i2 = 0;
        if (this.f7711b[0] != null && this.f7711b[this.f7713d + 1] != null) {
            C1969d[] c1969dArr = this.f7711b[0].f7716b;
            C1969d[] c1969dArr2 = this.f7711b[this.f7713d + 1].f7716b;
            for (int i3 = 0; i3 < c1969dArr.length; i3++) {
                if (c1969dArr[i3] != null && c1969dArr2[i3] != null && c1969dArr[i3].f7677e == c1969dArr2[i3].f7677e) {
                    for (int i4 = 1; i4 <= this.f7713d; i4++) {
                        C1969d c1969d = this.f7711b[i4].f7716b[i3];
                        if (c1969d != null) {
                            c1969d.f7677e = c1969dArr[i3].f7677e;
                            if (!c1969d.m8947a()) {
                                this.f7711b[i4].f7716b[i3] = null;
                            }
                        }
                    }
                }
            }
        }
        if (this.f7711b[0] == null) {
            i = 0;
        } else {
            C1969d[] c1969dArr3 = this.f7711b[0].f7716b;
            i = 0;
            for (int i5 = 0; i5 < c1969dArr3.length; i5++) {
                if (c1969dArr3[i5] != null) {
                    int i6 = c1969dArr3[i5].f7677e;
                    int i7 = i;
                    int i8 = 0;
                    for (int i9 = 1; i9 < this.f7713d + 1 && i8 < 2; i9++) {
                        C1969d c1969d2 = this.f7711b[i9].f7716b[i5];
                        if (c1969d2 != null) {
                            i8 = m8958a(i6, i8, c1969d2);
                            if (!c1969d2.m8947a()) {
                                i7++;
                            }
                        }
                    }
                    i = i7;
                }
            }
        }
        if (this.f7711b[this.f7713d + 1] != null) {
            C1969d[] c1969dArr4 = this.f7711b[this.f7713d + 1].f7716b;
            int i10 = 0;
            for (int i11 = 0; i11 < c1969dArr4.length; i11++) {
                if (c1969dArr4[i11] != null) {
                    int i12 = c1969dArr4[i11].f7677e;
                    int i13 = i10;
                    int i14 = 0;
                    for (int i15 = this.f7713d + 1; i15 > 0 && i14 < 2; i15--) {
                        C1969d c1969d3 = this.f7711b[i15].f7716b[i11];
                        if (c1969d3 != null) {
                            i14 = m8958a(i12, i14, c1969d3);
                            if (!c1969d3.m8947a()) {
                                i13++;
                            }
                        }
                    }
                    i10 = i13;
                }
            }
            i2 = i10;
        }
        return i + i2;
    }

    /* renamed from: d */
    private void m8967d() {
        if (this.f7711b[0] == null || this.f7711b[this.f7713d + 1] == null) {
            return;
        }
        C1969d[] c1969dArr = this.f7711b[0].f7716b;
        C1969d[] c1969dArr2 = this.f7711b[this.f7713d + 1].f7716b;
        for (int i = 0; i < c1969dArr.length; i++) {
            if (c1969dArr[i] != null && c1969dArr2[i] != null && c1969dArr[i].f7677e == c1969dArr2[i].f7677e) {
                for (int i2 = 1; i2 <= this.f7713d; i2++) {
                    C1969d c1969d = this.f7711b[i2].f7716b[i];
                    if (c1969d != null) {
                        c1969d.f7677e = c1969dArr[i].f7677e;
                        if (!c1969d.m8947a()) {
                            this.f7711b[i2].f7716b[i] = null;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: e */
    private int m8968e() {
        if (this.f7711b[this.f7713d + 1] == null) {
            return 0;
        }
        C1969d[] c1969dArr = this.f7711b[this.f7713d + 1].f7716b;
        int i = 0;
        for (int i2 = 0; i2 < c1969dArr.length; i2++) {
            if (c1969dArr[i2] != null) {
                int i3 = c1969dArr[i2].f7677e;
                int i4 = i;
                int i5 = 0;
                for (int i6 = this.f7713d + 1; i6 > 0 && i5 < 2; i6--) {
                    C1969d c1969d = this.f7711b[i6].f7716b[i2];
                    if (c1969d != null) {
                        i5 = m8958a(i3, i5, c1969d);
                        if (!c1969d.m8947a()) {
                            i4++;
                        }
                    }
                }
                i = i4;
            }
        }
        return i;
    }

    /* renamed from: f */
    private int m8969f() {
        if (this.f7711b[0] == null) {
            return 0;
        }
        C1969d[] c1969dArr = this.f7711b[0].f7716b;
        int i = 0;
        for (int i2 = 0; i2 < c1969dArr.length; i2++) {
            if (c1969dArr[i2] != null) {
                int i3 = c1969dArr[i2].f7677e;
                int i4 = i;
                int i5 = 0;
                for (int i6 = 1; i6 < this.f7713d + 1 && i5 < 2; i6++) {
                    C1969d c1969d = this.f7711b[i6].f7716b[i2];
                    if (c1969d != null) {
                        i5 = m8958a(i3, i5, c1969d);
                        if (!c1969d.m8947a()) {
                            i4++;
                        }
                    }
                }
                i = i4;
            }
        }
        return i;
    }

    /* renamed from: g */
    private int m8970g() {
        return this.f7713d;
    }

    /* renamed from: h */
    private int m8971h() {
        return this.f7710a.f7652e;
    }

    /* renamed from: i */
    private int m8972i() {
        return this.f7710a.f7649b;
    }

    /* renamed from: j */
    private C1968c m8973j() {
        return this.f7712c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m8974a(C1972g c1972g) {
        if (c1972g != null) {
            C1973h c1973h = (C1973h) c1972g;
            C1963a c1963a = this.f7710a;
            C1969d[] c1969dArr = c1973h.f7716b;
            for (C1969d c1969d : c1973h.f7716b) {
                if (c1969d != null) {
                    c1969d.m8949b();
                }
            }
            c1973h.m8987a(c1969dArr, c1963a);
            C1968c c1968c = c1973h.f7715a;
            C2023t c2023t = c1973h.f7717c ? c1968c.f7664b : c1968c.f7666d;
            C2023t c2023t2 = c1973h.f7717c ? c1968c.f7665c : c1968c.f7667e;
            int b2 = c1973h.m8979b((int) c2023t.f7902b);
            int b3 = c1973h.m8979b((int) c2023t2.f7902b);
            int i = -1;
            int i2 = 0;
            int i3 = 1;
            while (b2 < b3) {
                if (c1969dArr[b2] != null) {
                    C1969d c1969d2 = c1969dArr[b2];
                    int i4 = c1969d2.f7677e - i;
                    if (i4 == 0) {
                        i2++;
                    } else {
                        if (i4 == 1) {
                            i3 = Math.max(i3, i2);
                            i = c1969d2.f7677e;
                        } else if (i4 < 0 || c1969d2.f7677e >= c1963a.f7652e || i4 > b2) {
                            c1969dArr[b2] = null;
                        } else {
                            if (i3 > 2) {
                                i4 *= i3 - 2;
                            }
                            boolean z = i4 >= b2;
                            for (int i5 = 1; i5 <= i4 && !z; i5++) {
                                z = c1969dArr[b2 - i5] != null;
                            }
                            if (z) {
                                c1969dArr[b2] = null;
                            } else {
                                i = c1969d2.f7677e;
                            }
                        }
                        i2 = 1;
                    }
                }
                b2++;
            }
        }
    }

    public final String toString() {
        String str;
        Object[] objArr;
        C1972g c1972g = this.f7711b[0];
        if (c1972g == null) {
            c1972g = this.f7711b[this.f7713d + 1];
        }
        Formatter formatter = new Formatter();
        Throwable th = null;
        for (int i = 0; i < c1972g.f7716b.length; i++) {
            try {
                try {
                    formatter.format("CW %3d:", Integer.valueOf(i));
                    for (int i2 = 0; i2 < this.f7713d + 2; i2++) {
                        if (this.f7711b[i2] == null) {
                            str = "    |   ";
                            objArr = new Object[0];
                        } else {
                            C1969d c1969d = this.f7711b[i2].f7716b[i];
                            if (c1969d == null) {
                                str = "    |   ";
                                objArr = new Object[0];
                            } else {
                                formatter.format(" %3d|%3d", Integer.valueOf(c1969d.f7677e), Integer.valueOf(c1969d.f7676d));
                            }
                        }
                        formatter.format(str, objArr);
                    }
                    formatter.format("%n", new Object[0]);
                } catch (Throwable th2) {
                    if (th != null) {
                        try {
                            formatter.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        formatter.close();
                    }
                    throw th2;
                }
            } finally {
            }
        }
        String formatter2 = formatter.toString();
        formatter.close();
        return formatter2;
    }
}
