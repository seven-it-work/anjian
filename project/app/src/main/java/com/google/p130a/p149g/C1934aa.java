package com.google.p130a.p149g;

import com.google.p130a.C1961h;
import com.google.p130a.C2016m;
import com.google.p130a.EnumC1796a;
import com.google.p130a.p137c.C1848a;

/* renamed from: com.google.a.g.aa */
/* loaded from: classes.dex */
public final class C1934aa extends AbstractC1959y {

    /* renamed from: h */
    private final int[] f7543h = new int[4];

    /* renamed from: g */
    private static final int[] f7542g = {1, 1, 1, 1, 1, 1};

    /* renamed from: a */
    static final int[][] f7541a = {new int[]{56, 52, 50, 49, 44, 38, 35, 42, 41, 37}, new int[]{7, 11, 13, 14, 19, 25, 28, 21, 22, 26}};

    /* renamed from: a */
    private static void m8832a(StringBuilder sb, int i) throws C2016m {
        for (int i2 = 0; i2 <= 1; i2++) {
            for (int i3 = 0; i3 < 10; i3++) {
                if (i == f7541a[i2][i3]) {
                    sb.insert(0, (char) (i2 + 48));
                    sb.append((char) (i3 + 48));
                    return;
                }
            }
        }
        throw C2016m.getNotFoundInstance();
    }

    /* renamed from: b */
    public static String m8833b(String str) {
        char[] cArr = new char[6];
        str.getChars(1, 7, cArr, 0);
        StringBuilder sb = new StringBuilder(12);
        sb.append(str.charAt(0));
        char c2 = cArr[5];
        switch (c2) {
            case '0':
            case '1':
            case '2':
                sb.append(cArr, 0, 2);
                sb.append(c2);
                sb.append("0000");
                sb.append(cArr, 2, 3);
                break;
            case '3':
                sb.append(cArr, 0, 3);
                sb.append("00000");
                sb.append(cArr, 3, 2);
                break;
            case '4':
                sb.append(cArr, 0, 4);
                sb.append("00000");
                sb.append(cArr[4]);
                break;
            default:
                sb.append(cArr, 0, 5);
                sb.append("0000");
                sb.append(c2);
                break;
        }
        if (str.length() >= 8) {
            sb.append(str.charAt(7));
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.p130a.p149g.AbstractC1959y
    /* renamed from: a */
    public final int mo8834a(C1848a c1848a, int[] iArr, StringBuilder sb) throws C2016m {
        int[] iArr2 = this.f7543h;
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
        for (int i7 = 0; i7 <= 1; i7++) {
            for (int i8 = 0; i8 < 10; i8++) {
                if (i4 == f7541a[i7][i8]) {
                    sb.insert(0, (char) (i7 + 48));
                    sb.append((char) (i8 + 48));
                    return i2;
                }
            }
        }
        throw C2016m.getNotFoundInstance();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.p130a.p149g.AbstractC1959y
    /* renamed from: a */
    public final boolean mo8835a(String str) throws C1961h {
        return super.mo8835a(m8833b(str));
    }

    @Override // com.google.p130a.p149g.AbstractC1959y
    /* renamed from: a */
    protected final int[] mo8836a(C1848a c1848a, int i) throws C2016m {
        return m8892a(c1848a, i, true, f7542g);
    }

    @Override // com.google.p130a.p149g.AbstractC1959y
    /* renamed from: b */
    final EnumC1796a mo8837b() {
        return EnumC1796a.UPC_E;
    }
}
