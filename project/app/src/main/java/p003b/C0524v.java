package p003b;

import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
import org.apache.commons.io.IOUtils;
import org.slf4j.Marker;
import p003b.p004a.C0439c;
import p003b.p004a.p013i.C0482a;
import p017c.C0535c;

/* renamed from: b.v */
/* loaded from: classes.dex */
public final class C0524v {

    /* renamed from: a */
    static final String f958a = " \"':;<=>@[]^`{}|/\\?#";

    /* renamed from: b */
    static final String f959b = " \"':;<=>@[]^`{}|/\\?#";

    /* renamed from: c */
    static final String f960c = " \"<>^`{}|/\\?#";

    /* renamed from: d */
    static final String f961d = "[]";

    /* renamed from: e */
    static final String f962e = " \"'<>#";

    /* renamed from: f */
    static final String f963f = " \"'<>#&=";

    /* renamed from: g */
    static final String f964g = "\\^`{|}";

    /* renamed from: h */
    static final String f965h = " \"':;<=>@[]^`{}|/\\?#&!$(),~";

    /* renamed from: i */
    static final String f966i = "";

    /* renamed from: j */
    static final String f967j = " \"#<>\\^`{|}";

    /* renamed from: o */
    private static final char[] f968o = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: k */
    public final String f969k;

    /* renamed from: l */
    public final String f970l;

    /* renamed from: m */
    public final int f971m;

    /* renamed from: n */
    @Nullable
    public final List<String> f972n;

    /* renamed from: p */
    private final String f973p;

    /* renamed from: q */
    private final String f974q;

    /* renamed from: r */
    private final List<String> f975r;

    /* renamed from: s */
    @Nullable
    private final String f976s;

    /* renamed from: t */
    private final String f977t;

    /* renamed from: b.v$a */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a */
        @Nullable
        String f979a;

        /* renamed from: d */
        @Nullable
        String f982d;

        /* renamed from: g */
        @Nullable
        List<String> f985g;

        /* renamed from: h */
        @Nullable
        String f986h;

        /* renamed from: b */
        String f980b = "";

        /* renamed from: c */
        String f981c = "";

        /* renamed from: e */
        int f983e = -1;

