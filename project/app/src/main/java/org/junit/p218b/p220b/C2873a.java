package org.junit.p218b.p220b;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Throwable;
import org.p202a.AbstractC2753p;
import org.p202a.InterfaceC2744g;
import org.p202a.InterfaceC2746i;
import org.p202a.InterfaceC2748k;

/* renamed from: org.junit.b.b.a */
/* loaded from: classes2.dex */
public final class C2873a<T extends Throwable> extends AbstractC2753p<T> {

    /* renamed from: a */
    private final InterfaceC2748k<T> f10729a;

    private C2873a(InterfaceC2748k<T> interfaceC2748k) {
        this.f10729a = interfaceC2748k;
    }

    @InterfaceC2746i
    /* renamed from: a */
    public static <T extends Throwable> InterfaceC2748k<T> m12861a(InterfaceC2748k<T> interfaceC2748k) {
        return new C2873a(interfaceC2748k);
    }

    /* renamed from: a */
    private void m12862a(T t, InterfaceC2744g interfaceC2744g) {
        this.f10729a.mo12330a(t, interfaceC2744g);
        interfaceC2744g.mo12297a("\nStacktrace was: ");
        StringWriter stringWriter = new StringWriter();
        t.printStackTrace(new PrintWriter(stringWriter));
        interfaceC2744g.mo12297a(stringWriter.toString());
    }

    /* renamed from: a */
    private boolean m12863a(T t) {
        return this.f10729a.mo12320a(t);
    }

    /* renamed from: b */
    private static String m12864b(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    @InterfaceC2746i
    /* renamed from: b */
    public static <T extends Exception> InterfaceC2748k<T> m12865b(InterfaceC2748k<T> interfaceC2748k) {
        return new C2873a(interfaceC2748k);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.p202a.AbstractC2753p
    /* renamed from: b */
    public final /* synthetic */ void mo12368b(Object obj, InterfaceC2744g interfaceC2744g) {
        Throwable th = (Throwable) obj;
        this.f10729a.mo12330a(th, interfaceC2744g);
        interfaceC2744g.mo12297a("\nStacktrace was: ");
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        interfaceC2744g.mo12297a(stringWriter.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.p202a.AbstractC2753p
    /* renamed from: b */
    public final /* synthetic */ boolean mo12369b(Object obj) {
        return this.f10729a.mo12320a((Throwable) obj);
    }

    @Override // org.p202a.InterfaceC2750m
    public final void describeTo(InterfaceC2744g interfaceC2744g) {
        this.f10729a.describeTo(interfaceC2744g);
    }
}
