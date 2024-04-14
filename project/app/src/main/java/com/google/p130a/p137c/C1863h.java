package com.google.p130a.p137c;

import com.google.p130a.AbstractC1809b;
import com.google.p130a.AbstractC2013j;
import com.google.p130a.C2016m;

/* renamed from: com.google.a.c.h */
/* loaded from: classes.dex */
public class C1863h extends AbstractC1809b {

    /* renamed from: b */
    private static final int f7294b = 5;

    /* renamed from: c */
    private static final int f7295c = 3;

    /* renamed from: d */
    private static final int f7296d = 32;

    /* renamed from: e */
    private static final byte[] f7297e = new byte[0];

    /* renamed from: f */
    private byte[] f7298f;

    /* renamed from: g */
    private final int[] f7299g;

    public C1863h(AbstractC2013j abstractC2013j) {
        super(abstractC2013j);
        this.f7298f = f7297e;
        this.f7299g = new int[32];
    }

    /* renamed from: a */
    private static int m8535a(int[] iArr) throws C2016m {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            if (iArr[i4] > i) {
                i = iArr[i4];
                i3 = i4;
            }
            if (iArr[i4] > i2) {
                i2 = iArr[i4];
            }
        }
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            int i8 = i7 - i3;
            int i9 = iArr[i7] * i8 * i8;
            if (i9 > i5) {
                i6 = i7;
                i5 = i9;
            }
        }
        if (i3 > i6) {
            int i10 = i3;
            i3 = i6;
            i6 = i10;
        }
        if (i6 - i3 <= length / 16) {
            throw C2016m.getNotFoundInstance();
        }
        int i11 = i6 - 1;
        int i12 = -1;
        int i13 = i11;
        while (i11 > i3) {
            int i14 = i11 - i3;
            int i15 = i14 * i14 * (i6 - i11) * (i2 - iArr[i11]);
            if (i15 > i12) {
                i13 = i11;
                i12 = i15;
            }
            i11--;
        }
        return i13 << 3;
    }

    /* renamed from: a */
    private void m8536a(int i) {
        if (this.f7298f.length < i) {
            this.f7298f = new byte[i];
        }
        for (int i2 = 0; i2 < 32; i2++) {
            this.f7299g[i2] = 0;
        }
    }

    @Override // com.google.p130a.AbstractC1809b
    /* renamed from: a */
    public AbstractC1809b mo8253a(AbstractC2013j abstractC2013j) {
        return new C1863h(abstractC2013j);
    }

    @Override // com.google.p130a.AbstractC1809b
    /* renamed from: a */
    public final C1848a mo8254a(int i, C1848a c1848a) throws C2016m {
        AbstractC2013j abstractC2013j = this.f7128a;
        int i2 = abstractC2013j.f7878a;
        if (c1848a == null || c1848a.f7243b < i2) {
            c1848a = new C1848a(i2);
        } else {
            c1848a.m8447b();
        }
        m8536a(i2);
        byte[] mo9099a = abstractC2013j.mo9099a(i, this.f7298f);
        int[] iArr = this.f7299g;
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = (mo9099a[i3] & 255) >> 3;
            iArr[i4] = iArr[i4] + 1;
        }
        int m8535a = m8535a(iArr);
        if (i2 < 3) {
            for (int i5 = 0; i5 < i2; i5++) {
                if ((mo9099a[i5] & 255) < m8535a) {
                    c1848a.m8448b(i5);
                }
            }
        } else {
            int i6 = mo9099a[0] & 255;
            int i7 = mo9099a[1] & 255;
            int i8 = i6;
            int i9 = 1;
            while (i9 < i2 - 1) {
                int i10 = i9 + 1;
                int i11 = mo9099a[i10] & 255;
                if ((((i7 << 2) - i8) - i11) / 2 < m8535a) {
                    c1848a.m8448b(i9);
                }
                i8 = i7;
                i9 = i10;
                i7 = i11;
            }
        }
        return c1848a;
    }

    @Override // com.google.p130a.AbstractC1809b
    /* renamed from: a */
    public C1852b mo8255a() throws C2016m {
        AbstractC2013j abstractC2013j = this.f7128a;
        int i = abstractC2013j.f7878a;
        int i2 = abstractC2013j.f7879b;
        C1852b c1852b = new C1852b(i, i2);
        m8536a(i);
        int[] iArr = this.f7299g;
        for (int i3 = 1; i3 < 5; i3++) {
            byte[] mo9099a = abstractC2013j.mo9099a((i2 * i3) / 5, this.f7298f);
            int i4 = (i << 2) / 5;
            for (int i5 = i / 5; i5 < i4; i5++) {
                int i6 = (mo9099a[i5] & 255) >> 3;
                iArr[i6] = iArr[i6] + 1;
            }
        }
        int m8535a = m8535a(iArr);
        byte[] mo9098a = abstractC2013j.mo9098a();
        for (int i7 = 0; i7 < i2; i7++) {
            int i8 = i7 * i;
            for (int i9 = 0; i9 < i; i9++) {
                if ((mo9098a[i8 + i9] & 255) < m8535a) {
                    c1852b.m8480b(i9, i7);
                }
            }
        }
        return c1852b;
    }
}
