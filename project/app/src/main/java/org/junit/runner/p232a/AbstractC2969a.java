package org.junit.runner.p232a;

import java.util.Iterator;
import org.junit.runner.C2980c;

/* renamed from: org.junit.runner.a.a */
/* loaded from: classes2.dex */
public abstract class AbstractC2969a {

    /* renamed from: a */
    public static final AbstractC2969a f10898a = new AbstractC2969a() { // from class: org.junit.runner.a.a.1
        @Override // org.junit.runner.p232a.AbstractC2969a
        /* renamed from: a */
        public final String mo12735a() {
            return "all tests";
        }

        @Override // org.junit.runner.p232a.AbstractC2969a
        /* renamed from: a */
        public final AbstractC2969a mo13351a(AbstractC2969a abstractC2969a) {
            return abstractC2969a;
        }

        @Override // org.junit.runner.p232a.AbstractC2969a
        /* renamed from: a */
        public final void mo13352a(Object obj) throws C2971c {
        }

        @Override // org.junit.runner.p232a.AbstractC2969a
        /* renamed from: a */
        public final boolean mo12736a(C2980c c2980c) {
            return true;
        }
    };

    /* renamed from: b */
    public static AbstractC2969a m13350b(final C2980c c2980c) {
        return new AbstractC2969a() { // from class: org.junit.runner.a.a.2
            @Override // org.junit.runner.p232a.AbstractC2969a
            /* renamed from: a */
            public final String mo12735a() {
                return String.format("Method %s", C2980c.this.getDisplayName());
            }

            @Override // org.junit.runner.p232a.AbstractC2969a
            /* renamed from: a */
            public final boolean mo12736a(C2980c c2980c2) {
                if (c2980c2.isTest()) {
                    return C2980c.this.equals(c2980c2);
                }
                Iterator<C2980c> it = c2980c2.getChildren().iterator();
                while (it.hasNext()) {
                    if (mo12736a(it.next())) {
                        return true;
                    }
                }
                return false;
            }
        };
    }

    /* renamed from: a */
    public abstract String mo12735a();

    /* renamed from: a */
    public AbstractC2969a mo13351a(final AbstractC2969a abstractC2969a) {
        return (abstractC2969a == this || abstractC2969a == f10898a) ? this : new AbstractC2969a() { // from class: org.junit.runner.a.a.3
            @Override // org.junit.runner.p232a.AbstractC2969a
            /* renamed from: a */
            public final String mo12735a() {
                return this.mo12735a() + " and " + abstractC2969a.mo12735a();
            }

            @Override // org.junit.runner.p232a.AbstractC2969a
            /* renamed from: a */
            public final boolean mo12736a(C2980c c2980c) {
                return this.mo12736a(c2980c) && abstractC2969a.mo12736a(c2980c);
            }
        };
    }

    /* renamed from: a */
    public void mo13352a(Object obj) throws C2971c {
        if (obj instanceof InterfaceC2970b) {
            ((InterfaceC2970b) obj).mo11736a(this);
        }
    }

    /* renamed from: a */
    public abstract boolean mo12736a(C2980c c2980c);
}
