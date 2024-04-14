package com.p021b.p022a;

import com.p021b.p022a.p023a.p026c.C0654d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;

/* renamed from: com.b.a.r */
/* loaded from: classes.dex */
public final class C0768r {

    /* renamed from: a */
    private static final Pattern f2098a = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: b */
    private static final Pattern f2099b = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: c */
    private static final Pattern f2100c = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: d */
    private static final Pattern f2101d = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* renamed from: e */
    private final String f2102e;

    /* renamed from: f */
    private final String f2103f;

    /* renamed from: g */
    private final long f2104g;

    /* renamed from: h */
    private final String f2105h;

    /* renamed from: i */
    private final String f2106i;

    /* renamed from: j */
    private final boolean f2107j;

    /* renamed from: k */
    private final boolean f2108k;

    /* renamed from: l */
    private final boolean f2109l;

    /* renamed from: m */
    private final boolean f2110m;

    private C0768r(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f2102e = str;
        this.f2103f = str2;
        this.f2104g = j;
        this.f2105h = str3;
        this.f2106i = str4;
        this.f2107j = z;
        this.f2108k = z2;
        this.f2110m = z3;
        this.f2109l = z4;
    }

    /* renamed from: a */
    private static int m1980a(String str, int i, int i2, boolean z) {
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
    private static long m1981a(String str) {
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

    /* JADX WARN: Code restructure failed: missing block: B:175:0x02b9, code lost:
    
        if (com.p021b.p022a.p023a.C0650c.m1623c(r0) == false) goto L150;
     */
    /* JADX WARN: Removed duplicated region for block: B:151:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0292  */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.p021b.p022a.C0768r m1982a(long r33, com.p021b.p022a.C0730ac r35, java.lang.String r36) {
        /*
            Method dump skipped, instructions count: 762
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p021b.p022a.C0768r.m1982a(long, com.b.a.ac, java.lang.String):com.b.a.r");
    }

    /* renamed from: a */
    public static List<C0768r> m1983a(C0730ac c0730ac, C0728aa c0728aa) {
        int m1817a = c0728aa.m1817a();
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        for (int i = 0; i < m1817a; i++) {
            if ("Set-Cookie".equalsIgnoreCase(c0728aa.m1818a(i))) {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList(2);
                }
                arrayList2.add(c0728aa.m1821b(i));
            }
        }
        List unmodifiableList = arrayList2 != null ? Collections.unmodifiableList(arrayList2) : Collections.emptyList();
        int size = unmodifiableList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0768r m1982a = m1982a(System.currentTimeMillis(), c0730ac, (String) unmodifiableList.get(i2));
            if (m1982a != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(m1982a);
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    /* renamed from: a */
    public final String m1984a() {
        return this.f2102e;
    }

    /* renamed from: b */
    public final String m1985b() {
        return this.f2103f;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0768r)) {
            return false;
        }
        C0768r c0768r = (C0768r) obj;
        return c0768r.f2102e.equals(this.f2102e) && c0768r.f2103f.equals(this.f2103f) && c0768r.f2105h.equals(this.f2105h) && c0768r.f2106i.equals(this.f2106i) && c0768r.f2104g == this.f2104g && c0768r.f2107j == this.f2107j && c0768r.f2108k == this.f2108k && c0768r.f2109l == this.f2109l && c0768r.f2110m == this.f2110m;
    }

    public final int hashCode() {
        return ((((((((((((((((this.f2102e.hashCode() + 527) * 31) + this.f2103f.hashCode()) * 31) + this.f2105h.hashCode()) * 31) + this.f2106i.hashCode()) * 31) + ((int) (this.f2104g ^ (this.f2104g >>> 32)))) * 31) + (!this.f2107j ? 1 : 0)) * 31) + (!this.f2108k ? 1 : 0)) * 31) + (!this.f2109l ? 1 : 0)) * 31) + (!this.f2110m ? 1 : 0);
    }

    public final String toString() {
        String m1630a;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2102e);
        sb.append('=');
        sb.append(this.f2103f);
        if (this.f2109l) {
            if (this.f2104g == Long.MIN_VALUE) {
                m1630a = "; max-age=0";
            } else {
                sb.append("; expires=");
                m1630a = C0654d.m1630a(new Date(this.f2104g));
            }
            sb.append(m1630a);
        }
        if (!this.f2110m) {
            sb.append("; domain=");
            sb.append(this.f2105h);
        }
        sb.append("; path=");
        sb.append(this.f2106i);
        if (this.f2107j) {
            sb.append("; secure");
        }
        if (this.f2108k) {
            sb.append("; httponly");
        }
        return sb.toString();
    }
}
