package junit.p190b;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import junit.p190b.C2618m;

/* renamed from: junit.b.j */
/* loaded from: classes.dex */
public abstract class AbstractC2615j extends C2606a implements InterfaceC2614i {

    /* renamed from: a */
    public String f10075a;

    public AbstractC2615j() {
        this.f10075a = null;
    }

    public AbstractC2615j(String str) {
        this.f10075a = str;
    }

    /* renamed from: a */
    private static void m11742a(byte b2, byte b3) {
        C2606a.m11696a((String) null, b2, b3);
    }

    /* renamed from: a */
    private static void m11743a(char c2, char c3) {
        C2606a.m11697a((String) null, c2, c3);
    }

    /* renamed from: a */
    private static void m11744a(double d, double d2, double d3) {
        C2606a.m11698a((String) null, d, d2, d3);
    }

    /* renamed from: a */
    private static void m11745a(float f, float f2, float f3) {
        C2606a.m11699a((String) null, f, f2, f3);
    }

    /* renamed from: a */
    private static void m11746a(int i, int i2) {
        C2606a.m11700a((String) null, i, i2);
    }

    /* renamed from: a */
    private static void m11747a(long j, long j2) {
        C2606a.m11701a((String) null, j, j2);
    }

    /* renamed from: a */
    private static void m11748a(Object obj) {
        C2606a.m11702a((String) null, obj);
    }

    /* renamed from: a */
    private static void m11749a(Object obj, Object obj2) {
        C2606a.m11703a((String) null, obj, obj2);
    }

    /* renamed from: a */
    private static void m11750a(String str, String str2) {
        C2606a.m11705a((String) null, str, str2);
    }

    /* renamed from: a */
    private static void m11751a(short s, short s2) {
        C2606a.m11706a((String) null, s, s2);
    }

    /* renamed from: a */
    private static void m11752a(boolean z) {
        C2606a.m11707a((String) null, z);
    }

    /* renamed from: a */
    private static void m11753a(boolean z, boolean z2) {
        C2606a.m11708a((String) null, z, z2);
    }

    /* renamed from: b */
    private static void m11754b(Object obj) {
        if (obj != null) {
            C2606a.m11716b("Expected: <null> but was: " + obj.toString(), obj);
        }
    }

    /* renamed from: b */
    private static void m11755b(Object obj, Object obj2) {
        C2606a.m11717b(null, obj, obj2);
    }

    /* renamed from: b */
    private static void m11756b(String str, byte b2, byte b3) {
        C2606a.m11696a(str, b2, b3);
    }

    /* renamed from: b */
    private static void m11757b(String str, char c2, char c3) {
        C2606a.m11697a(str, c2, c3);
    }

    /* renamed from: b */
    private static void m11758b(String str, double d, double d2, double d3) {
        C2606a.m11698a(str, d, d2, d3);
    }

    /* renamed from: b */
    private static void m11759b(String str, float f, float f2, float f3) {
        C2606a.m11699a(str, f, f2, f3);
    }

    /* renamed from: b */
    private static void m11760b(String str, int i, int i2) {
        C2606a.m11700a(str, i, i2);
    }

    /* renamed from: b */
    private static void m11761b(String str, long j, long j2) {
        C2606a.m11701a(str, j, j2);
    }

    /* renamed from: b */
    private static void m11762b(String str, String str2, String str3) {
        C2606a.m11705a(str, str2, str3);
    }

    /* renamed from: b */
    private static void m11763b(String str, short s, short s2) {
        C2606a.m11706a(str, s, s2);
    }

    /* renamed from: b */
    private static void m11764b(String str, boolean z, boolean z2) {
        C2606a.m11708a(str, z, z2);
    }

    /* renamed from: b */
    private static void m11765b(boolean z) {
        C2606a.m11718b((String) null, z);
    }

    /* renamed from: c */
    private static void m11766c(Object obj, Object obj2) {
        C2606a.m11721c(null, obj, obj2);
    }

