package p003b;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import p003b.p004a.C0439c;
import p003b.p004a.p008d.C0451d;

/* renamed from: b.m */
/* loaded from: classes.dex */
public final class C0515m {

    /* renamed from: c */
    private static final Pattern f914c = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: d */
    private static final Pattern f915d = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: e */
    private static final Pattern f916e = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: f */
    private static final Pattern f917f = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* renamed from: a */
    public final String f918a;

    /* renamed from: b */
    public final String f919b;

    /* renamed from: g */
    private final long f920g;

    /* renamed from: h */
    private final String f921h;

    /* renamed from: i */
    private final String f922i;

    /* renamed from: j */
    private final boolean f923j;

    /* renamed from: k */
    private final boolean f924k;

    /* renamed from: l */
    private final boolean f925l;

    /* renamed from: m */
    private final boolean f926m;

    /* renamed from: b.m$a */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a */
        String f927a;

        /* renamed from: b */
        String f928b;

        /* renamed from: d */
        String f930d;

        /* renamed from: f */
        boolean f932f;

        /* renamed from: g */
        boolean f933g;

        /* renamed from: h */
        boolean f934h;

        /* renamed from: i */
        boolean f935i;

        /* renamed from: c */
        long f929c = C0451d.f229a;

        /* renamed from: e */
        String f931e = "/";

        /* renamed from: a */
        private a m777a() {
            this.f932f = true;
            return this;
        }

        /* renamed from: a */
        private a m778a(long j) {
            if (j <= 0) {
                j = Long.MIN_VALUE;
            }
            if (j > C0451d.f229a) {
                j = 253402300799999L;
            }
            this.f929c = j;
            this.f934h = true;
            return this;
        }

