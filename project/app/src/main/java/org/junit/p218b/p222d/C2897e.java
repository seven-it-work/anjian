package org.junit.p218b.p222d;

import java.lang.annotation.Annotation;
import junit.p189a.C2604c;
import junit.p190b.AbstractC2615j;
import junit.p190b.C2607b;
import junit.p190b.C2618m;
import junit.p190b.C2619n;
import junit.p190b.InterfaceC2614i;
import junit.p190b.InterfaceC2617l;
import org.junit.runner.AbstractC2988k;
import org.junit.runner.C2980c;
import org.junit.runner.InterfaceC2974b;
import org.junit.runner.p232a.AbstractC2969a;
import org.junit.runner.p232a.C2971c;
import org.junit.runner.p232a.C2973e;
import org.junit.runner.p232a.InterfaceC2970b;
import org.junit.runner.p232a.InterfaceC2972d;
import org.junit.runner.p233b.C2975a;
import org.junit.runner.p233b.C2977c;

/* renamed from: org.junit.b.d.e */
/* loaded from: classes2.dex */
public class C2897e extends AbstractC2988k implements InterfaceC2970b, InterfaceC2972d {

    /* renamed from: a */
    private volatile InterfaceC2614i f10780a;

    /* renamed from: org.junit.b.d.e$a */
    /* loaded from: classes2.dex */
    private static final class a implements InterfaceC2617l {

        /* renamed from: a */
        private final C2977c f10781a;

        private a(C2977c c2977c) {
            this.f10781a = c2977c;
        }

        /* synthetic */ a(C2977c c2977c, byte b2) {
            this(c2977c);
        }

        /* renamed from: c */
        private static C2980c m12937c(InterfaceC2614i interfaceC2614i) {
            if (interfaceC2614i instanceof InterfaceC2974b) {
                return ((InterfaceC2974b) interfaceC2614i).mo11738b();
            }
            return C2980c.createTestDescription(interfaceC2614i.getClass(), interfaceC2614i instanceof AbstractC2615j ? ((AbstractC2615j) interfaceC2614i).f10075a : interfaceC2614i.toString());
        }

        /* renamed from: d */
        private static Class<? extends InterfaceC2614i> m12938d(InterfaceC2614i interfaceC2614i) {
            return interfaceC2614i.getClass();
        }

        /* renamed from: e */
        private static String m12939e(InterfaceC2614i interfaceC2614i) {
            return interfaceC2614i instanceof AbstractC2615j ? ((AbstractC2615j) interfaceC2614i).f10075a : interfaceC2614i.toString();
        }

        @Override // junit.p190b.InterfaceC2617l
        /* renamed from: a */
        public final void mo11793a(InterfaceC2614i interfaceC2614i) {
            this.f10781a.m13372c(m12937c(interfaceC2614i));
        }

        @Override // junit.p190b.InterfaceC2617l
        /* renamed from: a */
        public final void mo11794a(InterfaceC2614i interfaceC2614i, Throwable th) {
            this.f10781a.m13367a(new C2975a(m12937c(interfaceC2614i), th));
        }

        @Override // junit.p190b.InterfaceC2617l
        /* renamed from: a */
        public final void mo11795a(InterfaceC2614i interfaceC2614i, C2607b c2607b) {
            mo11794a(interfaceC2614i, (Throwable) c2607b);
        }

        @Override // junit.p190b.InterfaceC2617l
        /* renamed from: b */
        public final void mo11796b(InterfaceC2614i interfaceC2614i) {
            this.f10781a.m13369a(m12937c(interfaceC2614i));
        }
    }

    public C2897e(Class<?> cls) {
        this(new C2619n(cls.asSubclass(AbstractC2615j.class)));
    }

    public C2897e(InterfaceC2614i interfaceC2614i) {
        this.f10780a = interfaceC2614i;
    }

    /* renamed from: a */
    private static String m12931a(C2619n c2619n) {
        int mo11681a = c2619n.mo11681a();
        return String.format("TestSuite with %s tests%s", Integer.valueOf(mo11681a), mo11681a == 0 ? "" : String.format(" [example: %s]", c2619n.m11828a(0)));
    }

