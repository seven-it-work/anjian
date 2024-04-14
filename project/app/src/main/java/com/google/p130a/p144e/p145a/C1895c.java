package com.google.p130a.p144e.p145a;

import com.google.p130a.C1868d;
import com.google.p130a.C1961h;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p137c.C1860e;
import com.google.p130a.p137c.p139b.C1853a;
import com.google.p130a.p137c.p139b.C1855c;
import com.google.p130a.p137c.p139b.C1857e;
import com.umeng.commonsdk.proguard.C2489bg;

/* renamed from: com.google.a.e.a.c */
/* loaded from: classes.dex */
public final class C1895c {

    /* renamed from: a */
    private static final int f7425a = 0;

    /* renamed from: b */
    private static final int f7426b = 1;

    /* renamed from: c */
    private static final int f7427c = 2;

    /* renamed from: d */
    private final C1855c f7428d = new C1855c(C1853a.f7266h);

    /* renamed from: a */
    private void m8698a(byte[] bArr, int i, int i2, int i3, int i4) throws C1868d {
        int i5 = i2 + i3;
        int i6 = i4 == 0 ? 1 : 2;
        int[] iArr = new int[i5 / i6];
        for (int i7 = 0; i7 < i5; i7++) {
            if (i4 == 0 || i7 % 2 == i4 - 1) {
                iArr[i7 / i6] = bArr[i7 + i] & 255;
            }
        }
        try {
            this.f7428d.m8509a(iArr, i3 / i6);
            for (int i8 = 0; i8 < i2; i8++) {
                if (i4 == 0 || i8 % 2 == i4 - 1) {
                    bArr[i8 + i] = (byte) iArr[i8 / i6];
                }
            }
        } catch (C1857e unused) {
            throw C1868d.getChecksumInstance();
        }
    }

    /* renamed from: b */
    private C1860e m8699b(C1852b c1852b) throws C1868d, C1961h {
        return m8700a(c1852b);
    }

    /* renamed from: a */
    public final C1860e m8700a(C1852b c1852b) throws C1961h, C1868d {
        int i;
        C1893a c1893a = new C1893a(c1852b);
        byte[] bArr = new byte[144];
        int i2 = c1893a.f7407b.f7256b;
        int i3 = c1893a.f7407b.f7255a;
        for (int i4 = 0; i4 < i2; i4++) {
            int[] iArr = C1893a.f7406a[i4];
            for (int i5 = 0; i5 < i3; i5++) {
                int i6 = iArr[i5];
                if (i6 >= 0 && c1893a.f7407b.m8479a(i5, i4)) {
                    int i7 = i6 / 6;
                    bArr[i7] = (byte) (((byte) (1 << (5 - (i6 % 6)))) | bArr[i7]);
                }
            }
        }
        m8698a(bArr, 0, 10, 10, 0);
        int i8 = bArr[0] & C2489bg.f9370m;
        switch (i8) {
            case 2:
            case 3:
            case 4:
                m8698a(bArr, 20, 84, 40, 1);
                m8698a(bArr, 20, 84, 40, 2);
                i = 94;
                break;
            case 5:
                m8698a(bArr, 20, 68, 56, 1);
                m8698a(bArr, 20, 68, 56, 2);
                i = 78;
                break;
            default:
                throw C1961h.getFormatInstance();
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, 10);
        System.arraycopy(bArr, 20, bArr2, 10, bArr2.length - 10);
        return C1894b.m8692a(bArr2, i8);
    }
}
