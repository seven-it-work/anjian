package com.google.p130a.p149g;

import android.support.v7.widget.ActivityChooserView;
import com.cyjh.mobileanjian.ipc.share.proto.C1612a;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.google.p130a.C1868d;
import com.google.p130a.C1961h;
import com.google.p130a.C2016m;
import com.google.p130a.C2021r;
import com.google.p130a.C2023t;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1891e;
import com.google.p130a.p137c.C1848a;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.google.a.g.e */
/* loaded from: classes.dex */
public final class C1939e extends AbstractC1952r {

    /* renamed from: a */
    static final String f7581a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%";

    /* renamed from: b */
    static final int[] f7582b = {52, 289, 97, 352, 49, UiMessage.CommandToUi.Command_Type.SET_TEXT_VALUE, 112, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, 268, 76, 28, C1612a.f6069aK, 67, 322, 19, C1612a.f6075aQ, 82, 7, C1612a.f6072aN, 70, 22, 385, 193, 448, 145, 400, UiMessage.CommandToUi.Command_Type.SET_TAB_VALUE, 133, 388, 196, 168, 162, 138, 42};

    /* renamed from: c */
    static final int f7583c = 148;

    /* renamed from: d */
    private final boolean f7584d;

    /* renamed from: e */
    private final boolean f7585e;

    /* renamed from: f */
    private final StringBuilder f7586f;

    /* renamed from: g */
    private final int[] f7587g;

    public C1939e() {
        this(false);
    }

    public C1939e(boolean z) {
        this(z, (byte) 0);
    }

    private C1939e(boolean z, byte b2) {
        this.f7584d = z;
        this.f7585e = false;
        this.f7586f = new StringBuilder(20);
        this.f7587g = new int[9];
    }

    /* renamed from: a */
    private static char m8843a(int i) throws C2016m {
        for (int i2 = 0; i2 < f7582b.length; i2++) {
            if (f7582b[i2] == i) {
                return f7581a.charAt(i2);
            }
        }
        if (i == f7583c) {
            return '*';
        }
        throw C2016m.getNotFoundInstance();
    }

