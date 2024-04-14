package org.junit.p227d;

import java.util.concurrent.TimeUnit;
import org.junit.p228e.p229a.AbstractC2941j;
import org.junit.runner.C2980c;

/* renamed from: org.junit.d.i */
/* loaded from: classes2.dex */
public abstract class AbstractC2922i implements InterfaceC2925l {

    /* renamed from: a */
    volatile long f10822a;

    /* renamed from: b */
    volatile long f10823b;

    /* renamed from: c */
    private final a f10824c;

    /* renamed from: org.junit.d.i$a */
    /* loaded from: classes2.dex */
    static class a {
        a() {
        }

        /* renamed from: a */
        private static long m13137a() {
            return System.nanoTime();
        }
    }

    /* renamed from: org.junit.d.i$b */
    /* loaded from: classes2.dex */
    private class b extends AbstractC2926m {
        private b() {
        }

        /* synthetic */ b(AbstractC2922i abstractC2922i, byte b2) {
            this();
        }

        @Override // org.junit.p227d.AbstractC2926m
        /* renamed from: a */
        protected final void mo13138a() {
            AbstractC2922i.this.m13136a();
        }

        @Override // org.junit.p227d.AbstractC2926m
        /* renamed from: a */
        protected final void mo13139a(C2980c c2980c) {
            AbstractC2922i abstractC2922i = AbstractC2922i.this;
            abstractC2922i.f10822a = System.nanoTime();
            abstractC2922i.f10823b = 0L;
        }

        @Override // org.junit.p227d.AbstractC2926m
        /* renamed from: b */
        protected final void mo13140b() {
            AbstractC2922i.this.f10823b = System.nanoTime();
            AbstractC2922i.this.m13136a();
        }

        @Override // org.junit.p227d.AbstractC2926m
        /* renamed from: c */
        protected final void mo13141c() {
            AbstractC2922i.this.f10823b = System.nanoTime();
            AbstractC2922i.this.m13136a();
        }

        @Override // org.junit.p227d.AbstractC2926m
        /* renamed from: d */
        protected final void mo13142d() {
            AbstractC2922i.this.f10823b = System.nanoTime();
            AbstractC2922i.this.m13136a();
        }
    }

    public AbstractC2922i() {
        this(new a());
    }

    private AbstractC2922i(a aVar) {
        this.f10824c = aVar;
    }

    /* renamed from: a */
    private long m13126a(TimeUnit timeUnit) {
        return timeUnit.convert(m13136a(), TimeUnit.NANOSECONDS);
    }

    /* renamed from: a */
    private static /* synthetic */ void m13127a(AbstractC2922i abstractC2922i) {
        abstractC2922i.f10822a = System.nanoTime();
        abstractC2922i.f10823b = 0L;
    }

    /* renamed from: b */
    private static void m13129b() {
    }

    /* renamed from: c */
    private static void m13130c() {
    }

    /* renamed from: d */
    private static void m13132d() {
    }

    /* renamed from: e */
    private static void m13133e() {
    }

    /* renamed from: f */
    private void m13134f() {
        this.f10822a = System.nanoTime();
        this.f10823b = 0L;
    }

    /* renamed from: g */
    private void m13135g() {
        this.f10823b = System.nanoTime();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final long m13136a() {
        if (this.f10822a == 0) {
            throw new IllegalStateException("Test has not started");
        }
        long j = this.f10823b;
        if (j == 0) {
            j = System.nanoTime();
        }
        return j - this.f10822a;
    }

    @Override // org.junit.p227d.InterfaceC2925l
    /* renamed from: a */
    public final AbstractC2941j mo13090a(AbstractC2941j abstractC2941j, C2980c c2980c) {
        return new b(this, (byte) 0).mo13090a(abstractC2941j, c2980c);
    }
}
