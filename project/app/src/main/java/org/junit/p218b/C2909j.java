package org.junit.p218b;

import com.umeng.commonsdk.proguard.C2518v;
import java.io.PrintStream;
import java.text.NumberFormat;
import java.util.List;
import org.apache.commons.io.FilenameUtils;
import org.junit.runner.C2980c;
import org.junit.runner.C2986i;
import org.junit.runner.p233b.C2975a;
import org.junit.runner.p233b.C2976b;

/* renamed from: org.junit.b.j */
/* loaded from: classes2.dex */
public final class C2909j extends C2976b {

    /* renamed from: a */
    private final PrintStream f10804a;

    public C2909j(PrintStream printStream) {
        this.f10804a = printStream;
    }

    public C2909j(InterfaceC2906g interfaceC2906g) {
        this(interfaceC2906g.mo12988a());
    }

    /* renamed from: a */
    private PrintStream m12994a() {
        return this.f10804a;
    }

    /* renamed from: a */
    private void m12995a(long j) {
        this.f10804a.println();
        this.f10804a.println("Time: " + NumberFormat.getInstance().format(j / 1000.0d));
    }

    /* renamed from: a */
    private void m12996a(C2975a c2975a, String str) {
        this.f10804a.println(str + ") " + c2975a.getTestHeader());
        this.f10804a.print(c2975a.getTrace());
    }

    /* renamed from: b */
    private static String m12997b(long j) {
        return NumberFormat.getInstance().format(j / 1000.0d);
    }

    /* renamed from: b */
    private void m12998b(C2986i c2986i) {
        PrintStream printStream;
        StringBuilder sb;
        String str;
        List<C2975a> failures = c2986i.getFailures();
        if (failures.size() == 0) {
            return;
        }
        int i = 1;
        if (failures.size() == 1) {
            printStream = this.f10804a;
            sb = new StringBuilder("There was ");
            sb.append(failures.size());
            str = " failure:";
        } else {
            printStream = this.f10804a;
            sb = new StringBuilder("There were ");
            sb.append(failures.size());
            str = " failures:";
        }
        sb.append(str);
        printStream.println(sb.toString());
        for (C2975a c2975a : failures) {
            StringBuilder sb2 = new StringBuilder();
            int i2 = i + 1;
            sb2.append(i);
            String sb3 = sb2.toString();
            this.f10804a.println(sb3 + ") " + c2975a.getTestHeader());
            this.f10804a.print(c2975a.getTrace());
            i = i2;
        }
    }

    /* renamed from: c */
    private void m12999c(C2986i c2986i) {
        PrintStream printStream;
        StringBuilder sb;
        if (c2986i.wasSuccessful()) {
            this.f10804a.println();
            this.f10804a.print("OK");
            printStream = this.f10804a;
            sb = new StringBuilder(" (");
            sb.append(c2986i.getRunCount());
            sb.append(" test");
            sb.append(c2986i.getRunCount() == 1 ? "" : C2518v.f9545al);
            sb.append(")");
        } else {
            this.f10804a.println();
            this.f10804a.println("FAILURES!!!");
            printStream = this.f10804a;
            sb = new StringBuilder("Tests run: ");
            sb.append(c2986i.getRunCount());
            sb.append(",  Failures: ");
            sb.append(c2986i.getFailureCount());
        }
        printStream.println(sb.toString());
        this.f10804a.println();
    }

    @Override // org.junit.runner.p233b.C2976b
    /* renamed from: a */
    public final void mo11739a(C2975a c2975a) {
        this.f10804a.append('E');
    }

    @Override // org.junit.runner.p233b.C2976b
    /* renamed from: a */
    public final void mo12760a(C2986i c2986i) {
        PrintStream printStream;
        StringBuilder sb;
        long runTime = c2986i.getRunTime();
        this.f10804a.println();
        this.f10804a.println("Time: " + NumberFormat.getInstance().format(runTime / 1000.0d));
        m12998b(c2986i);
        if (c2986i.wasSuccessful()) {
            this.f10804a.println();
            this.f10804a.print("OK");
            printStream = this.f10804a;
            sb = new StringBuilder(" (");
            sb.append(c2986i.getRunCount());
            sb.append(" test");
            sb.append(c2986i.getRunCount() == 1 ? "" : C2518v.f9545al);
            sb.append(")");
        } else {
            this.f10804a.println();
            this.f10804a.println("FAILURES!!!");
            printStream = this.f10804a;
            sb = new StringBuilder("Tests run: ");
            sb.append(c2986i.getRunCount());
            sb.append(",  Failures: ");
            sb.append(c2986i.getFailureCount());
        }
        printStream.println(sb.toString());
        this.f10804a.println();
    }

    @Override // org.junit.runner.p233b.C2976b
    /* renamed from: b */
    public final void mo11741b(C2980c c2980c) {
        this.f10804a.append(FilenameUtils.EXTENSION_SEPARATOR);
    }

    @Override // org.junit.runner.p233b.C2976b
    /* renamed from: c */
    public final void mo13000c(C2980c c2980c) {
        this.f10804a.append('I');
    }
}
