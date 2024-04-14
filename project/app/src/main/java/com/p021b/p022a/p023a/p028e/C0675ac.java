package com.p021b.p022a.p023a.p028e;

import android.support.v4.media.session.PlaybackStateCompat;
import com.p021b.p032b.C0783f;
import com.p021b.p032b.C0802y;
import com.p021b.p032b.InterfaceC0800w;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.a.e.ac */
/* loaded from: classes.dex */
public final class C0675ac implements InterfaceC0800w {

    /* renamed from: c */
    static final /* synthetic */ boolean f1576c = true;

    /* renamed from: a */
    boolean f1577a;

    /* renamed from: b */
    boolean f1578b;

    /* renamed from: d */
    final /* synthetic */ C0674ab f1579d;

    /* renamed from: e */
    private final C0783f f1580e = new C0783f();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0675ac(C0674ab c0674ab) {
        this.f1579d = c0674ab;
    }

    /* renamed from: a */
    private void m1688a(boolean z) {
        long min;
        synchronized (this.f1579d) {
            this.f1579d.f1570g.m2012c();
            while (this.f1579d.f1565b <= 0 && !this.f1578b && !this.f1577a && this.f1579d.f1571h == null) {
                try {
                    this.f1579d.m1687i();
                } finally {
                }
            }
            this.f1579d.f1570g.m1693b();
            this.f1579d.m1686h();
            min = Math.min(this.f1579d.f1565b, this.f1580e.m2036b());
            this.f1579d.f1565b -= min;
        }
        this.f1579d.f1570g.m2012c();
        try {
            this.f1579d.f1567d.m1761a(this.f1579d.f1566c, z && min == this.f1580e.m2036b(), this.f1580e, min);
        } finally {
        }
    }

    @Override // com.p021b.p032b.InterfaceC0800w
    /* renamed from: a */
    public final C0802y mo1662a() {
        return this.f1579d.f1570g;
    }

    @Override // com.p021b.p032b.InterfaceC0800w
    /* renamed from: a_ */
    public final void mo1663a_(C0783f c0783f, long j) {
        if (!f1576c && Thread.holdsLock(this.f1579d)) {
            throw new AssertionError();
        }
        this.f1580e.mo1663a_(c0783f, j);
        while (this.f1580e.m2036b() >= PlaybackStateCompat.ACTION_PREPARE) {
            m1688a(false);
        }
    }

    @Override // com.p021b.p032b.InterfaceC0800w, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (!f1576c && Thread.holdsLock(this.f1579d)) {
            throw new AssertionError();
        }
        synchronized (this.f1579d) {
            if (this.f1577a) {
                return;
            }
            if (!this.f1579d.f1568e.f1578b) {
                if (this.f1580e.m2036b() > 0) {
                    while (this.f1580e.m2036b() > 0) {
                        m1688a(true);
                    }
                } else {
                    this.f1579d.f1567d.m1761a(this.f1579d.f1566c, true, (C0783f) null, 0L);
                }
            }
            synchronized (this.f1579d) {
                this.f1577a = true;
            }
            this.f1579d.f1567d.f1682p.m1704b();
            this.f1579d.m1685g();
        }
    }

    @Override // com.p021b.p032b.InterfaceC0800w, java.io.Flushable
    public final void flush() {
        if (!f1576c && Thread.holdsLock(this.f1579d)) {
            throw new AssertionError();
        }
        synchronized (this.f1579d) {
            this.f1579d.m1686h();
        }
        while (this.f1580e.m2036b() > 0) {
            m1688a(false);
            this.f1579d.f1567d.f1682p.m1704b();
        }
    }
}
