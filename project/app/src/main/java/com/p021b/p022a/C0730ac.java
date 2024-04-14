package com.p021b.p022a;

import com.p021b.p022a.p023a.C0650c;
import com.p021b.p032b.C0783f;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.commons.io.IOUtils;
import org.slf4j.Marker;

/* renamed from: com.b.a.ac */
/* loaded from: classes.dex */
public final class C0730ac {

    /* renamed from: d */
    private static final char[] f1781d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    final String f1782a;

    /* renamed from: b */
    final String f1783b;

    /* renamed from: c */
    final int f1784c;

    /* renamed from: e */
    private final String f1785e;

    /* renamed from: f */
    private final String f1786f;

    /* renamed from: g */
    private final List<String> f1787g;

    /* renamed from: h */
    private final List<String> f1788h;

    /* renamed from: i */
    private final String f1789i;

    /* renamed from: j */
    private final String f1790j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0730ac(C0731ad c0731ad) {
        this.f1782a = c0731ad.f1791a;
        this.f1785e = m1833a(c0731ad.f1792b, false);
        this.f1786f = m1833a(c0731ad.f1793c, false);
        this.f1783b = c0731ad.f1794d;
        this.f1784c = c0731ad.m1858a();
        this.f1787g = m1834a(c0731ad.f1796f, false);
        this.f1788h = c0731ad.f1797g != null ? m1834a(c0731ad.f1797g, true) : null;
        this.f1789i = c0731ad.f1798h != null ? m1833a(c0731ad.f1798h, false) : null;
        this.f1790j = c0731ad.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m1828a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = 'a';
        if (c2 < 'a' || c2 > 'f') {
            c3 = 'A';
            if (c2 < 'A' || c2 > 'F') {
                return -1;
            }
        }
        return (c2 - c3) + 10;
    }

