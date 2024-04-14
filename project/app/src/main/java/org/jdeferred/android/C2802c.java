package org.jdeferred.android;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import org.jdeferred.InterfaceC2790a;
import org.jdeferred.InterfaceC2809b;
import org.jdeferred.InterfaceC2820g;
import org.jdeferred.InterfaceC2823j;
import org.jdeferred.InterfaceC2826m;
import org.jdeferred.InterfaceC2829p;
import org.jdeferred.p208a.C2794d;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* renamed from: org.jdeferred.android.c */
/* loaded from: classes2.dex */
public class C2802c<D, F, P> extends C2794d<D, F, P> {

    /* renamed from: j */
    private static final b f10628j = new b();

    /* renamed from: k */
    private static final int f10629k = 1;

    /* renamed from: l */
    private static final int f10630l = 2;

    /* renamed from: m */
    private static final int f10631m = 3;

    /* renamed from: n */
    private static final int f10632n = 4;

    /* renamed from: a */
    protected final Logger f10633a;

    /* renamed from: o */
    private final int f10634o;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.jdeferred.android.c$a */
    /* loaded from: classes2.dex */
    public static class a<Callback, D, F, P> {

        /* renamed from: a */
        final InterfaceC2809b f10638a;

        /* renamed from: b */
        final Callback f10639b;

        /* renamed from: c */
        final D f10640c;

        /* renamed from: d */
        final F f10641d;

        /* renamed from: e */
        final P f10642e;

        /* renamed from: f */
        final int f10643f;

        a(InterfaceC2809b interfaceC2809b, Callback callback, int i, D d, F f, P p) {
            this.f10638a = interfaceC2809b;
            this.f10639b = callback;
            this.f10643f = i;
            this.f10640c = d;
            this.f10641d = f;
            this.f10642e = p;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.jdeferred.android.c$b */
    /* loaded from: classes2.dex */
    public static class b extends Handler {
        public b() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            a aVar = (a) message.obj;
            switch (message.what) {
                case 1:
                    ((InterfaceC2820g) aVar.f10639b).mo12655a(aVar.f10640c);
                    return;
                case 2:
                    ((InterfaceC2826m) aVar.f10639b).mo12653a(aVar.f10642e);
                    return;
                case 3:
                    ((InterfaceC2823j) aVar.f10639b).mo12654a(aVar.f10641d);
                    return;
                default:
                    return;
            }
        }
    }

    public C2802c(InterfaceC2829p<D, F, P> interfaceC2829p) {
        this(interfaceC2829p, C2804e.UI$7dcf2b73);
    }

    public C2802c(InterfaceC2829p<D, F, P> interfaceC2829p, int i) {
        this.f10633a = LoggerFactory.getLogger(C2802c.class);
        this.f10634o = i;
        interfaceC2829p.mo12631b(new InterfaceC2820g<D>() { // from class: org.jdeferred.android.c.3
            @Override // org.jdeferred.InterfaceC2820g
            /* renamed from: a */
            public final void mo12655a(D d) {
                C2802c.this.mo12646a((C2802c) d);
            }
        }).mo12623a(new InterfaceC2826m<P>() { // from class: org.jdeferred.android.c.2
            @Override // org.jdeferred.InterfaceC2826m
            /* renamed from: a */
            public final void mo12653a(P p) {
                C2802c.this.mo12649c(p);
            }
        }).mo12622a(new InterfaceC2823j<F>() { // from class: org.jdeferred.android.c.1
            @Override // org.jdeferred.InterfaceC2823j
            /* renamed from: a */
            public final void mo12654a(F f) {
                C2802c.this.mo12648b((C2802c) f);
            }
        });
    }

    /* renamed from: a */
    private <Callback> void m12665a(int i, Callback callback, int i2, D d, F f, P p) {
        f10628j.obtainMessage(i, new a(this, callback, i2, d, f, p)).sendToTarget();
    }

    /* renamed from: g */
    private int m12666g(Object obj) {
        int m12667a = obj instanceof InterfaceC2805f ? ((InterfaceC2805f) obj).m12667a() : 0;
        return m12667a == 0 ? this.f10634o : m12667a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jdeferred.p208a.AbstractC2792b
    /* renamed from: a */
    public final void mo12626a(InterfaceC2790a<D, F> interfaceC2790a, int i, D d, F f) {
        if (m12666g(interfaceC2790a) == C2804e.UI$7dcf2b73) {
            m12665a(4, interfaceC2790a, i, d, f, null);
        } else {
            super.mo12626a(interfaceC2790a, i, d, f);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jdeferred.p208a.AbstractC2792b
    /* renamed from: a */
    public final void mo12627a(InterfaceC2820g<D> interfaceC2820g, D d) {
        if (m12666g(interfaceC2820g) == C2804e.UI$7dcf2b73) {
            m12665a(1, interfaceC2820g, InterfaceC2829p.a.RESOLVED$173726b0, d, null, null);
        } else {
            super.mo12627a((InterfaceC2820g<InterfaceC2820g<D>>) interfaceC2820g, (InterfaceC2820g<D>) d);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jdeferred.p208a.AbstractC2792b
    /* renamed from: a */
    public final void mo12628a(InterfaceC2823j<F> interfaceC2823j, F f) {
        if (m12666g(interfaceC2823j) == C2804e.UI$7dcf2b73) {
            m12665a(3, interfaceC2823j, InterfaceC2829p.a.REJECTED$173726b0, null, f, null);
        } else {
            super.mo12628a((InterfaceC2823j<InterfaceC2823j<F>>) interfaceC2823j, (InterfaceC2823j<F>) f);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jdeferred.p208a.AbstractC2792b
    /* renamed from: a */
    public final void mo12629a(InterfaceC2826m<P> interfaceC2826m, P p) {
        if (m12666g(interfaceC2826m) == C2804e.UI$7dcf2b73) {
            m12665a(2, interfaceC2826m, InterfaceC2829p.a.PENDING$173726b0, null, null, p);
        } else {
            super.mo12629a((InterfaceC2826m<InterfaceC2826m<P>>) interfaceC2826m, (InterfaceC2826m<P>) p);
        }
    }
}
