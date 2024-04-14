package com.google.p130a.p149g;

import com.google.p130a.C2026w;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1903g;
import com.google.p130a.p137c.C1852b;
import java.util.Map;
import org.apache.commons.io.IOUtils;

/* renamed from: com.google.a.g.f */
/* loaded from: classes.dex */
public final class C1940f extends AbstractC1953s {
    /* renamed from: a */
    private static void m8847a(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = 1;
            if (((1 << (8 - i2)) & i) != 0) {
                i3 = 2;
            }
            iArr[i2] = i3;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x001e. Please report as an issue. */
    /* renamed from: b */
    private static String m8848b(String str) {
        String str2;
        int i;
        int i2;
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < length; i3++) {
            char charAt = str.charAt(i3);
            if (charAt != 0) {
                if (charAt != ' ') {
                    if (charAt == '@') {
                        str2 = "%V";
                    } else if (charAt != '`') {
                        switch (charAt) {
                            default:
                                if (charAt <= 26) {
                                    sb.append('$');
                                    i = charAt - 1;
                                } else if (charAt < ' ') {
                                    sb.append('%');
                                    i = charAt - 27;
                                } else if (charAt <= ',' || charAt == '/' || charAt == ':') {
                                    sb.append(IOUtils.DIR_SEPARATOR_UNIX);
                                    i = charAt - '!';
                                } else {
                                    if (charAt <= '9') {
                                        i2 = (charAt - '0') + 48;
                                    } else if (charAt <= '?') {
                                        sb.append('%');
                                        i2 = (charAt - ';') + 70;
                                    } else if (charAt <= 'Z') {
                                        i = charAt - 'A';
                                    } else if (charAt <= '_') {
                                        sb.append('%');
                                        i2 = (charAt - '[') + 75;
                                    } else if (charAt <= 'z') {
                                        sb.append('+');
                                        i = charAt - 'a';
                                    } else {
                                        if (charAt > 127) {
                                            throw new IllegalArgumentException("Requested content contains a non-encodable character: '" + str.charAt(i3) + "'");
                                        }
                                        sb.append('%');
                                        i2 = (charAt - '{') + 80;
                                    }
                                    charAt = (char) i2;
                                }
                                i2 = i + 65;
                                charAt = (char) i2;
                            case '-':
                            case '.':
                                sb.append(charAt);
                        }
                    } else {
                        str2 = "%W";
                    }
                }
                sb.append(charAt);
            } else {
                str2 = "%U";
            }
            sb.append(str2);
        }
        return sb.toString();
    }

    @Override // com.google.p130a.p149g.AbstractC1953s, com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public final C1852b mo8208a(String str, EnumC1796a enumC1796a, int i, int i2, Map<EnumC1903g, ?> map) throws C2026w {
        if (enumC1796a != EnumC1796a.CODE_39) {
            throw new IllegalArgumentException("Can only encode CODE_39, but got ".concat(String.valueOf(enumC1796a)));
        }
        return super.mo8208a(str, enumC1796a, i, i2, map);
    }

    @Override // com.google.p130a.p149g.AbstractC1953s
    /* renamed from: a */
    public final boolean[] mo8838a(String str) {
        int length = str.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            if ("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i)) < 0) {
                str = m8848b(str);
                length = str.length();
                if (length > 80) {
                    throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length + " (extended full ASCII mode)");
                }
            } else {
                i++;
            }
        }
        int[] iArr = new int[9];
        int i2 = length + 25;
        int i3 = 0;
        while (i3 < length) {
            m8847a(C1939e.f7582b["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i3))], iArr);
            int i4 = i2;
            for (int i5 = 0; i5 < 9; i5++) {
                i4 += iArr[i5];
            }
            i3++;
            i2 = i4;
        }
        boolean[] zArr = new boolean[i2];
        m8847a(148, iArr);
        int a2 = m8874a(zArr, 0, iArr, true);
        int[] iArr2 = {1};
        int a3 = a2 + m8874a(zArr, a2, iArr2, false);
        for (int i6 = 0; i6 < length; i6++) {
            m8847a(C1939e.f7582b["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i6))], iArr);
            int a4 = a3 + m8874a(zArr, a3, iArr, true);
            a3 = a4 + m8874a(zArr, a4, iArr2, false);
        }
        m8847a(148, iArr);
        m8874a(zArr, a3, iArr, true);
        return zArr;
    }
}
