package com.google.p130a.p158i.p159a;

import com.google.p130a.p158i.p159a.C1999j;

/* renamed from: com.google.a.i.a.b */
/* loaded from: classes.dex */
final class C1991b {

    /* renamed from: a */
    final int f7802a;

    /* renamed from: b */
    final byte[] f7803b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1991b(int i, byte[] bArr) {
        this.f7802a = i;
        this.f7803b = bArr;
    }

    /* renamed from: a */
    private int m9115a() {
        return this.f7802a;
    }

    /* renamed from: a */
    private static C1991b[] m9116a(byte[] bArr, C1999j c1999j, EnumC1995f enumC1995f) {
        if (bArr.length != c1999j.f7821c) {
            throw new IllegalArgumentException();
        }
        C1999j.b m9148a = c1999j.m9148a(enumC1995f);
        C1999j.a[] aVarArr = m9148a.f7826b;
        int i = 0;
        for (C1999j.a aVar : aVarArr) {
            i += aVar.f7823a;
        }
        C1991b[] c1991bArr = new C1991b[i];
        int length = aVarArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            C1999j.a aVar2 = aVarArr[i2];
            int i4 = i3;
            int i5 = 0;
            while (i5 < aVar2.f7823a) {
                int i6 = aVar2.f7824b;
                c1991bArr[i4] = new C1991b(i6, new byte[m9148a.f7825a + i6]);
                i5++;
                i4++;
            }
            i2++;
            i3 = i4;
        }
        int length2 = c1991bArr[0].f7803b.length;
        int length3 = c1991bArr.length - 1;
        while (length3 >= 0 && c1991bArr[length3].f7803b.length != length2) {
            length3--;
        }
        int i7 = length3 + 1;
        int i8 = length2 - m9148a.f7825a;
        int i9 = 0;
        int i10 = 0;
        while (i9 < i8) {
            int i11 = i10;
            int i12 = 0;
            while (i12 < i3) {
                c1991bArr[i12].f7803b[i9] = bArr[i11];
                i12++;
                i11++;
            }
            i9++;
            i10 = i11;
        }
        int i13 = i7;
        while (i13 < i3) {
            c1991bArr[i13].f7803b[i8] = bArr[i10];
            i13++;
            i10++;
        }
        int length4 = c1991bArr[0].f7803b.length;
        while (i8 < length4) {
            int i14 = i10;
            int i15 = 0;
            while (i15 < i3) {
                c1991bArr[i15].f7803b[i15 < i7 ? i8 : i8 + 1] = bArr[i14];
                i15++;
                i14++;
            }
            i8++;
            i10 = i14;
        }
        return c1991bArr;
    }

    /* renamed from: b */
    private byte[] m9117b() {
        return this.f7803b;
    }
}
