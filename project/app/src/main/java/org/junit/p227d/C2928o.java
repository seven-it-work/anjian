package org.junit.p227d;

import java.util.concurrent.TimeUnit;
import org.junit.p218b.p222d.p225c.C2892c;
import org.junit.p228e.p229a.AbstractC2941j;
import org.junit.runner.C2980c;

/* renamed from: org.junit.d.o */
/* loaded from: classes2.dex */
public final class C2928o implements InterfaceC2925l {

    /* renamed from: a */
    private final long f10835a;

    /* renamed from: b */
    private final TimeUnit f10836b;

    /* renamed from: c */
    private final boolean f10837c;

    /* renamed from: org.junit.d.o$a */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a */
        boolean f10840a = false;

        /* renamed from: b */
        long f10841b = 0;

        /* renamed from: c */
        TimeUnit f10842c = TimeUnit.SECONDS;

        protected a() {
        }

        /* renamed from: a */
        private long m13177a() {
            return this.f10841b;
        }

        /* renamed from: a */
        private a m13178a(long j, TimeUnit timeUnit) {
            this.f10841b = j;
            this.f10842c = timeUnit;
            return this;
        }

        /* renamed from: a */
        private a m13179a(boolean z) {
            this.f10840a = z;
            return this;
        }

        /* renamed from: b */
        private TimeUnit m13180b() {
            return this.f10842c;
        }

        /* renamed from: c */
        private boolean m13181c() {
            return this.f10840a;
        }

        /* renamed from: d */
        private C2928o m13182d() {
            return new C2928o(this);
        }
    }

    @Deprecated
    private C2928o(int i) {
        this(i, TimeUnit.MILLISECONDS);
    }

    private C2928o(long j, TimeUnit timeUnit) {
        this.f10835a = j;
        this.f10836b = timeUnit;
        this.f10837c = false;
    }

    protected C2928o(a aVar) {
        this.f10835a = aVar.f10841b;
        this.f10836b = aVar.f10842c;
        this.f10837c = aVar.f10840a;
    }

    /* renamed from: a */
    private long m13171a(TimeUnit timeUnit) {
        return timeUnit.convert(this.f10835a, this.f10836b);
    }

    /* renamed from: a */
    private static a m13172a() {
        return new a();
    }

    /* renamed from: a */
    private static C2928o m13173a(long j) {
        return new C2928o(j, TimeUnit.MILLISECONDS);
    }

    /* renamed from: a */
    private AbstractC2941j m13174a(AbstractC2941j abstractC2941j) throws Exception {
        C2892c.a m12927a = C2892c.m12919b().m12927a(this.f10835a, this.f10836b);
        m12927a.f10767a = this.f10837c;
        return m12927a.m12928a(abstractC2941j);
    }

    /* renamed from: b */
    private static C2928o m13175b(long j) {
        return new C2928o(j, TimeUnit.SECONDS);
    }

    /* renamed from: b */
    private boolean m13176b() {
        return this.f10837c;
    }

    @Override // org.junit.p227d.InterfaceC2925l
    /* renamed from: a */
    public final AbstractC2941j mo13090a(AbstractC2941j abstractC2941j, C2980c c2980c) {
        try {
            C2892c.a m12927a = C2892c.m12919b().m12927a(this.f10835a, this.f10836b);
            m12927a.f10767a = this.f10837c;
            return m12927a.m12928a(abstractC2941j);
        } catch (Exception e) {
            return new AbstractC2941j() { // from class: org.junit.d.o.1
                @Override // org.junit.p228e.p229a.AbstractC2941j
                /* renamed from: a */
                public final void mo12846a() throws Throwable {
                    throw new RuntimeException("Invalid parameters for Timeout", e);
                }
            };
        }
    }
}