    /* renamed from: a */
    public static int m1829a(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m1830a(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        int i3 = i;
        while (i3 < i2) {
            int codePointAt = str.codePointAt(i3);
            int i4 = 43;
            if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || ((codePointAt == 37 && (!z || (z2 && !m1836a(str, i3, i2)))) || (codePointAt == 43 && z3)))) {
                C0783f c0783f = new C0783f();
                c0783f.m2030a(str, i, i3);
                C0783f c0783f2 = null;
                while (i3 < i2) {
                    int codePointAt2 = str.codePointAt(i3);
                    if (!z || (codePointAt2 != 9 && codePointAt2 != 10 && codePointAt2 != 12 && codePointAt2 != 13)) {
                        if (codePointAt2 == i4 && z3) {
                            c0783f.mo2038b(z ? Marker.ANY_NON_NULL_MARKER : "%2B");
                        } else {
                            if (codePointAt2 >= 32 && codePointAt2 != 127 && (codePointAt2 < 128 || !z4)) {
                                if (str2.indexOf(codePointAt2) == -1 && (codePointAt2 != 37 || (z && (!z2 || m1836a(str, i3, i2))))) {
                                    c0783f.m2026a(codePointAt2);
                                    i3 += Character.charCount(codePointAt2);
                                    i4 = 43;
                                }
                            }
                            if (c0783f2 == null) {
                                c0783f2 = new C0783f();
                            }
                            c0783f2.m2026a(codePointAt2);
                            while (!c0783f2.mo2047d()) {
                                int mo2048e = c0783f2.mo2048e() & 255;
                                c0783f.mo2058h(37);
                                c0783f.mo2058h((int) f1781d[(mo2048e >> 4) & 15]);
                                c0783f.mo2058h((int) f1781d[mo2048e & 15]);
                            }
                            i3 += Character.charCount(codePointAt2);
                            i4 = 43;
                        }
                    }
                    i3 += Character.charCount(codePointAt2);
                    i4 = 43;
                }
                return c0783f.m2065l();
            }
            i3 += Character.charCount(codePointAt);
        }
        return str.substring(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m1831a(String str, int i, int i2, boolean z) {
        int i3;
        int i4 = i;
        while (i4 < i2) {
            char charAt = str.charAt(i4);
            if (charAt == '%' || (charAt == '+' && z)) {
                C0783f c0783f = new C0783f();
                c0783f.m2030a(str, i, i4);
                while (i4 < i2) {
                    int codePointAt = str.codePointAt(i4);
                    if (codePointAt != 37 || (i3 = i4 + 2) >= i2) {
                        if (codePointAt == 43 && z) {
                            c0783f.mo2058h(32);
                        }
                        c0783f.m2026a(codePointAt);
                    } else {
                        int m1828a = m1828a(str.charAt(i4 + 1));
                        int m1828a2 = m1828a(str.charAt(i3));
                        if (m1828a != -1 && m1828a2 != -1) {
                            c0783f.mo2058h((m1828a << 4) + m1828a2);
                            i4 = i3;
                        }
                        c0783f.m2026a(codePointAt);
                    }
                    i4 += Character.charCount(codePointAt);
                }
                return c0783f.m2065l();
            }
            i4++;
        }
        return str.substring(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m1832a(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return m1830a(str, 0, str.length(), str2, z, z2, z3, z4);
    }

    /* renamed from: a */
    private static String m1833a(String str, boolean z) {
        return m1831a(str, 0, str.length(), z);
    }

    /* renamed from: a */
    private static List<String> m1834a(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = list.get(i);
            arrayList.add(str != null ? m1833a(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1835a(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append(IOUtils.DIR_SEPARATOR_UNIX);
            sb.append(list.get(i));
        }
    }

    /* renamed from: a */
    private static boolean m1836a(String str, int i, int i2) {
        int i3 = i + 2;
        return i3 < i2 && str.charAt(i) == '%' && m1828a(str.charAt(i + 1)) != -1 && m1828a(str.charAt(i3)) != -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static List<String> m1837b(String str) {
        String str2;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int indexOf = str.indexOf(38, i);
            if (indexOf == -1) {
                indexOf = str.length();
            }
            int indexOf2 = str.indexOf(61, i);
            if (indexOf2 == -1 || indexOf2 > indexOf) {
                arrayList.add(str.substring(i, indexOf));
                str2 = null;
            } else {
                arrayList.add(str.substring(i, indexOf2));
                str2 = str.substring(indexOf2 + 1, indexOf);
            }
            arrayList.add(str2);
            i = indexOf + 1;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m1838b(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            String str = list.get(i);
            String str2 = list.get(i + 1);
            if (i > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    /* renamed from: e */
    public static C0730ac m1839e(String str) {
        C0731ad c0731ad = new C0731ad();
        if (c0731ad.m1859a(null, str) == C0732ae.f1799a) {
            return c0731ad.m1861b();
        }
        return null;
    }

    /* renamed from: a */
    public final URI m1840a() {
        C0731ad c0731ad = new C0731ad();
        c0731ad.f1791a = this.f1782a;
        c0731ad.f1792b = m1845d();
        c0731ad.f1793c = m1846e();
        c0731ad.f1794d = this.f1783b;
        c0731ad.f1795e = this.f1784c != m1829a(this.f1782a) ? this.f1784c : -1;
        c0731ad.f1796f.clear();
        c0731ad.f1796f.addAll(m1850i());
        c0731ad.m1862b(m1851j());
        c0731ad.f1798h = this.f1789i == null ? null : this.f1790j.substring(this.f1790j.indexOf(35) + 1);
        int size = c0731ad.f1796f.size();
        for (int i = 0; i < size; i++) {
            c0731ad.f1796f.set(i, m1832a(c0731ad.f1796f.get(i), "[]", true, true, false, true));
        }
        if (c0731ad.f1797g != null) {
            int size2 = c0731ad.f1797g.size();
            for (int i2 = 0; i2 < size2; i2++) {
                String str = c0731ad.f1797g.get(i2);
                if (str != null) {
                    c0731ad.f1797g.set(i2, m1832a(str, "\\^`{|}", true, true, true, true));
                }
            }
        }
        if (c0731ad.f1798h != null) {
            c0731ad.f1798h = m1832a(c0731ad.f1798h, " \"#<>\\^`{|}", true, true, false, false);
        }
        String c0731ad2 = c0731ad.toString();
        try {
            return new URI(c0731ad2);
        } catch (URISyntaxException e) {
            try {
                return URI.create(c0731ad2.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception unused) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: b */
    public final String m1841b() {
        return this.f1782a;
    }

    /* renamed from: c */
    public final C0730ac m1842c(String str) {
        C0731ad m1844d = m1844d(str);
        if (m1844d != null) {
            return m1844d.m1861b();
        }
        return null;
    }

    /* renamed from: c */
    public final boolean m1843c() {
        return this.f1782a.equals("https");
    }

    /* renamed from: d */
    public final C0731ad m1844d(String str) {
        C0731ad c0731ad = new C0731ad();
        if (c0731ad.m1859a(this, str) == C0732ae.f1799a) {
            return c0731ad;
        }
        return null;
    }

    /* renamed from: d */
    public final String m1845d() {
        if (this.f1785e.isEmpty()) {
            return "";
        }
        int length = this.f1782a.length() + 3;
        return this.f1790j.substring(length, C0650c.m1602a(this.f1790j, length, this.f1790j.length(), ":@"));
    }

    /* renamed from: e */
    public final String m1846e() {
        if (this.f1786f.isEmpty()) {
            return "";
        }
        return this.f1790j.substring(this.f1790j.indexOf(58, this.f1782a.length() + 3) + 1, this.f1790j.indexOf(64));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C0730ac) && ((C0730ac) obj).f1790j.equals(this.f1790j);
    }

    /* renamed from: f */
    public final String m1847f() {
        return this.f1783b;
    }

    /* renamed from: g */
    public final int m1848g() {
        return this.f1784c;
    }

    /* renamed from: h */
    public final String m1849h() {
        int indexOf = this.f1790j.indexOf(47, this.f1782a.length() + 3);
        return this.f1790j.substring(indexOf, C0650c.m1602a(this.f1790j, indexOf, this.f1790j.length(), "?#"));
    }

    public final int hashCode() {
        return this.f1790j.hashCode();
    }

    /* renamed from: i */
    public final List<String> m1850i() {
        int indexOf = this.f1790j.indexOf(47, this.f1782a.length() + 3);
        int m1602a = C0650c.m1602a(this.f1790j, indexOf, this.f1790j.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < m1602a) {
            int i = indexOf + 1;
            int m1601a = C0650c.m1601a(this.f1790j, i, m1602a, (char) IOUtils.DIR_SEPARATOR_UNIX);
            arrayList.add(this.f1790j.substring(i, m1601a));
            indexOf = m1601a;
        }
        return arrayList;
    }

    /* renamed from: j */
    public final String m1851j() {
        if (this.f1788h == null) {
            return null;
        }
        int indexOf = this.f1790j.indexOf(63) + 1;
        return this.f1790j.substring(indexOf, C0650c.m1601a(this.f1790j, indexOf + 1, this.f1790j.length(), '#'));
    }

    /* renamed from: k */
    public final String m1852k() {
        if (this.f1788h == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        m1838b(sb, this.f1788h);
        return sb.toString();
    }

    public final String toString() {
        return this.f1790j;
    }
}
