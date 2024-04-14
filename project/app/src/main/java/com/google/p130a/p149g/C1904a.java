package com.google.p130a.p149g;

import android.support.v7.widget.ActivityChooserView;
import com.google.p130a.C2016m;
import com.google.p130a.C2021r;
import com.google.p130a.C2023t;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1891e;
import com.google.p130a.p137c.C1848a;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.google.a.g.a */
/* loaded from: classes.dex */
public final class C1904a extends AbstractC1952r {

    /* renamed from: c */
    private static final float f7445c = 2.0f;

    /* renamed from: d */
    private static final float f7446d = 1.5f;

    /* renamed from: f */
    private static final int f7448f = 3;

    /* renamed from: h */
    private final StringBuilder f7450h = new StringBuilder(20);

    /* renamed from: i */
    private int[] f7451i = new int[80];

    /* renamed from: j */
    private int f7452j = 0;

    /* renamed from: e */
    private static final String f7447e = "0123456789-$:/.+ABCD";

    /* renamed from: a */
    static final char[] f7443a = f7447e.toCharArray();

    /* renamed from: b */
    static final int[] f7444b = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};

    /* renamed from: g */
    private static final char[] f7449g = {'A', 'B', 'C', 'D'};

    /* renamed from: a */
    private void m8712a(int i) throws C2016m {
        int[] iArr = {0, 0, 0, 0};
        int[] iArr2 = {0, 0, 0, 0};
        int length = this.f7450h.length() - 1;
        int i2 = 0;
        int i3 = i;
        int i4 = 0;
        while (true) {
            int i5 = f7444b[this.f7450h.charAt(i4)];
            for (int i6 = 6; i6 >= 0; i6--) {
                int i7 = (i6 & 1) + ((i5 & 1) << 1);
                iArr[i7] = iArr[i7] + this.f7451i[i3 + i6];
                iArr2[i7] = iArr2[i7] + 1;
                i5 >>= 1;
            }
            if (i4 >= length) {
                break;
            }
            i3 += 8;
            i4++;
        }
        float[] fArr = new float[4];
        float[] fArr2 = new float[4];
        for (int i8 = 0; i8 < 2; i8++) {
            fArr2[i8] = 0.0f;
            int i9 = i8 + 2;
            fArr2[i9] = ((iArr[i8] / iArr2[i8]) + (iArr[i9] / iArr2[i9])) / f7445c;
            fArr[i8] = fArr2[i9];
            fArr[i9] = ((iArr[i9] * f7445c) + f7446d) / iArr2[i9];
        }
        loop3: while (true) {
            int i10 = f7444b[this.f7450h.charAt(i2)];
            for (int i11 = 6; i11 >= 0; i11--) {
                int i12 = (i11 & 1) + ((i10 & 1) << 1);
                float f = this.f7451i[i + i11];
                if (f < fArr2[i12] || f > fArr[i12]) {
                    break loop3;
                }
                i10 >>= 1;
            }
            if (i2 >= length) {
                return;
            }
            i += 8;
            i2++;
        }
        throw C2016m.getNotFoundInstance();
    }

    /* renamed from: a */
    private void m8713a(C1848a c1848a) throws C2016m {
        this.f7452j = 0;
        int m8452d = c1848a.m8452d(0);
        int i = c1848a.f7243b;
        if (m8452d >= i) {
            throw C2016m.getNotFoundInstance();
        }
        boolean z = true;
        int i2 = 0;
        while (m8452d < i) {
            if (c1848a.m8445a(m8452d) != z) {
                i2++;
            } else {
                m8716b(i2);
                z = !z;
                i2 = 1;
            }
            m8452d++;
        }
        m8716b(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m8714a(char[] cArr, char c2) {
        if (cArr != null) {
            for (char c3 : cArr) {
                if (c3 == c2) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: b */
    private int m8715b() throws C2016m {
        for (int i = 1; i < this.f7452j; i += 2) {
            int m8717c = m8717c(i);
            if (m8717c != -1 && m8714a(f7449g, f7443a[m8717c])) {
                int i2 = 0;
                for (int i3 = i; i3 < i + 7; i3++) {
                    i2 += this.f7451i[i3];
                }
                if (i == 1 || this.f7451i[i - 1] >= i2 / 2) {
                    return i;
                }
            }
        }
        throw C2016m.getNotFoundInstance();
    }

    /* renamed from: b */
    private void m8716b(int i) {
        this.f7451i[this.f7452j] = i;
        this.f7452j++;
        if (this.f7452j >= this.f7451i.length) {
            int[] iArr = new int[this.f7452j << 1];
            System.arraycopy(this.f7451i, 0, iArr, 0, this.f7452j);
            this.f7451i = iArr;
        }
    }

    /* renamed from: c */
    private int m8717c(int i) {
        int i2 = i + 7;
        if (i2 >= this.f7452j) {
            return -1;
        }
        int[] iArr = this.f7451i;
        int i3 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i4 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i5 = 0;
        for (int i6 = i; i6 < i2; i6 += 2) {
            int i7 = iArr[i6];
            if (i7 < i4) {
                i4 = i7;
            }
            if (i7 > i5) {
                i5 = i7;
            }
        }
        int i8 = (i4 + i5) / 2;
        int i9 = 0;
        for (int i10 = i + 1; i10 < i2; i10 += 2) {
            int i11 = iArr[i10];
            if (i11 < i3) {
                i3 = i11;
            }
            if (i11 > i9) {
                i9 = i11;
            }
        }
        int i12 = (i3 + i9) / 2;
        int i13 = 128;
        int i14 = 0;
        for (int i15 = 0; i15 < 7; i15++) {
            i13 >>= 1;
            if (iArr[i + i15] > ((i15 & 1) == 0 ? i8 : i12)) {
                i14 |= i13;
            }
        }
        for (int i16 = 0; i16 < f7444b.length; i16++) {
            if (f7444b[i16] == i14) {
                return i16;
            }
        }
        return -1;
    }

    @Override // com.google.p130a.p149g.AbstractC1952r
    /* renamed from: a */
    public final C2021r mo8718a(int i, C1848a c1848a, Map<EnumC1891e, ?> map) throws C2016m {
        Arrays.fill(this.f7451i, 0);
        this.f7452j = 0;
        int m8452d = c1848a.m8452d(0);
        int i2 = c1848a.f7243b;
        if (m8452d >= i2) {
            throw C2016m.getNotFoundInstance();
        }
        boolean z = true;
        int i3 = 0;
        while (m8452d < i2) {
            if (c1848a.m8445a(m8452d) != z) {
                i3++;
            } else {
                m8716b(i3);
                z = !z;
                i3 = 1;
            }
            m8452d++;
        }
        m8716b(i3);
        int i4 = 1;
        while (i4 < this.f7452j) {
            int m8717c = m8717c(i4);
            if (m8717c != -1 && m8714a(f7449g, f7443a[m8717c])) {
                int i5 = 0;
                for (int i6 = i4; i6 < i4 + 7; i6++) {
                    i5 += this.f7451i[i6];
                }
                if (i4 == 1 || this.f7451i[i4 - 1] >= i5 / 2) {
                    this.f7450h.setLength(0);
                    int i7 = i4;
                    do {
                        int m8717c2 = m8717c(i7);
                        if (m8717c2 == -1) {
                            throw C2016m.getNotFoundInstance();
                        }
                        this.f7450h.append((char) m8717c2);
                        i7 += 8;
                        if (this.f7450h.length() > 1 && m8714a(f7449g, f7443a[m8717c2])) {
                            break;
                        }
                    } while (i7 < this.f7452j);
                    int i8 = i7 - 1;
                    int i9 = this.f7451i[i8];
                    int i10 = 0;
                    for (int i11 = -8; i11 < -1; i11++) {
                        i10 += this.f7451i[i7 + i11];
                    }
                    if (i7 < this.f7452j && i9 < i10 / 2) {
                        throw C2016m.getNotFoundInstance();
                    }
                    int[] iArr = {0, 0, 0, 0};
                    int[] iArr2 = {0, 0, 0, 0};
                    int length = this.f7450h.length() - 1;
                    int i12 = i4;
                    int i13 = 0;
                    while (true) {
                        int i14 = f7444b[this.f7450h.charAt(i13)];
                        for (int i15 = 6; i15 >= 0; i15--) {
                            int i16 = (i15 & 1) + ((i14 & 1) << 1);
                            iArr[i16] = iArr[i16] + this.f7451i[i12 + i15];
                            iArr2[i16] = iArr2[i16] + 1;
                            i14 >>= 1;
                        }
                        if (i13 >= length) {
                            break;
                        }
                        i12 += 8;
                        i13++;
                    }
                    float[] fArr = new float[4];
                    float[] fArr2 = new float[4];
                    int i17 = 0;
                    for (int i18 = 2; i17 < i18; i18 = 2) {
                        fArr2[i17] = 0.0f;
                        int i19 = i17 + 2;
                        fArr2[i19] = ((iArr[i17] / iArr2[i17]) + (iArr[i19] / iArr2[i19])) / f7445c;
                        fArr[i17] = fArr2[i19];
                        fArr[i19] = ((iArr[i19] * f7445c) + f7446d) / iArr2[i19];
                        i17++;
                    }
                    int i20 = i4;
                    int i21 = 0;
                    loop8: while (true) {
                        int i22 = f7444b[this.f7450h.charAt(i21)];
                        for (int i23 = 6; i23 >= 0; i23--) {
                            int i24 = (i23 & 1) + ((i22 & 1) << 1);
                            float f = this.f7451i[i20 + i23];
                            if (f < fArr2[i24] || f > fArr[i24]) {
                                break loop8;
                            }
                            i22 >>= 1;
                        }
                        if (i21 >= length) {
                            for (int i25 = 0; i25 < this.f7450h.length(); i25++) {
                                this.f7450h.setCharAt(i25, f7443a[this.f7450h.charAt(i25)]);
                            }
                            if (!m8714a(f7449g, this.f7450h.charAt(0))) {
                                throw C2016m.getNotFoundInstance();
                            }
                            if (!m8714a(f7449g, this.f7450h.charAt(this.f7450h.length() - 1))) {
                                throw C2016m.getNotFoundInstance();
                            }
                            if (this.f7450h.length() <= 3) {
                                throw C2016m.getNotFoundInstance();
                            }
                            if (map == null || !map.containsKey(EnumC1891e.RETURN_CODABAR_START_END)) {
                                this.f7450h.deleteCharAt(this.f7450h.length() - 1);
                                this.f7450h.deleteCharAt(0);
                            }
                            int i26 = 0;
                            for (int i27 = 0; i27 < i4; i27++) {
                                i26 += this.f7451i[i27];
                            }
                            float f2 = i26;
                            while (i4 < i8) {
                                i26 += this.f7451i[i4];
                                i4++;
                            }
                            float f3 = i;
                            return new C2021r(this.f7450h.toString(), null, new C2023t[]{new C2023t(f2, f3), new C2023t(i26, f3)}, EnumC1796a.CODABAR);
                        }
                        i20 += 8;
                        i21++;
                    }
                    throw C2016m.getNotFoundInstance();
                }
            }
            i4 += 2;
        }
        throw C2016m.getNotFoundInstance();
    }
}
