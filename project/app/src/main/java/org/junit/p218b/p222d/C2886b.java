package org.junit.p218b.p222d;

import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.junit.p228e.p229a.C2936e;
import org.junit.runner.AbstractC2988k;
import org.junit.runner.C2980c;
import org.junit.runner.p233b.C2975a;
import org.junit.runner.p233b.C2977c;

/* renamed from: org.junit.b.d.b */
/* loaded from: classes2.dex */
public final class C2886b extends AbstractC2988k {

    /* renamed from: a */
    private final List<Throwable> f10747a;

    /* renamed from: b */
    private final Class<?> f10748b;

    public C2886b(Class<?> cls, Throwable th) {
        if (cls == null) {
            throw new NullPointerException("Test class cannot be null");
        }
        this.f10748b = cls;
        this.f10747a = m12893a(th);
    }

    /* renamed from: a */
    private static List<Throwable> m12893a(Throwable th) {
        while (th instanceof InvocationTargetException) {
            th = th.getCause();
        }
        return th instanceof C2936e ? ((C2936e) th).getCauses() : th instanceof C2896d ? ((C2896d) th).getCauses() : Arrays.asList(th);
    }

    /* renamed from: a */
    private C2980c m12894a() {
        return C2980c.createTestDescription(this.f10748b, "initializationError");
    }

    /* renamed from: a */
    private void m12895a(Throwable th, C2977c c2977c) {
        C2980c m12894a = m12894a();
        c2977c.m13369a(m12894a);
        c2977c.m13367a(new C2975a(m12894a, th));
        c2977c.m13372c(m12894a);
    }

    @Override // org.junit.runner.AbstractC2988k
    /* renamed from: a */
    public final void mo12858a(C2977c c2977c) {
        for (Throwable th : this.f10747a) {
            C2980c m12894a = m12894a();
            c2977c.m13369a(m12894a);
            c2977c.m13367a(new C2975a(m12894a, th));
            c2977c.m13372c(m12894a);
        }
    }

    @Override // org.junit.runner.AbstractC2988k, org.junit.runner.InterfaceC2974b
    /* renamed from: b */
    public final C2980c mo11738b() {
        C2980c createSuiteDescription = C2980c.createSuiteDescription(this.f10748b);
        Iterator<Throwable> it = this.f10747a.iterator();
        while (it.hasNext()) {
            it.next();
            createSuiteDescription.addChild(m12894a());
        }
        return createSuiteDescription;
    }
}
