package org.junit.p210a.p215e;

/* renamed from: org.junit.a.e.g */
/* loaded from: classes.dex */
public abstract class AbstractC2859g {

    /* renamed from: org.junit.a.e.g$a */
    /* loaded from: classes2.dex */
    public static class a extends Exception {
        private static final long serialVersionUID = 1;

        public a() {
        }

        public a(Throwable th) {
            super(th);
        }
    }

    /* renamed from: a */
    public static AbstractC2859g m12826a(final String str, final Object obj) {
        return new AbstractC2859g() { // from class: org.junit.a.e.g.1
            @Override // org.junit.p210a.p215e.AbstractC2859g
            /* renamed from: a */
            public final Object mo12790a() {
                return obj;
            }

            @Override // org.junit.p210a.p215e.AbstractC2859g
            /* renamed from: b */
            public final String mo12791b() {
                String format;
                if (obj == null) {
                    format = "null";
                } else {
                    try {
                        format = String.format("\"%s\"", obj);
                    } catch (Throwable th) {
                        format = String.format("[toString() threw %s: %s]", th.getClass().getSimpleName(), th.getMessage());
                    }
                }
                return String.format("%s <from %s>", format, str);
            }

            public final String toString() {
                return String.format("[%s]", obj);
            }
        };
    }

    /* renamed from: a */
    public abstract Object mo12790a() throws a;

    /* renamed from: b */
    public abstract String mo12791b() throws a;
}
