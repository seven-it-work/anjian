package com.google.p130a.p149g;

import com.google.p130a.C2016m;
import com.google.p130a.EnumC1796a;
import com.google.p130a.p137c.C1848a;

/* renamed from: com.google.a.g.i */
/* loaded from: classes.dex */
public final class C1943i extends AbstractC1959y {

    /* renamed from: a */
    static final int[] f7594a = {0, 11, 13, 14, 19, 25, 28, 21, 22, 26};

    /* renamed from: g */
    private final int[] f7595g = new int[4];

    /* renamed from: a */
    private static void m8859a(StringBuilder sb, int i) throws C2016m {
        for (int i2 = 0; i2 < 10; i2++) {
            if (i == f7594a[i2]) {
                sb.insert(0, (char) (i2 + 48));
                return;
            }
        }
        throw C2016m.getNotFoundInstance();
    }

    @Override // com.google.p130a.p149g.AbstractC1959y
    /* renamed from: a */
    protected final int mo8834a(C1848a c1848a, int[] iArr, StringBuilder sb) throws C2016m {
        int[] iArr2 = this.f7595g;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int i = c1848a.f7243b;
        int i2 = iArr[1];
        int i3 = 0;
        int i4 = 0;
        while (i3 < 6 && i2 < i) {
            int a2 = m8889a(c1848a, iArr2, i2, f7633f);
            sb.append((char) ((a2 % 10) + 48));
            int i5 = i2;
            for (int i6 : iArr2) {
                i5 += i6;
            }
            if (a2 >= 10) {
                i4 = (1 << (5 - i3)) | i4;
            }
            i3++;
            i2 = i5;
        }
        for (int i7 = 0; i7 < 10; i7++) {
            if (i4 == f7594a[i7]) {
                sb.insert(0, (char) (i7 + 48));
                int i8 = m8892a(c1848a, i2, true, f7630c)[1];
                int i9 = 0;
                while (i9 < 6 && i8 < i) {
                    sb.append((char) (m8889a(c1848a, iArr2, i8, f7632e) + 48));
                    int i10 = i8;
                    for (int i11 : iArr2) {
                        i10 += i11;
                    }
                    i9++;
                    i8 = i10;
                }
                return i8;
            }
        }
        throw C2016m.getNotFoundInstance();
    }

    @Override // com.google.p130a.p149g.AbstractC1959y
    /* renamed from: b */
    final EnumC1796a mo8837b() {
        return EnumC1796a.EAN_13;
    }
}
