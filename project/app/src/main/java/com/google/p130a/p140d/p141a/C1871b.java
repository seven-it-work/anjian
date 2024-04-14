package com.google.p130a.p140d.p141a;

import com.google.p130a.p140d.p141a.C1874e;

/* renamed from: com.google.a.d.a.b */
/* loaded from: classes.dex */
final class C1871b {

    /* renamed from: a */
    final int f7328a;

    /* renamed from: b */
    final byte[] f7329b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1871b(int i, byte[] bArr) {
        this.f7328a = i;
        this.f7329b = bArr;
    }

    /* renamed from: a */
    private int m8564a() {
        return this.f7328a;
    }

    /* renamed from: a */
    private static C1871b[] m8565a(byte[] bArr, C1874e c1874e) {
        C1874e.b bVar = c1874e.f7343f;
        C1874e.a[] aVarArr = bVar.f7348b;
        int i = 0;
        for (C1874e.a aVar : aVarArr) {
            i += aVar.f7345a;
        }
        C1871b[] c1871bArr = new C1871b[i];
        int length = aVarArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            C1874e.a aVar2 = aVarArr[i2];
            int i4 = i3;
            int i5 = 0;
            while (i5 < aVar2.f7345a) {
                int i6 = aVar2.f7346b;
                c1871bArr[i4] = new C1871b(i6, new byte[bVar.f7347a + i6]);
                i5++;
                i4++;
            }
            i2++;
            i3 = i4;
        }
        int length2 = c1871bArr[0].f7329b.length - bVar.f7347a;
        int i7 = length2 - 1;
        int i8 = 0;
        int i9 = 0;
        while (i8 < i7) {
            int i10 = i9;
            int i11 = 0;
            while (i11 < i3) {
                c1871bArr[i11].f7329b[i8] = bArr[i10];
                i11++;
                i10++;
            }
            i8++;
            i9 = i10;
        }
        boolean z = c1874e.f7338a == 24;
        int i12 = z ? 8 : i3;
        int i13 = i9;
        int i14 = 0;
        while (i14 < i12) {
            c1871bArr[i14].f7329b[i7] = bArr[i13];
            i14++;
            i13++;
        }
        int length3 = c1871bArr[0].f7329b.length;
        while (length2 < length3) {
            int i15 = 0;
            while (i15 < i3) {
                int i16 = z ? (i15 + 8) % i3 : i15;
                c1871bArr[i16].f7329b[(!z || i16 <= 7) ? length2 : length2 - 1] = bArr[i13];
                i15++;
                i13++;
            }
            length2++;
        }
        if (i13 != bArr.length) {
            throw new IllegalArgumentException();
        }
        return c1871bArr;
    }

    /* renamed from: b */
    private byte[] m8566b() {
        return this.f7329b;
    }
}
