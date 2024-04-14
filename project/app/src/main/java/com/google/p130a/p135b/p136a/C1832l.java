package com.google.p130a.p135b.p136a;

import com.google.p130a.C2021r;
import com.google.p130a.EnumC1796a;
import java.util.HashMap;

/* renamed from: com.google.a.b.a.l */
/* loaded from: classes.dex */
public final class C1832l extends AbstractC1841u {
    /* renamed from: a */
    private static String m8379a(int i, String str) {
        char charAt;
        if (str.charAt(i) != '(') {
            return null;
        }
        String substring = str.substring(i + 1);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < substring.length() && (charAt = substring.charAt(i2)) != ')'; i2++) {
            if (charAt < '0' || charAt > '9') {
                return null;
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    /* renamed from: b */
    private static String m8380b(int i, String str) {
        StringBuilder sb = new StringBuilder();
        String substring = str.substring(i);
        for (int i2 = 0; i2 < substring.length(); i2++) {
            char charAt = substring.charAt(i2);
            if (charAt != '(') {
                sb.append(charAt);
            } else {
                if (m8379a(i2, substring) != null) {
                    break;
                }
                sb.append('(');
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0203. Please report as an issue. */
    /* renamed from: c */
    private static C1831k m8381c(C2021r c2021r) {
        char c2;
        C1831k c1831k;
        C1831k c1831k2;
        C1831k c1831k3 = null;
        if (c2021r.f7898e != EnumC1796a.RSS_EXPANDED) {
            return null;
        }
        String b2 = m8405b(c2021r);
        HashMap hashMap = new HashMap();
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        String str13 = null;
        int i = 0;
        while (i < b2.length()) {
            String m8379a = m8379a(i, b2);
            if (m8379a == null) {
                return c1831k3;
            }
            int length = i + m8379a.length() + 2;
            String m8380b = m8380b(length, b2);
            int length2 = length + m8380b.length();
            int hashCode = m8379a.hashCode();
            String str14 = str10;
            if (hashCode == 1570) {
                if (m8379a.equals("13")) {
                    c2 = 4;
                }
                c2 = 65535;
            } else if (hashCode == 1572) {
                if (m8379a.equals("15")) {
                    c2 = 5;
                }
                c2 = 65535;
            } else if (hashCode != 1574) {
                switch (hashCode) {
                    case 1536:
                        if (m8379a.equals("00")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case 1537:
                        if (m8379a.equals("01")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    default:
                        switch (hashCode) {
                            case 1567:
                                if (m8379a.equals("10")) {
                                    c2 = 2;
                                    break;
                                }
                                break;
                            case 1568:
                                if (m8379a.equals("11")) {
                                    c2 = 3;
                                    break;
                                }
                                break;
                            default:
                                switch (hashCode) {
                                    case 1567966:
                                        if (m8379a.equals("3100")) {
                                            c2 = 7;
                                            break;
                                        }
                                        break;
                                    case 1567967:
                                        if (m8379a.equals("3101")) {
                                            c2 = '\b';
                                            break;
                                        }
                                        break;
                                    case 1567968:
                                        if (m8379a.equals("3102")) {
                                            c2 = '\t';
                                            break;
                                        }
                                        break;
                                    case 1567969:
                                        if (m8379a.equals("3103")) {
                                            c2 = '\n';
                                            break;
                                        }
                                        break;
                                    case 1567970:
                                        if (m8379a.equals("3104")) {
                                            c2 = 11;
                                            break;
                                        }
                                        break;
                                    case 1567971:
                                        if (m8379a.equals("3105")) {
                                            c2 = '\f';
                                            break;
                                        }
                                        break;
                                    case 1567972:
                                        if (m8379a.equals("3106")) {
                                            c2 = '\r';
                                            break;
                                        }
                                        break;
                                    case 1567973:
                                        if (m8379a.equals("3107")) {
                                            c2 = 14;
                                            break;
                                        }
                                        break;
                                    case 1567974:
                                        if (m8379a.equals("3108")) {
                                            c2 = 15;
                                            break;
                                        }
                                        break;
                                    case 1567975:
                                        if (m8379a.equals("3109")) {
                                            c2 = 16;
                                            break;
                                        }
                                        break;
                                    default:
                                        switch (hashCode) {
                                            case 1568927:
                                                if (m8379a.equals("3200")) {
                                                    c2 = 17;
                                                    break;
                                                }
                                                break;
                                            case 1568928:
                                                if (m8379a.equals("3201")) {
                                                    c2 = 18;
                                                    break;
                                                }
                                                break;
                                            case 1568929:
                                                if (m8379a.equals("3202")) {
                                                    c2 = 19;
                                                    break;
                                                }
                                                break;
                                            case 1568930:
                                                if (m8379a.equals("3203")) {
                                                    c2 = 20;
                                                    break;
                                                }
                                                break;
                                            case 1568931:
                                                if (m8379a.equals("3204")) {
                                                    c2 = 21;
                                                    break;
                                                }
                                                break;
                                            case 1568932:
                                                if (m8379a.equals("3205")) {
                                                    c2 = 22;
                                                    break;
                                                }
                                                break;
                                            case 1568933:
                                                if (m8379a.equals("3206")) {
                                                    c2 = 23;
                                                    break;
                                                }
                                                break;
                                            case 1568934:
                                                if (m8379a.equals("3207")) {
                                                    c2 = 24;
                                                    break;
                                                }
                                                break;
                                            case 1568935:
                                                if (m8379a.equals("3208")) {
                                                    c2 = 25;
                                                    break;
                                                }
                                                break;
                                            case 1568936:
                                                if (m8379a.equals("3209")) {
                                                    c2 = 26;
                                                    break;
                                                }
                                                break;
                                            default:
                                                switch (hashCode) {
                                                    case 1575716:
                                                        if (m8379a.equals("3920")) {
                                                            c2 = 27;
                                                            break;
                                                        }
                                                        break;
                                                    case 1575717:
                                                        if (m8379a.equals("3921")) {
                                                            c2 = 28;
                                                            break;
                                                        }
                                                        break;
                                                    case 1575718:
                                                        if (m8379a.equals("3922")) {
                                                            c2 = 29;
                                                            break;
                                                        }
                                                        break;
                                                    case 1575719:
                                                        if (m8379a.equals("3923")) {
                                                            c2 = 30;
                                                            break;
                                                        }
                                                        break;
                                                    default:
                                                        switch (hashCode) {
                                                            case 1575747:
                                                                if (m8379a.equals("3930")) {
                                                                    c2 = 31;
                                                                    break;
                                                                }
                                                                break;
                                                            case 1575748:
                                                                if (m8379a.equals("3931")) {
                                                                    c2 = ' ';
                                                                    break;
                                                                }
                                                                break;
                                                            case 1575749:
                                                                if (m8379a.equals("3932")) {
                                                                    c2 = '!';
                                                                    break;
                                                                }
                                                                break;
                                                            case 1575750:
                                                                if (m8379a.equals("3933")) {
                                                                    c2 = '\"';
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                }
                                        }
                                }
                        }
                }
                c2 = 65535;
            } else {
                if (m8379a.equals("17")) {
                    c2 = 6;
                }
                c2 = 65535;
            }
            switch (c2) {
                case 0:
                    str2 = m8380b;
                    i = length2;
                    str10 = str14;
                    c1831k3 = null;
                case 1:
                    str = m8380b;
                    i = length2;
                    str10 = str14;
                    c1831k3 = null;
                case 2:
                    str3 = m8380b;
                    i = length2;
                    str10 = str14;
                    c1831k3 = null;
                case 3:
                    str4 = m8380b;
                    i = length2;
                    str10 = str14;
                    c1831k3 = null;
                case 4:
                    str5 = m8380b;
                    i = length2;
                    str10 = str14;
                    c1831k3 = null;
                case 5:
                    str6 = m8380b;
                    i = length2;
                    str10 = str14;
                    c1831k3 = null;
                case 6:
                    str7 = m8380b;
                    i = length2;
                    str10 = str14;
                    c1831k3 = null;
                case 7:
                case '\b':
                case '\t':
                case '\n':
                case 11:
                case '\f':
                case '\r':
                case 14:
                case 15:
                case 16:
                    c1831k2 = null;
                    str9 = C1831k.f7202a;
                    str10 = m8379a.substring(3);
                    str8 = m8380b;
                    c1831k3 = c1831k2;
                    i = length2;
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                    c1831k2 = null;
                    str9 = C1831k.f7203b;
                    str10 = m8379a.substring(3);
                    str8 = m8380b;
                    c1831k3 = c1831k2;
                    i = length2;
                case 27:
                case 28:
                case 29:
                case 30:
                    c1831k = null;
                    str12 = m8379a.substring(3);
                    str11 = m8380b;
                    c1831k3 = c1831k;
                    i = length2;
                    str10 = str14;
                case 31:
                case ' ':
                case '!':
                case '\"':
                    if (m8380b.length() < 4) {
                        return null;
                    }
                    c1831k = null;
                    str11 = m8380b.substring(3);
                    str13 = m8380b.substring(0, 3);
                    str12 = m8379a.substring(3);
                    c1831k3 = c1831k;
                    i = length2;
                    str10 = str14;
                default:
                    c1831k = null;
                    hashMap.put(m8379a, m8380b);
                    c1831k3 = c1831k;
                    i = length2;
                    str10 = str14;
            }
        }
        return new C1831k(b2, str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, hashMap);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0203. Please report as an issue. */
    @Override // com.google.p130a.p135b.p136a.AbstractC1841u
    /* renamed from: a */
    public final /* synthetic */ AbstractC1837q mo8259a(C2021r c2021r) {
        char c2;
        AbstractC1837q abstractC1837q;
        AbstractC1837q abstractC1837q2;
        AbstractC1837q abstractC1837q3 = null;
        if (c2021r.f7898e != EnumC1796a.RSS_EXPANDED) {
            return null;
        }
        String b2 = m8405b(c2021r);
        HashMap hashMap = new HashMap();
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        String str13 = null;
        int i = 0;
        while (i < b2.length()) {
            String m8379a = m8379a(i, b2);
            if (m8379a == null) {
                return abstractC1837q3;
            }
            int length = i + m8379a.length() + 2;
            String m8380b = m8380b(length, b2);
            int length2 = length + m8380b.length();
            int hashCode = m8379a.hashCode();
            String str14 = str10;
            if (hashCode == 1570) {
                if (m8379a.equals("13")) {
                    c2 = 4;
                }
                c2 = 65535;
            } else if (hashCode == 1572) {
                if (m8379a.equals("15")) {
                    c2 = 5;
                }
                c2 = 65535;
            } else if (hashCode != 1574) {
                switch (hashCode) {
                    case 1536:
                        if (m8379a.equals("00")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case 1537:
                        if (m8379a.equals("01")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    default:
                        switch (hashCode) {
                            case 1567:
                                if (m8379a.equals("10")) {
                                    c2 = 2;
                                    break;
                                }
                                break;
                            case 1568:
                                if (m8379a.equals("11")) {
                                    c2 = 3;
                                    break;
                                }
                                break;
                            default:
                                switch (hashCode) {
                                    case 1567966:
                                        if (m8379a.equals("3100")) {
                                            c2 = 7;
                                            break;
                                        }
                                        break;
                                    case 1567967:
                                        if (m8379a.equals("3101")) {
                                            c2 = '\b';
                                            break;
                                        }
                                        break;
                                    case 1567968:
                                        if (m8379a.equals("3102")) {
                                            c2 = '\t';
                                            break;
                                        }
                                        break;
                                    case 1567969:
                                        if (m8379a.equals("3103")) {
                                            c2 = '\n';
                                            break;
                                        }
                                        break;
                                    case 1567970:
                                        if (m8379a.equals("3104")) {
                                            c2 = 11;
                                            break;
                                        }
                                        break;
                                    case 1567971:
                                        if (m8379a.equals("3105")) {
                                            c2 = '\f';
                                            break;
                                        }
                                        break;
                                    case 1567972:
                                        if (m8379a.equals("3106")) {
                                            c2 = '\r';
                                            break;
                                        }
                                        break;
                                    case 1567973:
                                        if (m8379a.equals("3107")) {
                                            c2 = 14;
                                            break;
                                        }
                                        break;
                                    case 1567974:
                                        if (m8379a.equals("3108")) {
                                            c2 = 15;
                                            break;
                                        }
                                        break;
                                    case 1567975:
                                        if (m8379a.equals("3109")) {
                                            c2 = 16;
                                            break;
                                        }
                                        break;
                                    default:
                                        switch (hashCode) {
                                            case 1568927:
                                                if (m8379a.equals("3200")) {
                                                    c2 = 17;
                                                    break;
                                                }
                                                break;
                                            case 1568928:
                                                if (m8379a.equals("3201")) {
                                                    c2 = 18;
                                                    break;
                                                }
                                                break;
                                            case 1568929:
                                                if (m8379a.equals("3202")) {
                                                    c2 = 19;
                                                    break;
                                                }
                                                break;
                                            case 1568930:
                                                if (m8379a.equals("3203")) {
                                                    c2 = 20;
                                                    break;
                                                }
                                                break;
                                            case 1568931:
                                                if (m8379a.equals("3204")) {
                                                    c2 = 21;
                                                    break;
                                                }
                                                break;
                                            case 1568932:
                                                if (m8379a.equals("3205")) {
                                                    c2 = 22;
                                                    break;
                                                }
                                                break;
                                            case 1568933:
                                                if (m8379a.equals("3206")) {
                                                    c2 = 23;
                                                    break;
                                                }
                                                break;
                                            case 1568934:
                                                if (m8379a.equals("3207")) {
                                                    c2 = 24;
                                                    break;
                                                }
                                                break;
                                            case 1568935:
                                                if (m8379a.equals("3208")) {
                                                    c2 = 25;
                                                    break;
                                                }
                                                break;
                                            case 1568936:
                                                if (m8379a.equals("3209")) {
                                                    c2 = 26;
                                                    break;
                                                }
                                                break;
                                            default:
                                                switch (hashCode) {
                                                    case 1575716:
                                                        if (m8379a.equals("3920")) {
                                                            c2 = 27;
                                                            break;
                                                        }
                                                        break;
                                                    case 1575717:
                                                        if (m8379a.equals("3921")) {
                                                            c2 = 28;
                                                            break;
                                                        }
                                                        break;
                                                    case 1575718:
                                                        if (m8379a.equals("3922")) {
                                                            c2 = 29;
                                                            break;
                                                        }
                                                        break;
                                                    case 1575719:
                                                        if (m8379a.equals("3923")) {
                                                            c2 = 30;
                                                            break;
                                                        }
                                                        break;
                                                    default:
                                                        switch (hashCode) {
                                                            case 1575747:
                                                                if (m8379a.equals("3930")) {
                                                                    c2 = 31;
                                                                    break;
                                                                }
                                                                break;
                                                            case 1575748:
                                                                if (m8379a.equals("3931")) {
                                                                    c2 = ' ';
                                                                    break;
                                                                }
                                                                break;
                                                            case 1575749:
                                                                if (m8379a.equals("3932")) {
                                                                    c2 = '!';
                                                                    break;
                                                                }
                                                                break;
                                                            case 1575750:
                                                                if (m8379a.equals("3933")) {
                                                                    c2 = '\"';
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                }
                                        }
                                }
                        }
                }
                c2 = 65535;
            } else {
                if (m8379a.equals("17")) {
                    c2 = 6;
                }
                c2 = 65535;
            }
            switch (c2) {
                case 0:
                    str2 = m8380b;
                    i = length2;
                    str10 = str14;
                    abstractC1837q3 = null;
                case 1:
                    str = m8380b;
                    i = length2;
                    str10 = str14;
                    abstractC1837q3 = null;
                case 2:
                    str3 = m8380b;
                    i = length2;
                    str10 = str14;
                    abstractC1837q3 = null;
                case 3:
                    str4 = m8380b;
                    i = length2;
                    str10 = str14;
                    abstractC1837q3 = null;
                case 4:
                    str5 = m8380b;
                    i = length2;
                    str10 = str14;
                    abstractC1837q3 = null;
                case 5:
                    str6 = m8380b;
                    i = length2;
                    str10 = str14;
                    abstractC1837q3 = null;
                case 6:
                    str7 = m8380b;
                    i = length2;
                    str10 = str14;
                    abstractC1837q3 = null;
                case 7:
                case '\b':
                case '\t':
                case '\n':
                case 11:
                case '\f':
                case '\r':
                case 14:
                case 15:
                case 16:
                    abstractC1837q2 = null;
                    str9 = C1831k.f7202a;
                    str10 = m8379a.substring(3);
                    str8 = m8380b;
                    abstractC1837q3 = abstractC1837q2;
                    i = length2;
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                    abstractC1837q2 = null;
                    str9 = C1831k.f7203b;
                    str10 = m8379a.substring(3);
                    str8 = m8380b;
                    abstractC1837q3 = abstractC1837q2;
                    i = length2;
                case 27:
                case 28:
                case 29:
                case 30:
                    abstractC1837q = null;
                    str12 = m8379a.substring(3);
                    str11 = m8380b;
                    abstractC1837q3 = abstractC1837q;
                    i = length2;
                    str10 = str14;
                case 31:
                case ' ':
                case '!':
                case '\"':
                    if (m8380b.length() < 4) {
                        return null;
                    }
                    abstractC1837q = null;
                    str11 = m8380b.substring(3);
                    str13 = m8380b.substring(0, 3);
                    str12 = m8379a.substring(3);
                    abstractC1837q3 = abstractC1837q;
                    i = length2;
                    str10 = str14;
                default:
                    abstractC1837q = null;
                    hashMap.put(m8379a, m8380b);
                    abstractC1837q3 = abstractC1837q;
                    i = length2;
                    str10 = str14;
            }
        }
        return new C1831k(b2, str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, hashMap);
    }
}
