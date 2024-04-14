package org.p202a;

/* renamed from: org.a.l */
/* loaded from: classes2.dex */
public final class C2749l {
    /* renamed from: a */
    private static <T> void m12425a(T t, InterfaceC2748k<? super T> interfaceC2748k) {
        m12426a("", t, interfaceC2748k);
    }

    /* renamed from: a */
    public static <T> void m12426a(String str, T t, InterfaceC2748k<? super T> interfaceC2748k) {
        if (interfaceC2748k.mo12320a(t)) {
            return;
        }
        C2751n c2751n = new C2751n();
        c2751n.mo12297a(str).mo12297a("\nExpected: ").mo12300a((InterfaceC2750m) interfaceC2748k).mo12297a("\n     but: ");
        interfaceC2748k.mo12330a(t, c2751n);
        throw new AssertionError(c2751n.toString());
    }

    /* renamed from: a */
    private static void m12427a(String str, boolean z) {
        if (!z) {
            throw new AssertionError(str);
        }
    }
}
