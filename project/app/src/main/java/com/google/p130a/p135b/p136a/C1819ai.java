package com.google.p130a.p135b.p136a;

import com.cyjh.elfin.entity.MsgItem;
import com.google.p130a.C2021r;
import com.google.p130a.EnumC1796a;
import java.util.regex.Pattern;

/* renamed from: com.google.a.b.a.ai */
/* loaded from: classes.dex */
public final class C1819ai extends AbstractC1841u {

    /* renamed from: a */
    private static final Pattern f7155a = Pattern.compile("[IOQ]");

    /* renamed from: b */
    private static final Pattern f7156b = Pattern.compile("[A-Z0-9]{17}");

    /* renamed from: a */
    private static int m8295a(int i) {
        if (i > 0 && i <= 7) {
            return 9 - i;
        }
        if (i == 8) {
            return 10;
        }
        if (i == 9) {
            return 0;
        }
        if (i < 10 || i > 17) {
            throw new IllegalArgumentException();
        }
        return 19 - i;
    }

    /* renamed from: a */
    private static boolean m8296a(CharSequence charSequence) {
        char c2;
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int i5 = 0;
        while (i4 < charSequence.length()) {
            int i6 = i4 + 1;
            if (i6 > 0 && i6 <= 7) {
                i = 9 - i6;
            } else if (i6 == 8) {
                i = 10;
            } else if (i6 == 9) {
                i = 0;
            } else {
                if (i6 < 10 || i6 > 17) {
                    throw new IllegalArgumentException();
                }
                i = 19 - i6;
            }
            char charAt = charSequence.charAt(i4);
            if (charAt >= 'A' && charAt <= 'I') {
                i3 = charAt - 'A';
            } else if (charAt < 'J' || charAt > 'R') {
                if (charAt >= 'S' && charAt <= 'Z') {
                    i2 = (charAt - 'S') + 2;
                } else {
                    if (charAt < '0' || charAt > '9') {
                        throw new IllegalArgumentException();
                    }
                    i2 = charAt - '0';
                }
                i5 += i * i2;
                i4 = i6;
            } else {
                i3 = charAt - 'J';
            }
            i2 = i3 + 1;
            i5 += i * i2;
            i4 = i6;
        }
        char charAt2 = charSequence.charAt(8);
        int i7 = i5 % 11;
        if (i7 < 10) {
            c2 = (char) (i7 + 48);
        } else {
            if (i7 != 10) {
                throw new IllegalArgumentException();
            }
            c2 = 'X';
        }
        return charAt2 == c2;
    }

