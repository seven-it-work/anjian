package com.bumptech.glide.load.p042b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.support.v4.util.Pools;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.p042b.RunnableC0911g;
import com.bumptech.glide.load.p042b.p045c.ExecutorServiceC0902a;
import com.bumptech.glide.request.InterfaceC1067h;
import com.bumptech.glide.util.C1086k;
import com.bumptech.glide.util.p057a.AbstractC1076c;
import com.bumptech.glide.util.p057a.C1074a;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.bumptech.glide.load.b.k */
/* loaded from: classes.dex */
public final class C0915k<R> implements RunnableC0911g.a<R>, C1074a.c {

    /* renamed from: r */
    private static final a f2781r = new a();

    /* renamed from: s */
    private static final Handler f2782s = new Handler(Looper.getMainLooper(), new b());

    /* renamed from: t */
    private static final int f2783t = 1;

    /* renamed from: u */
    private static final int f2784u = 2;

    /* renamed from: v */
    private static final int f2785v = 3;

    /* renamed from: A */
    private final ExecutorServiceC0902a f2786A;

    /* renamed from: B */
    private C0920p f2787B;

    /* renamed from: a */
    public final List<InterfaceC1067h> f2788a;

    /* renamed from: b */
    public final AbstractC1076c f2789b;

    /* renamed from: c */
    public final InterfaceC0916l f2790c;

    /* renamed from: d */
    public final ExecutorServiceC0902a f2791d;

    /* renamed from: e */
    public InterfaceC1022g f2792e;

    /* renamed from: f */
    public boolean f2793f;

    /* renamed from: g */
    public boolean f2794g;

    /* renamed from: h */
    public boolean f2795h;

    /* renamed from: i */
    public boolean f2796i;

    /* renamed from: j */
    InterfaceC0925u<?> f2797j;

    /* renamed from: k */
    EnumC0849a f2798k;

    /* renamed from: l */
    public boolean f2799l;

    /* renamed from: m */
    public boolean f2800m;

    /* renamed from: n */
    public List<InterfaceC1067h> f2801n;

    /* renamed from: o */
    C0919o<?> f2802o;

    /* renamed from: p */
    public RunnableC0911g<R> f2803p;

    /* renamed from: q */
    public volatile boolean f2804q;

    /* renamed from: w */
    private final Pools.Pool<C0915k<?>> f2805w;

    /* renamed from: x */
    private final a f2806x;

    /* renamed from: y */
    private final ExecutorServiceC0902a f2807y;

    /* renamed from: z */
    private final ExecutorServiceC0902a f2808z;

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.b.k$a */
    /* loaded from: classes.dex */
    static class a {
        a() {
        }

        /* renamed from: a */
        private static <R> C0919o<R> m2718a(InterfaceC0925u<R> interfaceC0925u, boolean z) {
            return new C0919o<>(interfaceC0925u, z, true);
        }
    }

    /* renamed from: com.bumptech.glide.load.b.k$b */
    /* loaded from: classes.dex */
    private static class b implements Handler.Callback {
        b() {
        }

        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            C0915k<?> c0915k = (C0915k) message.obj;
            switch (message.what) {
                case 1:
                    c0915k.f2789b.mo3441a();
                    if (c0915k.f2804q) {
                        c0915k.f2797j.mo2726d();
                        break;
                    } else {
                        if (c0915k.f2788a.isEmpty()) {
                            throw new IllegalStateException("Received a resource without any callbacks to notify");
                        }
                        if (c0915k.f2799l) {
                            throw new IllegalStateException("Already have resource");
                        }
                        c0915k.f2802o = new C0919o<>(c0915k.f2797j, c0915k.f2793f, true);
                        c0915k.f2799l = true;
                        c0915k.f2802o.m2727e();
                        c0915k.f2790c.mo2694a(c0915k, c0915k.f2792e, c0915k.f2802o);
                        int size = c0915k.f2788a.size();
                        for (int i = 0; i < size; i++) {
                            InterfaceC1067h interfaceC1067h = c0915k.f2788a.get(i);
                            if (!c0915k.m2715b(interfaceC1067h)) {
                                c0915k.f2802o.m2727e();
                                interfaceC1067h.mo3389a(c0915k.f2802o, c0915k.f2798k);
                            }
                        }
                        c0915k.f2802o.m2728f();
                        break;
                    }
                case 2:
                    c0915k.m2717d();
                    return true;
                case 3:
                    c0915k.f2789b.mo3441a();
                    if (!c0915k.f2804q) {
                        throw new IllegalStateException("Not cancelled");
                    }
                    c0915k.f2790c.mo2693a(c0915k, c0915k.f2792e);
                    break;
                default:
                    throw new IllegalStateException("Unrecognized message: " + message.what);
            }
            c0915k.m2716c();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0915k(ExecutorServiceC0902a executorServiceC0902a, ExecutorServiceC0902a executorServiceC0902a2, ExecutorServiceC0902a executorServiceC0902a3, ExecutorServiceC0902a executorServiceC0902a4, InterfaceC0916l interfaceC0916l, Pools.Pool<C0915k<?>> pool) {
        this(executorServiceC0902a, executorServiceC0902a2, executorServiceC0902a3, executorServiceC0902a4, interfaceC0916l, pool, f2781r);
    }

