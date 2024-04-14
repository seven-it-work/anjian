package org.junit.runner.p232a;

import java.util.Comparator;
import org.junit.runner.C2980c;

/* renamed from: org.junit.runner.a.e */
/* loaded from: classes2.dex */
public final class C2973e implements Comparator<C2980c> {

    /* renamed from: a */
    public static final C2973e f10903a = new C2973e(new Comparator<C2980c>() { // from class: org.junit.runner.a.e.1
        /* renamed from: a */
        private static int m13355a() {
            return 0;
        }

        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(C2980c c2980c, C2980c c2980c2) {
            return 0;
        }
    });

    /* renamed from: b */
    private final Comparator<C2980c> f10904b;

    public C2973e(Comparator<C2980c> comparator) {
        this.f10904b = comparator;
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compare(C2980c c2980c, C2980c c2980c2) {
        return this.f10904b.compare(c2980c, c2980c2);
    }

    /* renamed from: a */
    public final void m13354a(Object obj) {
        if (obj instanceof InterfaceC2972d) {
            ((InterfaceC2972d) obj).mo11737a(this);
        }
    }
}