        /* renamed from: a */
        private a m779a(String str) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (!str.trim().equals(str)) {
                throw new IllegalArgumentException("name is not trimmed");
            }
            this.f927a = str;
            return this;
        }

        /* renamed from: a */
        private a m780a(String str, boolean z) {
            if (str == null) {
                throw new NullPointerException("domain == null");
            }
            String m137a = C0439c.m137a(str);
            if (m137a == null) {
                throw new IllegalArgumentException("unexpected domain: " + str);
            }
            this.f930d = m137a;
            this.f935i = z;
            return this;
        }

        /* renamed from: b */
        private a m781b() {
            this.f933g = true;
            return this;
        }

        /* renamed from: b */
        private a m782b(String str) {
            if (str == null) {
                throw new NullPointerException("value == null");
            }
            if (!str.trim().equals(str)) {
                throw new IllegalArgumentException("value is not trimmed");
            }
            this.f928b = str;
            return this;
        }

        /* renamed from: c */
        private a m783c(String str) {
            return m780a(str, false);
        }

        /* renamed from: c */
        private C0515m m784c() {
            return new C0515m(this);
        }

        /* renamed from: d */
        private a m785d(String str) {
            return m780a(str, true);
        }

        /* renamed from: e */
        private a m786e(String str) {
            if (!str.startsWith("/")) {
                throw new IllegalArgumentException("path must start with '/'");
            }
            this.f931e = str;
            return this;
        }
    }

    C0515m(a aVar) {
        if (aVar.f927a == null) {
            throw new NullPointerException("builder.name == null");
        }
        if (aVar.f928b == null) {
            throw new NullPointerException("builder.value == null");
        }
        if (aVar.f930d == null) {
            throw new NullPointerException("builder.domain == null");
        }
        this.f918a = aVar.f927a;
        this.f919b = aVar.f928b;
        this.f920g = aVar.f929c;
        this.f921h = aVar.f930d;
        this.f922i = aVar.f931e;
        this.f923j = aVar.f932f;
        this.f924k = aVar.f933g;
        this.f925l = aVar.f934h;
        this.f926m = aVar.f935i;
    }

    private C0515m(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f918a = str;
        this.f919b = str2;
        this.f920g = j;
        this.f921h = str3;
        this.f922i = str4;
        this.f923j = z;
        this.f924k = z2;
        this.f926m = z3;
        this.f925l = z4;
    }

    /* renamed from: a */
    private static int m757a(String str, int i, int i2, boolean z) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || (charAt >= '0' && charAt <= '9') || ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || charAt == ':'))) == (!z)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: a */
    private static long m758a(String str) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong <= 0) {
                return Long.MIN_VALUE;
            }
            return parseLong;
        } catch (NumberFormatException e) {
            if (str.matches("-?\\d+")) {
                return str.startsWith("-") ? Long.MIN_VALUE : Long.MAX_VALUE;
            }
            throw e;
        }
    }

    /* renamed from: a */
    private static long m759a(String str, int i) {
        int m757a = m757a(str, 0, i, false);
        Matcher matcher = f917f.matcher(str);
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        while (m757a < i) {
            int m757a2 = m757a(str, m757a + 1, i, true);
            matcher.region(m757a, m757a2);
            if (i2 == -1 && matcher.usePattern(f917f).matches()) {
                int parseInt = Integer.parseInt(matcher.group(1));
                int parseInt2 = Integer.parseInt(matcher.group(2));
                i7 = Integer.parseInt(matcher.group(3));
                i6 = parseInt2;
                i2 = parseInt;
            } else if (i4 == -1 && matcher.usePattern(f916e).matches()) {
                i4 = Integer.parseInt(matcher.group(1));
            } else if (i5 == -1 && matcher.usePattern(f915d).matches()) {
                i5 = f915d.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
            } else if (i3 == -1 && matcher.usePattern(f914c).matches()) {
                i3 = Integer.parseInt(matcher.group(1));
            }
            m757a = m757a(str, m757a2 + 1, i, false);
        }
        if (i3 >= 70 && i3 <= 99) {
            i3 += 1900;
        }
        if (i3 >= 0 && i3 <= 69) {
            i3 += 2000;
        }
        if (i3 < 1601) {
            throw new IllegalArgumentException();
        }
        if (i5 == -1) {
            throw new IllegalArgumentException();
        }
        if (i4 <= 0 || i4 > 31) {
            throw new IllegalArgumentException();
        }
        if (i2 < 0 || i2 > 23) {
            throw new IllegalArgumentException();
        }
        if (i6 < 0 || i6 > 59) {
            throw new IllegalArgumentException();
        }
        if (i7 < 0 || i7 > 59) {
            throw new IllegalArgumentException();
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(C0439c.f168f);
        gregorianCalendar.setLenient(false);
        gregorianCalendar.set(1, i3);
        gregorianCalendar.set(2, i5 - 1);
        gregorianCalendar.set(5, i4);
        gregorianCalendar.set(11, i2);
        gregorianCalendar.set(12, i6);
        gregorianCalendar.set(13, i7);
        gregorianCalendar.set(14, 0);
        return gregorianCalendar.getTimeInMillis();
    }

    /* JADX WARN: Code restructure failed: missing block: B:183:0x0277, code lost:
    
        if (r2 > p003b.p004a.p008d.C0451d.f229a) goto L138;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:153:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x028e  */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v7 */
    @javax.annotation.Nullable
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static p003b.C0515m m760a(long r31, p003b.C0524v r33, java.lang.String r34) {
        /*
            Method dump skipped, instructions count: 741
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p003b.C0515m.m760a(long, b.v, java.lang.String):b.m");
    }

    /* renamed from: a */
    private String m761a() {
        return this.f918a;
    }

    /* renamed from: a */
    public static List<C0515m> m762a(C0524v c0524v, C0523u c0523u) {
        List<String> m855b = c0523u.m855b("Set-Cookie");
        int size = m855b.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            C0515m m760a = m760a(System.currentTimeMillis(), c0524v, m855b.get(i));
            if (m760a != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(m760a);
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    /* renamed from: a */
    private boolean m763a(C0524v c0524v) {
        if (!(this.f926m ? c0524v.f970l.equals(this.f921h) : m765a(c0524v.f970l, this.f921h))) {
            return false;
        }
        String str = this.f922i;
        String m908e = c0524v.m908e();
        if (m908e.equals(str) || (m908e.startsWith(str) && (str.endsWith("/") || m908e.charAt(str.length()) == '/'))) {
            return !this.f923j || c0524v.m904b();
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m764a(C0524v c0524v, String str) {
        String m908e = c0524v.m908e();
        if (m908e.equals(str)) {
            return true;
        }
        if (m908e.startsWith(str)) {
            return str.endsWith("/") || m908e.charAt(str.length()) == '/';
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m765a(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !C0439c.m157c(str);
    }

    @Nullable
    /* renamed from: b */
    private static C0515m m766b(C0524v c0524v, String str) {
        return m760a(System.currentTimeMillis(), c0524v, str);
    }

    /* renamed from: b */
    private String m767b() {
        return this.f919b;
    }

    /* renamed from: b */
    private static String m768b(String str) {
        if (str.endsWith(".")) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith(".")) {
            str = str.substring(1);
        }
        String m137a = C0439c.m137a(str);
        if (m137a == null) {
            throw new IllegalArgumentException();
        }
        return m137a;
    }

    /* renamed from: c */
    private boolean m769c() {
        return this.f925l;
    }

    /* renamed from: d */
    private long m770d() {
        return this.f920g;
    }

    /* renamed from: e */
    private boolean m771e() {
        return this.f926m;
    }

    /* renamed from: f */
    private String m772f() {
        return this.f921h;
    }

    /* renamed from: g */
    private String m773g() {
        return this.f922i;
    }

    /* renamed from: h */
    private boolean m774h() {
        return this.f924k;
    }

    /* renamed from: i */
    private boolean m775i() {
        return this.f923j;
    }

    /* renamed from: j */
    private String m776j() {
        String m225a;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f918a);
        sb.append('=');
        sb.append(this.f919b);
        if (this.f925l) {
            if (this.f920g == Long.MIN_VALUE) {
                m225a = "; max-age=0";
            } else {
                sb.append("; expires=");
                m225a = C0451d.m225a(new Date(this.f920g));
            }
            sb.append(m225a);
        }
        if (!this.f926m) {
            sb.append("; domain=");
            sb.append(this.f921h);
        }
        sb.append("; path=");
        sb.append(this.f922i);
        if (this.f923j) {
            sb.append("; secure");
        }
        if (this.f924k) {
            sb.append("; httponly");
        }
        return sb.toString();
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C0515m)) {
            return false;
        }
        C0515m c0515m = (C0515m) obj;
        return c0515m.f918a.equals(this.f918a) && c0515m.f919b.equals(this.f919b) && c0515m.f921h.equals(this.f921h) && c0515m.f922i.equals(this.f922i) && c0515m.f920g == this.f920g && c0515m.f923j == this.f923j && c0515m.f924k == this.f924k && c0515m.f925l == this.f925l && c0515m.f926m == this.f926m;
    }

    public final int hashCode() {
        return ((((((((((((((((this.f918a.hashCode() + 527) * 31) + this.f919b.hashCode()) * 31) + this.f921h.hashCode()) * 31) + this.f922i.hashCode()) * 31) + ((int) (this.f920g ^ (this.f920g >>> 32)))) * 31) + (!this.f923j ? 1 : 0)) * 31) + (!this.f924k ? 1 : 0)) * 31) + (!this.f925l ? 1 : 0)) * 31) + (!this.f926m ? 1 : 0);
    }

    public final String toString() {
        String m225a;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f918a);
        sb.append('=');
        sb.append(this.f919b);
        if (this.f925l) {
            if (this.f920g == Long.MIN_VALUE) {
                m225a = "; max-age=0";
            } else {
                sb.append("; expires=");
                m225a = C0451d.m225a(new Date(this.f920g));
            }
            sb.append(m225a);
        }
        if (!this.f926m) {
            sb.append("; domain=");
            sb.append(this.f921h);
        }
        sb.append("; path=");
        sb.append(this.f922i);
        if (this.f923j) {
            sb.append("; secure");
        }
        if (this.f924k) {
            sb.append("; httponly");
        }
        return sb.toString();
    }
}
