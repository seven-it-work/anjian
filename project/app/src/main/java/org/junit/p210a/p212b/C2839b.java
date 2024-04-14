package org.junit.p210a.p212b;

import java.io.File;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import junit.p190b.C2619n;
import org.junit.p218b.p221c.C2880c;
import org.junit.p218b.p222d.C2886b;
import org.junit.p218b.p222d.C2897e;
import org.junit.p228e.C2953g;
import org.junit.p228e.p229a.C2936e;
import org.junit.runner.AbstractC2985h;
import org.junit.runner.AbstractC2988k;
import org.junit.runner.C2980c;
import org.junit.runner.C2986i;
import org.junit.runner.JUnitCore;
import org.junit.runner.p232a.AbstractC2969a;

/* renamed from: org.junit.a.b.b */
/* loaded from: classes2.dex */
public final class C2839b {

    /* renamed from: a */
    private static final String f10688a = "malformed JUnit 3 test class: ";

    /* renamed from: b */
    private final C2840c f10689b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.junit.a.b.b$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends AbstractC2985h {

        /* renamed from: a */
        final /* synthetic */ List f10690a;

        AnonymousClass1(List list) {
            this.f10690a = list;
        }

        @Override // org.junit.runner.AbstractC2985h
        /* renamed from: a */
        public final AbstractC2988k mo12759a() {
            try {
                return new C2953g(this.f10690a) { // from class: org.junit.a.b.b.1.1
                };
            } catch (C2936e e) {
                return new C2886b(null, e);
            }
        }
    }

    private C2839b(File file) {
        this.f10689b = C2840c.forFolder(file);
    }

    /* renamed from: a */
    private static C2839b m12747a(File file) {
        return new C2839b(file);
    }

    @Deprecated
    /* renamed from: a */
    private static C2839b m12748a(String str) {
        return new C2839b(new File(str));
    }

    /* renamed from: a */
    private AbstractC2985h m12749a(List<C2980c> list) {
        AbstractC2988k mo12759a;
        ArrayList arrayList = new ArrayList();
        for (C2980c c2980c : list) {
            if (c2980c.toString().equals("TestSuite with 0 tests")) {
                mo12759a = C2953g.m13306a();
            } else if (c2980c.toString().startsWith(f10688a)) {
                mo12759a = new C2897e(new C2619n(m12755b(c2980c)));
            } else {
                Class<?> testClass = c2980c.getTestClass();
                if (testClass == null) {
                    throw new RuntimeException("Can't build a runner from description [" + c2980c + "]");
                }
                String methodName = c2980c.getMethodName();
                mo12759a = (methodName == null ? AbstractC2985h.m13392a(testClass) : AbstractC2985h.m13392a(testClass).m13401a(AbstractC2969a.m13350b(C2980c.createTestDescription(testClass, methodName)))).mo12759a();
            }
            arrayList.add(mo12759a);
        }
        return new AnonymousClass1(arrayList);
    }

    /* renamed from: a */
    private C2986i m12750a(Class<?> cls) {
        AbstractC2985h m13392a = AbstractC2985h.m13392a(cls);
        JUnitCore jUnitCore = new JUnitCore();
        jUnitCore.m13348a(this.f10689b.listener());
        return jUnitCore.m13347a(m12756b(m13392a).mo12759a());
    }

    /* renamed from: a */
    private C2986i m12751a(AbstractC2985h abstractC2985h) {
        JUnitCore jUnitCore = new JUnitCore();
        jUnitCore.m13348a(this.f10689b.listener());
        return jUnitCore.m13347a(m12756b(abstractC2985h).mo12759a());
    }

    /* renamed from: a */
    private C2986i m12752a(AbstractC2985h abstractC2985h, JUnitCore jUnitCore) {
        jUnitCore.m13348a(this.f10689b.listener());
        return jUnitCore.m13347a(m12756b(abstractC2985h).mo12759a());
    }

    /* renamed from: a */
    private static AbstractC2988k m12753a(C2980c c2980c) {
        AbstractC2985h m13401a;
        if (c2980c.toString().equals("TestSuite with 0 tests")) {
            return C2953g.m13306a();
        }
        if (c2980c.toString().startsWith(f10688a)) {
            return new C2897e(new C2619n(m12755b(c2980c)));
        }
        Class<?> testClass = c2980c.getTestClass();
        if (testClass == null) {
            throw new RuntimeException("Can't build a runner from description [" + c2980c + "]");
        }
        String methodName = c2980c.getMethodName();
        if (methodName == null) {
            m13401a = AbstractC2985h.m13392a(testClass);
        } else {
            m13401a = AbstractC2985h.m13392a(testClass).m13401a(AbstractC2969a.m13350b(C2980c.createTestDescription(testClass, methodName)));
        }
        return m13401a.mo12759a();
    }

    /* renamed from: a */
    private void m12754a(C2980c c2980c, C2980c c2980c2, List<C2980c> list) {
        if (!c2980c2.getChildren().isEmpty()) {
            Iterator<C2980c> it = c2980c2.getChildren().iterator();
            while (it.hasNext()) {
                m12754a(c2980c2, it.next(), list);
            }
        } else {
            if (!c2980c2.toString().equals("warning(junit.framework.TestSuite$1)")) {
                list.add(c2980c2);
                return;
            }
            list.add(C2980c.createSuiteDescription(f10688a + c2980c, new Annotation[0]));
        }
    }

    /* renamed from: b */
    private static Class<?> m12755b(C2980c c2980c) {
        try {
            return Class.forName(c2980c.toString().replace(f10688a, ""));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    /* renamed from: b */
    private AbstractC2985h m12756b(AbstractC2985h abstractC2985h) {
        AbstractC2988k mo12759a;
        if (abstractC2985h instanceof C2880c) {
            return abstractC2985h;
        }
        List<C2980c> m12758d = m12758d(abstractC2985h);
        Collections.sort(m12758d, this.f10689b.testComparator());
        ArrayList arrayList = new ArrayList();
        for (C2980c c2980c : m12758d) {
            if (c2980c.toString().equals("TestSuite with 0 tests")) {
                mo12759a = C2953g.m13306a();
            } else if (c2980c.toString().startsWith(f10688a)) {
                mo12759a = new C2897e(new C2619n(m12755b(c2980c)));
            } else {
                Class<?> testClass = c2980c.getTestClass();
                if (testClass == null) {
                    throw new RuntimeException("Can't build a runner from description [" + c2980c + "]");
                }
                String methodName = c2980c.getMethodName();
                mo12759a = (methodName == null ? AbstractC2985h.m13392a(testClass) : AbstractC2985h.m13392a(testClass).m13401a(AbstractC2969a.m13350b(C2980c.createTestDescription(testClass, methodName)))).mo12759a();
            }
            arrayList.add(mo12759a);
        }
        return new AnonymousClass1(arrayList);
    }

    /* renamed from: c */
    private List<C2980c> m12757c(AbstractC2985h abstractC2985h) {
        return m12758d(m12756b(abstractC2985h));
    }

    /* renamed from: d */
    private List<C2980c> m12758d(AbstractC2985h abstractC2985h) {
        ArrayList arrayList = new ArrayList();
        m12754a(null, abstractC2985h.mo12759a().mo11738b(), arrayList);
        return arrayList;
    }
}
