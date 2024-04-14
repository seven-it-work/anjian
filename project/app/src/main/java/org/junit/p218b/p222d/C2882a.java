package org.junit.p218b.p222d;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import org.junit.InterfaceC2862b;
import org.junit.InterfaceC2961g;
import org.junit.p218b.C2872b;
import org.junit.runner.C2980c;
import org.junit.runner.p233b.C2975a;
import org.junit.runner.p233b.C2977c;

@Deprecated
/* renamed from: org.junit.b.d.a */
/* loaded from: classes2.dex */
public final class C2882a {

    /* renamed from: a */
    C2902j f10741a;

    /* renamed from: b */
    final Runnable f10742b;

    /* renamed from: c */
    private C2977c f10743c;

    /* renamed from: d */
    private C2980c f10744d;

    public C2882a(C2977c c2977c, C2902j c2902j, C2980c c2980c, Runnable runnable) {
        this.f10743c = c2977c;
        this.f10741a = c2902j;
        this.f10744d = c2980c;
        this.f10742b = runnable;
    }

    /* renamed from: b */
    private void m12880b() {
        this.f10742b.run();
    }

    /* renamed from: c */
    private void m12881c() {
        try {
            try {
                try {
                    Iterator<Method> it = this.f10741a.m12979a(InterfaceC2961g.class).iterator();
                    while (it.hasNext()) {
                        it.next().invoke(null, new Object[0]);
                    }
                    this.f10742b.run();
                } catch (C2872b unused) {
                    throw new C2889c();
                } catch (Throwable th) {
                    m12884a(th);
                    throw new C2889c();
                }
            } catch (C2889c unused2) {
            } finally {
                m12883a();
            }
        } catch (InvocationTargetException e) {
            throw e.getTargetException();
        }
    }

    /* renamed from: d */
    private void m12882d() throws C2889c {
        try {
            try {
                Iterator<Method> it = this.f10741a.m12979a(InterfaceC2961g.class).iterator();
                while (it.hasNext()) {
                    it.next().invoke(null, new Object[0]);
                }
            } catch (C2872b unused) {
                throw new C2889c();
            } catch (Throwable th) {
                m12884a(th);
                throw new C2889c();
            }
        } catch (InvocationTargetException e) {
            throw e.getTargetException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m12883a() {
        Iterator<Method> it = this.f10741a.m12979a(InterfaceC2862b.class).iterator();
        while (it.hasNext()) {
            try {
                it.next().invoke(null, new Object[0]);
            } catch (InvocationTargetException e) {
                th = e.getTargetException();
                m12884a(th);
            } catch (Throwable th) {
                th = th;
                m12884a(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m12884a(Throwable th) {
        this.f10743c.m13367a(new C2975a(this.f10744d, th));
    }
}
