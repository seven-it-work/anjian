package com.google.p130a.p149g;

import com.google.p130a.C2026w;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1903g;
import com.google.p130a.InterfaceC2025v;
import com.google.p130a.p137c.C1852b;
import java.util.Map;

/* renamed from: com.google.a.g.s */
/* loaded from: classes.dex */
public abstract class AbstractC1953s implements InterfaceC2025v {
    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static int m8874a(boolean[] zArr, int i, int[] iArr, boolean z) {
        int length = iArr.length;
        int i2 = i;
        boolean z2 = z;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            int i5 = iArr[i3];
            int i6 = i2;
            int i7 = 0;
            while (i7 < i5) {
                zArr[i6] = z2;
                i7++;
                i6++;
            }
            i4 += i5;
            z2 = !z2;
            i3++;
            i2 = i6;
        }
        return i4;
    }

    /* renamed from: a */
    private static C1852b m8875a(boolean[] zArr, int i, int i2, int i3) {
        int length = zArr.length;
        int i4 = i3 + length;
        int max = Math.max(i, i4);
        int max2 = Math.max(1, i2);
        int i5 = max / i4;
        C1852b c1852b = new C1852b(max, max2);
        int i6 = (max - (length * i5)) / 2;
        int i7 = 0;
        while (i7 < length) {
            if (zArr[i7]) {
                c1852b.m8478a(i6, 0, i5, max2);
            }
            i7++;
            i6 += i5;
        }
        return c1852b;
    }

    /* renamed from: a */
    public int mo8876a() {
        return 10;
    }

    @Override // com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public final C1852b mo8207a(String str, EnumC1796a enumC1796a, int i, int i2) throws C2026w {
        return mo8208a(str, enumC1796a, i, i2, null);
    }

    @Override // com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public C1852b mo8208a(String str, EnumC1796a enumC1796a, int i, int i2, Map<EnumC1903g, ?> map) throws C2026w {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Negative size is not allowed. Input: " + i + 'x' + i2);
        }
        int mo8876a = mo8876a();
        if (map != null && map.containsKey(EnumC1903g.MARGIN)) {
            mo8876a = Integer.parseInt(map.get(EnumC1903g.MARGIN).toString());
        }
        return m8875a(mo8838a(str), i, i2, mo8876a);
    }

    /* renamed from: a */
    public abstract boolean[] mo8838a(String str);
}
