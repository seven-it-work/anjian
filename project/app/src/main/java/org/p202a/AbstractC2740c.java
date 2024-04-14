package org.p202a;

/* renamed from: org.a.c */
/* loaded from: classes2.dex */
public abstract class AbstractC2740c<T> {

    /* renamed from: a */
    public static final b<Object> f10420a = new b<>(0);

    /* renamed from: org.a.c$a */
    /* loaded from: classes2.dex */
    private static final class a<T> extends AbstractC2740c<T> {

        /* renamed from: b */
        private final T f10421b;

        /* renamed from: c */
        private final InterfaceC2744g f10422c;

        private a(T t, InterfaceC2744g interfaceC2744g) {
            super((byte) 0);
            this.f10421b = t;
            this.f10422c = interfaceC2744g;
        }

        /* synthetic */ a(Object obj, InterfaceC2744g interfaceC2744g, byte b2) {
            this(obj, interfaceC2744g);
        }

        @Override // org.p202a.AbstractC2740c
        /* renamed from: a */
        public final <U> AbstractC2740c<U> mo12379a(c<? super T, U> cVar) {
            return cVar.m12381a();
        }

        @Override // org.p202a.AbstractC2740c
        /* renamed from: a */
        public final boolean mo12380a(InterfaceC2748k<T> interfaceC2748k, String str) {
            if (interfaceC2748k.mo12320a(this.f10421b)) {
                return true;
            }
            this.f10422c.mo12297a(str);
            interfaceC2748k.mo12330a(this.f10421b, this.f10422c);
            return false;
        }
    }

    /* renamed from: org.a.c$b */
    /* loaded from: classes2.dex */
    private static final class b<T> extends AbstractC2740c<T> {
        private b() {
            super((byte) 0);
        }

        /* synthetic */ b(byte b2) {
            this();
        }

        @Override // org.p202a.AbstractC2740c
        /* renamed from: a */
        public final <U> AbstractC2740c<U> mo12379a(c<? super T, U> cVar) {
            return AbstractC2740c.f10420a;
        }

        @Override // org.p202a.AbstractC2740c
        /* renamed from: a */
        public final boolean mo12380a(InterfaceC2748k<T> interfaceC2748k, String str) {
            return false;
        }
    }

    /* renamed from: org.a.c$c */
    /* loaded from: classes2.dex */
    public interface c<I, O> {
        /* renamed from: a */
        AbstractC2740c<O> m12381a();
    }

    private AbstractC2740c() {
    }

    /* synthetic */ AbstractC2740c(byte b2) {
        this();
    }

    /* renamed from: a */
    private static <T> AbstractC2740c<T> m12375a() {
        return f10420a;
    }

    /* renamed from: a */
    private static <T> AbstractC2740c<T> m12376a(T t, InterfaceC2744g interfaceC2744g) {
        return new a(t, interfaceC2744g, (byte) 0);
    }

    /* renamed from: a */
    private boolean m12377a(InterfaceC2748k<T> interfaceC2748k) {
        return mo12380a(interfaceC2748k, "");
    }

    /* renamed from: b */
    private <U> AbstractC2740c<U> m12378b(c<? super T, U> cVar) {
        return mo12379a(cVar);
    }

    /* renamed from: a */
    public abstract <U> AbstractC2740c<U> mo12379a(c<? super T, U> cVar);

    /* renamed from: a */
    public abstract boolean mo12380a(InterfaceC2748k<T> interfaceC2748k, String str);
}
