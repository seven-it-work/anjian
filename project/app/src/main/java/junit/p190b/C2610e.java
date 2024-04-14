package junit.p190b;

import java.util.Iterator;
import java.util.List;
import org.junit.InterfaceC2965k;
import org.junit.p218b.p221c.C2878a;
import org.junit.runner.AbstractC2988k;
import org.junit.runner.C2980c;
import org.junit.runner.InterfaceC2974b;
import org.junit.runner.p232a.AbstractC2969a;
import org.junit.runner.p232a.C2971c;
import org.junit.runner.p232a.C2973e;
import org.junit.runner.p232a.InterfaceC2970b;
import org.junit.runner.p232a.InterfaceC2972d;

/* renamed from: junit.b.e */
/* loaded from: classes.dex */
public final class C2610e implements InterfaceC2614i, InterfaceC2970b, InterfaceC2972d, InterfaceC2974b {

    /* renamed from: a */
    private final Class<?> f10069a;

    /* renamed from: b */
    private final AbstractC2988k f10070b;

    /* renamed from: c */
    private final C2611f f10071c;

    private C2610e(Class<?> cls) {
        this(cls, C2611f.getDefault());
    }

    private C2610e(Class<?> cls, C2611f c2611f) {
        this.f10071c = c2611f;
        this.f10069a = cls;
        this.f10070b = new C2878a(cls, false).mo12759a();
    }

    /* renamed from: a */
    private C2980c m11732a(C2980c c2980c) {
        if (c2980c.getAnnotation(InterfaceC2965k.class) != null) {
            return C2980c.EMPTY;
        }
        C2980c childlessCopy = c2980c.childlessCopy();
        Iterator<C2980c> it = c2980c.getChildren().iterator();
        while (it.hasNext()) {
            C2980c m11732a = m11732a(it.next());
            if (!m11732a.isEmpty()) {
                childlessCopy.addChild(m11732a);
            }
        }
        return childlessCopy;
    }

    /* renamed from: b */
    private static boolean m11733b(C2980c c2980c) {
        return c2980c.getAnnotation(InterfaceC2965k.class) != null;
    }

    /* renamed from: c */
    private List<InterfaceC2614i> m11734c() {
        return this.f10071c.asTestList(mo11738b());
    }

    /* renamed from: d */
    private Class<?> m11735d() {
        return this.f10069a;
    }

    @Override // junit.p190b.InterfaceC2614i
    /* renamed from: a */
    public final int mo11681a() {
        return this.f10070b.mo11738b().testCount();
    }

    @Override // junit.p190b.InterfaceC2614i
    /* renamed from: a */
    public final void mo11679a(C2618m c2618m) {
        this.f10070b.mo12858a(this.f10071c.getNotifier(c2618m, this));
    }

    @Override // org.junit.runner.p232a.InterfaceC2970b
    /* renamed from: a */
    public final void mo11736a(AbstractC2969a abstractC2969a) throws C2971c {
        abstractC2969a.mo13352a(this.f10070b);
    }

    @Override // org.junit.runner.p232a.InterfaceC2972d
    /* renamed from: a */
    public final void mo11737a(C2973e c2973e) {
        c2973e.m13354a(this.f10070b);
    }

    @Override // org.junit.runner.InterfaceC2974b
    /* renamed from: b */
    public final C2980c mo11738b() {
        return m11732a(this.f10070b.mo11738b());
    }

    public final String toString() {
        return this.f10069a.getName();
    }
}
