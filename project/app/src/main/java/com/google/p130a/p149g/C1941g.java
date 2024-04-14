package com.google.p130a.p149g;

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

/* renamed from: com.google.a.g.g */
/* loaded from: classes.dex */
public final class C1941g extends AbstractC1952r {

    /* renamed from: b */
    static final int[] f7589b;

    /* renamed from: d */
    private static final int f7591d;

    /* renamed from: e */
    private final StringBuilder f7592e = new StringBuilder(20);

    /* renamed from: f */
    private final int[] f7593f = new int[6];

    /* renamed from: a */
    static final String f7588a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*";

    /* renamed from: c */
    private static final char[] f7590c = f7588a.toCharArray();

    static {
        int[] iArr = {C1612a.f6077aS, 328, 324, 322, 296, 292, 290, 336, C1612a.f6075aQ, 266, 424, 420, 418, UiMessage.CommandToUi.Command_Type.GET_TEXT_VALUE, UiMessage.CommandToUi.Command_Type.GET_VISIBLE_VALUE, 394, 360, 356, 354, 308, 282, 344, 332, 326, 300, 278, 436, 434, 428, 422, UiMessage.CommandToUi.Command_Type.GET_TITLE_BACKCOLOR_VALUE, UiMessage.CommandToUi.Command_Type.GET_FW_VISIBLE_VALUE, 364, 358, UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_COLOR_VALUE, 314, UiMessage.CommandToUi.Command_Type.SET_VISIBLE_VALUE, 468, 466, 458, 366, 374, 430, 294, 474, 470, UiMessage.CommandToUi.Command_Type.SET_TITLE_BACKCOLOR_VALUE, 350};
        f7589b = iArr;
        f7591d = iArr[47];
    }

    /* renamed from: a */
    private static char m8849a(int i) throws C2016m {
        for (int i2 = 0; i2 < f7589b.length; i2++) {
            if (f7589b[i2] == i) {
                return f7590c[i2];
            }
        }
        throw C2016m.getNotFoundInstance();
    }

