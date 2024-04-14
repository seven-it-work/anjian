package junit.textui;

import com.cyjh.common.util.C1176s;
import com.googlecode.tesseract.android.TessBaseAPI;
import com.umeng.analytics.pro.C2427b;
import com.umeng.commonsdk.proguard.C2518v;
import java.io.PrintStream;
import java.text.NumberFormat;
import java.util.Enumeration;
import junit.p190b.C2607b;
import junit.p190b.C2616k;
import junit.p190b.C2618m;
import junit.p190b.InterfaceC2614i;
import junit.p190b.InterfaceC2617l;
import junit.runner.AbstractC2620a;

/* renamed from: junit.textui.a */
/* loaded from: classes.dex */
public final class C2622a implements InterfaceC2617l {

    /* renamed from: a */
    PrintStream f10099a;

    /* renamed from: b */
    int f10100b = 0;

    public C2622a(PrintStream printStream) {
        this.f10099a = printStream;
    }

    /* renamed from: a */
    private void m11872a() {
        this.f10099a.println();
        this.f10099a.println("<RETURN> to continue");
    }

    /* renamed from: a */
    private void m11873a(long j) {
        this.f10099a.println();
        this.f10099a.println("Time: " + NumberFormat.getInstance().format(j / 1000.0d));
    }

    /* renamed from: a */
    private void m11874a(Enumeration<C2616k> enumeration, int i, String str) {
        PrintStream printStream;
        StringBuilder sb;
        String str2;
        if (i == 0) {
            return;
        }
        if (i == 1) {
            printStream = this.f10099a;
            sb = new StringBuilder("There was ");
            sb.append(i);
            sb.append(C1176s.a.f4108a);
            sb.append(str);
            str2 = ":";
        } else {
            printStream = this.f10099a;
            sb = new StringBuilder("There were ");
            sb.append(i);
            sb.append(C1176s.a.f4108a);
            sb.append(str);
            str2 = "s:";
        }
        sb.append(str2);
        printStream.println(sb.toString());
        int i2 = 1;
        while (enumeration.hasMoreElements()) {
            C2616k nextElement = enumeration.nextElement();
            this.f10099a.print(i2 + ") " + nextElement.m11791a());
            this.f10099a.print(AbstractC2620a.m11838d(nextElement.m11792b()));
            i2++;
        }
    }

    /* renamed from: a */
    private void m11875a(C2616k c2616k) {
        this.f10099a.print(AbstractC2620a.m11838d(c2616k.m11792b()));
    }

    /* renamed from: a */
    private void m11876a(C2616k c2616k, int i) {
        this.f10099a.print(i + ") " + c2616k.m11791a());
        this.f10099a.print(AbstractC2620a.m11838d(c2616k.m11792b()));
    }

    /* renamed from: a */
    private void m11877a(C2618m c2618m) {
        m11874a(c2618m.m11807b(), c2618m.m11802a(), C2427b.f8943J);
    }

    /* renamed from: b */
    private PrintStream m11878b() {
        return this.f10099a;
    }

    /* renamed from: b */
    private static String m11879b(long j) {
        return NumberFormat.getInstance().format(j / 1000.0d);
    }

    /* renamed from: b */
    private void m11880b(C2616k c2616k, int i) {
        this.f10099a.print(i + ") " + c2616k.m11791a());
    }

    /* renamed from: b */
    private void m11881b(C2618m c2618m) {
        m11874a(c2618m.m11810d(), c2618m.m11809c(), "failure");
    }

    /* renamed from: c */
    private void m11882c(C2618m c2618m) {
        PrintStream printStream;
        StringBuilder sb;
        if (c2618m.m11813g()) {
            this.f10099a.println();
            this.f10099a.print("OK");
            printStream = this.f10099a;
            sb = new StringBuilder(" (");
            sb.append(c2618m.m11811e());
            sb.append(" test");
            sb.append(c2618m.m11811e() == 1 ? "" : C2518v.f9545al);
            sb.append(")");
        } else {
            this.f10099a.println();
            this.f10099a.println("FAILURES!!!");
            printStream = this.f10099a;
            sb = new StringBuilder("Tests run: ");
            sb.append(c2618m.m11811e());
            sb.append(",  Failures: ");
            sb.append(c2618m.m11809c());
            sb.append(",  Errors: ");
            sb.append(c2618m.m11802a());
        }
        printStream.println(sb.toString());
        this.f10099a.println();
    }

    @Override // junit.p190b.InterfaceC2617l
    /* renamed from: a */
    public final void mo11793a(InterfaceC2614i interfaceC2614i) {
    }

    @Override // junit.p190b.InterfaceC2617l
    /* renamed from: a */
    public final void mo11794a(InterfaceC2614i interfaceC2614i, Throwable th) {
        this.f10099a.print("E");
    }

    @Override // junit.p190b.InterfaceC2617l
    /* renamed from: a */
    public final void mo11795a(InterfaceC2614i interfaceC2614i, C2607b c2607b) {
        this.f10099a.print(TessBaseAPI.f8031f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final synchronized void m11883a(C2618m c2618m, long j) {
        PrintStream printStream;
        String str;
        this.f10099a.println();
        this.f10099a.println("Time: " + NumberFormat.getInstance().format(j / 1000.0d));
        m11874a(c2618m.m11807b(), c2618m.m11802a(), C2427b.f8943J);
        m11874a(c2618m.m11810d(), c2618m.m11809c(), "failure");
        if (c2618m.m11813g()) {
            this.f10099a.println();
            this.f10099a.print("OK");
            printStream = this.f10099a;
            StringBuilder sb = new StringBuilder(" (");
            sb.append(c2618m.m11811e());
            sb.append(" test");
            sb.append(c2618m.m11811e() == 1 ? "" : C2518v.f9545al);
            sb.append(")");
            str = sb.toString();
        } else {
            this.f10099a.println();
            this.f10099a.println("FAILURES!!!");
            printStream = this.f10099a;
            str = "Tests run: " + c2618m.m11811e() + ",  Failures: " + c2618m.m11809c() + ",  Errors: " + c2618m.m11802a();
        }
        printStream.println(str);
        this.f10099a.println();
    }

    @Override // junit.p190b.InterfaceC2617l
    /* renamed from: b */
    public final void mo11796b(InterfaceC2614i interfaceC2614i) {
        this.f10099a.print(".");
        int i = this.f10100b;
        this.f10100b = i + 1;
        if (i >= 40) {
            this.f10099a.println();
            this.f10100b = 0;
        }
    }
}
