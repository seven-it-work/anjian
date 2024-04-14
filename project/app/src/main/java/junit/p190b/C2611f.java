package junit.p190b;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.junit.runner.C2980c;
import org.junit.runner.p233b.C2975a;
import org.junit.runner.p233b.C2976b;
import org.junit.runner.p233b.C2977c;

/* renamed from: junit.b.f */
/* loaded from: classes.dex */
public final class C2611f extends HashMap<C2980c, InterfaceC2614i> {
    private static final C2611f fInstance = new C2611f();
    private static final long serialVersionUID = 1;

    public static C2611f getDefault() {
        return fInstance;
    }

    public final InterfaceC2614i asTest(C2980c c2980c) {
        if (c2980c.isSuite()) {
            return createTest(c2980c);
        }
        if (!containsKey(c2980c)) {
            put(c2980c, createTest(c2980c));
        }
        return get(c2980c);
    }

    public final List<InterfaceC2614i> asTestList(C2980c c2980c) {
        if (c2980c.isTest()) {
            return Arrays.asList(asTest(c2980c));
        }
        ArrayList arrayList = new ArrayList();
        Iterator<C2980c> it = c2980c.getChildren().iterator();
        while (it.hasNext()) {
            arrayList.add(asTest(it.next()));
        }
        return arrayList;
    }

    final InterfaceC2614i createTest(C2980c c2980c) {
        if (c2980c.isTest()) {
            return new C2612g(c2980c);
        }
        C2619n c2619n = new C2619n(c2980c.getDisplayName());
        Iterator<C2980c> it = c2980c.getChildren().iterator();
        while (it.hasNext()) {
            c2619n.m11829a(asTest(it.next()));
        }
        return c2619n;
    }

    public final C2977c getNotifier(final C2618m c2618m, C2610e c2610e) {
        C2977c c2977c = new C2977c();
        c2977c.m13368a(new C2976b() { // from class: junit.b.f.1
            @Override // org.junit.runner.p233b.C2976b
            /* renamed from: a */
            public final void mo11739a(C2975a c2975a) throws Exception {
                c2618m.m11804a(C2611f.this.asTest(c2975a.getDescription()), c2975a.getException());
            }

            @Override // org.junit.runner.p233b.C2976b
            /* renamed from: a */
            public final void mo11740a(C2980c c2980c) throws Exception {
                c2618m.m11803a(C2611f.this.asTest(c2980c));
            }

            @Override // org.junit.runner.p233b.C2976b
            /* renamed from: b */
            public final void mo11741b(C2980c c2980c) throws Exception {
                c2618m.m11808b(C2611f.this.asTest(c2980c));
            }
        });
        return c2977c;
    }
}