    /* renamed from: a */
    private InterfaceC2614i m12932a() {
        return this.f10780a;
    }

    /* renamed from: a */
    private static C2980c m12933a(InterfaceC2614i interfaceC2614i) {
        String str;
        while (!(interfaceC2614i instanceof AbstractC2615j)) {
            if (interfaceC2614i instanceof C2619n) {
                C2619n c2619n = (C2619n) interfaceC2614i;
                if (c2619n.f10085a == null) {
                    int mo11681a = c2619n.mo11681a();
                    str = String.format("TestSuite with %s tests%s", Integer.valueOf(mo11681a), mo11681a == 0 ? "" : String.format(" [example: %s]", c2619n.m11828a(0)));
                } else {
                    str = c2619n.f10085a;
                }
                C2980c createSuiteDescription = C2980c.createSuiteDescription(str, new Annotation[0]);
                int size = c2619n.f10086b.size();
                for (int i = 0; i < size; i++) {
                    createSuiteDescription.addChild(m12933a(c2619n.m11828a(i)));
                }
                return createSuiteDescription;
            }
            if (interfaceC2614i instanceof InterfaceC2974b) {
                return ((InterfaceC2974b) interfaceC2614i).mo11738b();
            }
            if (!(interfaceC2614i instanceof C2604c)) {
                return C2980c.createSuiteDescription(interfaceC2614i.getClass());
            }
            interfaceC2614i = ((C2604c) interfaceC2614i).m11682b();
        }
        AbstractC2615j abstractC2615j = (AbstractC2615j) interfaceC2614i;
        return C2980c.createTestDescription(abstractC2615j.getClass(), abstractC2615j.f10075a, m12934a(abstractC2615j));
    }

    /* renamed from: a */
    private static Annotation[] m12934a(AbstractC2615j abstractC2615j) {
        try {
            return abstractC2615j.getClass().getMethod(abstractC2615j.f10075a, new Class[0]).getDeclaredAnnotations();
        } catch (NoSuchMethodException | SecurityException unused) {
            return new Annotation[0];
        }
    }

    /* renamed from: b */
    private static InterfaceC2617l m12935b(C2977c c2977c) {
        return new a(c2977c, (byte) 0);
    }

    /* renamed from: b */
    private void m12936b(InterfaceC2614i interfaceC2614i) {
        this.f10780a = interfaceC2614i;
    }

    @Override // org.junit.runner.p232a.InterfaceC2970b
    /* renamed from: a */
    public final void mo11736a(AbstractC2969a abstractC2969a) throws C2971c {
        if (this.f10780a instanceof InterfaceC2970b) {
            ((InterfaceC2970b) this.f10780a).mo11736a(abstractC2969a);
            return;
        }
        if (this.f10780a instanceof C2619n) {
            C2619n c2619n = (C2619n) this.f10780a;
            C2619n c2619n2 = new C2619n(c2619n.f10085a);
            int size = c2619n.f10086b.size();
            for (int i = 0; i < size; i++) {
                InterfaceC2614i m11828a = c2619n.m11828a(i);
                if (abstractC2969a.mo12736a(m12933a(m11828a))) {
                    c2619n2.m11829a(m11828a);
                }
            }
            this.f10780a = c2619n2;
            if (c2619n2.f10086b.size() == 0) {
                throw new C2971c();
            }
        }
    }

    @Override // org.junit.runner.p232a.InterfaceC2972d
    /* renamed from: a */
    public final void mo11737a(C2973e c2973e) {
        if (this.f10780a instanceof InterfaceC2972d) {
            ((InterfaceC2972d) this.f10780a).mo11737a(c2973e);
        }
    }

    @Override // org.junit.runner.AbstractC2988k
    /* renamed from: a */
    public final void mo12858a(C2977c c2977c) {
        C2618m c2618m = new C2618m();
        c2618m.m11806a(new a(c2977c, (byte) 0));
        this.f10780a.mo11679a(c2618m);
    }

    @Override // org.junit.runner.AbstractC2988k, org.junit.runner.InterfaceC2974b
    /* renamed from: b */
    public final C2980c mo11738b() {
        return m12933a(this.f10780a);
    }
}
