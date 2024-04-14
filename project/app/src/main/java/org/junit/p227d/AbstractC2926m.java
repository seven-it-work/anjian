package org.junit.p227d;

import java.util.ArrayList;
import java.util.List;
import org.junit.C2930e;
import org.junit.p218b.C2872b;
import org.junit.p228e.p229a.AbstractC2941j;
import org.junit.p228e.p229a.C2937f;
import org.junit.runner.C2980c;

/* renamed from: org.junit.d.m */
/* loaded from: classes2.dex */
public abstract class AbstractC2926m implements InterfaceC2925l {
    /* renamed from: a */
    private void m13156a(List<Throwable> list) {
        try {
            mo13140b();
        } catch (Throwable th) {
            list.add(th);
        }
    }

    /* renamed from: a */
    private void m13157a(C2872b c2872b, List<Throwable> list) {
        try {
            if (c2872b instanceof C2930e) {
                mo13142d();
            }
        } catch (Throwable th) {
            list.add(th);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m13158a(AbstractC2926m abstractC2926m, List list) {
        try {
            abstractC2926m.mo13140b();
        } catch (Throwable th) {
            list.add(th);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m13159a(AbstractC2926m abstractC2926m, C2872b c2872b, List list) {
        try {
            if (c2872b instanceof C2930e) {
                abstractC2926m.mo13142d();
            }
        } catch (Throwable th) {
            list.add(th);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m13160a(AbstractC2926m abstractC2926m, C2980c c2980c, List list) {
        try {
            abstractC2926m.mo13139a(c2980c);
        } catch (Throwable th) {
            list.add(th);
        }
    }

    /* renamed from: a */
    private void m13161a(C2980c c2980c, List<Throwable> list) {
        try {
            mo13139a(c2980c);
        } catch (Throwable th) {
            list.add(th);
        }
    }

    /* renamed from: b */
    private void m13162b(List<Throwable> list) {
        try {
            mo13141c();
        } catch (Throwable th) {
            list.add(th);
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m13163b(AbstractC2926m abstractC2926m, List list) {
        try {
            abstractC2926m.mo13141c();
        } catch (Throwable th) {
            list.add(th);
        }
    }

    /* renamed from: c */
    private void m13164c(List<Throwable> list) {
        try {
            mo13138a();
        } catch (Throwable th) {
            list.add(th);
        }
    }

    /* renamed from: c */
    static /* synthetic */ void m13165c(AbstractC2926m abstractC2926m, List list) {
        try {
            abstractC2926m.mo13138a();
        } catch (Throwable th) {
            list.add(th);
        }
    }

    @Deprecated
    /* renamed from: e */
    private static void m13166e() {
    }

    @Override // org.junit.p227d.InterfaceC2925l
    /* renamed from: a */
    public final AbstractC2941j mo13090a(final AbstractC2941j abstractC2941j, final C2980c c2980c) {
        return new AbstractC2941j() { // from class: org.junit.d.m.1
            @Override // org.junit.p228e.p229a.AbstractC2941j
            /* renamed from: a */
            public final void mo12846a() throws Throwable {
                ArrayList arrayList = new ArrayList();
                AbstractC2926m.m13160a(AbstractC2926m.this, c2980c, arrayList);
                try {
                    try {
                        abstractC2941j.mo12846a();
                        AbstractC2926m.m13158a(AbstractC2926m.this, arrayList);
                    } catch (C2872b e) {
                        arrayList.add(e);
                        AbstractC2926m.m13159a(AbstractC2926m.this, e, arrayList);
                    } catch (Throwable th) {
                        arrayList.add(th);
                        AbstractC2926m.m13163b(AbstractC2926m.this, arrayList);
                    }
                    C2937f.assertEmpty(arrayList);
                } finally {
                    AbstractC2926m.m13165c(AbstractC2926m.this, arrayList);
                }
            }
        };
    }

    /* renamed from: a */
    protected void mo13138a() {
    }

    /* renamed from: a */
    protected void mo13139a(C2980c c2980c) {
    }

    /* renamed from: b */
    protected void mo13140b() {
    }

    /* renamed from: c */
    protected void mo13141c() {
    }

    /* renamed from: d */
    protected void mo13142d() {
    }
}
