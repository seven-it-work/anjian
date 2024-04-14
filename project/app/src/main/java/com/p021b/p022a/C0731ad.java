package com.p021b.p022a;

import com.p021b.p022a.p023a.C0650c;
import com.p021b.p032b.C0783f;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.b.a.ad */
/* loaded from: classes.dex */
public final class C0731ad {

    /* renamed from: a */
    String f1791a;

    /* renamed from: d */
    String f1794d;

    /* renamed from: g */
    List<String> f1797g;

    /* renamed from: h */
    String f1798h;

    /* renamed from: b */
    String f1792b = "";

    /* renamed from: c */
    String f1793c = "";

    /* renamed from: e */
    int f1795e = -1;

    /* renamed from: f */
    final List<String> f1796f = new ArrayList();

    public C0731ad() {
        this.f1796f.add("");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e4 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x002c -> B:9:0x002e). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m1853a(java.lang.String r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p021b.p022a.C0731ad.m1853a(java.lang.String, int, int):void");
    }

    /* renamed from: b */
    private static int m1854b(String str, int i, int i2) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (charAt == ':') {
                return i;
            }
            if (charAt != '[') {
                i++;
            }
            do {
                i++;
                if (i < i2) {
                }
                i++;
            } while (str.charAt(i) != ']');
            i++;
        }
        return i2;
    }

    /* renamed from: c */
    private static String m1855c(String str, int i, int i2) {
        int i3 = 0;
        String m1831a = C0730ac.m1831a(str, i, i2, false);
        if (!m1831a.contains(":")) {
            return C0650c.m1605a(m1831a);
        }
        InetAddress m1856d = (m1831a.startsWith("[") && m1831a.endsWith("]")) ? m1856d(m1831a, 1, m1831a.length() - 1) : m1856d(m1831a, 0, m1831a.length());
        if (m1856d == null) {
            return null;
        }
        byte[] address = m1856d.getAddress();
        if (address.length != 16) {
            throw new AssertionError();
        }
        int i4 = 0;
        int i5 = 0;
        int i6 = -1;
        while (i4 < address.length) {
            int i7 = i4;
            while (i7 < 16 && address[i7] == 0 && address[i7 + 1] == 0) {
                i7 += 2;
            }
            int i8 = i7 - i4;
            if (i8 > i5) {
                i6 = i4;
                i5 = i8;
            }
            i4 = i7 + 2;
        }
        C0783f c0783f = new C0783f();
        while (i3 < address.length) {
            if (i3 == i6) {
                c0783f.mo2058h(58);
                i3 += i5;
                if (i3 == 16) {
                    c0783f.mo2058h(58);
                }
            } else {
                if (i3 > 0) {
                    c0783f.mo2058h(58);
                }
                c0783f.mo2061i(((address[i3] & 255) << 8) | (address[i3 + 1] & 255));
                i3 += 2;
            }
        }
        return c0783f.m2065l();
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0097, code lost:
    
        r5 = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00a6  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.net.InetAddress m1856d(java.lang.String r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p021b.p022a.C0731ad.m1856d(java.lang.String, int, int):java.net.InetAddress");
    }

    /* renamed from: e */
    private static int m1857e(String str, int i, int i2) {
        int parseInt;
        try {
            parseInt = Integer.parseInt(C0730ac.m1830a(str, i, i2, "", false, false, false, true));
        } catch (NumberFormatException unused) {
        }
        if (parseInt <= 0 || parseInt > 65535) {
            return -1;
        }
        return parseInt;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m1858a() {
        return this.f1795e != -1 ? this.f1795e : C0730ac.m1829a(this.f1791a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0058, code lost:
    
        if (r7 == ':') goto L31;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int m1859a(com.p021b.p022a.C0730ac r23, java.lang.String r24) {
        /*
            Method dump skipped, instructions count: 538
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p021b.p022a.C0731ad.m1859a(com.b.a.ac, java.lang.String):int");
    }

    /* renamed from: a */
    public final C0731ad m1860a(String str) {
        if (str == null) {
            throw new NullPointerException("host == null");
        }
        String m1855c = m1855c(str, 0, str.length());
        if (m1855c != null) {
            this.f1794d = m1855c;
            return this;
        }
        throw new IllegalArgumentException("unexpected host: " + str);
    }

    /* renamed from: b */
    public final C0730ac m1861b() {
        if (this.f1791a == null) {
            throw new IllegalStateException("scheme == null");
        }
        if (this.f1794d == null) {
            throw new IllegalStateException("host == null");
        }
        return new C0730ac(this);
    }

    /* renamed from: b */
    public final C0731ad m1862b(String str) {
        this.f1797g = str != null ? C0730ac.m1837b(C0730ac.m1832a(str, " \"'<>#", true, false, true, true)) : null;
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f1791a);
        sb.append("://");
        if (!this.f1792b.isEmpty() || !this.f1793c.isEmpty()) {
            sb.append(this.f1792b);
            if (!this.f1793c.isEmpty()) {
                sb.append(':');
                sb.append(this.f1793c);
            }
            sb.append('@');
        }
        if (this.f1794d.indexOf(58) != -1) {
            sb.append('[');
            sb.append(this.f1794d);
            sb.append(']');
        } else {
            sb.append(this.f1794d);
        }
        int m1858a = m1858a();
        if (m1858a != C0730ac.m1829a(this.f1791a)) {
            sb.append(':');
            sb.append(m1858a);
        }
        C0730ac.m1835a(sb, this.f1796f);
        if (this.f1797g != null) {
            sb.append('?');
            C0730ac.m1838b(sb, this.f1797g);
        }
        if (this.f1798h != null) {
            sb.append('#');
            sb.append(this.f1798h);
        }
        return sb.toString();
    }
}
