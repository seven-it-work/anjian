package com.google.p130a.p149g;

import com.google.p130a.AbstractC2020q;
import com.google.p130a.C1868d;
import com.google.p130a.C1961h;
import com.google.p130a.C2016m;
import com.google.p130a.C2021r;
import com.google.p130a.C2023t;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1891e;
import com.google.p130a.EnumC2022s;
import com.google.p130a.InterfaceC2024u;
import com.google.p130a.p137c.C1848a;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.google.a.g.y */
/* loaded from: classes.dex */
public abstract class AbstractC1959y extends AbstractC1952r {

    /* renamed from: a */
    private static final float f7628a = 0.48f;

    /* renamed from: b */
    static final int[] f7629b = {1, 1, 1};

    /* renamed from: c */
    static final int[] f7630c = {1, 1, 1, 1, 1};

    /* renamed from: d */
    static final int[] f7631d = {1, 1, 1, 1, 1, 1};

    /* renamed from: e */
    static final int[][] f7632e = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};

    /* renamed from: f */
    static final int[][] f7633f = new int[20];

    /* renamed from: g */
    private static final float f7634g = 0.7f;

    /* renamed from: h */
    private final StringBuilder f7635h = new StringBuilder(20);

    /* renamed from: i */
    private final C1958x f7636i = new C1958x();

    /* renamed from: j */
    private final C1947m f7637j = new C1947m();

    static {
        System.arraycopy(f7632e, 0, f7633f, 0, 10);
        for (int i = 10; i < 20; i++) {
            int[] iArr = f7632e[i - 10];
            int[] iArr2 = new int[iArr.length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                iArr2[i2] = iArr[(iArr.length - i2) - 1];
            }
            f7633f[i] = iArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m8889a(C1848a c1848a, int[] iArr, int i, int[][] iArr2) throws C2016m {
        m8871a(c1848a, i, iArr);
        int length = iArr2.length;
        float f = f7628a;
        int i2 = -1;
        for (int i3 = 0; i3 < length; i3++) {
            float a2 = m8870a(iArr, iArr2[i3], (float) f7634g);
            if (a2 < f) {
                i2 = i3;
                f = a2;
            }
        }
        if (i2 >= 0) {
            return i2;
        }
        throw C2016m.getNotFoundInstance();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m8890a(CharSequence charSequence) throws C1961h {
        int length = charSequence.length();
        if (length == 0) {
            return false;
        }
        int i = length - 1;
        return m8894b(charSequence.subSequence(0, i)) == Character.digit(charSequence.charAt(i), 10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int[] m8891a(C1848a c1848a) throws C2016m {
        int[] iArr = new int[f7629b.length];
        int[] iArr2 = null;
        boolean z = false;
        int i = 0;
        while (!z) {
            Arrays.fill(iArr, 0, f7629b.length, 0);
            iArr2 = m8893a(c1848a, i, false, f7629b, iArr);
            int i2 = iArr2[0];
            int i3 = iArr2[1];
            int i4 = i2 - (i3 - i2);
            if (i4 >= 0) {
                z = c1848a.m8446a(i4, i2);
            }
            i = i3;
        }
        return iArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int[] m8892a(C1848a c1848a, int i, boolean z, int[] iArr) throws C2016m {
        return m8893a(c1848a, i, z, iArr, new int[iArr.length]);
    }

    /* renamed from: a */
    private static int[] m8893a(C1848a c1848a, int i, boolean z, int[] iArr, int[] iArr2) throws C2016m {
        int i2 = c1848a.f7243b;
        int m8452d = z ? c1848a.m8452d(i) : c1848a.m8450c(i);
        int length = iArr.length;
        int i3 = m8452d;
        int i4 = 0;
        while (m8452d < i2) {
            if (c1848a.m8445a(m8452d) != z) {
                iArr2[i4] = iArr2[i4] + 1;
            } else {
                if (i4 != length - 1) {
                    i4++;
                } else {
                    if (m8870a(iArr2, iArr, (float) f7634g) < f7628a) {
                        return new int[]{i3, m8452d};
                    }
                    i3 += iArr2[0] + iArr2[1];
                    int i5 = i4 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i5);
                    iArr2[i5] = 0;
                    iArr2[i4] = 0;
                    i4--;
                }
                iArr2[i4] = 1;
                z = z ? false : true;
            }
            m8452d++;
        }
        throw C2016m.getNotFoundInstance();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m8894b(CharSequence charSequence) throws C1961h {
        int length = charSequence.length();
        int i = 0;
        for (int i2 = length - 1; i2 >= 0; i2 -= 2) {
            int charAt = charSequence.charAt(i2) - '0';
            if (charAt < 0 || charAt > 9) {
                throw C1961h.getFormatInstance();
            }
            i += charAt;
        }
        int i3 = i * 3;
        for (int i4 = length - 2; i4 >= 0; i4 -= 2) {
            int charAt2 = charSequence.charAt(i4) - '0';
            if (charAt2 < 0 || charAt2 > 9) {
                throw C1961h.getFormatInstance();
            }
            i3 += charAt2;
        }
        return (1000 - i3) % 10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract int mo8834a(C1848a c1848a, int[] iArr, StringBuilder sb) throws C2016m;

    @Override // com.google.p130a.p149g.AbstractC1952r
    /* renamed from: a */
    public C2021r mo8718a(int i, C1848a c1848a, Map<EnumC1891e, ?> map) throws C2016m, C1868d, C1961h {
        return mo8878a(i, c1848a, m8891a(c1848a), map);
    }

    /* renamed from: a */
    public C2021r mo8878a(int i, C1848a c1848a, int[] iArr, Map<EnumC1891e, ?> map) throws C2016m, C1868d, C1961h {
        int i2;
        boolean z;
        String str = null;
        InterfaceC2024u interfaceC2024u = map == null ? null : (InterfaceC2024u) map.get(EnumC1891e.NEED_RESULT_POINT_CALLBACK);
        if (interfaceC2024u != null) {
            new C2023t((iArr[0] + iArr[1]) / 2.0f, i);
        }
        StringBuilder sb = this.f7635h;
        sb.setLength(0);
        int mo8834a = mo8834a(c1848a, iArr, sb);
        if (interfaceC2024u != null) {
            new C2023t(mo8834a, i);
        }
        int[] mo8836a = mo8836a(c1848a, mo8834a);
        if (interfaceC2024u != null) {
            new C2023t((mo8836a[0] + mo8836a[1]) / 2.0f, i);
        }
        int i3 = mo8836a[1];
        int i4 = (i3 - mo8836a[0]) + i3;
        if (i4 >= c1848a.f7243b || !c1848a.m8446a(i3, i4)) {
            throw C2016m.getNotFoundInstance();
        }
        String sb2 = sb.toString();
        if (sb2.length() < 8) {
            throw C1961h.getFormatInstance();
        }
        if (!mo8835a(sb2)) {
            throw C1868d.getChecksumInstance();
        }
        EnumC1796a mo8837b = mo8837b();
        float f = i;
        C2021r c2021r = new C2021r(sb2, null, new C2023t[]{new C2023t((iArr[1] + iArr[0]) / 2.0f, f), new C2023t((mo8836a[1] + mo8836a[0]) / 2.0f, f)}, mo8837b);
        try {
            C2021r m8888a = this.f7636i.m8888a(i, c1848a, mo8836a[1]);
            c2021r.m9289a(EnumC2022s.UPC_EAN_EXTENSION, m8888a.f7894a);
            c2021r.m9290a(m8888a.f7899f);
            C2023t[] c2023tArr = m8888a.f7897d;
            C2023t[] c2023tArr2 = c2021r.f7897d;
            if (c2023tArr2 == null) {
                c2021r.f7897d = c2023tArr;
            } else if (c2023tArr != null && c2023tArr.length > 0) {
                C2023t[] c2023tArr3 = new C2023t[c2023tArr2.length + c2023tArr.length];
                System.arraycopy(c2023tArr2, 0, c2023tArr3, 0, c2023tArr2.length);
                System.arraycopy(c2023tArr, 0, c2023tArr3, c2023tArr2.length, c2023tArr.length);
                c2021r.f7897d = c2023tArr3;
            }
            i2 = m8888a.f7894a.length();
        } catch (AbstractC2020q unused) {
            i2 = 0;
        }
        int[] iArr2 = map == null ? null : (int[]) map.get(EnumC1891e.ALLOWED_EAN_EXTENSIONS);
        if (iArr2 != null) {
            int length = iArr2.length;
            int i5 = 0;
            while (true) {
                if (i5 >= length) {
                    z = false;
                    break;
                }
                if (i2 == iArr2[i5]) {
                    z = true;
                    break;
                }
                i5++;
            }
            if (!z) {
                throw C2016m.getNotFoundInstance();
            }
        }
        if (mo8837b == EnumC1796a.EAN_13 || mo8837b == EnumC1796a.UPC_A) {
            C1947m c1947m = this.f7637j;
            c1947m.m8862a();
            int parseInt = Integer.parseInt(sb2.substring(0, 3));
            int size = c1947m.f7599a.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size) {
                    break;
                }
                int[] iArr3 = c1947m.f7599a.get(i6);
                int i7 = iArr3[0];
                if (parseInt < i7) {
                    break;
                }
                if (iArr3.length != 1) {
                    i7 = iArr3[1];
                }
                if (parseInt <= i7) {
                    str = c1947m.f7600b.get(i6);
                    break;
                }
                i6++;
            }
            if (str != null) {
                c2021r.m9289a(EnumC2022s.POSSIBLE_COUNTRY, str);
            }
        }
        return c2021r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public boolean mo8835a(String str) throws C1961h {
        return m8890a((CharSequence) str);
    }

    /* renamed from: a */
    int[] mo8836a(C1848a c1848a, int i) throws C2016m {
        return m8892a(c1848a, i, false, f7629b);
    }

    /* renamed from: b */
    abstract EnumC1796a mo8837b();
}
