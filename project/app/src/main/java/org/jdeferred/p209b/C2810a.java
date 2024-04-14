package org.jdeferred.p209b;

import java.util.concurrent.atomic.AtomicInteger;
import org.jdeferred.InterfaceC2820g;
import org.jdeferred.InterfaceC2823j;
import org.jdeferred.InterfaceC2826m;
import org.jdeferred.InterfaceC2829p;
import org.jdeferred.p208a.C2794d;

/* renamed from: org.jdeferred.b.a */
/* loaded from: classes2.dex */
public final class C2810a extends C2794d<C2812c, C2814e, C2811b> implements InterfaceC2829p<C2812c, C2814e, C2811b> {

    /* renamed from: a */
    private final int f10648a;

    /* renamed from: j */
    private final AtomicInteger f10649j = new AtomicInteger();

    /* renamed from: k */
    private final AtomicInteger f10650k = new AtomicInteger();

    /* renamed from: l */
    private final C2812c f10651l;

    public C2810a(InterfaceC2829p... interfaceC2829pArr) {
        if (interfaceC2829pArr == null || interfaceC2829pArr.length == 0) {
            throw new IllegalArgumentException("Promises is null or empty");
        }
        this.f10648a = interfaceC2829pArr.length;
        this.f10651l = new C2812c(this.f10648a);
        int length = interfaceC2829pArr.length;
        int i = 0;
        final int i2 = 0;
        while (i < length) {
            final InterfaceC2829p interfaceC2829p = interfaceC2829pArr[i];
            interfaceC2829p.mo12622a(new InterfaceC2823j<Object>() { // from class: org.jdeferred.b.a.3
                @Override // org.jdeferred.InterfaceC2823j
                /* renamed from: a */
                public final void mo12654a(Object obj) {
                    synchronized (C2810a.this) {
                        if (C2810a.this.mo12632c()) {
                            C2810a.this.mo12649c((C2810a) new C2811b(C2810a.this.f10649j.get(), C2810a.this.f10650k.incrementAndGet(), C2810a.this.f10648a));
                            C2810a.this.mo12648b((C2810a) new C2814e(i2, interfaceC2829p, obj));
                        }
                    }
                }
            }).mo12623a(new InterfaceC2826m() { // from class: org.jdeferred.b.a.2
                @Override // org.jdeferred.InterfaceC2826m
                /* renamed from: a */
                public final void mo12653a(Object obj) {
                    synchronized (C2810a.this) {
                        if (C2810a.this.mo12632c()) {
                            C2810a.this.mo12649c((C2810a) new C2813d(C2810a.this.f10649j.get(), C2810a.this.f10650k.get(), C2810a.this.f10648a, i2, interfaceC2829p, obj));
                        }
                    }
                }
            }).mo12631b(new InterfaceC2820g() { // from class: org.jdeferred.b.a.1
                @Override // org.jdeferred.InterfaceC2820g
                /* renamed from: a */
                public final void mo12655a(Object obj) {
                    synchronized (C2810a.this) {
                        if (C2810a.this.mo12632c()) {
                            C2812c c2812c = C2810a.this.f10651l;
                            c2812c.f10664a.set(i2, new C2815f(i2, interfaceC2829p, obj));
                            int incrementAndGet = C2810a.this.f10649j.incrementAndGet();
                            C2810a.this.mo12649c((C2810a) new C2811b(incrementAndGet, C2810a.this.f10650k.get(), C2810a.this.f10648a));
                            if (incrementAndGet == C2810a.this.f10648a) {
                                C2810a.this.mo12646a((C2810a) C2810a.this.f10651l);
                            }
                        }
                    }
                }
            });
            i++;
            i2++;
        }
    }
}
