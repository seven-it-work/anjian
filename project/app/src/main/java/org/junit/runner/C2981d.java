package org.junit.runner;

import org.junit.p218b.C2877c;
import org.junit.runner.InterfaceC2982e;
import org.junit.runner.p232a.AbstractC2969a;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.junit.runner.d */
/* loaded from: classes2.dex */
public final class C2981d {
    C2981d() {
    }

    /* renamed from: a */
    private static AbstractC2969a m13375a(Class<? extends InterfaceC2982e> cls, C2983f c2983f) throws InterfaceC2982e.a {
        return m13378a(cls).mo12744a(c2983f);
    }

    /* renamed from: a */
    private static AbstractC2969a m13376a(String str, C2983f c2983f) throws InterfaceC2982e.a {
        return m13379a(str).mo12744a(c2983f);
    }

    /* renamed from: a */
    private static AbstractC2969a m13377a(AbstractC2985h abstractC2985h, String str) throws InterfaceC2982e.a {
        C2980c mo11738b = abstractC2985h.mo12759a().mo11738b();
        String[] split = str.contains("=") ? str.split("=", 2) : new String[]{str, ""};
        return m13379a(split[0]).mo12744a(new C2983f(mo11738b, split[1]));
    }

    /* renamed from: a */
    private static InterfaceC2982e m13378a(Class<? extends InterfaceC2982e> cls) throws InterfaceC2982e.a {
        try {
            return cls.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            throw new InterfaceC2982e.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static InterfaceC2982e m13379a(String str) throws InterfaceC2982e.a {
        try {
            return m13378a((Class<? extends InterfaceC2982e>) C2877c.m12875a(str).asSubclass(InterfaceC2982e.class));
        } catch (Exception e) {
            throw new InterfaceC2982e.a(e);
        }
    }
}