    @VisibleForTesting
    private C0915k(ExecutorServiceC0902a executorServiceC0902a, ExecutorServiceC0902a executorServiceC0902a2, ExecutorServiceC0902a executorServiceC0902a3, ExecutorServiceC0902a executorServiceC0902a4, InterfaceC0916l interfaceC0916l, Pools.Pool<C0915k<?>> pool, a aVar) {
        this.f2788a = new ArrayList(2);
        this.f2789b = new AbstractC1076c.b();
        this.f2791d = executorServiceC0902a;
        this.f2807y = executorServiceC0902a2;
        this.f2808z = executorServiceC0902a3;
        this.f2786A = executorServiceC0902a4;
        this.f2790c = interfaceC0916l;
        this.f2805w = pool;
        this.f2806x = aVar;
    }

    @VisibleForTesting
    /* renamed from: a */
    private C0915k<R> m2704a(InterfaceC1022g interfaceC1022g, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f2792e = interfaceC1022g;
        this.f2793f = z;
        this.f2794g = z2;
        this.f2795h = z3;
        this.f2796i = z4;
        return this;
    }

    /* renamed from: b */
    private void m2705b(RunnableC0911g<R> runnableC0911g) {
        this.f2803p = runnableC0911g;
        RunnableC0911g.g m2662a = runnableC0911g.m2662a(RunnableC0911g.g.INITIALIZE);
        (m2662a == RunnableC0911g.g.RESOURCE_CACHE || m2662a == RunnableC0911g.g.DATA_CACHE ? this.f2791d : m2713a()).execute(runnableC0911g);
    }

    /* renamed from: c */
    private void m2706c(InterfaceC1067h interfaceC1067h) {
        C1086k.m3485a();
        this.f2789b.mo3441a();
        if (this.f2799l || this.f2800m) {
            if (this.f2801n == null) {
                this.f2801n = new ArrayList(2);
            }
            if (this.f2801n.contains(interfaceC1067h)) {
                return;
            }
            this.f2801n.add(interfaceC1067h);
            return;
        }
        this.f2788a.remove(interfaceC1067h);
        if (!this.f2788a.isEmpty() || this.f2800m || this.f2799l || this.f2804q) {
            return;
        }
        this.f2804q = true;
        RunnableC0911g<R> runnableC0911g = this.f2803p;
        runnableC0911g.f2727t = true;
        InterfaceC0909e interfaceC0909e = runnableC0911g.f2726s;
        if (interfaceC0909e != null) {
            interfaceC0909e.mo2528b();
        }
        this.f2790c.mo2693a(this, this.f2792e);
    }

    /* renamed from: d */
    private void m2707d(InterfaceC1067h interfaceC1067h) {
        if (this.f2801n == null) {
            this.f2801n = new ArrayList(2);
        }
        if (this.f2801n.contains(interfaceC1067h)) {
            return;
        }
        this.f2801n.add(interfaceC1067h);
    }

    /* renamed from: e */
    private boolean m2708e() {
        return this.f2796i;
    }

    /* renamed from: f */
    private void m2709f() {
        if (this.f2800m || this.f2799l || this.f2804q) {
            return;
        }
        this.f2804q = true;
        RunnableC0911g<R> runnableC0911g = this.f2803p;
        runnableC0911g.f2727t = true;
        InterfaceC0909e interfaceC0909e = runnableC0911g.f2726s;
        if (interfaceC0909e != null) {
            interfaceC0909e.mo2528b();
        }
        this.f2790c.mo2693a(this, this.f2792e);
    }

    /* renamed from: g */
    private boolean m2710g() {
        return this.f2804q;
    }

