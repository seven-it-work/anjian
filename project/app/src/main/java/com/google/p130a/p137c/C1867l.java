package com.google.p130a.p137c;

import com.google.p130a.EnumC1891e;
import java.nio.charset.Charset;
import java.util.Map;

/* renamed from: com.google.a.c.l */
/* loaded from: classes.dex */
public final class C1867l {

    /* renamed from: a */
    public static final String f7316a = "SJIS";

    /* renamed from: b */
    public static final String f7317b = "GB2312";

    /* renamed from: c */
    private static final String f7318c = Charset.defaultCharset().name();

    /* renamed from: d */
    private static final String f7319d = "EUC_JP";

    /* renamed from: e */
    private static final String f7320e = "UTF8";

    /* renamed from: f */
    private static final String f7321f = "ISO8859_1";

    /* renamed from: g */
    private static final boolean f7322g;

    static {
        f7322g = f7316a.equalsIgnoreCase(f7318c) || f7319d.equalsIgnoreCase(f7318c);
    }

    private C1867l() {
    }

    /* renamed from: a */
    public static String m8551a(byte[] bArr, Map<EnumC1891e, ?> map) {
        byte[] bArr2 = bArr;
        if (map != null && map.containsKey(EnumC1891e.CHARACTER_SET)) {
            return map.get(EnumC1891e.CHARACTER_SET).toString();
        }
        int length = bArr2.length;
        int i = 0;
        boolean z = bArr2.length > 3 && bArr2[0] == -17 && bArr2[1] == -69 && bArr2[2] == -65;
        int i2 = 0;
        int i3 = 0;
        boolean z2 = true;
        boolean z3 = true;
        boolean z4 = true;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i3 < length && (z2 || z3 || z4)) {
            int i13 = bArr2[i3] & 255;
            if (z4) {
                if (i4 > 0) {
                    if ((i13 & 128) != 0) {
                        i4--;
                    }
                    z4 = false;
                } else if ((i13 & 128) != 0) {
                    if ((i13 & 64) != 0) {
                        i4++;
                        if ((i13 & 32) == 0) {
                            i6++;
                        } else {
                            i4++;
                            if ((i13 & 16) == 0) {
                                i7++;
                            } else {
                                i4++;
                                if ((i13 & 8) == 0) {
                                    i8++;
                                }
                            }
                        }
                    }
                    z4 = false;
                }
            }
            if (z2) {
                if (i13 > 127 && i13 < 160) {
                    z2 = false;
                } else if (i13 > 159 && (i13 < 192 || i13 == 215 || i13 == 247)) {
                    i10++;
                }
            }
            if (z3) {
                if (i5 > 0) {
                    if (i13 >= 64 && i13 != 127 && i13 <= 252) {
                        i5--;
                    }
                    z3 = false;
                } else {
                    if (i13 != 128 && i13 != 160 && i13 <= 239) {
                        if (i13 > 160 && i13 < 224) {
                            i2++;
                            int i14 = i11 + 1;
                            if (i14 > i9) {
                                i9 = i14;
                                i11 = i9;
                            } else {
                                i11 = i14;
                            }
                        } else if (i13 > 127) {
                            i5++;
                            int i15 = i12 + 1;
                            if (i15 > i) {
                                i = i15;
                                i12 = i;
                            } else {
                                i12 = i15;
                            }
                            i11 = 0;
                        } else {
                            i11 = 0;
                        }
                        i12 = 0;
                    }
                    z3 = false;
                }
            }
            i3++;
            bArr2 = bArr;
        }
        if (z4 && i4 > 0) {
            z4 = false;
        }
        boolean z5 = (!z3 || i5 <= 0) ? z3 : false;
        return (!z4 || (!z && (i6 + i7) + i8 <= 0)) ? (!z5 || (!f7322g && i9 < 3 && i < 3)) ? (z2 && z5) ? (!(i9 == 2 && i2 == 2) && i10 * 10 < length) ? f7321f : f7316a : z2 ? f7321f : z5 ? f7316a : z4 ? f7320e : f7318c : f7316a : f7320e;
    }
}
