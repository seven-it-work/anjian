package org.junit.p228e.p229a;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.List;
import org.junit.p218b.p222d.p223a.AbstractC2885c;

/* renamed from: org.junit.e.a.d */
/* loaded from: classes.dex */
public class C2935d extends AbstractC2934c<C2935d> {

    /* renamed from: a */
    public final Method f10846a;

    public C2935d(Method method) {
        if (method == null) {
            throw new NullPointerException("FrameworkMethod cannot be created without an underlying method.");
        }
        this.f10846a = method;
    }

    /* renamed from: a */
    private void m13195a(List<Throwable> list) {
        C2938g c2938g = new C2938g(this.f10846a);
        for (Type type : c2938g.f10850a.getGenericParameterTypes()) {
            c2938g.m13208a(type, list);
        }
    }

    @Deprecated
    /* renamed from: a */
    private boolean m13196a(Type type) {
        return this.f10846a.getParameterTypes().length == 0 && (type instanceof Class) && ((Class) type).isAssignableFrom(this.f10846a.getReturnType());
    }

    /* renamed from: b */
    private boolean m13197b(C2935d c2935d) {
        if (!c2935d.f10846a.getName().equals(this.f10846a.getName()) || c2935d.f10846a.getParameterTypes().length != this.f10846a.getParameterTypes().length) {
            return false;
        }
        for (int i = 0; i < c2935d.f10846a.getParameterTypes().length; i++) {
            if (!c2935d.f10846a.getParameterTypes()[i].equals(this.f10846a.getParameterTypes()[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: h */
    private Method m13198h() {
        return this.f10846a;
    }

    /* renamed from: i */
    private Class<?> m13199i() {
        return this.f10846a.getReturnType();
    }

    /* renamed from: j */
    private Class<?>[] m13200j() {
        return this.f10846a.getParameterTypes();
    }

    /* renamed from: a */
    public final Object m13201a(final Object obj, final Object... objArr) throws Throwable {
        return new AbstractC2885c() { // from class: org.junit.e.a.d.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.junit.p218b.p222d.p223a.AbstractC2885c
            /* renamed from: b */
            public final Object mo12892b() throws Throwable {
                return C2935d.this.f10846a.invoke(obj, objArr);
            }
        }.m12891a();
    }

    @Override // org.junit.p228e.p229a.InterfaceC2932a
    /* renamed from: a */
    public final <T extends Annotation> T mo13183a(Class<T> cls) {
        return (T) this.f10846a.getAnnotation(cls);
    }

    /* renamed from: a */
    public final void m13202a(boolean z, List<Throwable> list) {
        m13203b(z, list);
        if (this.f10846a.getParameterTypes().length != 0) {
            list.add(new Exception("Method " + this.f10846a.getName() + " should have no parameters"));
        }
    }

    @Override // org.junit.p228e.p229a.AbstractC2934c
    /* renamed from: a */
    public final /* synthetic */ boolean mo13187a(C2935d c2935d) {
        C2935d c2935d2 = c2935d;
        if (!c2935d2.f10846a.getName().equals(this.f10846a.getName()) || c2935d2.f10846a.getParameterTypes().length != this.f10846a.getParameterTypes().length) {
            return false;
        }
        for (int i = 0; i < c2935d2.f10846a.getParameterTypes().length; i++) {
            if (!c2935d2.f10846a.getParameterTypes()[i].equals(this.f10846a.getParameterTypes()[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // org.junit.p228e.p229a.InterfaceC2932a
    /* renamed from: a */
    public final Annotation[] mo13184a() {
        return this.f10846a.getAnnotations();
    }

    @Override // org.junit.p228e.p229a.AbstractC2934c
    /* renamed from: b */
    public final String mo13188b() {
        return this.f10846a.getName();
    }

    /* renamed from: b */
    public final void m13203b(boolean z, List<Throwable> list) {
        if (m13193f() != z) {
            list.add(new Exception("Method " + this.f10846a.getName() + "() " + (z ? "should" : "should not") + " be static"));
        }
        if (!m13194g()) {
            list.add(new Exception("Method " + this.f10846a.getName() + "() should be public"));
        }
        if (this.f10846a.getReturnType() != Void.TYPE) {
            list.add(new Exception("Method " + this.f10846a.getName() + "() should be void"));
        }
    }

    @Override // org.junit.p228e.p229a.AbstractC2934c
    /* renamed from: c */
    protected final int mo13189c() {
        return this.f10846a.getModifiers();
    }

    @Override // org.junit.p228e.p229a.AbstractC2934c
    /* renamed from: d */
    public final Class<?> mo13190d() {
        return this.f10846a.getReturnType();
    }

    @Override // org.junit.p228e.p229a.AbstractC2934c
    /* renamed from: e */
    public final Class<?> mo13191e() {
        return this.f10846a.getDeclaringClass();
    }

    public boolean equals(Object obj) {
        if (C2935d.class.isInstance(obj)) {
            return ((C2935d) obj).f10846a.equals(this.f10846a);
        }
        return false;
    }

    public int hashCode() {
        return this.f10846a.hashCode();
    }

    public String toString() {
        return this.f10846a.toString();
    }
}
