package com.google.p130a.p149g;

import com.google.p130a.C2016m;
import com.google.p130a.EnumC1796a;
import com.google.p130a.p137c.C1848a;

/* renamed from: com.google.a.g.k */
/* loaded from: classes.dex */
public final class C1945k extends AbstractC1959y {

    /* renamed from: a */
    private final int[] f7597a = new int[4];

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.p130a.p149g.AbstractC1959y
    /* renamed from: a */
    public final int mo8834a(C1848a c1848a, int[] iArr, StringBuilder sb) throws C2016m {
        int[] iArr2 = this.f7597a;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int i = c1848a.f7243b;
        int i2 = iArr[1];
        int i3 = 0;
        while (i3 < 4 && i2 < i) {
            sb.append((char) (m8889a(c1848a, iArr2, i2, f7632e) + 48));
            int i4 = i2;
            for (int i5 : iArr2) {
                i4 += i5;
            }
            i3++;
            i2 = i4;
        }
        int i6 = m8892a(c1848a, i2, true, f7630c)[1];
        int i7 = 0;
        while (i7 < 4 && i6 < i) {
            sb.append((char) (m8889a(c1848a, iArr2, i6, f7632e) + 48));
            int i8 = i6;
            for (int i9 : iArr2) {
                i8 += i9;
            }
            i7++;
            i6 = i8;
        }
        return i6;
    }

    @Override // com.google.p130a.p149g.AbstractC1959y
    /* renamed from: b */
    final EnumC1796a mo8837b() {
        return EnumC1796a.EAN_8;
    }
}
