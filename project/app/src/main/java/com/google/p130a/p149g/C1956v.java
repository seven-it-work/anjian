package com.google.p130a.p149g;

import com.google.p130a.C2016m;
import com.google.p130a.C2021r;
import com.google.p130a.C2023t;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC2022s;
import com.google.p130a.p137c.C1848a;
import java.util.EnumMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.a.g.v */
/* loaded from: classes.dex */
public final class C1956v {

    /* renamed from: a */
    private final int[] f7620a = new int[4];

    /* renamed from: b */
    private final StringBuilder f7621b = new StringBuilder();

    /* renamed from: a */
    private int m8879a(C1848a c1848a, int[] iArr, StringBuilder sb) throws C2016m {
        int[] iArr2 = this.f7620a;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int i = c1848a.f7243b;
        int i2 = iArr[1];
        int i3 = 0;
        int i4 = 0;
        while (i3 < 2 && i2 < i) {
            int m8889a = AbstractC1959y.m8889a(c1848a, iArr2, i2, AbstractC1959y.f7633f);
            sb.append((char) ((m8889a % 10) + 48));
            int i5 = i2;
            for (int i6 : iArr2) {
                i5 += i6;
            }
            if (m8889a >= 10) {
                i4 = (1 << (1 - i3)) | i4;
            }
            i2 = i3 != 1 ? c1848a.m8452d(c1848a.m8450c(i5)) : i5;
            i3++;
        }
        if (sb.length() != 2) {
            throw C2016m.getNotFoundInstance();
        }
        if (Integer.parseInt(sb.toString()) % 4 != i4) {
            throw C2016m.getNotFoundInstance();
        }
        return i2;
    }

    /* renamed from: a */
    private static Map<EnumC2022s, Object> m8880a(String str) {
        if (str.length() != 2) {
            return null;
        }
        EnumMap enumMap = new EnumMap(EnumC2022s.class);
        enumMap.put((EnumMap) EnumC2022s.ISSUE_NUMBER, (EnumC2022s) Integer.valueOf(str));
        return enumMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C2021r m8881a(int i, C1848a c1848a, int[] iArr) throws C2016m {
        EnumMap enumMap;
        StringBuilder sb = this.f7621b;
        sb.setLength(0);
        int[] iArr2 = this.f7620a;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int i2 = c1848a.f7243b;
        int i3 = iArr[1];
        int i4 = 0;
        int i5 = 0;
        while (i4 < 2 && i3 < i2) {
            int m8889a = AbstractC1959y.m8889a(c1848a, iArr2, i3, AbstractC1959y.f7633f);
            sb.append((char) ((m8889a % 10) + 48));
            int i6 = i3;
            for (int i7 : iArr2) {
                i6 += i7;
            }
            if (m8889a >= 10) {
                i5 = (1 << (1 - i4)) | i5;
            }
            i3 = i4 != 1 ? c1848a.m8452d(c1848a.m8450c(i6)) : i6;
            i4++;
        }
        if (sb.length() != 2) {
            throw C2016m.getNotFoundInstance();
        }
        if (Integer.parseInt(sb.toString()) % 4 != i5) {
            throw C2016m.getNotFoundInstance();
        }
        String sb2 = sb.toString();
        if (sb2.length() != 2) {
            enumMap = null;
        } else {
            enumMap = new EnumMap(EnumC2022s.class);
            enumMap.put((EnumMap) EnumC2022s.ISSUE_NUMBER, (EnumC2022s) Integer.valueOf(sb2));
        }
        float f = i;
        C2021r c2021r = new C2021r(sb2, null, new C2023t[]{new C2023t((iArr[0] + iArr[1]) / 2.0f, f), new C2023t(i3, f)}, EnumC1796a.UPC_EAN_EXTENSION);
        if (enumMap != null) {
            c2021r.m9290a(enumMap);
        }
        return c2021r;
    }
}
