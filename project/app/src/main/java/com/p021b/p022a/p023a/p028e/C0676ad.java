package com.p021b.p022a.p023a.p028e;

import com.p021b.p032b.C0783f;
import com.p021b.p032b.C0802y;
import com.p021b.p032b.InterfaceC0785h;
import com.p021b.p032b.InterfaceC0801x;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.a.e.ad */
/* loaded from: classes.dex */
public final class C0676ad implements InterfaceC0801x {

    /* renamed from: c */
    static final /* synthetic */ boolean f1581c = true;

    /* renamed from: a */
    boolean f1582a;

    /* renamed from: b */
    boolean f1583b;

    /* renamed from: d */
    final /* synthetic */ C0674ab f1584d;

    /* renamed from: e */
    private final C0783f f1585e = new C0783f();

    /* renamed from: f */
    private final C0783f f1586f = new C0783f();

    /* renamed from: g */
    private final long f1587g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0676ad(C0674ab c0674ab, long j) {
        this.f1584d = c0674ab;
        this.f1587g = j;
    }

    /* renamed from: b */
    private void m1689b() {
        this.f1584d.f1569f.m2012c();
        while (this.f1586f.m2036b() == 0 && !this.f1583b && !this.f1582a && this.f1584d.f1571h == null) {
            try {
                this.f1584d.m1687i();
            } finally {
                this.f1584d.f1569f.m1693b();
            }
        }
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final long mo1543a(C0783f c0783f, long j) {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        synchronized (this.f1584d) {
            m1689b();
            if (this.f1582a) {
                throw new IOException("stream closed");
            }
            if (this.f1584d.f1571h != null) {
                throw new C0685am(this.f1584d.f1571h);
            }
            if (this.f1586f.m2036b() == 0) {
                return -1L;
            }
            long mo1543a = this.f1586f.mo1543a(c0783f, Math.min(j, this.f1586f.m2036b()));
            this.f1584d.f1564a += mo1543a;
            if (this.f1584d.f1564a >= this.f1584d.f1567d.f1678l.m1726d() / 2) {
                this.f1584d.f1567d.m1756a(this.f1584d.f1566c, this.f1584d.f1564a);
                this.f1584d.f1564a = 0L;
            }
            synchronized (this.f1584d.f1567d) {
                this.f1584d.f1567d.f1676j += mo1543a;
                if (this.f1584d.f1567d.f1676j >= this.f1584d.f1567d.f1678l.m1726d() / 2) {
                    this.f1584d.f1567d.m1756a(0, this.f1584d.f1567d.f1676j);
                    this.f1584d.f1567d.f1676j = 0L;
                }
            }
            return mo1543a;
        }
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final C0802y mo1544a() {
        return this.f1584d.f1569f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1690a(InterfaceC0785h interfaceC0785h, long j) {
        boolean z;
        boolean z2;
        if (!f1581c && Thread.holdsLock(this.f1584d)) {
            throw new AssertionError();
        }
        while (j > 0) {
            synchronized (this.f1584d) {
                z = this.f1583b;
                z2 = j + this.f1586f.m2036b() > this.f1587g;
            }
            if (z2) {
                interfaceC0785h.mo2053f(j);
                this.f1584d.m1678b(EnumC0686b.FLOW_CONTROL_ERROR);
                return;
            }
            if (z) {
                interfaceC0785h.mo2053f(j);
                return;
            }
            long a2 = interfaceC0785h.mo1543a(this.f1585e, j);
            if (a2 == -1) {
                throw new EOFException();
            }
            long j2 = j - a2;
            synchronized (this.f1584d) {
                boolean z3 = this.f1586f.m2036b() == 0;
                this.f1586f.m2025a(this.f1585e);
                if (z3) {
                    this.f1584d.notifyAll();
                }
            }
            j = j2;
        }
    }

    @Override // com.p021b.p032b.InterfaceC0801x, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.f1584d) {
            this.f1582a = true;
            this.f1586f.m2068o();
            this.f1584d.notifyAll();
        }
        this.f1584d.m1685g();
    }
}
