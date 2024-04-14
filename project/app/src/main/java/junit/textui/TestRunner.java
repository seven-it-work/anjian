package junit.textui;

import java.io.PrintStream;
import junit.p190b.AbstractC2615j;
import junit.p190b.C2618m;
import junit.p190b.C2619n;
import junit.p190b.InterfaceC2614i;
import junit.runner.AbstractC2620a;
import junit.runner.Version;

/* loaded from: classes.dex */
public class TestRunner extends AbstractC2620a {

    /* renamed from: e */
    public static final int f10095e = 0;

    /* renamed from: f */
    public static final int f10096f = 1;

    /* renamed from: g */
    public static final int f10097g = 2;

    /* renamed from: h */
    private C2622a f10098h;

    public TestRunner() {
        this(System.out);
    }

    private TestRunner(PrintStream printStream) {
        this(new C2622a(printStream));
    }

    private TestRunner(C2622a c2622a) {
        this.f10098h = c2622a;
    }

    /* renamed from: a */
    private C2618m m11862a(String str, String str2, boolean z) throws Exception {
        return m11863a(C2619n.m11816a(Class.forName(str).asSubclass(AbstractC2615j.class), str2), z);
    }

    /* renamed from: a */
    private C2618m m11863a(InterfaceC2614i interfaceC2614i, boolean z) {
        C2618m c2618m = new C2618m();
        c2618m.m11806a(this.f10098h);
        long currentTimeMillis = System.currentTimeMillis();
        interfaceC2614i.mo11679a(c2618m);
        this.f10098h.m11883a(c2618m, System.currentTimeMillis() - currentTimeMillis);
        if (z) {
            C2622a c2622a = this.f10098h;
            c2622a.f10099a.println();
            c2622a.f10099a.println("<RETURN> to continue");
            try {
                System.in.read();
            } catch (Exception unused) {
            }
        }
        return c2618m;
    }

    /* renamed from: a */
    private C2618m m11864a(String[] strArr) throws Exception {
        String str = "";
        boolean z = false;
        String str2 = "";
        int i = 0;
        while (i < strArr.length) {
            if (strArr[i].equals("-wait")) {
                z = true;
            } else if (strArr[i].equals("-c")) {
                i++;
                str2 = m11837b(strArr[i]);
            } else if (strArr[i].equals("-m")) {
                i++;
                String str3 = strArr[i];
                int lastIndexOf = str3.lastIndexOf(46);
                String substring = str3.substring(0, lastIndexOf);
                str = str3.substring(lastIndexOf + 1);
                str2 = substring;
            } else if (strArr[i].equals("-v")) {
                System.err.println("JUnit " + Version.m11830a() + " by Kent Beck and Erich Gamma");
            } else {
                str2 = strArr[i];
            }
            i++;
        }
        if (str2.equals("")) {
            throw new Exception("Usage: TestRunner [-wait] testCaseName, where name is the name of the TestCase class");
        }
        try {
            return !str.equals("") ? m11863a(C2619n.m11816a(Class.forName(str2).asSubclass(AbstractC2615j.class), str), z) : m11863a(m11851a(str2), z);
        } catch (Exception e) {
            throw new Exception("Could not create and run test suite: " + e);
        }
    }

    /* renamed from: a */
    private static void m11865a(Class<? extends AbstractC2615j> cls) {
        new TestRunner().m11863a((InterfaceC2614i) new C2619n(cls), false);
    }

    /* renamed from: a */
    private void m11866a(C2622a c2622a) {
        this.f10098h = c2622a;
    }

    /* renamed from: a */
    private void m11867a(boolean z) {
        if (z) {
            C2622a c2622a = this.f10098h;
            c2622a.f10099a.println();
            c2622a.f10099a.println("<RETURN> to continue");
            try {
                System.in.read();
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: c */
    private static C2618m m11868c(InterfaceC2614i interfaceC2614i) {
        return new TestRunner().m11863a(interfaceC2614i, false);
    }

    /* renamed from: d */
    private static C2618m m11869d() {
        return new C2618m();
    }

    /* renamed from: d */
    private static void m11870d(InterfaceC2614i interfaceC2614i) {
        new TestRunner().m11863a(interfaceC2614i, true);
    }

    /* renamed from: e */
    private C2618m m11871e(InterfaceC2614i interfaceC2614i) {
        return m11863a(interfaceC2614i, false);
    }

    public static void main(String[] strArr) {
        try {
            if (!new TestRunner().m11864a(strArr).m11813g()) {
                System.exit(1);
            }
            System.exit(0);
        } catch (Exception e) {
            System.err.println(e.getMessage());
            System.exit(2);
        }
    }

    @Override // junit.runner.AbstractC2620a
    /* renamed from: a */
    public final void mo11852a() {
    }

    @Override // junit.runner.AbstractC2620a
    /* renamed from: b */
    public final void mo11853b() {
    }

    @Override // junit.runner.AbstractC2620a
    /* renamed from: c */
    public final void mo11854c() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // junit.runner.AbstractC2620a
    /* renamed from: c */
    public final void mo11855c(String str) {
        System.err.println(str);
        System.exit(1);
    }
}
