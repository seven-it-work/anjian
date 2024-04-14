package org.junit.runner;

import junit.p190b.InterfaceC2614i;
import junit.runner.Version;
import org.junit.p218b.C2908i;
import org.junit.p218b.C2909j;
import org.junit.p218b.InterfaceC2906g;
import org.junit.p218b.p222d.C2897e;
import org.junit.p228e.p229a.C2936e;
import org.junit.runner.p233b.C2976b;
import org.junit.runner.p233b.C2977c;

/* loaded from: classes2.dex */
public class JUnitCore {

    /* renamed from: a */
    private final C2977c f10895a = new C2977c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C2968a m13337a() {
        return new C2968a();
    }

    /* renamed from: a */
    private C2986i m13338a(InterfaceC2614i interfaceC2614i) {
        return m13347a(new C2897e(interfaceC2614i));
    }

    /* renamed from: a */
    private C2986i m13339a(InterfaceC2906g interfaceC2906g, String... strArr) {
        interfaceC2906g.mo12988a().println("JUnit version " + Version.m11830a());
        C2984g m13383a = C2984g.m13383a(strArr);
        m13348a(new C2909j(interfaceC2906g));
        return m13346a(m13383a.f10928b.isEmpty() ? m13383a.m13391a(AbstractC2985h.m13396a(new C2968a(), (Class<?>[]) m13383a.f10927a.toArray(new Class[m13383a.f10927a.size()]))) : C2984g.m13384a(new C2936e(m13383a.f10928b)));
    }

    /* renamed from: a */
    private static C2986i m13340a(C2968a c2968a, Class<?>... clsArr) {
        return new JUnitCore().m13343b(c2968a, clsArr);
    }

    /* renamed from: a */
    private static C2986i m13341a(Class<?>... clsArr) {
        return new JUnitCore().m13343b(new C2968a(), clsArr);
    }

    /* renamed from: b */
    private static String m13342b() {
        return Version.m11830a();
    }

    /* renamed from: b */
    private C2986i m13343b(C2968a c2968a, Class<?>... clsArr) {
        return m13346a(AbstractC2985h.m13396a(c2968a, clsArr));
    }

    /* renamed from: b */
    private C2986i m13344b(Class<?>... clsArr) {
        return m13343b(new C2968a(), clsArr);
    }

    /* renamed from: b */
    private void m13345b(C2976b c2976b) {
        C2977c c2977c = this.f10895a;
        if (c2976b == null) {
            throw new NullPointerException("Cannot remove a null listener");
        }
        c2977c.f10905a.remove(c2977c.m13370b(c2976b));
    }

    public static void main(String... strArr) {
        JUnitCore jUnitCore = new JUnitCore();
        C2908i c2908i = new C2908i();
        c2908i.mo12988a().println("JUnit version " + Version.m11830a());
        C2984g m13383a = C2984g.m13383a(strArr);
        jUnitCore.m13348a(new C2909j(c2908i));
        System.exit(!jUnitCore.m13346a(m13383a.f10928b.isEmpty() ? m13383a.m13391a(AbstractC2985h.m13396a(new C2968a(), (Class<?>[]) m13383a.f10927a.toArray(new Class[m13383a.f10927a.size()]))) : C2984g.m13384a(new C2936e(m13383a.f10928b))).wasSuccessful() ? 1 : 0);
    }

    /* renamed from: a */
    public final C2986i m13346a(AbstractC2985h abstractC2985h) {
        return m13347a(abstractC2985h.mo12759a());
    }

    /* renamed from: a */
    public final C2986i m13347a(AbstractC2988k abstractC2988k) {
        C2986i c2986i = new C2986i();
        C2976b createListener = c2986i.createListener();
        C2977c c2977c = this.f10895a;
        if (createListener == null) {
            throw new NullPointerException("Cannot add a null listener");
        }
        c2977c.f10905a.add(0, c2977c.m13370b(createListener));
        try {
            new C2977c.AnonymousClass1(abstractC2988k.mo11738b()).m13374a();
            abstractC2988k.mo12858a(this.f10895a);
            new C2977c.AnonymousClass2(c2986i).m13374a();
            return c2986i;
        } finally {
            m13345b(createListener);
        }
    }

    /* renamed from: a */
    public final void m13348a(C2976b c2976b) {
        this.f10895a.m13368a(c2976b);
    }
}
