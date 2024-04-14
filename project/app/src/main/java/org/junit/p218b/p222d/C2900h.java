package org.junit.p218b.p222d;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;
import org.junit.InterfaceC2830a;
import org.junit.InterfaceC2862b;
import org.junit.InterfaceC2954f;
import org.junit.InterfaceC2961g;
import org.junit.InterfaceC2967m;

@Deprecated
/* renamed from: org.junit.b.d.h */
/* loaded from: classes2.dex */
public final class C2900h {

    /* renamed from: a */
    final List<Throwable> f10796a = new ArrayList();

    /* renamed from: b */
    C2902j f10797b;

    public C2900h(C2902j c2902j) {
        this.f10797b = c2902j;
    }

    /* renamed from: b */
    private void m12962b() {
        m12967a(InterfaceC2830a.class, false);
        m12967a(InterfaceC2954f.class, false);
        m12967a(InterfaceC2967m.class, false);
        if (this.f10797b.m12979a(InterfaceC2967m.class).size() == 0) {
            this.f10796a.add(new Exception("No runnable methods"));
        }
    }

    /* renamed from: c */
    private void m12963c() {
        m12967a(InterfaceC2961g.class, true);
        m12967a(InterfaceC2862b.class, true);
    }

    /* renamed from: d */
    private List<Throwable> m12964d() {
        try {
            this.f10797b.m12978a();
        } catch (Exception e) {
            this.f10796a.add(new Exception("Test class should have public zero-argument constructor", e));
        }
        m12963c();
        m12962b();
        return this.f10796a;
    }

    /* renamed from: e */
    private void m12965e() throws C2896d {
        if (!this.f10796a.isEmpty()) {
            throw new C2896d(this.f10796a);
        }
    }

    /* renamed from: a */
    public final void m12966a() {
        try {
            this.f10797b.m12978a();
        } catch (Exception e) {
            this.f10796a.add(new Exception("Test class should have public zero-argument constructor", e));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m12967a(Class<? extends Annotation> cls, boolean z) {
        for (Method method : this.f10797b.m12979a(cls)) {
            if (Modifier.isStatic(method.getModifiers()) != z) {
                String str = z ? "should" : "should not";
                this.f10796a.add(new Exception("Method " + method.getName() + "() " + str + " be static"));
            }
            if (!Modifier.isPublic(method.getDeclaringClass().getModifiers())) {
                this.f10796a.add(new Exception("Class " + method.getDeclaringClass().getName() + " should be public"));
            }
            if (!Modifier.isPublic(method.getModifiers())) {
                this.f10796a.add(new Exception("Method " + method.getName() + " should be public"));
            }
            if (method.getReturnType() != Void.TYPE) {
                this.f10796a.add(new Exception("Method " + method.getName() + " should be void"));
            }
            if (method.getParameterTypes().length != 0) {
                this.f10796a.add(new Exception("Method " + method.getName() + " should have no parameters"));
            }
        }
    }
}
