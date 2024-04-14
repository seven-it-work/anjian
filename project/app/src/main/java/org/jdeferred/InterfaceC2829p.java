package org.jdeferred;

/* renamed from: org.jdeferred.p */
/* loaded from: classes2.dex */
public interface InterfaceC2829p<D, F, P> {

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: org.jdeferred.p$a */
    /* loaded from: classes2.dex */
    public static final class a {
        public static final int PENDING$173726b0 = 1;
        public static final int REJECTED$173726b0 = 2;
        public static final int RESOLVED$173726b0 = 3;
        private static final /* synthetic */ int[] $VALUES$2629dad5 = {PENDING$173726b0, REJECTED$173726b0, RESOLVED$173726b0};

        private a(String str, int i) {
        }

        public static int[] values$390417ea() {
            return (int[]) $VALUES$2629dad5.clone();
        }
    }

    /* renamed from: a */
    InterfaceC2829p<D, F, P> mo12612a(InterfaceC2790a<D, F> interfaceC2790a);

    /* renamed from: a */
    InterfaceC2829p<D, F, P> mo12613a(InterfaceC2820g<D> interfaceC2820g);

    /* renamed from: a */
    InterfaceC2829p<D, F, P> mo12614a(InterfaceC2820g<D> interfaceC2820g, InterfaceC2823j<F> interfaceC2823j);

    /* renamed from: a */
    InterfaceC2829p<D, F, P> mo12615a(InterfaceC2820g<D> interfaceC2820g, InterfaceC2823j<F> interfaceC2823j, InterfaceC2826m<P> interfaceC2826m);

    /* renamed from: a */
    <D_OUT, F_OUT, P_OUT> InterfaceC2829p<D_OUT, F_OUT, P_OUT> mo12616a(InterfaceC2821h<D, D_OUT> interfaceC2821h);

    /* renamed from: a */
    <D_OUT, F_OUT, P_OUT> InterfaceC2829p<D_OUT, F_OUT, P_OUT> mo12617a(InterfaceC2821h<D, D_OUT> interfaceC2821h, InterfaceC2824k<F, F_OUT> interfaceC2824k);

    /* renamed from: a */
    <D_OUT, F_OUT, P_OUT> InterfaceC2829p<D_OUT, F_OUT, P_OUT> mo12618a(InterfaceC2821h<D, D_OUT> interfaceC2821h, InterfaceC2824k<F, F_OUT> interfaceC2824k, InterfaceC2827n<P, P_OUT> interfaceC2827n);

    /* renamed from: a */
    <D_OUT, F_OUT, P_OUT> InterfaceC2829p<D_OUT, F_OUT, P_OUT> mo12619a(InterfaceC2822i<D, D_OUT, F_OUT, P_OUT> interfaceC2822i);

    /* renamed from: a */
    <D_OUT, F_OUT, P_OUT> InterfaceC2829p<D_OUT, F_OUT, P_OUT> mo12620a(InterfaceC2822i<D, D_OUT, F_OUT, P_OUT> interfaceC2822i, InterfaceC2825l<F, D_OUT, F_OUT, P_OUT> interfaceC2825l);

    /* renamed from: a */
    <D_OUT, F_OUT, P_OUT> InterfaceC2829p<D_OUT, F_OUT, P_OUT> mo12621a(InterfaceC2822i<D, D_OUT, F_OUT, P_OUT> interfaceC2822i, InterfaceC2825l<F, D_OUT, F_OUT, P_OUT> interfaceC2825l, InterfaceC2828o<P, D_OUT, F_OUT, P_OUT> interfaceC2828o);

    /* renamed from: a */
    InterfaceC2829p<D, F, P> mo12622a(InterfaceC2823j<F> interfaceC2823j);

    /* renamed from: a */
    InterfaceC2829p<D, F, P> mo12623a(InterfaceC2826m<P> interfaceC2826m);

    /* renamed from: a */
    void mo12625a(long j) throws InterruptedException;

    /* renamed from: b */
    int mo12630b();

    /* renamed from: b */
    InterfaceC2829p<D, F, P> mo12631b(InterfaceC2820g<D> interfaceC2820g);

    /* renamed from: c */
    boolean mo12632c();

    /* renamed from: d */
    boolean mo12634d();

    /* renamed from: e */
    boolean mo12636e();

    /* renamed from: f */
    void mo12637f() throws InterruptedException;
}