    /* renamed from: h */
    private void m2711h() {
        this.f2789b.mo3441a();
        if (this.f2804q) {
            this.f2797j.mo2726d();
        } else {
            if (this.f2788a.isEmpty()) {
                throw new IllegalStateException("Received a resource without any callbacks to notify");
            }
            if (this.f2799l) {
                throw new IllegalStateException("Already have resource");
            }
            this.f2802o = new C0919o<>(this.f2797j, this.f2793f, true);
            this.f2799l = true;
            this.f2802o.m2727e();
            this.f2790c.mo2694a(this, this.f2792e, this.f2802o);
            int size = this.f2788a.size();
            for (int i = 0; i < size; i++) {
                InterfaceC1067h interfaceC1067h = this.f2788a.get(i);
                if (!m2715b(interfaceC1067h)) {
                    this.f2802o.m2727e();
                    interfaceC1067h.mo3389a(this.f2802o, this.f2798k);
                }
            }
            this.f2802o.m2728f();
        }
        m2716c();
    }

    /* renamed from: i */
    private void m2712i() {
        this.f2789b.mo3441a();
        if (!this.f2804q) {
            throw new IllegalStateException("Not cancelled");
        }
        this.f2790c.mo2693a(this, this.f2792e);
        m2716c();
    }

    /* renamed from: a */
    public final ExecutorServiceC0902a m2713a() {
        return this.f2794g ? this.f2808z : this.f2795h ? this.f2786A : this.f2807y;
    }

    @Override // com.bumptech.glide.load.p042b.RunnableC0911g.a
    /* renamed from: a */
    public final void mo2664a(RunnableC0911g<?> runnableC0911g) {
        m2713a().execute(runnableC0911g);
    }

    @Override // com.bumptech.glide.load.p042b.RunnableC0911g.a
    /* renamed from: a */
    public final void mo2665a(C0920p c0920p) {
        this.f2787B = c0920p;
        f2782s.obtainMessage(2, this).sendToTarget();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.load.p042b.RunnableC0911g.a
    /* renamed from: a */
    public final void mo2666a(InterfaceC0925u<R> interfaceC0925u, EnumC0849a enumC0849a) {
        this.f2797j = interfaceC0925u;
        this.f2798k = enumC0849a;
        f2782s.obtainMessage(1, this).sendToTarget();
    }

    /* renamed from: a */
    public final void m2714a(InterfaceC1067h interfaceC1067h) {
        C1086k.m3485a();
        this.f2789b.mo3441a();
        if (this.f2799l) {
            interfaceC1067h.mo3389a(this.f2802o, this.f2798k);
        } else if (this.f2800m) {
            interfaceC1067h.mo3388a(this.f2787B);
        } else {
            this.f2788a.add(interfaceC1067h);
        }
    }

    /* renamed from: b */
    final boolean m2715b(InterfaceC1067h interfaceC1067h) {
        return this.f2801n != null && this.f2801n.contains(interfaceC1067h);
    }

    /* renamed from: c */
    final void m2716c() {
        C1086k.m3485a();
        this.f2788a.clear();
        this.f2792e = null;
        this.f2802o = null;
        this.f2797j = null;
        if (this.f2801n != null) {
            this.f2801n.clear();
        }
        this.f2800m = false;
        this.f2804q = false;
        this.f2799l = false;
        RunnableC0911g<R> runnableC0911g = this.f2803p;
        if (runnableC0911g.f2711d.m2675a(false)) {
            runnableC0911g.m2663a();
        }
        this.f2803p = null;
        this.f2787B = null;
        this.f2798k = null;
        this.f2805w.release(this);
    }

    /* renamed from: d */
    final void m2717d() {
        this.f2789b.mo3441a();
        if (this.f2804q) {
            m2716c();
            return;
        }
        if (this.f2788a.isEmpty()) {
            throw new IllegalStateException("Received an exception without any callbacks to notify");
        }
        if (this.f2800m) {
            throw new IllegalStateException("Already failed once");
        }
        this.f2800m = true;
        this.f2790c.mo2694a(this, this.f2792e, null);
        for (InterfaceC1067h interfaceC1067h : this.f2788a) {
            if (!m2715b(interfaceC1067h)) {
                interfaceC1067h.mo3388a(this.f2787B);
            }
        }
        m2716c();
    }

    @Override // com.bumptech.glide.util.p057a.C1074a.c
    @NonNull
    /* renamed from: g_ */
    public final AbstractC1076c mo2577g_() {
        return this.f2789b;
    }
}
