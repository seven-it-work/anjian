package com.google.p130a.p131a.p132a;

import com.cyjh.common.p069d.ViewOnClickListenerC1139b;
import com.cyjh.common.util.C1176s;
import com.cyjh.elfin.p077e.p080c.C1264o;
import com.cyjh.mobileanjian.ipc.utils.C1659m;
import com.google.p130a.C1961h;
import com.google.p130a.p131a.C1797a;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p137c.C1860e;
import com.google.p130a.p137c.p139b.C1853a;
import com.google.p130a.p137c.p139b.C1855c;
import com.google.p130a.p137c.p139b.C1857e;
import com.googlecode.tesseract.android.TessBaseAPI;
import com.hlzn.socketclient.p167f.C2158c;
import com.umeng.commonsdk.proguard.C2518v;
import java.util.Arrays;
import org.apache.commons.io.IOUtils;
import org.slf4j.Marker;

/* renamed from: com.google.a.a.a.a */
/* loaded from: classes.dex */
public final class C1798a {

    /* renamed from: a */
    private static final String[] f7080a = {"CTRL_PS", C1176s.a.f4108a, "A", "B", "C", "D", "E", TessBaseAPI.f8031f, "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", TessBaseAPI.f8030e, "U", "V", "W", "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};

    /* renamed from: b */
    private static final String[] f7081b = {"CTRL_PS", C1176s.a.f4108a, "a", ViewOnClickListenerC1139b.f4016d, C2158c.f8148a, "d", "e", "f", "g", "h", C2518v.f9546am, "j", "k", "l", C1659m.f6405a, "n", C1264o.f4731a, C2518v.f9544ak, "q", "r", C2518v.f9545al, "t", "u", "v", "w", "x", "y", "z", "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};

    /* renamed from: c */
    private static final String[] f7082c = {"CTRL_PS", C1176s.a.f4108a, "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", "|", "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};

    /* renamed from: d */
    private static final String[] f7083d = {"", "\r", IOUtils.LINE_SEPARATOR_WINDOWS, ". ", ", ", ": ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", Marker.ANY_MARKER, Marker.ANY_NON_NULL_MARKER, ",", "-", ".", "/", ":", ";", "<", "=", ">", "?", "[", "]", "{", "}", "CTRL_UL"};

    /* renamed from: e */
    private static final String[] f7084e = {"CTRL_PS", C1176s.a.f4108a, "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ",", ".", "CTRL_UL", "CTRL_US"};

    /* renamed from: f */
    private C1797a f7085f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.a.a.a.a$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a */
        static final /* synthetic */ int[] f7086a = new int[a.values$17d9718f().length];

        static {
            try {
                f7086a[a.UPPER$2679db95 - 1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7086a[a.LOWER$2679db95 - 1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7086a[a.MIXED$2679db95 - 1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7086a[a.PUNCT$2679db95 - 1] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f7086a[a.DIGIT$2679db95 - 1] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: com.google.a.a.a.a$a */
    /* loaded from: classes.dex */
    public static final class a {
        public static final int UPPER$2679db95 = 1;
        public static final int LOWER$2679db95 = 2;
        public static final int MIXED$2679db95 = 3;
        public static final int DIGIT$2679db95 = 4;
        public static final int PUNCT$2679db95 = 5;
        public static final int BINARY$2679db95 = 6;
        private static final /* synthetic */ int[] $VALUES$171a8b50 = {UPPER$2679db95, LOWER$2679db95, MIXED$2679db95, DIGIT$2679db95, PUNCT$2679db95, BINARY$2679db95};

        private a(String str, int i) {
        }

        public static int[] values$17d9718f() {
            return (int[]) $VALUES$171a8b50.clone();
        }
    }

    /* renamed from: a */
    private static byte m8169a(boolean[] zArr, int i) {
        int length = zArr.length - i;
        return (byte) (length >= 8 ? m8172a(zArr, i, 8) : m8172a(zArr, i, length) << (8 - length));
    }

    /* renamed from: a */
    private static int m8170a(char c2) {
        if (c2 == 'B') {
            return a.BINARY$2679db95;
        }
        if (c2 == 'D') {
            return a.DIGIT$2679db95;
        }
        if (c2 == 'P') {
            return a.PUNCT$2679db95;
        }
        switch (c2) {
            case 'L':
                return a.LOWER$2679db95;
            case 'M':
                return a.MIXED$2679db95;
            default:
                return a.UPPER$2679db95;
        }
    }

    /* renamed from: a */
    private static int m8171a(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }

    /* renamed from: a */
    private static int m8172a(boolean[] zArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = i; i4 < i + i2; i4++) {
            i3 <<= 1;
            if (zArr[i4]) {
                i3 |= 1;
            }
        }
        return i3;
    }

    /* renamed from: a */
    private static String m8173a(int i, int i2) {
        switch (AnonymousClass1.f7086a[i - 1]) {
            case 1:
                return f7080a[i2];
            case 2:
                return f7081b[i2];
            case 3:
                return f7082c[i2];
            case 4:
                return f7083d[i2];
            case 5:
                return f7084e[i2];
            default:
                throw new IllegalStateException("Bad table");
        }
    }

    /* renamed from: a */
    private static String m8174a(boolean[] zArr) {
        return m8176b(zArr);
    }

    /* renamed from: a */
    private boolean[] m8175a(C1852b c1852b) {
        boolean z = this.f7085f.f7077a;
        int i = this.f7085f.f7079c;
        int i2 = (z ? 11 : 14) + (i << 2);
        int[] iArr = new int[i2];
        boolean[] zArr = new boolean[((z ? 88 : 112) + (i << 4)) * i];
        int i3 = 2;
        if (z) {
            for (int i4 = 0; i4 < iArr.length; i4++) {
                iArr[i4] = i4;
            }
        } else {
            int i5 = i2 / 2;
            int i6 = ((i2 + 1) + (((i5 - 1) / 15) * 2)) / 2;
            for (int i7 = 0; i7 < i5; i7++) {
                iArr[(i5 - i7) - 1] = (i6 - r12) - 1;
                iArr[i5 + i7] = (i7 / 15) + i7 + i6 + 1;
            }
        }
        int i8 = 0;
        int i9 = 0;
        while (i8 < i) {
            int i10 = ((i - i8) << i3) + (z ? 9 : 12);
            int i11 = i8 << 1;
            int i12 = (i2 - 1) - i11;
            int i13 = 0;
            while (i13 < i10) {
                int i14 = i13 << 1;
                int i15 = 0;
                while (i15 < i3) {
                    int i16 = i11 + i15;
                    int i17 = i11 + i13;
                    zArr[i9 + i14 + i15] = c1852b.m8479a(iArr[i16], iArr[i17]);
                    int i18 = i12 - i15;
                    zArr[(i10 * 2) + i9 + i14 + i15] = c1852b.m8479a(iArr[i17], iArr[i18]);
                    int i19 = i12 - i13;
                    zArr[(i10 * 4) + i9 + i14 + i15] = c1852b.m8479a(iArr[i18], iArr[i19]);
                    zArr[(i10 * 6) + i9 + i14 + i15] = c1852b.m8479a(iArr[i19], iArr[i16]);
                    i15++;
                    z = z;
                    i = i;
                    i3 = 2;
                }
                i13++;
                i3 = 2;
            }
            i9 += i10 << 3;
            i8++;
            i3 = 2;
        }
        return zArr;
    }

    /* renamed from: b */
    private static String m8176b(boolean[] zArr) {
        String str;
        int length = zArr.length;
        int i = a.UPPER$2679db95;
        int i2 = a.UPPER$2679db95;
        StringBuilder sb = new StringBuilder(20);
        int i3 = i;
        int i4 = 0;
        while (i4 < length) {
            if (i2 == a.BINARY$2679db95) {
                if (length - i4 >= 5) {
                    int m8172a = m8172a(zArr, i4, 5);
                    int i5 = i4 + 5;
                    if (m8172a == 0) {
                        if (length - i5 >= 11) {
                            m8172a = m8172a(zArr, i5, 11) + 31;
                            i5 += 11;
                        }
                    }
                    int i6 = i5;
                    int i7 = 0;
                    while (true) {
                        if (i7 >= m8172a) {
                            i4 = i6;
                        } else if (length - i6 < 8) {
                            i4 = length;
                        } else {
                            sb.append((char) m8172a(zArr, i6, 8));
                            i6 += 8;
                            i7++;
                        }
                    }
                    i2 = i3;
                }
                return sb.toString();
            }
            int i8 = i2 == a.DIGIT$2679db95 ? 4 : 5;
            if (length - i4 < i8) {
                return sb.toString();
            }
            int m8172a2 = m8172a(zArr, i4, i8);
            i4 += i8;
            switch (AnonymousClass1.f7086a[i2 - 1]) {
                case 1:
                    str = f7080a[m8172a2];
                    break;
                case 2:
                    str = f7081b[m8172a2];
                    break;
                case 3:
                    str = f7082c[m8172a2];
                    break;
                case 4:
                    str = f7083d[m8172a2];
                    break;
                case 5:
                    str = f7084e[m8172a2];
                    break;
                default:
                    throw new IllegalStateException("Bad table");
            }
            if (str.startsWith("CTRL_")) {
                char charAt = str.charAt(5);
                if (charAt == 'B') {
                    i3 = a.BINARY$2679db95;
                } else if (charAt == 'D') {
                    i3 = a.DIGIT$2679db95;
                } else if (charAt != 'P') {
                    switch (charAt) {
                        case 'L':
                            i3 = a.LOWER$2679db95;
                            break;
                        case 'M':
                            i3 = a.MIXED$2679db95;
                            break;
                        default:
                            i3 = a.UPPER$2679db95;
                            break;
                    }
                } else {
                    i3 = a.PUNCT$2679db95;
                }
                if (str.charAt(6) != 'L') {
                    int i9 = i3;
                    i3 = i2;
                    i2 = i9;
                }
            } else {
                sb.append(str);
            }
            i2 = i3;
        }
        return sb.toString();
    }

    /* renamed from: c */
    private boolean[] m8177c(boolean[] zArr) throws C1961h {
        C1853a c1853a;
        int i = 8;
        if (this.f7085f.f7079c <= 2) {
            i = 6;
            c1853a = C1853a.f7261c;
        } else if (this.f7085f.f7079c <= 8) {
            c1853a = C1853a.f7265g;
        } else if (this.f7085f.f7079c <= 22) {
            i = 10;
            c1853a = C1853a.f7260b;
        } else {
            i = 12;
            c1853a = C1853a.f7259a;
        }
        int i2 = this.f7085f.f7078b;
        int length = zArr.length / i;
        if (length < i2) {
            throw C1961h.getFormatInstance();
        }
        int[] iArr = new int[length];
        int length2 = zArr.length % i;
        int i3 = 0;
        while (i3 < length) {
            iArr[i3] = m8172a(zArr, length2, i);
            i3++;
            length2 += i;
        }
        try {
            new C1855c(c1853a).m8509a(iArr, length - i2);
            int i4 = (1 << i) - 1;
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                int i7 = iArr[i6];
                if (i7 == 0 || i7 == i4) {
                    throw C1961h.getFormatInstance();
                }
                if (i7 == 1 || i7 == i4 - 1) {
                    i5++;
                }
            }
            boolean[] zArr2 = new boolean[(i2 * i) - i5];
            int i8 = 0;
            for (int i9 = 0; i9 < i2; i9++) {
                int i10 = iArr[i9];
                if (i10 == 1 || i10 == i4 - 1) {
                    Arrays.fill(zArr2, i8, (i8 + i) - 1, i10 > 1);
                    i8 += i - 1;
                } else {
                    int i11 = i - 1;
                    while (i11 >= 0) {
                        int i12 = i8 + 1;
                        zArr2[i8] = ((1 << i11) & i10) != 0;
                        i11--;
                        i8 = i12;
                    }
                }
            }
            return zArr2;
        } catch (C1857e e) {
            throw C1961h.getFormatInstance(e);
        }
    }

    /* renamed from: d */
    private static byte[] m8178d(boolean[] zArr) {
        byte[] bArr = new byte[(zArr.length + 7) / 8];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = i << 3;
            int length = zArr.length - i2;
            bArr[i] = (byte) (length >= 8 ? m8172a(zArr, i2, 8) : m8172a(zArr, i2, length) << (8 - length));
        }
        return bArr;
    }

    /* renamed from: a */
    public final C1860e m8179a(C1797a c1797a) throws C1961h {
        this.f7085f = c1797a;
        C1852b c1852b = c1797a.f7292d;
        boolean z = this.f7085f.f7077a;
        int i = this.f7085f.f7079c;
        int i2 = (z ? 11 : 14) + (i << 2);
        int[] iArr = new int[i2];
        boolean[] zArr = new boolean[((z ? 88 : 112) + (i << 4)) * i];
        int i3 = 2;
        if (z) {
            for (int i4 = 0; i4 < iArr.length; i4++) {
                iArr[i4] = i4;
            }
        } else {
            int i5 = i2 / 2;
            int i6 = ((i2 + 1) + (((i5 - 1) / 15) * 2)) / 2;
            for (int i7 = 0; i7 < i5; i7++) {
                iArr[(i5 - i7) - 1] = (i6 - r12) - 1;
                iArr[i5 + i7] = (i7 / 15) + i7 + i6 + 1;
            }
        }
        int i8 = 0;
        int i9 = 0;
        while (i8 < i) {
            int i10 = ((i - i8) << i3) + (z ? 9 : 12);
            int i11 = i8 << 1;
            int i12 = (i2 - 1) - i11;
            int i13 = 0;
            while (i13 < i10) {
                int i14 = i13 << 1;
                int i15 = 0;
                while (i15 < i3) {
                    int i16 = i11 + i15;
                    int i17 = i11 + i13;
                    zArr[i9 + i14 + i15] = c1852b.m8479a(iArr[i16], iArr[i17]);
                    int i18 = i12 - i15;
                    zArr[(i10 * 2) + i9 + i14 + i15] = c1852b.m8479a(iArr[i17], iArr[i18]);
                    int i19 = i12 - i13;
                    zArr[(i10 * 4) + i9 + i14 + i15] = c1852b.m8479a(iArr[i18], iArr[i19]);
                    zArr[(i10 * 6) + i9 + i14 + i15] = c1852b.m8479a(iArr[i19], iArr[i16]);
                    i15++;
                    z = z;
                    i = i;
                    i2 = i2;
                    i3 = 2;
                }
                i13++;
                i3 = 2;
            }
            i9 += i10 << 3;
            i8++;
            z = z;
            i3 = 2;
        }
        boolean[] m8177c = m8177c(zArr);
        byte[] bArr = new byte[(m8177c.length + 7) / 8];
        for (int i20 = 0; i20 < bArr.length; i20++) {
            int i21 = i20 << 3;
            int length = m8177c.length - i21;
            bArr[i20] = (byte) (length >= 8 ? m8172a(m8177c, i21, 8) : m8172a(m8177c, i21, length) << (8 - length));
        }
        C1860e c1860e = new C1860e(bArr, m8176b(m8177c), null, null);
        c1860e.f7283b = m8177c.length;
        return c1860e;
    }
}
