package org.junit.p227d;

import java.lang.management.ManagementFactory;
import java.util.List;
import org.junit.p228e.p229a.AbstractC2941j;
import org.junit.runner.C2980c;

/* renamed from: org.junit.d.a */
/* loaded from: classes2.dex */
public final class C2914a implements InterfaceC2925l {

    /* renamed from: a */
    private final InterfaceC2925l f10805a;

    /* renamed from: b */
    private final boolean f10806b;

    private C2914a(InterfaceC2925l interfaceC2925l) {
        this(interfaceC2925l, ManagementFactory.getRuntimeMXBean().getInputArguments());
    }

    private C2914a(InterfaceC2925l interfaceC2925l, List<String> list) {
        this.f10805a = interfaceC2925l;
        this.f10806b = m13089a(list);
    }

    /* renamed from: a */
    private boolean m13088a() {
        return this.f10806b;
    }

    /* renamed from: a */
    private static boolean m13089a(List<String> list) {
        for (String str : list) {
            if ("-Xdebug".equals(str) || str.startsWith("-agentlib:jdwp")) {
                return true;
            }
        }
        return false;
    }

    @Override // org.junit.p227d.InterfaceC2925l
    /* renamed from: a */
    public final AbstractC2941j mo13090a(AbstractC2941j abstractC2941j, C2980c c2980c) {
        return this.f10806b ? abstractC2941j : this.f10805a.mo13090a(abstractC2941j, c2980c);
    }
}
