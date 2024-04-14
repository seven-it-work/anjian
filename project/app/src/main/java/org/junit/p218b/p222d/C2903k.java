package org.junit.p218b.p222d;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import org.junit.InterfaceC2830a;
import org.junit.InterfaceC2954f;
import org.junit.InterfaceC2965k;
import org.junit.InterfaceC2967m;

@Deprecated
/* renamed from: org.junit.b.d.k */
/* loaded from: classes2.dex */
public final class C2903k {

    /* renamed from: a */
    final Method f10799a;

    /* renamed from: b */
    C2902j f10800b;

    public C2903k(Method method, C2902j c2902j) {
        this.f10799a = method;
        this.f10800b = c2902j;
    }

    /* renamed from: a */
    private void m12980a(Object obj) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        this.f10799a.invoke(obj, new Object[0]);
    }

    /* renamed from: c */
    private boolean m12981c() {
        return this.f10799a.getAnnotation(InterfaceC2965k.class) != null;
    }

    /* renamed from: d */
    private long m12982d() {
        InterfaceC2967m interfaceC2967m = (InterfaceC2967m) this.f10799a.getAnnotation(InterfaceC2967m.class);
        if (interfaceC2967m == null) {
            return 0L;
        }
        return interfaceC2967m.m13336b();
    }

    /* renamed from: e */
    private List<Method> m12983e() {
        return this.f10800b.m12979a(InterfaceC2954f.class);
    }

    /* renamed from: f */
    private List<Method> m12984f() {
        return this.f10800b.m12979a(InterfaceC2830a.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Class<? extends Throwable> m12985a() {
        InterfaceC2967m interfaceC2967m = (InterfaceC2967m) this.f10799a.getAnnotation(InterfaceC2967m.class);
        if (interfaceC2967m == null || interfaceC2967m.m13335a() == InterfaceC2967m.a.class) {
            return null;
        }
        return interfaceC2967m.m13335a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m12986a(Throwable th) {
        return !m12985a().isAssignableFrom(th.getClass());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m12987b() {
        return m12985a() != null;
    }
}
