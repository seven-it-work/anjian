package org.junit.p227d;

import org.junit.C2911c;
import org.junit.p218b.p220b.C2874b;
import org.junit.p218b.p220b.C2875c;
import org.junit.p228e.p229a.AbstractC2941j;
import org.junit.runner.C2980c;
import org.p202a.C2749l;
import org.p202a.C2751n;
import org.p202a.InterfaceC2748k;
import org.p202a.InterfaceC2750m;
import org.p202a.p203a.C2726j;
import org.p202a.p203a.C2731o;

/* renamed from: org.junit.d.c */
/* loaded from: classes2.dex */
public final class C2916c implements InterfaceC2925l {

    /* renamed from: a */
    private final C2917d f10812a = new C2917d();

    /* renamed from: b */
    private String f10813b = "Expected test to throw %s";

    /* renamed from: org.junit.d.c$a */
    /* loaded from: classes2.dex */
    private class a extends AbstractC2941j {

        /* renamed from: b */
        private final AbstractC2941j f10815b;

        public a(AbstractC2941j abstractC2941j) {
            this.f10815b = abstractC2941j;
        }

        @Override // org.junit.p228e.p229a.AbstractC2941j
        /* renamed from: a */
        public final void mo12846a() throws Throwable {
            try {
                this.f10815b.mo12846a();
                if (C2916c.this.m13109d()) {
                    C2916c.m13106b(C2916c.this);
                }
            } catch (Throwable th) {
                C2916c.m13101a(C2916c.this, th);
            }
        }
    }

    private C2916c() {
    }

    /* renamed from: a */
    private static C2916c m13096a() {
        return new C2916c();
    }

    /* renamed from: a */
    private C2916c m13097a(String str) {
        this.f10813b = str;
        return this;
    }

    /* renamed from: a */
    private void m13098a(Class<? extends Throwable> cls) {
        m13100a(C2726j.m12350a((Class<?>) cls));
    }

    /* renamed from: a */
    private void m13099a(Throwable th) throws Throwable {
        if (!m13109d()) {
            throw th;
        }
        C2749l.m12426a("", th, this.f10812a.m13117a());
    }

    /* renamed from: a */
    private void m13100a(InterfaceC2748k<?> interfaceC2748k) {
        this.f10812a.f10816a.add(interfaceC2748k);
    }

    /* renamed from: a */
    static /* synthetic */ void m13101a(C2916c c2916c, Throwable th) throws Throwable {
        if (!c2916c.m13109d()) {
            throw th;
        }
        C2749l.m12426a("", th, c2916c.f10812a.m13117a());
    }

    @Deprecated
    /* renamed from: b */
    private C2916c m13103b() {
        return this;
    }

    /* renamed from: b */
    private void m13104b(String str) {
        m13100a(C2875c.m12869a(C2731o.m12362b(str)));
    }

    /* renamed from: b */
    private void m13105b(InterfaceC2748k<String> interfaceC2748k) {
        m13100a(C2875c.m12869a(interfaceC2748k));
    }

    /* renamed from: b */
    static /* synthetic */ void m13106b(C2916c c2916c) throws AssertionError {
        C2911c.m13010a(String.format(c2916c.f10813b, C2751n.m12428b((InterfaceC2750m) c2916c.f10812a.m13117a())));
    }

    @Deprecated
    /* renamed from: c */
    private C2916c m13107c() {
        return this;
    }

    /* renamed from: c */
    private void m13108c(InterfaceC2748k<? extends Throwable> interfaceC2748k) {
        m13100a(C2874b.m12866a(interfaceC2748k));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public boolean m13109d() {
        return !this.f10812a.f10816a.isEmpty();
    }

    /* renamed from: e */
    private void m13110e() throws AssertionError {
        C2911c.m13010a(String.format(this.f10813b, C2751n.m12428b((InterfaceC2750m) this.f10812a.m13117a())));
    }

    /* renamed from: f */
    private String m13111f() {
        return String.format(this.f10813b, C2751n.m12428b((InterfaceC2750m) this.f10812a.m13117a()));
    }

    @Override // org.junit.p227d.InterfaceC2925l
    /* renamed from: a */
    public final AbstractC2941j mo13090a(AbstractC2941j abstractC2941j, C2980c c2980c) {
        return new a(abstractC2941j);
    }
}