        /* renamed from: f */
        final List<String> f984f = new ArrayList();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b.v$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public enum EnumC3064a {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public a() {
            this.f984f.add("");
        }

        /* renamed from: a */
        private a m912a(int i) {
            if (i > 0 && i <= 65535) {
                this.f983e = i;
                return this;
            }
            throw new IllegalArgumentException("unexpected port: " + i);
        }

        /* renamed from: a */
        private a m913a(int i, String str) {
            if (str == null) {
                throw new NullPointerException("pathSegment == null");
            }
            String m871a = C0524v.m871a(str, 0, str.length(), C0524v.f960c, false, false, false, true);
            if (!m950s(m871a) && !m951t(m871a)) {
                this.f984f.set(i, m871a);
                return this;
            }
            throw new IllegalArgumentException("unexpected path segment: " + str);
        }

        /* renamed from: a */
        private a m914a(String str, @Nullable String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (this.f985g == null) {
                this.f985g = new ArrayList();
            }
            this.f985g.add(C0524v.m873a(str, C0524v.f963f, false, false, true, true));
            this.f985g.add(str2 != null ? C0524v.m873a(str2, C0524v.f963f, false, false, true, true) : null);
            return this;
        }

        /* renamed from: a */
        private a m915a(String str, boolean z) {
            int i = 0;
            do {
                int m134a = C0439c.m134a(str, i, str.length(), "/\\");
                m918a(str, i, m134a, m134a < str.length(), z);
                i = m134a + 1;
            } while (i <= str.length());
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public static String m916a(String str, int i, int i2) {
            int i3 = 0;
            String m872a = C0524v.m872a(str, i, i2, false);
            if (!m872a.contains(":")) {
                return C0439c.m137a(m872a);
            }
            InetAddress m936f = (m872a.startsWith("[") && m872a.endsWith("]")) ? m936f(m872a, 1, m872a.length() - 1) : m936f(m872a, 0, m872a.length());
            if (m936f == null) {
                return null;
            }
            byte[] address = m936f.getAddress();
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
                if (i8 > i5 && i8 >= 4) {
                    i6 = i4;
                    i5 = i8;
                }
                i4 = i7 + 2;
            }
            C0535c c0535c = new C0535c();
            while (i3 < address.length) {
                if (i3 == i6) {
                    c0535c.mo1157l(58);
                    i3 += i5;
                    if (i3 == 16) {
                        c0535c.mo1157l(58);
                    }
                } else {
                    if (i3 > 0) {
                        c0535c.mo1157l(58);
                    }
                    c0535c.mo1160m(((address[i3] & 255) << 8) | (address[i3 + 1] & 255));
                    i3 += 2;
                }
            }
            return c0535c.mo1167q();
        }

        /* renamed from: a */
        private static String m917a(byte[] bArr) {
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = -1;
            while (i2 < bArr.length) {
                int i5 = i2;
                while (i5 < 16 && bArr[i5] == 0 && bArr[i5 + 1] == 0) {
                    i5 += 2;
                }
                int i6 = i5 - i2;
                if (i6 > i3 && i6 >= 4) {
                    i4 = i2;
                    i3 = i6;
                }
                i2 = i5 + 2;
            }
            C0535c c0535c = new C0535c();
            while (i < bArr.length) {
                if (i == i4) {
                    c0535c.mo1157l(58);
                    i += i3;
                    if (i == 16) {
                        c0535c.mo1157l(58);
                    }
                } else {
                    if (i > 0) {
                        c0535c.mo1157l(58);
                    }
                    c0535c.mo1160m(((bArr[i] & 255) << 8) | (bArr[i + 1] & 255));
                    i += 2;
                }
            }
            return c0535c.mo1167q();
        }

        /* renamed from: a */
        private void m918a(String str, int i, int i2, boolean z, boolean z2) {
            String m871a = C0524v.m871a(str, i, i2, C0524v.f960c, z2, false, false, true);
            if (m950s(m871a)) {
                return;
            }
            if (m951t(m871a)) {
                if (!this.f984f.remove(this.f984f.size() - 1).isEmpty() || this.f984f.isEmpty()) {
                    this.f984f.add("");
                    return;
                } else {
                    this.f984f.set(this.f984f.size() - 1, "");
                    return;
                }
            }
            if (this.f984f.get(this.f984f.size() - 1).isEmpty()) {
                this.f984f.set(this.f984f.size() - 1, m871a);
            } else {
                this.f984f.add(m871a);
            }
            if (z) {
                this.f984f.add("");
            }
        }

        /* renamed from: a */
        private static boolean m919a(String str, int i, int i2, byte[] bArr, int i3) {
            int i4 = i3;
            while (i < i2) {
                if (i4 == 16) {
                    return false;
                }
                if (i4 != i3) {
                    if (str.charAt(i) != '.') {
                        return false;
                    }
                    i++;
                }
                int i5 = i;
                int i6 = 0;
                while (i5 < i2) {
                    char charAt = str.charAt(i5);
                    if (charAt < '0' || charAt > '9') {
                        break;
                    }
                    if ((i6 == 0 && i != i5) || (i6 = ((i6 * 10) + charAt) - 48) > 255) {
                        return false;
                    }
                    i5++;
                }
                if (i5 - i == 0) {
                    return false;
                }
                bArr[i4] = (byte) i6;
                i4++;
                i = i5;
            }
            return i4 == i3 + 4;
        }

        /* renamed from: b */
        private a m920b(int i) {
            this.f984f.remove(i);
            if (this.f984f.isEmpty()) {
                this.f984f.add("");
            }
            return this;
        }

        /* renamed from: b */
        private a m921b(int i, String str) {
            if (str == null) {
                throw new NullPointerException("encodedPathSegment == null");
            }
            String m871a = C0524v.m871a(str, 0, str.length(), C0524v.f960c, true, false, false, true);
            this.f984f.set(i, m871a);
            if (!m950s(m871a) && !m951t(m871a)) {
                return this;
            }
            throw new IllegalArgumentException("unexpected path segment: " + str);
        }

        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        /* renamed from: b */
        private a m922b(String str) {
            String str2;
            if (str.equalsIgnoreCase("http")) {
                str2 = "http";
            } else {
                if (!str.equalsIgnoreCase("https")) {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                str2 = "https";
            }
            this.f979a = str2;
            return this;
        }

        /* renamed from: b */
        private a m923b(String str, @Nullable String str2) {
            if (str == null) {
                throw new NullPointerException("encodedName == null");
            }
            if (this.f985g == null) {
                this.f985g = new ArrayList();
            }
            this.f985g.add(C0524v.m873a(str, C0524v.f963f, true, false, true, true));
            this.f985g.add(str2 != null ? C0524v.m873a(str2, C0524v.f963f, true, false, true, true) : null);
            return this;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0031  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0047 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x002c -> B:9:0x002e). Please submit an issue!!! */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private void m924b(java.lang.String r10, int r11, int r12) {
            /*
                r9 = this;
                if (r11 != r12) goto L3
                return
            L3:
                char r0 = r10.charAt(r11)
                r1 = 47
                r2 = 1
                if (r0 == r1) goto L20
                r1 = 92
                if (r0 != r1) goto L11
                goto L20
            L11:
                java.util.List<java.lang.String> r0 = r9.f984f
                java.util.List<java.lang.String> r1 = r9.f984f
                int r1 = r1.size()
                int r1 = r1 - r2
                java.lang.String r3 = ""
                r0.set(r1, r3)
                goto L2e
            L20:
                java.util.List<java.lang.String> r0 = r9.f984f
                r0.clear()
                java.util.List<java.lang.String> r0 = r9.f984f
                java.lang.String r1 = ""
                r0.add(r1)
            L2c:
                int r11 = r11 + 1
            L2e:
                r5 = r11
                if (r5 >= r12) goto L47
                java.lang.String r11 = "/\\"
                int r11 = p003b.p004a.C0439c.m134a(r10, r5, r12, r11)
                if (r11 >= r12) goto L3b
                r0 = 1
                goto L3c
            L3b:
                r0 = 0
            L3c:
                r8 = 1
                r3 = r9
                r4 = r10
                r6 = r11
                r7 = r0
                r3.m918a(r4, r5, r6, r7, r8)
                if (r0 == 0) goto L2e
                goto L2c
            L47:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p003b.C0524v.a.m924b(java.lang.String, int, int):void");
        }

        /* renamed from: c */
        private static int m925c(String str, int i, int i2) {
            if (i2 - i < 2) {
                return -1;
            }
            char charAt = str.charAt(i);
            if ((charAt < 'a' || charAt > 'z') && (charAt < 'A' || charAt > 'Z')) {
                return -1;
            }
            while (true) {
                i++;
                if (i >= i2) {
                    break;
                }
                char charAt2 = str.charAt(i);
                if (charAt2 < 'a' || charAt2 > 'z') {
                    if (charAt2 < 'A' || charAt2 > 'Z') {
                        if (charAt2 < '0' || charAt2 > '9') {
                            if (charAt2 != '+' && charAt2 != '-' && charAt2 != '.') {
                                if (charAt2 == ':') {
                                    return i;
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        /* renamed from: c */
        private a m926c() {
            int size = this.f984f.size();
            for (int i = 0; i < size; i++) {
                this.f984f.set(i, C0524v.m873a(this.f984f.get(i), C0524v.f961d, true, true, false, true));
            }
            if (this.f985g != null) {
                int size2 = this.f985g.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str = this.f985g.get(i2);
                    if (str != null) {
                        this.f985g.set(i2, C0524v.m873a(str, C0524v.f964g, true, true, true, true));
                    }
                }
            }
            if (this.f986h != null) {
                this.f986h = C0524v.m873a(this.f986h, C0524v.f967j, true, true, false, false);
            }
            return this;
        }

        /* renamed from: c */
        private a m927c(String str) {
            this.f980b = C0524v.m873a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        /* renamed from: c */
        private a m928c(String str, @Nullable String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (this.f985g != null) {
                m947p(C0524v.m873a(str, C0524v.f963f, false, false, true, true));
            }
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (this.f985g == null) {
                this.f985g = new ArrayList();
            }
            this.f985g.add(C0524v.m873a(str, C0524v.f963f, false, false, true, true));
            this.f985g.add(str2 != null ? C0524v.m873a(str2, C0524v.f963f, false, false, true, true) : null);
            return this;
        }

        /* renamed from: d */
        private static int m929d(String str, int i, int i2) {
            int i3 = 0;
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt != '\\' && charAt != '/') {
                    break;
                }
                i3++;
                i++;
            }
            return i3;
        }

        /* renamed from: d */
        private a m930d(String str) {
            if (str == null) {
                throw new NullPointerException("encodedUsername == null");
            }
            this.f980b = C0524v.m873a(str, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
            return this;
        }

        /* renamed from: d */
        private a m931d(String str, @Nullable String str2) {
            if (str == null) {
                throw new NullPointerException("encodedName == null");
            }
            if (this.f985g != null) {
                m947p(C0524v.m873a(str, C0524v.f963f, true, false, true, true));
            }
            if (str == null) {
                throw new NullPointerException("encodedName == null");
            }
            if (this.f985g == null) {
                this.f985g = new ArrayList();
            }
            this.f985g.add(C0524v.m873a(str, C0524v.f963f, true, false, true, true));
            this.f985g.add(str2 != null ? C0524v.m873a(str2, C0524v.f963f, true, false, true, true) : null);
            return this;
        }

        /* renamed from: d */
        private void m932d() {
            if (!this.f984f.remove(this.f984f.size() - 1).isEmpty() || this.f984f.isEmpty()) {
                this.f984f.add("");
            } else {
                this.f984f.set(this.f984f.size() - 1, "");
            }
        }

        /* renamed from: e */
        private static int m933e(String str, int i, int i2) {
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

        /* renamed from: e */
        private a m934e(String str) {
            this.f981c = C0524v.m873a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        /* renamed from: f */
        private a m935f(String str) {
            if (str == null) {
                throw new NullPointerException("encodedPassword == null");
            }
            this.f981c = C0524v.m873a(str, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
            return this;
        }

        /* JADX WARN: Code restructure failed: missing block: B:72:0x0097, code lost:
        
            r5 = 0;
         */
        /* JADX WARN: Removed duplicated region for block: B:15:0x00a6  */
        @javax.annotation.Nullable
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private static java.net.InetAddress m936f(java.lang.String r17, int r18, int r19) {
            /*
                Method dump skipped, instructions count: 245
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: p003b.C0524v.a.m936f(java.lang.String, int, int):java.net.InetAddress");
        }

        /* renamed from: g */
        private static int m937g(String str, int i, int i2) {
            int parseInt;
            try {
                parseInt = Integer.parseInt(C0524v.m871a(str, i, i2, "", false, false, false, true));
            } catch (NumberFormatException unused) {
            }
            if (parseInt <= 0 || parseInt > 65535) {
                return -1;
            }
            return parseInt;
        }

        /* renamed from: g */
        private a m938g(String str) {
            if (str == null) {
                throw new NullPointerException("host == null");
            }
            String m916a = m916a(str, 0, str.length());
            if (m916a != null) {
                this.f982d = m916a;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: " + str);
        }

        /* renamed from: h */
        private a m939h(String str) {
            if (str == null) {
                throw new NullPointerException("pathSegment == null");
            }
            m918a(str, 0, str.length(), false, false);
            return this;
        }

        /* renamed from: i */
        private a m940i(String str) {
            if (str == null) {
                throw new NullPointerException("pathSegments == null");
            }
            return m915a(str, false);
        }

        /* renamed from: j */
        private a m941j(String str) {
            if (str == null) {
                throw new NullPointerException("encodedPathSegment == null");
            }
            m918a(str, 0, str.length(), false, true);
            return this;
        }

        /* renamed from: k */
        private a m942k(String str) {
            if (str == null) {
                throw new NullPointerException("encodedPathSegments == null");
            }
            return m915a(str, true);
        }

        /* renamed from: l */
        private a m943l(String str) {
            if (str == null) {
                throw new NullPointerException("encodedPath == null");
            }
            if (str.startsWith("/")) {
                m924b(str, 0, str.length());
                return this;
            }
            throw new IllegalArgumentException("unexpected encodedPath: " + str);
        }

        /* renamed from: m */
        private a m944m(@Nullable String str) {
            this.f985g = str != null ? C0524v.m881b(C0524v.m873a(str, C0524v.f962e, false, false, true, true)) : null;
            return this;
        }

        /* renamed from: n */
        private a m945n(String str) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (this.f985g == null) {
                return this;
            }
            m947p(C0524v.m873a(str, C0524v.f963f, false, false, true, true));
            return this;
        }

        /* renamed from: o */
        private a m946o(String str) {
            if (str == null) {
                throw new NullPointerException("encodedName == null");
            }
            if (this.f985g == null) {
                return this;
            }
            m947p(C0524v.m873a(str, C0524v.f963f, true, false, true, true));
            return this;
        }

        /* renamed from: p */
        private void m947p(String str) {
            for (int size = this.f985g.size() - 2; size >= 0; size -= 2) {
                if (str.equals(this.f985g.get(size))) {
                    this.f985g.remove(size + 1);
                    this.f985g.remove(size);
                    if (this.f985g.isEmpty()) {
                        this.f985g = null;
                        return;
                    }
                }
            }
        }

        /* renamed from: q */
        private a m948q(@Nullable String str) {
            this.f986h = str != null ? C0524v.m873a(str, "", false, false, false, false) : null;
            return this;
        }

        /* renamed from: r */
        private a m949r(@Nullable String str) {
            this.f986h = str != null ? C0524v.m873a(str, "", true, false, false, false) : null;
            return this;
        }

        /* renamed from: s */
        private static boolean m950s(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        /* renamed from: t */
        private static boolean m951t(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        /* renamed from: a */
        final int m952a() {
            return this.f983e != -1 ? this.f983e : C0524v.m867a(this.f979a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x0058, code lost:
        
            if (r7 == ':') goto L31;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        final p003b.C0524v.a.EnumC3064a m953a(@javax.annotation.Nullable p003b.C0524v r23, java.lang.String r24) {
            /*
                Method dump skipped, instructions count: 538
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: p003b.C0524v.a.m953a(b.v, java.lang.String):b.v$a$a");
        }

        /* renamed from: a */
        public final a m954a(@Nullable String str) {
            this.f985g = str != null ? C0524v.m881b(C0524v.m873a(str, C0524v.f962e, true, false, true, true)) : null;
            return this;
        }

        /* renamed from: b */
        public final C0524v m955b() {
            if (this.f979a == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.f982d == null) {
                throw new IllegalStateException("host == null");
            }
            return new C0524v(this);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f979a);
            sb.append("://");
            if (!this.f980b.isEmpty() || !this.f981c.isEmpty()) {
                sb.append(this.f980b);
                if (!this.f981c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f981c);
                }
                sb.append('@');
            }
            if (this.f982d.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.f982d);
                sb.append(']');
            } else {
                sb.append(this.f982d);
            }
            int m952a = m952a();
            if (m952a != C0524v.m867a(this.f979a)) {
                sb.append(':');
                sb.append(m952a);
            }
            C0524v.m878a(sb, this.f984f);
            if (this.f985g != null) {
                sb.append('?');
                C0524v.m882b(sb, this.f985g);
            }
            if (this.f986h != null) {
                sb.append('#');
                sb.append(this.f986h);
            }
            return sb.toString();
        }
    }

    C0524v(a aVar) {
        this.f969k = aVar.f979a;
        this.f973p = m874a(aVar.f980b, false);
        this.f974q = m874a(aVar.f981c, false);
        this.f970l = aVar.f982d;
        this.f971m = aVar.m952a();
        this.f975r = m875a(aVar.f984f, false);
        this.f972n = aVar.f985g != null ? m875a(aVar.f985g, true) : null;
        this.f976s = aVar.f986h != null ? m874a(aVar.f986h, false) : null;
        this.f977t = aVar.toString();
    }

    /* renamed from: a */
    static int m866a(char c2) {
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
    public static int m867a(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    @Nullable
    /* renamed from: a */
    private static C0524v m868a(URI uri) {
        return m883d(uri.toString());
    }

    @Nullable
    /* renamed from: a */
    public static C0524v m869a(URL url) {
        return m883d(url.toString());
    }

    /* renamed from: a */
    private String m870a(int i) {
        if (this.f972n == null) {
            throw new IndexOutOfBoundsException();
        }
        return this.f972n.get(i * 2);
    }

    /* renamed from: a */
    static String m871a(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        int i3 = i;
        while (i3 < i2) {
            int codePointAt = str.codePointAt(i3);
            int i4 = 43;
            if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || ((codePointAt == 37 && (!z || (z2 && !m879a(str, i3, i2)))) || (codePointAt == 43 && z3)))) {
                C0535c c0535c = new C0535c();
                c0535c.mo1115b(str, i, i3);
                C0535c c0535c2 = null;
                while (i3 < i2) {
                    int codePointAt2 = str.codePointAt(i3);
                    if (!z || (codePointAt2 != 9 && codePointAt2 != 10 && codePointAt2 != 12 && codePointAt2 != 13)) {
                        if (codePointAt2 == i4 && z3) {
                            c0535c.mo1114b(z ? Marker.ANY_NON_NULL_MARKER : "%2B");
                        } else {
                            if (codePointAt2 >= 32 && codePointAt2 != 127 && (codePointAt2 < 128 || !z4)) {
                                if (str2.indexOf(codePointAt2) == -1 && (codePointAt2 != 37 || (z && (!z2 || m879a(str, i3, i2))))) {
                                    c0535c.mo1159m(codePointAt2);
                                    i3 += Character.charCount(codePointAt2);
                                    i4 = 43;
                                }
                            }
                            if (c0535c2 == null) {
                                c0535c2 = new C0535c();
                            }
                            c0535c2.mo1159m(codePointAt2);
                            while (!c0535c2.mo1131d()) {
                                int mo1140g = c0535c2.mo1140g() & 255;
                                c0535c.mo1157l(37);
                                c0535c.mo1157l((int) f968o[(mo1140g >> 4) & 15]);
                                c0535c.mo1157l((int) f968o[mo1140g & 15]);
                            }
                            i3 += Character.charCount(codePointAt2);
                            i4 = 43;
                        }
                    }
                    i3 += Character.charCount(codePointAt2);
                    i4 = 43;
                }
                return c0535c.mo1167q();
            }
            i3 += Character.charCount(codePointAt);
        }
        return str.substring(i, i2);
    }

    /* renamed from: a */
    static String m872a(String str, int i, int i2, boolean z) {
        int i3;
        int i4 = i;
        while (i4 < i2) {
            char charAt = str.charAt(i4);
            if (charAt == '%' || (charAt == '+' && z)) {
                C0535c c0535c = new C0535c();
                c0535c.mo1115b(str, i, i4);
                while (i4 < i2) {
                    int codePointAt = str.codePointAt(i4);
                    if (codePointAt != 37 || (i3 = i4 + 2) >= i2) {
                        if (codePointAt == 43 && z) {
                            c0535c.mo1157l(32);
                        }
                        c0535c.mo1159m(codePointAt);
                    } else {
                        int m866a = m866a(str.charAt(i4 + 1));
                        int m866a2 = m866a(str.charAt(i3));
                        if (m866a != -1 && m866a2 != -1) {
                            c0535c.mo1157l((m866a << 4) + m866a2);
                            i4 = i3;
                        }
                        c0535c.mo1159m(codePointAt);
                    }
                    i4 += Character.charCount(codePointAt);
                }
                return c0535c.mo1167q();
            }
            i4++;
        }
        return str.substring(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m873a(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return m871a(str, 0, str.length(), str2, z, z2, z3, z4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m874a(String str, boolean z) {
        return m872a(str, 0, str.length(), z);
    }

    /* renamed from: a */
    private static List<String> m875a(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = list.get(i);
            arrayList.add(str != null ? m874a(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    private static void m876a(C0535c c0535c, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        C0535c c0535c2 = null;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (!z || (codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13)) {
                if (codePointAt == 43 && z3) {
                    c0535c.mo1114b(z ? Marker.ANY_NON_NULL_MARKER : "%2B");
                } else if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || (codePointAt == 37 && (!z || (z2 && !m879a(str, i, i2)))))) {
                    if (c0535c2 == null) {
                        c0535c2 = new C0535c();
                    }
                    c0535c2.mo1159m(codePointAt);
                    while (!c0535c2.mo1131d()) {
                        int mo1140g = c0535c2.mo1140g() & 255;
                        c0535c.mo1157l(37);
                        c0535c.mo1157l((int) f968o[(mo1140g >> 4) & 15]);
                        c0535c.mo1157l((int) f968o[mo1140g & 15]);
                    }
                } else {
                    c0535c.mo1159m(codePointAt);
                }
            }
            i += Character.charCount(codePointAt);
        }
    }

    /* renamed from: a */
    private static void m877a(C0535c c0535c, String str, int i, int i2, boolean z) {
        int i3;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt != 37 || (i3 = i + 2) >= i2) {
                if (codePointAt == 43 && z) {
                    c0535c.mo1157l(32);
                }
                c0535c.mo1159m(codePointAt);
            } else {
                int m866a = m866a(str.charAt(i + 1));
                int m866a2 = m866a(str.charAt(i3));
                if (m866a != -1 && m866a2 != -1) {
                    c0535c.mo1157l((m866a << 4) + m866a2);
                    i = i3;
                }
                c0535c.mo1159m(codePointAt);
            }
            i += Character.charCount(codePointAt);
        }
    }

    /* renamed from: a */
    static void m878a(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append(IOUtils.DIR_SEPARATOR_UNIX);
            sb.append(list.get(i));
        }
    }

    /* renamed from: a */
    private static boolean m879a(String str, int i, int i2) {
        int i3 = i + 2;
        return i3 < i2 && str.charAt(i) == '%' && m866a(str.charAt(i + 1)) != -1 && m866a(str.charAt(i3)) != -1;
    }

    /* renamed from: b */
    private String m880b(int i) {
        if (this.f972n == null) {
            throw new IndexOutOfBoundsException();
        }
        return this.f972n.get((i * 2) + 1);
    }

    /* renamed from: b */
    static List<String> m881b(String str) {
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

    /* renamed from: b */
    public static void m882b(StringBuilder sb, List<String> list) {
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

    @Nullable
    /* renamed from: d */
    public static C0524v m883d(String str) {
        a aVar = new a();
        if (aVar.m953a((C0524v) null, str) == a.EnumC3064a.SUCCESS) {
            return aVar.m955b();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static C0524v m884e(String str) throws MalformedURLException, UnknownHostException {
        a aVar = new a();
        a.EnumC3064a m953a = aVar.m953a((C0524v) null, str);
        switch (m953a) {
            case SUCCESS:
                return aVar.m955b();
            case INVALID_HOST:
                throw new UnknownHostException("Invalid host: " + str);
            default:
                throw new MalformedURLException("Invalid URL: " + m953a + " for " + str);
        }
    }

    @Nullable
    /* renamed from: f */
    private String m885f(String str) {
        if (this.f972n == null) {
            return null;
        }
        int size = this.f972n.size();
        for (int i = 0; i < size; i += 2) {
            if (str.equals(this.f972n.get(i))) {
                return this.f972n.get(i + 1);
            }
        }
        return null;
    }

    /* renamed from: g */
    private List<String> m886g(String str) {
        if (this.f972n == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int size = this.f972n.size();
        for (int i = 0; i < size; i += 2) {
            if (str.equals(this.f972n.get(i))) {
                arrayList.add(this.f972n.get(i + 1));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Nullable
    /* renamed from: h */
    private C0524v m887h(String str) {
        a m905c = m905c(str);
        if (m905c != null) {
            return m905c.m955b();
        }
        return null;
    }

    /* renamed from: i */
    private URL m888i() {
        try {
            return new URL(this.f977t);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: j */
    private String m889j() {
        return this.f969k;
    }

    /* renamed from: k */
    private String m890k() {
        return this.f973p;
    }

    /* renamed from: l */
    private String m891l() {
        return this.f974q;
    }

    /* renamed from: m */
    private String m892m() {
        return this.f970l;
    }

    /* renamed from: n */
    private int m893n() {
        return this.f971m;
    }

    /* renamed from: o */
    private int m894o() {
        return this.f975r.size();
    }

    /* renamed from: p */
    private List<String> m895p() {
        return this.f975r;
    }

    @Nullable
    /* renamed from: q */
    private String m896q() {
        if (this.f972n == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        m882b(sb, this.f972n);
        return sb.toString();
    }

    /* renamed from: r */
    private int m897r() {
        if (this.f972n != null) {
            return this.f972n.size() / 2;
        }
        return 0;
    }

    /* renamed from: s */
    private Set<String> m898s() {
        if (this.f972n == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int size = this.f972n.size();
        for (int i = 0; i < size; i += 2) {
            linkedHashSet.add(this.f972n.get(i));
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    @Nullable
    /* renamed from: t */
    private String m899t() {
        if (this.f976s == null) {
            return null;
        }
        return this.f977t.substring(this.f977t.indexOf(35) + 1);
    }

    @Nullable
    /* renamed from: u */
    private String m900u() {
        return this.f976s;
    }

    /* renamed from: v */
    private a m901v() {
        a aVar = new a();
        aVar.f979a = this.f969k;
        aVar.f980b = m906c();
        aVar.f981c = m907d();
        aVar.f982d = this.f970l;
        aVar.f983e = this.f971m != m867a(this.f969k) ? this.f971m : -1;
        aVar.f984f.clear();
        aVar.f984f.addAll(m909f());
        aVar.m954a(m910g());
        aVar.f986h = this.f976s == null ? null : this.f977t.substring(this.f977t.indexOf(35) + 1);
        return aVar;
    }

    @Nullable
    /* renamed from: w */
    private String m902w() {
        if (C0439c.m157c(this.f970l)) {
            return null;
        }
        return C0482a.m492a().m497a(this.f970l);
    }

    /* renamed from: a */
    public final URI m903a() {
        a aVar = new a();
        aVar.f979a = this.f969k;
        aVar.f980b = m906c();
        aVar.f981c = m907d();
        aVar.f982d = this.f970l;
        aVar.f983e = this.f971m != m867a(this.f969k) ? this.f971m : -1;
        aVar.f984f.clear();
        aVar.f984f.addAll(m909f());
        aVar.m954a(m910g());
        aVar.f986h = this.f976s == null ? null : this.f977t.substring(this.f977t.indexOf(35) + 1);
        int size = aVar.f984f.size();
        for (int i = 0; i < size; i++) {
            aVar.f984f.set(i, m873a(aVar.f984f.get(i), f961d, true, true, false, true));
        }
        if (aVar.f985g != null) {
            int size2 = aVar.f985g.size();
            for (int i2 = 0; i2 < size2; i2++) {
                String str = aVar.f985g.get(i2);
                if (str != null) {
                    aVar.f985g.set(i2, m873a(str, f964g, true, true, true, true));
                }
            }
        }
        if (aVar.f986h != null) {
            aVar.f986h = m873a(aVar.f986h, f967j, true, true, false, false);
        }
        String aVar2 = aVar.toString();
        try {
            return new URI(aVar2);
        } catch (URISyntaxException e) {
            try {
                return URI.create(aVar2.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception unused) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: b */
    public final boolean m904b() {
        return this.f969k.equals("https");
    }

    @Nullable
    /* renamed from: c */
    public final a m905c(String str) {
        a aVar = new a();
        if (aVar.m953a(this, str) == a.EnumC3064a.SUCCESS) {
            return aVar;
        }
        return null;
    }

    /* renamed from: c */
    public final String m906c() {
        if (this.f973p.isEmpty()) {
            return "";
        }
        int length = this.f969k.length() + 3;
        return this.f977t.substring(length, C0439c.m134a(this.f977t, length, this.f977t.length(), ":@"));
    }

    /* renamed from: d */
    public final String m907d() {
        if (this.f974q.isEmpty()) {
            return "";
        }
        return this.f977t.substring(this.f977t.indexOf(58, this.f969k.length() + 3) + 1, this.f977t.indexOf(64));
    }

    /* renamed from: e */
    public final String m908e() {
        int indexOf = this.f977t.indexOf(47, this.f969k.length() + 3);
        return this.f977t.substring(indexOf, C0439c.m134a(this.f977t, indexOf, this.f977t.length(), "?#"));
    }

    public final boolean equals(@Nullable Object obj) {
        return (obj instanceof C0524v) && ((C0524v) obj).f977t.equals(this.f977t);
    }

    /* renamed from: f */
    public final List<String> m909f() {
        int indexOf = this.f977t.indexOf(47, this.f969k.length() + 3);
        int m134a = C0439c.m134a(this.f977t, indexOf, this.f977t.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < m134a) {
            int i = indexOf + 1;
            int m133a = C0439c.m133a(this.f977t, i, m134a, (char) IOUtils.DIR_SEPARATOR_UNIX);
            arrayList.add(this.f977t.substring(i, m133a));
            indexOf = m133a;
        }
        return arrayList;
    }

    @Nullable
    /* renamed from: g */
    public final String m910g() {
        if (this.f972n == null) {
            return null;
        }
        int indexOf = this.f977t.indexOf(63) + 1;
        return this.f977t.substring(indexOf, C0439c.m133a(this.f977t, indexOf + 1, this.f977t.length(), '#'));
    }

    /* renamed from: h */
    public final String m911h() {
        a m905c = m905c("/...");
        m905c.f980b = m873a("", " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
        m905c.f981c = m873a("", " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
        return m905c.m955b().toString();
    }

    public final int hashCode() {
        return this.f977t.hashCode();
    }

    public final String toString() {
        return this.f977t;
    }
}
