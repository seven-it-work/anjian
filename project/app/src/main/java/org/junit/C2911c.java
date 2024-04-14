package org.junit;

import com.cyjh.common.util.C1176s;
import org.junit.p218b.C2863a;
import org.junit.p218b.C2904e;
import org.junit.p218b.C2905f;
import org.p202a.C2749l;
import org.p202a.InterfaceC2748k;

/* renamed from: org.junit.c */
/* loaded from: classes2.dex */
public final class C2911c {
    protected C2911c() {
    }

    /* renamed from: a */
    private static String m13003a(Object obj, String str) {
        return (obj == null ? "null" : obj.getClass().getName()) + "<" + str + ">";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m13004a(String str, Object obj, Object obj2) {
        String str2 = "";
        if (str != null && !str.equals("")) {
            str2 = str + C1176s.a.f4108a;
        }
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(obj2);
        if (valueOf.equals(valueOf2)) {
            return str2 + "expected: " + m13003a(obj, valueOf) + " but was: " + m13003a(obj2, valueOf2);
        }
        return str2 + "expected:<" + valueOf + "> but was:<" + valueOf2 + ">";
    }

    /* renamed from: a */
    private static void m13005a() {
        m13010a((String) null);
    }

    /* renamed from: a */
    private static void m13006a(long j) {
        if (1 != j) {
            m13032b((Object) 1L, (Object) Long.valueOf(j));
        }
    }

    /* renamed from: a */
    private static void m13007a(long j, long j2) {
        if (j == j2) {
            m13008a(Long.valueOf(j2));
        }
    }

    /* renamed from: a */
    private static void m13008a(Object obj) {
        m13010a("Values should be different. Actual: " + obj);
    }

    /* renamed from: a */
    private static <T> void m13009a(T t, InterfaceC2748k<? super T> interfaceC2748k) {
        C2749l.m12426a("", t, interfaceC2748k);
    }

    /* renamed from: a */
    public static void m13010a(String str) {
        if (str != null) {
            throw new AssertionError(str);
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    private static void m13011a(String str, Object obj) {
        String str2 = "";
        if (str != null) {
            str2 = str + C1176s.a.f4108a;
        }
        m13010a(str2 + "expected null, but was:<" + obj + ">");
    }

    /* renamed from: a */
    private static <T> void m13012a(String str, T t, InterfaceC2748k<? super T> interfaceC2748k) {
        C2749l.m12426a(str, t, interfaceC2748k);
    }

    /* renamed from: a */
    private static void m13013a(String str, Object[] objArr, Object[] objArr2) throws C2863a {
        m13034b(str, (Object) objArr, (Object) objArr2);
    }

    /* renamed from: a */
    private static void m13014a(boolean z) {
        if (z) {
            return;
        }
        m13010a((String) null);
    }

    /* renamed from: a */
    private static void m13015a(byte[] bArr, byte[] bArr2) throws C2863a {
        m13034b((String) null, bArr, bArr2);
    }

    /* renamed from: a */
    private static void m13016a(char[] cArr, char[] cArr2) throws C2863a {
        m13034b((String) null, cArr, cArr2);
    }

    /* renamed from: a */
    private static void m13017a(double[] dArr, double[] dArr2, double d) throws C2863a {
        new C2905f(d).m12879a((String) null, dArr, dArr2);
    }

    /* renamed from: a */
    private static void m13018a(float[] fArr, float[] fArr2, float f) throws C2863a {
        new C2905f(f).m12879a((String) null, fArr, fArr2);
    }

    /* renamed from: a */
    private static void m13019a(int[] iArr, int[] iArr2) throws C2863a {
        m13034b((String) null, iArr, iArr2);
    }

    /* renamed from: a */
    private static void m13020a(long[] jArr, long[] jArr2) throws C2863a {
        m13034b((String) null, jArr, jArr2);
    }

    /* renamed from: a */
    private static void m13021a(Object[] objArr, Object[] objArr2) {
        m13034b((String) null, (Object) objArr, (Object) objArr2);
    }

    /* renamed from: a */
    private static void m13022a(short[] sArr, short[] sArr2) throws C2863a {
        m13034b((String) null, sArr, sArr2);
    }

    /* renamed from: a */
    private static void m13023a(boolean[] zArr, boolean[] zArr2) throws C2863a {
        m13034b((String) null, zArr, zArr2);
    }

    /* renamed from: a */
    public static boolean m13024a(double d, double d2, double d3) {
        return Double.compare(d, d2) != 0 && Math.abs(d - d2) > d3;
    }

    /* renamed from: a */
    public static boolean m13025a(float f, float f2, float f3) {
        return Float.compare(f, f2) != 0 && Math.abs(f - f2) > f3;
    }

    /* renamed from: a */
    public static boolean m13026a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Deprecated
    /* renamed from: b */
    private static void m13027b() {
        m13010a("Use assertEquals(expected, actual, delta) to compare floating-point numbers");
    }

    /* renamed from: b */
    private static void m13028b(double d, double d2, double d3) {
        if (m13024a(d, d2, d3)) {
            return;
        }
        m13008a(Double.valueOf(d2));
    }

    /* renamed from: b */
    private static void m13029b(float f, float f2, float f3) {
        if (m13025a(f, f2, f3)) {
            return;
        }
        m13008a(Float.valueOf(f2));
    }

    /* renamed from: b */
    private static void m13030b(long j, long j2) {
        if (j == j2) {
            m13008a(Long.valueOf(j2));
        }
    }

    /* renamed from: b */
    private static void m13031b(Object obj) {
        m13014a(obj != null);
    }

    /* renamed from: b */
    public static void m13032b(Object obj, Object obj2) {
        m13010a(m13004a((String) null, obj, obj2));
    }

    /* renamed from: b */
    private static void m13033b(String str) {
        String str2 = "";
        if (str != null) {
            str2 = str + C1176s.a.f4108a;
        }
        m13010a(str2 + "expected not same");
    }

    /* renamed from: b */
    private static void m13034b(String str, Object obj, Object obj2) throws C2863a {
        new C2904e().m12879a(str, obj, obj2);
    }

    @Deprecated
    /* renamed from: b */
    private static void m13035b(String str, Object[] objArr, Object[] objArr2) {
        m13034b(str, (Object) objArr, (Object) objArr2);
    }

    /* renamed from: b */
    private static void m13036b(boolean z) {
        m13014a(z);
    }

    /* renamed from: b */
    private static void m13037b(byte[] bArr, byte[] bArr2) {
        m13034b((String) null, bArr, bArr2);
    }

    /* renamed from: b */
    private static void m13038b(char[] cArr, char[] cArr2) {
        m13034b((String) null, cArr, cArr2);
    }

    /* renamed from: b */
    private static void m13039b(double[] dArr, double[] dArr2, double d) {
        new C2905f(d).m12879a((String) null, dArr, dArr2);
    }

    /* renamed from: b */
    private static void m13040b(float[] fArr, float[] fArr2, float f) {
        new C2905f(f).m12879a((String) null, fArr, fArr2);
    }

    /* renamed from: b */
    private static void m13041b(int[] iArr, int[] iArr2) {
        m13034b((String) null, iArr, iArr2);
    }

    /* renamed from: b */
    private static void m13042b(long[] jArr, long[] jArr2) {
        m13034b((String) null, jArr, jArr2);
    }

    @Deprecated
    /* renamed from: b */
    private static void m13043b(Object[] objArr, Object[] objArr2) {
        m13034b((String) null, (Object) objArr, (Object) objArr2);
    }

    /* renamed from: b */
    private static void m13044b(short[] sArr, short[] sArr2) {
        m13034b((String) null, sArr, sArr2);
    }

    /* renamed from: b */
    private static void m13045b(boolean[] zArr, boolean[] zArr2) {
        m13034b((String) null, zArr, zArr2);
    }

    @Deprecated
    /* renamed from: c */
    private static void m13046c() {
        m13010a("Use assertEquals(expected, actual, delta) to compare floating-point numbers");
    }

    /* renamed from: c */
    private static void m13047c(double d, double d2, double d3) {
        if (m13024a(d, d2, d3)) {
            return;
        }
        m13008a(Double.valueOf(d2));
    }

    /* renamed from: c */
    private static void m13048c(float f, float f2, float f3) {
        if (m13025a(f, f2, f3)) {
            m13032b(Float.valueOf(f), Float.valueOf(f2));
        }
    }

    /* renamed from: c */
    private static void m13049c(long j, long j2) {
        if (j != j2) {
            m13032b(Long.valueOf(j), Long.valueOf(j2));
        }
    }

    /* renamed from: c */
    private static void m13050c(Object obj) {
        m13014a(obj != null);
    }

    /* renamed from: c */
    private static void m13051c(Object obj, Object obj2) {
        if (m13026a(obj, obj2)) {
            return;
        }
        if ((obj instanceof String) && (obj2 instanceof String)) {
            throw new C2963i("", (String) obj, (String) obj2);
        }
        m13032b(obj, obj2);
    }

    /* renamed from: c */
    private static void m13052c(String str, Object obj, Object obj2) {
        String str2 = "";
        if (str != null) {
            str2 = str + C1176s.a.f4108a;
        }
        m13010a(str2 + "expected same:<" + obj + "> was not:<" + obj2 + ">");
    }

    /* renamed from: c */
    private static void m13053c(boolean z) {
        m13014a(!z);
    }

    /* renamed from: d */
    private static void m13054d(double d, double d2, double d3) {
        if (m13024a(d, d2, d3)) {
            m13032b(Double.valueOf(d), Double.valueOf(d2));
        }
    }

    /* renamed from: d */
    private static void m13055d(float f, float f2, float f3) {
        if (m13025a(f, f2, f3)) {
            return;
        }
        m13008a(Float.valueOf(f2));
    }

    /* renamed from: d */
    private static void m13056d(Object obj) {
        if (obj == null) {
            return;
        }
        m13010a("expected null, but was:<" + obj + ">");
    }

    /* renamed from: d */
    private static void m13057d(boolean z) {
        m13014a(!z);
    }

    /* renamed from: d */
    private static boolean m13058d(Object obj, Object obj2) {
        return obj.equals(obj2);
    }

    /* renamed from: e */
    private static void m13059e(double d, double d2, double d3) {
        if (m13024a(d, d2, d3)) {
            m13032b(Double.valueOf(d), Double.valueOf(d2));
        }
    }

    /* renamed from: e */
    private static void m13060e(float f, float f2, float f3) {
        if (m13025a(f, f2, f3)) {
            m13032b(Float.valueOf(f), Float.valueOf(f2));
        }
    }

    /* renamed from: e */
    private static void m13061e(Object obj) {
        if (obj != null) {
            m13010a("expected null, but was:<" + obj + ">");
        }
    }

    /* renamed from: e */
    private static void m13062e(Object obj, Object obj2) {
        if (m13026a(obj, obj2)) {
            return;
        }
        if ((obj instanceof String) && (obj2 instanceof String)) {
            throw new C2963i("", (String) obj, (String) obj2);
        }
        m13032b(obj, obj2);
    }

    /* renamed from: f */
    private static void m13063f(Object obj, Object obj2) {
        if (m13026a(obj, obj2)) {
            m13008a(obj2);
        }
    }

    /* renamed from: g */
    private static void m13064g(Object obj, Object obj2) {
        if (m13026a(obj, obj2)) {
            m13008a(obj2);
        }
    }

    /* renamed from: h */
    private static void m13065h(Object obj, Object obj2) {
        if (obj == obj2) {
            return;
        }
        m13010a("expected same:<" + obj + "> was not:<" + obj2 + ">");
    }

    /* renamed from: i */
    private static void m13066i(Object obj, Object obj2) {
        if (obj != obj2) {
            m13010a("expected same:<" + obj + "> was not:<" + obj2 + ">");
        }
    }

    /* renamed from: j */
    private static void m13067j(Object obj, Object obj2) {
        if (obj == obj2) {
            m13010a("expected not same");
        }
    }

    /* renamed from: k */
    private static void m13068k(Object obj, Object obj2) {
        if (obj == obj2) {
            m13010a("expected not same");
        }
    }
}
