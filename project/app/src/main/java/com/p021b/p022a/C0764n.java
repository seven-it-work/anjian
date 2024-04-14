package com.p021b.p022a;

import android.support.v7.widget.ActivityChooserView;
import com.p021b.p022a.p023a.C0650c;
import com.p021b.p022a.p023a.p025b.C0644c;
import com.p021b.p022a.p023a.p025b.C0645d;
import com.p021b.p022a.p023a.p025b.C0648g;
import com.p021b.p022a.p023a.p025b.C0649h;
import com.p021b.p022a.p023a.p030g.C0720h;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: com.b.a.n */
/* loaded from: classes.dex */
public final class C0764n {

    /* renamed from: c */
    static final /* synthetic */ boolean f2077c = true;

    /* renamed from: d */
    private static final Executor f2078d = new ThreadPoolExecutor(0, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60, TimeUnit.SECONDS, new SynchronousQueue(), C0650c.m1610a("OkHttp ConnectionPool", true));

    /* renamed from: a */
    final C0645d f2079a;

    /* renamed from: b */
    boolean f2080b;

    /* renamed from: e */
    private final int f2081e;

    /* renamed from: f */
    private final long f2082f;

    /* renamed from: g */
    private final Runnable f2083g;

    /* renamed from: h */
    private final Deque<C0644c> f2084h;

    public C0764n() {
        this(TimeUnit.MINUTES);
    }

    private C0764n(TimeUnit timeUnit) {
        this.f2083g = new RunnableC0765o(this);
        this.f2084h = new ArrayDeque();
        this.f2079a = new C0645d();
        this.f2081e = 5;
        this.f2082f = timeUnit.toNanos(5L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final long m1966a(long j) {
        int size;
        synchronized (this) {
            long j2 = Long.MIN_VALUE;
            C0644c c0644c = null;
            int i = 0;
            int i2 = 0;
            for (C0644c c0644c2 : this.f2084h) {
                List<Reference<C0648g>> list = c0644c2.f1464d;
                int i3 = 0;
                while (true) {
                    if (i3 >= list.size()) {
                        size = list.size();
                        break;
                    }
                    Reference<C0648g> reference = list.get(i3);
                    if (reference.get() == null) {
                        C0720h.m1803b().mo1784a("A connection to " + c0644c2.mo1564a().f1921a.f1400a + " was leaked. Did you forget to close a response body?", ((C0649h) reference).f1498a);
                        list.remove(i3);
                        c0644c2.f1461a = true;
                        if (list.isEmpty()) {
                            c0644c2.f1465e = j - this.f2082f;
                            size = 0;
                            break;
                        }
                    } else {
                        i3++;
                    }
                }
                if (size > 0) {
                    i2++;
                } else {
                    i++;
                    long j3 = j - c0644c2.f1465e;
                    if (j3 > j2) {
                        c0644c = c0644c2;
                        j2 = j3;
                    }
                }
            }
            if (j2 < this.f2082f && i <= this.f2081e) {
                if (i > 0) {
                    return this.f2082f - j2;
                }
                if (i2 > 0) {
                    return this.f2082f;
                }
                this.f2080b = false;
                return -1L;
            }
            this.f2084h.remove(c0644c);
            C0650c.m1613a(c0644c.m1570b());
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C0644c m1967a(C0630a c0630a, C0648g c0648g) {
        if (!f2077c && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (C0644c c0644c : this.f2084h) {
            if (c0644c.m1568a(c0630a)) {
                c0648g.m1592a(c0644c);
                return c0644c;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1968a(C0644c c0644c) {
        if (!f2077c && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (!this.f2080b) {
            this.f2080b = true;
            f2078d.execute(this.f2083g);
        }
        this.f2084h.add(c0644c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final Socket m1969b(C0630a c0630a, C0648g c0648g) {
        if (!f2077c && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (C0644c c0644c : this.f2084h) {
            if (c0644c.m1568a(c0630a) && c0644c.m1572d() && c0644c != c0648g.m1595b()) {
                return c0648g.m1596b(c0644c);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m1970b(C0644c c0644c) {
        if (!f2077c && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (c0644c.f1461a || this.f2081e == 0) {
            this.f2084h.remove(c0644c);
            return true;
        }
        notifyAll();
        return false;
    }
}
