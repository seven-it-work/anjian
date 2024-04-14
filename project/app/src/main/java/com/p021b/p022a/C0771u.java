package com.p021b.p022a;

import android.support.v7.widget.ActivityChooserView;
import com.p021b.p022a.p023a.C0650c;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: com.b.a.u */
/* loaded from: classes.dex */
public final class C0771u {

    /* renamed from: c */
    private Runnable f2114c;

    /* renamed from: d */
    private ExecutorService f2115d;

    /* renamed from: a */
    private int f2112a = 64;

    /* renamed from: b */
    private int f2113b = 5;

    /* renamed from: e */
    private final Deque<C0741an> f2116e = new ArrayDeque();

    /* renamed from: f */
    private final Deque<C0741an> f2117f = new ArrayDeque();

    /* renamed from: g */
    private final Deque<C0740am> f2118g = new ArrayDeque();

    /* renamed from: a */
    private synchronized ExecutorService m1988a() {
        if (this.f2115d == null) {
            this.f2115d = new ThreadPoolExecutor(0, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60L, TimeUnit.SECONDS, new SynchronousQueue(), C0650c.m1610a("OkHttp Dispatcher", false));
        }
        return this.f2115d;
    }

    /* renamed from: a */
    private <T> void m1989a(Deque<T> deque, T t, boolean z) {
        int m1991c;
        Runnable runnable;
        synchronized (this) {
            if (!deque.remove(t)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
            if (z) {
                m1990b();
            }
            m1991c = m1991c();
            runnable = this.f2114c;
        }
        if (m1991c != 0 || runnable == null) {
            return;
        }
        runnable.run();
    }

    /* renamed from: b */
    private void m1990b() {
        if (this.f2117f.size() < this.f2112a && !this.f2116e.isEmpty()) {
            Iterator<C0741an> it = this.f2116e.iterator();
            while (it.hasNext()) {
                C0741an next = it.next();
                if (m1992c(next) < this.f2113b) {
                    it.remove();
                    this.f2117f.add(next);
                    m1988a().execute(next);
                }
                if (this.f2117f.size() >= this.f2112a) {
                    return;
                }
            }
        }
    }

    /* renamed from: c */
    private synchronized int m1991c() {
        return this.f2117f.size() + this.f2118g.size();
    }

    /* renamed from: c */
    private int m1992c(C0741an c0741an) {
        Iterator<C0741an> it = this.f2117f.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().m1893a().equals(c0741an.m1893a())) {
                i++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final synchronized void m1993a(C0740am c0740am) {
        this.f2118g.add(c0740am);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final synchronized void m1994a(C0741an c0741an) {
        if (this.f2117f.size() >= this.f2112a || m1992c(c0741an) >= this.f2113b) {
            this.f2116e.add(c0741an);
        } else {
            this.f2117f.add(c0741an);
            m1988a().execute(c0741an);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m1995b(C0740am c0740am) {
        m1989a(this.f2118g, c0740am, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m1996b(C0741an c0741an) {
        m1989a(this.f2117f, c0741an, true);
    }
}
