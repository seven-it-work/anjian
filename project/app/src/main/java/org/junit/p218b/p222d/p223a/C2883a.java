package org.junit.p218b.p222d.p223a;

import java.util.Iterator;
import org.junit.p218b.C2872b;
import org.junit.p228e.p229a.C2937f;
import org.junit.runner.C2980c;
import org.junit.runner.p233b.C2975a;
import org.junit.runner.p233b.C2977c;

/* renamed from: org.junit.b.d.a.a */
/* loaded from: classes2.dex */
public final class C2883a {

    /* renamed from: a */
    public final C2977c f10745a;

    /* renamed from: b */
    public final C2980c f10746b;

    public C2883a(C2977c c2977c, C2980c c2980c) {
        this.f10745a = c2977c;
        this.f10746b = c2980c;
    }

    /* renamed from: a */
    private void m12885a(C2937f c2937f) {
        Iterator<Throwable> it = c2937f.getFailures().iterator();
        while (it.hasNext()) {
            m12889a(it.next());
        }
    }

    /* renamed from: b */
    private void m12886b() {
        this.f10745a.m13369a(this.f10746b);
    }

    /* renamed from: c */
    private void m12887c() {
        this.f10745a.m13371b(this.f10746b);
    }

    /* renamed from: a */
    public final void m12888a() {
        this.f10745a.m13372c(this.f10746b);
    }

    /* renamed from: a */
    public final void m12889a(Throwable th) {
        if (!(th instanceof C2937f)) {
            this.f10745a.m13367a(new C2975a(this.f10746b, th));
            return;
        }
        Iterator<Throwable> it = ((C2937f) th).getFailures().iterator();
        while (it.hasNext()) {
            m12889a(it.next());
        }
    }

    /* renamed from: a */
    public final void m12890a(C2872b c2872b) {
        new C2977c.AnonymousClass5(new C2975a(this.f10746b, c2872b)).m13374a();
    }
}