    /* renamed from: b */
    private static char m8297b(int i) {
        if (i < 10) {
            return (char) (i + 48);
        }
        if (i == 10) {
            return 'X';
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    private static int m8298b(char c2) {
        if (c2 >= 'A' && c2 <= 'I') {
            return (c2 - 'A') + 1;
        }
        if (c2 >= 'J' && c2 <= 'R') {
            return (c2 - 'J') + 1;
        }
        if (c2 >= 'S' && c2 <= 'Z') {
            return (c2 - 'S') + 2;
        }
        if (c2 < '0' || c2 > '9') {
            throw new IllegalArgumentException();
        }
        return c2 - '0';
    }

    /* renamed from: b */
    private static String m8299b(CharSequence charSequence) {
        char charAt = charSequence.charAt(0);
        char charAt2 = charSequence.charAt(1);
        if (charAt == '9') {
            if (charAt2 >= 'A' && charAt2 <= 'E') {
                return "BR";
            }
            if (charAt2 < '3' || charAt2 > '9') {
                return null;
            }
            return "BR";
        }
        if (charAt == 'S') {
            if (charAt2 >= 'A' && charAt2 <= 'M') {
                return "UK";
            }
            if (charAt2 < 'N' || charAt2 > 'T') {
                return null;
            }
            return "DE";
        }
        if (charAt == 'Z') {
            if (charAt2 < 'A' || charAt2 > 'R') {
                return null;
            }
            return "IT";
        }
        switch (charAt) {
            case '1':
            case '4':
            case '5':
                return "US";
            case '2':
                return "CA";
            case '3':
                if (charAt2 < 'A' || charAt2 > 'W') {
                    return null;
                }
                return "MX";
            default:
                switch (charAt) {
                    case 'J':
                        if (charAt2 < 'A' || charAt2 > 'T') {
                            return null;
                        }
                        return "JP";
                    case 'K':
                        if (charAt2 < 'L' || charAt2 > 'R') {
                            return null;
                        }
                        return "KO";
                    case 'L':
                        return "CN";
                    case 'M':
                        if (charAt2 < 'A' || charAt2 > 'E') {
                            return null;
                        }
                        return "IN";
                    default:
                        switch (charAt) {
                            case 'V':
                                if (charAt2 >= 'F' && charAt2 <= 'R') {
                                    return "FR";
                                }
                                if (charAt2 < 'S' || charAt2 > 'W') {
                                    return null;
                                }
                                return "ES";
                            case 'W':
                                return "DE";
                            case 'X':
                                if (charAt2 == '0') {
                                    return "RU";
                                }
                                if (charAt2 < '3' || charAt2 > '9') {
                                    return null;
                                }
                                return "RU";
                            default:
                                return null;
                        }
                }
        }
    }

    /* renamed from: c */
    private static int m8300c(char c2) {
        if (c2 >= 'E' && c2 <= 'H') {
            return (c2 - 'E') + 1984;
        }
        if (c2 >= 'J' && c2 <= 'N') {
            return (c2 - 'J') + 1988;
        }
        if (c2 == 'P') {
            return 1993;
        }
        if (c2 >= 'R' && c2 <= 'T') {
            return (c2 - 'R') + 1994;
        }
        if (c2 >= 'V' && c2 <= 'Y') {
            return (c2 - 'V') + 1997;
        }
        if (c2 >= '1' && c2 <= '9') {
            return (c2 - '1') + MsgItem.SCRIPT_NEED_START;
        }
        if (c2 < 'A' || c2 > 'D') {
            throw new IllegalArgumentException();
        }
        return (c2 - 'A') + 2010;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    private static C1818ah m8301c(C2021r c2021r) {
        char c2;
        String str;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (c2021r.f7898e != EnumC1796a.CODE_39) {
            return null;
        }
        String trim = f7155a.matcher(c2021r.f7894a).replaceAll("").trim();
        if (!f7156b.matcher(trim).matches()) {
            return null;
        }
        int i7 = 0;
        int i8 = 0;
        while (i7 < trim.length()) {
            try {
                int i9 = i7 + 1;
                if (i9 > 0 && i9 <= 7) {
                    i4 = 9 - i9;
                } else if (i9 == 8) {
                    i4 = 10;
                } else if (i9 == 9) {
                    i4 = 0;
                } else {
                    if (i9 < 10 || i9 > 17) {
                        throw new IllegalArgumentException();
                    }
                    i4 = 19 - i9;
                }
                char charAt = trim.charAt(i7);
                if (charAt >= 'A' && charAt <= 'I') {
                    i6 = charAt - 'A';
                } else if (charAt < 'J' || charAt > 'R') {
                    if (charAt >= 'S' && charAt <= 'Z') {
                        i5 = (charAt - 'S') + 2;
                    } else {
                        if (charAt < '0' || charAt > '9') {
                            throw new IllegalArgumentException();
                        }
                        i5 = charAt - '0';
                    }
                    i8 += i4 * i5;
                    i7 = i9;
                } else {
                    i6 = charAt - 'J';
                }
                i5 = i6 + 1;
                i8 += i4 * i5;
                i7 = i9;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        char charAt2 = trim.charAt(8);
        int i10 = i8 % 11;
        try {
            if (i10 < 10) {
                c2 = (char) (i10 + 48);
            } else {
                if (i10 != 10) {
                    throw new IllegalArgumentException();
                }
                c2 = 'X';
            }
            if (!(charAt2 == c2)) {
                return null;
            }
            String substring = trim.substring(0, 3);
            String substring2 = trim.substring(3, 9);
            String substring3 = trim.substring(9, 17);
            char charAt3 = substring.charAt(0);
            char charAt4 = substring.charAt(1);
            if (charAt3 == '9') {
                if ((charAt4 >= 'A' && charAt4 <= 'E') || (charAt4 >= '3' && charAt4 <= '9')) {
                    str = "BR";
                }
                str = null;
            } else if (charAt3 != 'S') {
                if (charAt3 != 'Z') {
                    switch (charAt3) {
                        case '1':
                        case '4':
                        case '5':
                            str = "US";
                            break;
                        case '2':
                            str = "CA";
                            break;
                        case '3':
                            if (charAt4 >= 'A' && charAt4 <= 'W') {
                                str = "MX";
                                break;
                            }
                            str = null;
                            break;
                        default:
                            switch (charAt3) {
                                case 'J':
                                    if (charAt4 >= 'A' && charAt4 <= 'T') {
                                        str = "JP";
                                        break;
                                    }
                                    str = null;
                                    break;
                                case 'K':
                                    if (charAt4 >= 'L' && charAt4 <= 'R') {
                                        str = "KO";
                                        break;
                                    }
                                    str = null;
                                    break;
                                case 'L':
                                    str = "CN";
                                    break;
                                case 'M':
                                    if (charAt4 >= 'A' && charAt4 <= 'E') {
                                        str = "IN";
                                        break;
                                    }
                                    str = null;
                                    break;
                                default:
                                    switch (charAt3) {
                                        case 'V':
                                            if (charAt4 >= 'F' && charAt4 <= 'R') {
                                                str = "FR";
                                                break;
                                            } else {
                                                if (charAt4 >= 'S' && charAt4 <= 'W') {
                                                    str = "ES";
                                                    break;
                                                }
                                                str = null;
                                                break;
                                            }
                                            break;
                                        case 'W':
                                            str = "DE";
                                            break;
                                        case 'X':
                                            if (charAt4 == '0' || (charAt4 >= '3' && charAt4 <= '9')) {
                                                str = "RU";
                                                break;
                                            }
                                            str = null;
                                            break;
                                        default:
                                            str = null;
                                            break;
                                    }
                            }
                    }
                } else {
                    if (charAt4 >= 'A' && charAt4 <= 'R') {
                        str = "IT";
                    }
                    str = null;
                }
            } else if (charAt4 < 'A' || charAt4 > 'M') {
                if (charAt4 >= 'N' && charAt4 <= 'T') {
                    str = "DE";
                }
                str = null;
            } else {
                str = "UK";
            }
            String substring4 = trim.substring(3, 8);
            char charAt5 = trim.charAt(9);
            if (charAt5 >= 'E' && charAt5 <= 'H') {
                i = (charAt5 - 'E') + 1984;
            } else if (charAt5 >= 'J' && charAt5 <= 'N') {
                i = (charAt5 - 'J') + 1988;
            } else {
                if (charAt5 == 'P') {
                    i2 = 10;
                    i3 = 1993;
                    return new C1818ah(trim, substring, substring2, substring3, str, substring4, i3, trim.charAt(i2), trim.substring(11));
                }
                if (charAt5 >= 'R' && charAt5 <= 'T') {
                    i = (charAt5 - 'R') + 1994;
                } else if (charAt5 >= 'V' && charAt5 <= 'Y') {
                    i = (charAt5 - 'V') + 1997;
                } else if (charAt5 >= '1' && charAt5 <= '9') {
                    i = (charAt5 - '1') + MsgItem.SCRIPT_NEED_START;
                } else {
                    if (charAt5 < 'A' || charAt5 > 'D') {
                        throw new IllegalArgumentException();
                    }
                    i = (charAt5 - 'A') + 2010;
                }
            }
            i3 = i;
            i2 = 10;
            return new C1818ah(trim, substring, substring2, substring3, str, substring4, i3, trim.charAt(i2), trim.substring(11));
        } catch (IllegalArgumentException unused2) {
            return null;
        }
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        return m8301c(c2021r);
    }
}
