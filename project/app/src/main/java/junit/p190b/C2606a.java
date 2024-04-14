package junit.p190b;

import com.cyjh.common.util.C1176s;

@Deprecated
/* renamed from: junit.b.a */
/* loaded from: classes.dex */
public class C2606a {
    /* renamed from: a */
    private static void m11687a(byte b2, byte b3) {
        m11696a((String) null, b2, b3);
    }

    /* renamed from: a */
    private static void m11688a(char c2, char c3) {
        m11697a((String) null, c2, c3);
    }

    /* renamed from: a */
    private static void m11689a(double d, double d2, double d3) {
        m11698a((String) null, d, d2, d3);
    }

    /* renamed from: a */
    private static void m11690a(float f, float f2, float f3) {
        m11699a((String) null, f, f2, f3);
    }

    /* renamed from: a */
    private static void m11691a(int i, int i2) {
        m11700a((String) null, i, i2);
    }

    /* renamed from: a */
    private static void m11692a(long j, long j2) {
        m11701a((String) null, j, j2);
    }

    /* renamed from: a */
    private static void m11693a(Object obj) {
        m11702a((String) null, obj);
    }

    /* renamed from: a */
    private static void m11694a(Object obj, Object obj2) {
        m11703a((String) null, obj, obj2);
    }

    /* renamed from: a */
    public static void m11695a(String str) {
        if (str != null) {
            throw new C2607b(str);
        }
        throw new C2607b();
    }

    /* renamed from: a */
    public static void m11696a(String str, byte b2, byte b3) {
        m11703a(str, Byte.valueOf(b2), Byte.valueOf(b3));
    }

    /* renamed from: a */
    public static void m11697a(String str, char c2, char c3) {
        m11703a(str, Character.valueOf(c2), Character.valueOf(c3));
    }

    /* renamed from: a */
    public static void m11698a(String str, double d, double d2, double d3) {
        if (Double.compare(d, d2) != 0 && Math.abs(d - d2) > d3) {
            m11723e(str, new Double(d), new Double(d2));
        }
    }

    /* renamed from: a */
    public static void m11699a(String str, float f, float f2, float f3) {
        if (Float.compare(f, f2) != 0 && Math.abs(f - f2) > f3) {
            m11723e(str, new Float(f), new Float(f2));
        }
    }

    /* renamed from: a */
    public static void m11700a(String str, int i, int i2) {
        m11703a(str, Integer.valueOf(i), Integer.valueOf(i2));
    }

    /* renamed from: a */
    public static void m11701a(String str, long j, long j2) {
        m11703a(str, Long.valueOf(j), Long.valueOf(j2));
    }

    /* renamed from: a */
    public static void m11702a(String str, Object obj) {
        m11707a(str, obj != null);
    }

    /* renamed from: a */
    public static void m11703a(String str, Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return;
        }
        if (obj == null || !obj.equals(obj2)) {
            m11723e(str, obj, obj2);
        }
    }

    /* renamed from: a */
    private static void m11704a(String str, String str2) {
        m11705a((String) null, str, str2);
    }

    /* renamed from: a */
    public static void m11705a(String str, String str2, String str3) {
        if (str2 == null && str3 == null) {
            return;
        }
        if (str2 == null || !str2.equals(str3)) {
            if (str == null) {
                str = "";
            }
            throw new C2609d(str, str2, str3);
        }
    }

    /* renamed from: a */
    public static void m11706a(String str, short s, short s2) {
        m11703a(str, Short.valueOf(s), Short.valueOf(s2));
    }

    /* renamed from: a */
    public static void m11707a(String str, boolean z) {
        if (z) {
            return;
        }
        m11695a(str);
    }

    /* renamed from: a */
    public static void m11708a(String str, boolean z, boolean z2) {
        m11703a(str, Boolean.valueOf(z), Boolean.valueOf(z2));
    }

    /* renamed from: a */
    private static void m11709a(short s, short s2) {
        m11706a((String) null, s, s2);
    }

    /* renamed from: a */
    private static void m11710a(boolean z) {
        m11707a((String) null, z);
    }

    /* renamed from: a */
    private static void m11711a(boolean z, boolean z2) {
        m11708a((String) null, z, z2);
    }

    /* renamed from: b */
    private static void m11712b() {
        m11695a((String) null);
    }

    /* renamed from: b */
    private static void m11713b(Object obj) {
        if (obj != null) {
            m11716b("Expected: <null> but was: " + obj.toString(), obj);
        }
    }

    /* renamed from: b */
    private static void m11714b(Object obj, Object obj2) {
        m11717b(null, obj, obj2);
    }

    /* renamed from: b */
    public static void m11715b(String str) {
        String str2;
        if (str != null) {
            str2 = str + C1176s.a.f4108a;
        } else {
            str2 = "";
        }
        m11695a(str2 + "expected not same");
    }

    /* renamed from: b */
    public static void m11716b(String str, Object obj) {
        m11707a(str, obj == null);
    }

    /* renamed from: b */
    public static void m11717b(String str, Object obj, Object obj2) {
        if (obj == obj2) {
            return;
        }
        m11722d(str, obj, obj2);
    }

    /* renamed from: b */
    public static void m11718b(String str, boolean z) {
        m11707a(str, !z);
    }

    /* renamed from: b */
    private static void m11719b(boolean z) {
        m11718b((String) null, z);
    }

    /* renamed from: c */
    private static void m11720c(Object obj, Object obj2) {
        m11721c(null, obj, obj2);
    }

    /* renamed from: c */
    public static void m11721c(String str, Object obj, Object obj2) {
        if (obj == obj2) {
            m11715b(str);
        }
    }

    /* renamed from: d */
    public static void m11722d(String str, Object obj, Object obj2) {
        String str2;
        if (str != null) {
            str2 = str + C1176s.a.f4108a;
        } else {
            str2 = "";
        }
        m11695a(str2 + "expected same:<" + obj + "> was not:<" + obj2 + ">");
    }

    /* renamed from: e */
    public static void m11723e(String str, Object obj, Object obj2) {
        m11695a(m11724f(str, obj, obj2));
    }

    /* renamed from: f */
    public static String m11724f(String str, Object obj, Object obj2) {
        String str2 = "";
        if (str != null && str.length() > 0) {
            str2 = str + C1176s.a.f4108a;
        }
        return str2 + "expected:<" + obj + "> but was:<" + obj2 + ">";
    }
}