    /* renamed from: c */
    private static void m11767c(String str) {
        C2606a.m11695a(str);
    }

    /* renamed from: c */
    private static void m11768c(String str, Object obj) {
        C2606a.m11702a(str, obj);
    }

    /* renamed from: c */
    private static void m11769c(String str, boolean z) {
        C2606a.m11707a(str, z);
    }

    /* renamed from: d */
    private static C2618m m11770d() {
        return new C2618m();
    }

    /* renamed from: d */
    private static void m11771d(String str) {
        C2606a.m11715b(str);
    }

    /* renamed from: d */
    private static void m11772d(String str, Object obj) {
        C2606a.m11716b(str, obj);
    }

    /* renamed from: d */
    private static void m11773d(String str, boolean z) {
        C2606a.m11718b(str, z);
    }

    /* renamed from: e */
    private C2618m m11774e() {
        C2618m c2618m = new C2618m();
        mo11679a(c2618m);
        return c2618m;
    }

    /* renamed from: e */
    private void m11775e(String str) {
        this.f10075a = str;
    }

    /* renamed from: f */
    private static void m11776f() {
        C2606a.m11695a((String) null);
    }

    /* renamed from: g */
    private static void m11777g() throws Exception {
    }

    /* renamed from: g */
    private static void m11778g(String str, Object obj, Object obj2) {
        C2606a.m11703a(str, obj, obj2);
    }

    /* renamed from: h */
    private static void m11779h() throws Exception {
    }

    /* renamed from: h */
    private static void m11780h(String str, Object obj, Object obj2) {
        C2606a.m11717b(str, obj, obj2);
    }

    /* renamed from: i */
    private String m11781i() {
        return this.f10075a;
    }

    /* renamed from: i */
    private static void m11782i(String str, Object obj, Object obj2) {
        C2606a.m11721c(str, obj, obj2);
    }

    /* renamed from: j */
    private static void m11783j(String str, Object obj, Object obj2) {
        C2606a.m11722d(str, obj, obj2);
    }

    /* renamed from: k */
    private static void m11784k(String str, Object obj, Object obj2) {
        C2606a.m11723e(str, obj, obj2);
    }

    /* renamed from: l */
    private static String m11785l(String str, Object obj, Object obj2) {
        return C2606a.m11724f(str, obj, obj2);
    }

    @Override // junit.p190b.InterfaceC2614i
    /* renamed from: a */
    public final int mo11681a() {
        return 1;
    }

    @Override // junit.p190b.InterfaceC2614i
    /* renamed from: a */
    public final void mo11679a(C2618m c2618m) {
        c2618m.m11808b(this);
        c2618m.m11805a(this, new C2618m.AnonymousClass1(this));
        c2618m.m11803a((InterfaceC2614i) this);
    }

    /* renamed from: b */
    public final void m11786b() throws Throwable {
        try {
            mo11787c();
            th = null;
        } catch (Throwable th) {
            throw th;
        }
        if (th != null) {
            throw th;
        }
    }

    /* renamed from: c */
    protected void mo11787c() throws Throwable {
        C2606a.m11702a("TestCase.fName cannot be null", (Object) this.f10075a);
        Method method = null;
        try {
            method = getClass().getMethod(this.f10075a, null);
        } catch (NoSuchMethodException unused) {
            C2606a.m11695a("Method \"" + this.f10075a + "\" not found");
        }
        if (!Modifier.isPublic(method.getModifiers())) {
            C2606a.m11695a("Method \"" + this.f10075a + "\" should be public");
        }
        try {
            method.invoke(this, new Object[0]);
        } catch (IllegalAccessException e) {
            e.fillInStackTrace();
            throw e;
        } catch (InvocationTargetException e2) {
            e2.fillInStackTrace();
            throw e2.getTargetException();
        }
    }

    public String toString() {
        return this.f10075a + "(" + getClass().getName() + ")";
    }
}