    /* renamed from: a */
    private static int m8844a(int[] iArr) {
        int length = iArr.length;
        int i = 0;
        while (true) {
            int i2 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            for (int i3 : iArr) {
                if (i3 < i2 && i3 > i) {
                    i2 = i3;
                }
            }
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < length; i7++) {
                int i8 = iArr[i7];
                if (i8 > i2) {
                    i5 |= 1 << ((length - 1) - i7);
                    i4++;
                    i6 += i8;
                }
            }
            if (i4 == 3) {
                for (int i9 = 0; i9 < length && i4 > 0; i9++) {
                    int i10 = iArr[i9];
                    if (i10 > i2) {
                        i4--;
                        if ((i10 << 1) >= i6) {
                            return -1;
                        }
                    }
                }
                return i5;
            }
            if (i4 <= 3) {
                return -1;
            }
            i = i2;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x0031. Please report as an issue. */
    /* renamed from: a */
    private static String m8845a(CharSequence charSequence) throws C1961h {
        int i;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        int i2 = 0;
        while (i2 < length) {
            char charAt = charSequence.charAt(i2);
            if (charAt == '+' || charAt == '$' || charAt == '%' || charAt == '/') {
                i2++;
                char charAt2 = charSequence.charAt(i2);
                if (charAt != '+') {
                    if (charAt != '/') {
                        switch (charAt) {
                            case '$':
                                if (charAt2 >= 'A' && charAt2 <= 'Z') {
                                    i = charAt2 - '@';
                                    break;
                                } else {
                                    throw C1961h.getFormatInstance();
                                }
                                break;
                            case '%':
                                if (charAt2 >= 'A' && charAt2 <= 'E') {
                                    i = charAt2 - '&';
                                    break;
                                } else if (charAt2 >= 'F' && charAt2 <= 'J') {
                                    i = charAt2 - 11;
                                    break;
                                } else if (charAt2 >= 'K' && charAt2 <= 'O') {
                                    i = charAt2 + 16;
                                    break;
                                } else if (charAt2 >= 'P' && charAt2 <= 'T') {
                                    i = charAt2 + '+';
                                    break;
                                } else if (charAt2 != 'U') {
                                    if (charAt2 == 'V') {
                                        charAt = '@';
                                        break;
                                    } else if (charAt2 == 'W') {
                                        charAt = '`';
                                        break;
                                    } else {
                                        if (charAt2 != 'X' && charAt2 != 'Y' && charAt2 != 'Z') {
                                            throw C1961h.getFormatInstance();
                                        }
                                        charAt = 127;
                                        break;
                                    }
                                }
                                break;
                            default:
                                charAt = 0;
                                break;
                        }
                    } else if (charAt2 >= 'A' && charAt2 <= 'O') {
                        i = charAt2 - ' ';
                    } else {
                        if (charAt2 != 'Z') {
                            throw C1961h.getFormatInstance();
                        }
                        charAt = ':';
                    }
                } else {
                    if (charAt2 < 'A' || charAt2 > 'Z') {
                        throw C1961h.getFormatInstance();
                    }
                    i = charAt2 + ' ';
                }
                charAt = (char) i;
            }
            sb.append(charAt);
            i2++;
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static int[] m8846a(C1848a c1848a, int[] iArr) throws C2016m {
        int i = c1848a.f7243b;
        int m8450c = c1848a.m8450c(0);
        int length = iArr.length;
        int i2 = m8450c;
        boolean z = false;
        int i3 = 0;
        while (m8450c < i) {
            if (c1848a.m8445a(m8450c) != z) {
                iArr[i3] = iArr[i3] + 1;
            } else {
                if (i3 != length - 1) {
                    i3++;
                } else {
                    if (m8844a(iArr) == f7583c && c1848a.m8446a(Math.max(0, i2 - ((m8450c - i2) / 2)), i2)) {
                        return new int[]{i2, m8450c};
                    }
                    i2 += iArr[0] + iArr[1];
                    int i4 = i3 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i4);
                    iArr[i4] = 0;
                    iArr[i3] = 0;
                    i3--;
                }
                iArr[i3] = 1;
                z = !z;
            }
            m8450c++;
        }
        throw C2016m.getNotFoundInstance();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:78:0x012b. Please report as an issue. */
    @Override // com.google.p130a.p149g.AbstractC1952r
    /* renamed from: a */
    public final C2021r mo8718a(int i, C1848a c1848a, Map<EnumC1891e, ?> map) throws C2016m, C1868d, C1961h {
        char c2;
        String sb;
        int i2;
        char c3;
        int[] iArr = this.f7587g;
        Arrays.fill(iArr, 0);
        StringBuilder sb2 = this.f7586f;
        sb2.setLength(0);
        int i3 = c1848a.f7243b;
        int m8450c = c1848a.m8450c(0);
        int length = iArr.length;
        int i4 = m8450c;
        boolean z = false;
        int i5 = 0;
        while (m8450c < i3) {
            if (c1848a.m8445a(m8450c) != z) {
                iArr[i5] = iArr[i5] + 1;
            } else {
                if (i5 != length - 1) {
                    i5++;
                } else if (m8844a(iArr) == f7583c && c1848a.m8446a(Math.max(0, i4 - ((m8450c - i4) / 2)), i4)) {
                    int m8450c2 = c1848a.m8450c(new int[]{i4, m8450c}[1]);
                    int i6 = c1848a.f7243b;
                    while (true) {
                        m8871a(c1848a, m8450c2, iArr);
                        int m8844a = m8844a(iArr);
                        if (m8844a < 0) {
                            throw C2016m.getNotFoundInstance();
                        }
                        int i7 = 0;
                        while (true) {
                            if (i7 < f7582b.length) {
                                if (f7582b[i7] == m8844a) {
                                    c2 = f7581a.charAt(i7);
                                    break;
                                }
                                i7++;
                            } else {
                                if (m8844a != f7583c) {
                                    throw C2016m.getNotFoundInstance();
                                }
                                c2 = '*';
                            }
                        }
                        sb2.append(c2);
                        int i8 = m8450c2;
                        for (int i9 : iArr) {
                            i8 += i9;
                        }
                        int m8450c3 = c1848a.m8450c(i8);
                        if (c2 == '*') {
                            sb2.setLength(sb2.length() - 1);
                            int i10 = 0;
                            for (int i11 : iArr) {
                                i10 += i11;
                            }
                            int i12 = (m8450c3 - m8450c2) - i10;
                            if (m8450c3 != i6 && (i12 << 1) < i10) {
                                throw C2016m.getNotFoundInstance();
                            }
                            char c4 = '+';
                            if (this.f7584d) {
                                int length2 = sb2.length() - 1;
                                int i13 = 0;
                                for (int i14 = 0; i14 < length2; i14++) {
                                    i13 += f7581a.indexOf(this.f7586f.charAt(i14));
                                }
                                if (sb2.charAt(length2) != f7581a.charAt(i13 % 43)) {
                                    throw C1868d.getChecksumInstance();
                                }
                                sb2.setLength(length2);
                            }
                            if (sb2.length() == 0) {
                                throw C2016m.getNotFoundInstance();
                            }
                            if (this.f7585e) {
                                int length3 = sb2.length();
                                StringBuilder sb3 = new StringBuilder(length3);
                                int i15 = 0;
                                while (i15 < length3) {
                                    char charAt = sb2.charAt(i15);
                                    if (charAt == c4 || charAt == '$' || charAt == '%' || charAt == '/') {
                                        i15++;
                                        char charAt2 = sb2.charAt(i15);
                                        if (charAt == c4) {
                                            if (charAt2 < 'A' || charAt2 > 'Z') {
                                                throw C1961h.getFormatInstance();
                                            }
                                            i2 = charAt2 + ' ';
                                        } else if (charAt != '/') {
                                            switch (charAt) {
                                                case '$':
                                                    if (charAt2 < 'A' || charAt2 > 'Z') {
                                                        throw C1961h.getFormatInstance();
                                                    }
                                                    i2 = charAt2 - '@';
                                                    break;
                                                case '%':
                                                    if (charAt2 < 'A' || charAt2 > 'E') {
                                                        if (charAt2 < 'F' || charAt2 > 'J') {
                                                            if (charAt2 < 'K' || charAt2 > 'O') {
                                                                if (charAt2 < 'P' || charAt2 > 'T') {
                                                                    if (charAt2 != 'U') {
                                                                        if (charAt2 == 'V') {
                                                                            c3 = '@';
                                                                        } else if (charAt2 == 'W') {
                                                                            c3 = '`';
                                                                        } else {
                                                                            if (charAt2 != 'X' && charAt2 != 'Y' && charAt2 != 'Z') {
                                                                                throw C1961h.getFormatInstance();
                                                                            }
                                                                            c3 = 127;
                                                                        }
                                                                        sb3.append(c3);
                                                                        break;
                                                                    }
                                                                } else {
                                                                    i2 = charAt2 + '+';
                                                                    break;
                                                                }
                                                            } else {
                                                                i2 = charAt2 + 16;
                                                                break;
                                                            }
                                                        } else {
                                                            i2 = charAt2 - 11;
                                                            break;
                                                        }
                                                    } else {
                                                        i2 = charAt2 - '&';
                                                        break;
                                                    }
                                                    break;
                                                default:
                                                    c3 = 0;
                                                    sb3.append(c3);
                                                    break;
                                            }
                                        } else if (charAt2 >= 'A' && charAt2 <= 'O') {
                                            i2 = charAt2 - ' ';
                                        } else {
                                            if (charAt2 != 'Z') {
                                                throw C1961h.getFormatInstance();
                                            }
                                            c3 = ':';
                                            sb3.append(c3);
                                        }
                                        c3 = (char) i2;
                                        sb3.append(c3);
                                    } else {
                                        sb3.append(charAt);
                                    }
                                    i15++;
                                    c4 = '+';
                                }
                                sb = sb3.toString();
                            } else {
                                sb = sb2.toString();
                            }
                            float f = i;
                            return new C2021r(sb, null, new C2023t[]{new C2023t((r5[1] + r5[0]) / 2.0f, f), new C2023t(m8450c2 + (i10 / 2.0f), f)}, EnumC1796a.CODE_39);
                        }
                        m8450c2 = m8450c3;
                    }
                } else {
                    i4 += iArr[0] + iArr[1];
                    int i16 = i5 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i16);
                    iArr[i16] = 0;
                    iArr[i5] = 0;
                    i5--;
                }
                iArr[i5] = 1;
                z = !z;
            }
            m8450c++;
        }
        throw C2016m.getNotFoundInstance();
    }
}
