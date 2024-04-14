package com.iflytek.voiceads.download.p175b;

import com.iflytek.voiceads.download.p175b.p176a.RunnableC2252a;
import com.iflytek.voiceads.download.p175b.p177b.RunnableC2254a;
import com.iflytek.voiceads.download.p179d.C2262a;
import com.iflytek.voiceads.download.p179d.C2263b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.iflytek.voiceads.download.b.d */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2256d implements RunnableC2252a.a, RunnableC2254a.a {

    /* renamed from: a */
    private ExecutorService f8464a;

    /* renamed from: b */
    private InterfaceC2251a f8465b;

    /* renamed from: c */
    private C2262a f8466c;

    /* renamed from: e */
    private a f8468e;

    /* renamed from: g */
    private long f8470g;

    /* renamed from: f */
    private long f8469f = System.currentTimeMillis();

    /* renamed from: h */
    private volatile AtomicBoolean f8471h = new AtomicBoolean(false);

    /* renamed from: d */
    private List<RunnableC2254a> f8467d = new ArrayList();

    /* renamed from: com.iflytek.voiceads.download.b.d$a */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public interface a {
        /* renamed from: c */
        void mo9890c(C2262a c2262a);

        /* renamed from: d */
        void mo9891d(C2262a c2262a);
    }

    public C2256d(ExecutorService executorService, InterfaceC2251a interfaceC2251a, C2262a c2262a, a aVar) {
        this.f8464a = executorService;
        this.f8465b = interfaceC2251a;
        this.f8466c = c2262a;
        this.f8468e = aVar;
    }

    /* renamed from: f */
    private void m9906f() {
        this.f8470g = 0L;
        Iterator<C2263b> it = this.f8466c.m9969j().iterator();
        while (it.hasNext()) {
            this.f8470g += it.next().m9979d();
        }
        this.f8466c.m9960b(this.f8470g);
    }

    /* renamed from: a */
    public void m9907a() {
        if (this.f8466c.m9963d() <= 0) {
            this.f8464a.submit(new RunnableC2252a(this.f8465b, this.f8466c, this));
            return;
        }
        Iterator<C2263b> it = this.f8466c.m9969j().iterator();
        while (it.hasNext()) {
            RunnableC2254a runnableC2254a = new RunnableC2254a(it.next(), this.f8465b, this.f8466c, this);
            this.f8464a.submit(runnableC2254a);
            this.f8467d.add(runnableC2254a);
        }
        this.f8466c.m9951a(2);
        this.f8465b.mo9896a(this.f8466c);
    }

    @Override // com.iflytek.voiceads.download.p175b.p176a.RunnableC2252a.a
    /* renamed from: a */
    public void mo9899a(long j, boolean z) {
        this.f8466c.m9957a(z);
        this.f8466c.m9952a(j);
        ArrayList arrayList = new ArrayList();
        if (z) {
            long m9963d = this.f8466c.m9963d();
            long j2 = m9963d / 2;
            int i = 0;
            while (i < 2) {
                long j3 = j2 * i;
                C2263b c2263b = new C2263b(this.f8466c.m9958b(), j3, i == 1 ? m9963d : (j3 + j2) - 1);
                arrayList.add(c2263b);
                RunnableC2254a runnableC2254a = new RunnableC2254a(c2263b, this.f8465b, this.f8466c, this);
                this.f8464a.submit(runnableC2254a);
                this.f8467d.add(runnableC2254a);
                i++;
            }
        } else {
            C2263b c2263b2 = new C2263b(this.f8466c.m9958b(), 0L, this.f8466c.m9963d());
            arrayList.add(c2263b2);
            RunnableC2254a runnableC2254a2 = new RunnableC2254a(c2263b2, this.f8465b, this.f8466c, this);
            this.f8464a.submit(runnableC2254a2);
            this.f8467d.add(runnableC2254a2);
        }
        this.f8466c.m9956a(arrayList);
        this.f8466c.m9951a(2);
        this.f8465b.mo9896a(this.f8466c);
    }

    @Override // com.iflytek.voiceads.download.p175b.p176a.RunnableC2252a.a
    /* renamed from: b */
    public void mo9900b() {
        this.f8468e.mo9891d(this.f8466c);
    }

    @Override // com.iflytek.voiceads.download.p175b.p177b.RunnableC2254a.a
    /* renamed from: c */
    public void mo9903c() {
        if (this.f8471h.get()) {
            return;
        }
        synchronized (this) {
            if (!this.f8471h.get()) {
                this.f8471h.set(true);
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - this.f8469f > 1000) {
                    m9906f();
                    this.f8465b.mo9896a(this.f8466c);
                    this.f8469f = currentTimeMillis;
                }
                this.f8471h.set(false);
            }
        }
    }

    @Override // com.iflytek.voiceads.download.p175b.p177b.RunnableC2254a.a
    /* renamed from: d */
    public void mo9904d() {
        m9906f();
        if (this.f8466c.m9964e() == this.f8466c.m9963d()) {
            this.f8466c.m9951a(4);
            this.f8465b.mo9896a(this.f8466c);
            if (this.f8468e != null) {
                this.f8468e.mo9890c(this.f8466c);
            }
        }
    }

    @Override // com.iflytek.voiceads.download.p175b.p177b.RunnableC2254a.a
    /* renamed from: e */
    public void mo9905e() {
        this.f8468e.mo9891d(this.f8466c);
    }
}