    /* renamed from: a */
    private static int m8850a(int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        int length = iArr.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            int round = Math.round((iArr[i4] * 9.0f) / i);
            if (round <= 0 || round > 4) {
                return -1;
            }
            if ((i4 & 1) == 0) {
                int i5 = i3;
                for (int i6 = 0; i6 < round; i6++) {
                    i5 = (i5 << 1) | 1;
                }
                i3 = i5;
            } else {
                i3 <<= round;
            }
        }
        return i3;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x002e. Please report as an issue. */
    /* renamed from: a */
    private static String m8851a(CharSequence charSequence) throws C1961h {
        int i;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        int i2 = 0;
        while (i2 < length) {
            char charAt = charSequence.charAt(i2);
            if (charAt >= 'a' && charAt <= 'd') {
                if (i2 < length - 1) {
                    i2++;
                    char charAt2 = charSequence.charAt(i2);
                    switch (charAt) {
                        case 'a':
                            if (charAt2 >= 'A' && charAt2 <= 'Z') {
                                i = charAt2 - '@';
                                charAt = (char) i;
                                break;
                            } else {
                                throw C1961h.getFormatInstance();
                            }
                        case 'b':
                            if (charAt2 >= 'A' && charAt2 <= 'E') {
                                i = charAt2 - '&';
                            } else if (charAt2 >= 'F' && charAt2 <= 'J') {
                                i = charAt2 - 11;
                            } else if (charAt2 >= 'K' && charAt2 <= 'O') {
                                i = charAt2 + 16;
                            } else if (charAt2 >= 'P' && charAt2 <= 'S') {
                                i = charAt2 + '+';
                            } else if (charAt2 >= 'T' && charAt2 <= 'Z') {
                                charAt = 127;
                                break;
                            } else {
                                throw C1961h.getFormatInstance();
                            }
                            charAt = (char) i;
                            break;
                        case 'c':
                            if (charAt2 >= 'A' && charAt2 <= 'O') {
                                i = charAt2 - ' ';
                                charAt = (char) i;
                                break;
                            } else {
                                if (charAt2 != 'Z') {
                                    throw C1961h.getFormatInstance();
                                }
                                charAt = ':';
                                break;
                            }
                        case 'd':
                            if (charAt2 >= 'A' && charAt2 <= 'Z') {
                                i = charAt2 + ' ';
                                charAt = (char) i;
                                break;
                            } else {
                                throw C1961h.getFormatInstance();
                            }
                            break;
                        default:
                            charAt = 0;
                            break;
                    }
                } else {
                    throw C1961h.getFormatInstance();
                }
            }
            sb.append(charAt);
            i2++;
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static void m8852a(CharSequence charSequence, int i, int i2) throws C1868d {
        int i3 = 0;
        int i4 = 1;
        for (int i5 = i - 1; i5 >= 0; i5--) {
            i3 += f7588a.indexOf(charSequence.charAt(i5)) * i4;
            i4++;
            if (i4 > i2) {
                i4 = 1;
            }
        }
        if (charSequence.charAt(i) != f7590c[i3 % 47]) {
            throw C1868d.getChecksumInstance();
        }
    }

    /* renamed from: a */
    private int[] m8853a(C1848a c1848a) throws C2016m {
        int i = c1848a.f7243b;
        int m8450c = c1848a.m8450c(0);
        Arrays.fill(this.f7593f, 0);
        int[] iArr = this.f7593f;
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
                    if (m8850a(iArr) == f7591d) {
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

    /* renamed from: b */
    private static void m8854b(CharSequence charSequence) throws C1868d {
        int length = charSequence.length();
        m8852a(charSequence, length - 2, 20);
        m8852a(charSequence, length - 1, 15);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:55:0x00ef. Please report as an issue. */
    @Override // com.google.p130a.p149g.AbstractC1952r
    /* renamed from: a */
    public final C2021r mo8718a(int i, C1848a c1848a, Map<EnumC1891e, ?> map) throws C2016m, C1868d, C1961h {
        int i2;
        int i3 = c1848a.f7243b;
        int m8450c = c1848a.m8450c(0);
        Arrays.fill(this.f7593f, 0);
        int[] iArr = this.f7593f;
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
                } else {
                    if (m8850a(iArr) == f7591d) {
                        int m8450c2 = c1848a.m8450c(new int[]{i4, m8450c}[1]);
                        int i6 = c1848a.f7243b;
                        int[] iArr2 = this.f7593f;
                        Arrays.fill(iArr2, 0);
                        StringBuilder sb = this.f7592e;
                        sb.setLength(0);
                        while (true) {
                            m8871a(c1848a, m8450c2, iArr2);
                            int m8850a = m8850a(iArr2);
                            if (m8850a < 0) {
                                throw C2016m.getNotFoundInstance();
                            }
                            for (int i7 = 0; i7 < f7589b.length; i7++) {
                                if (f7589b[i7] == m8850a) {
                                    char c2 = f7590c[i7];
                                    sb.append(c2);
                                    int i8 = m8450c2;
                                    for (int i9 : iArr2) {
                                        i8 += i9;
                                    }
                                    int m8450c3 = c1848a.m8450c(i8);
                                    if (c2 == '*') {
                                        sb.deleteCharAt(sb.length() - 1);
                                        int i10 = 0;
                                        for (int i11 : iArr2) {
                                            i10 += i11;
                                        }
                                        if (m8450c3 == i6 || !c1848a.m8445a(m8450c3)) {
                                            throw C2016m.getNotFoundInstance();
                                        }
                                        if (sb.length() < 2) {
                                            throw C2016m.getNotFoundInstance();
                                        }
                                        int length2 = sb.length();
                                        m8852a(sb, length2 - 2, 20);
                                        m8852a(sb, length2 - 1, 15);
                                        sb.setLength(sb.length() - 2);
                                        int length3 = sb.length();
                                        StringBuilder sb2 = new StringBuilder(length3);
                                        int i12 = 0;
                                        while (i12 < length3) {
                                            char charAt = sb.charAt(i12);
                                            if (charAt >= 'a' && charAt <= 'd') {
                                                if (i12 >= length3 - 1) {
                                                    throw C1961h.getFormatInstance();
                                                }
                                                i12++;
                                                char charAt2 = sb.charAt(i12);
                                                switch (charAt) {
                                                    case 'a':
                                                        if (charAt2 < 'A' || charAt2 > 'Z') {
                                                            throw C1961h.getFormatInstance();
                                                        }
                                                        i2 = charAt2 - '@';
                                                        charAt = (char) i2;
                                                        break;
                                                    case 'b':
                                                        if (charAt2 >= 'A' && charAt2 <= 'E') {
                                                            i2 = charAt2 - '&';
                                                        } else if (charAt2 >= 'F' && charAt2 <= 'J') {
                                                            i2 = charAt2 - 11;
                                                        } else if (charAt2 >= 'K' && charAt2 <= 'O') {
                                                            i2 = charAt2 + 16;
                                                        } else if (charAt2 >= 'P' && charAt2 <= 'S') {
                                                            i2 = charAt2 + '+';
                                                        } else {
                                                            if (charAt2 < 'T' || charAt2 > 'Z') {
                                                                throw C1961h.getFormatInstance();
                                                            }
                                                            charAt = 127;
                                                            break;
                                                        }
                                                        charAt = (char) i2;
                                                        break;
                                                    case 'c':
                                                        if (charAt2 < 'A' || charAt2 > 'O') {
                                                            if (charAt2 != 'Z') {
                                                                throw C1961h.getFormatInstance();
                                                            }
                                                            charAt = ':';
                                                            break;
                                                        } else {
                                                            i2 = charAt2 - ' ';
                                                            charAt = (char) i2;
                                                            break;
                                                        }
                                                    case 'd':
                                                        if (charAt2 < 'A' || charAt2 > 'Z') {
                                                            throw C1961h.getFormatInstance();
                                                        }
                                                        i2 = charAt2 + ' ';
                                                        charAt = (char) i2;
                                                        break;
                                                        break;
                                                    default:
                                                        charAt = 0;
                                                        break;
                                                }
                                            }
                                            sb2.append(charAt);
                                            i12++;
                                        }
                                        float f = i;
                                        return new C2021r(sb2.toString(), null, new C2023t[]{new C2023t((r2[1] + r2[0]) / 2.0f, f), new C2023t(m8450c2 + (i10 / 2.0f), f)}, EnumC1796a.CODE_93);
                                    }
                                    m8450c2 = m8450c3;
                                }
                            }
                            throw C2016m.getNotFoundInstance();
                        }
                    }
                    i4 += iArr[0] + iArr[1];
                    int i13 = i5 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i13);
                    iArr[i13] = 0;
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
