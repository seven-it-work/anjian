package p003b;

import android.support.v7.widget.ActivityChooserView;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import p003b.C0493ab;
import p003b.p004a.C0439c;

/* renamed from: b.p */
/* loaded from: classes.dex */
public final class C0518p {

    /* renamed from: c */
    @Nullable
    private Runnable f939c;

    /* renamed from: d */
    @Nullable
    private ExecutorService f940d;

    /* renamed from: a */
    private int f937a = 64;

    /* renamed from: b */
    private int f938b = 5;

    /* renamed from: e */
    private final Deque<C0493ab.a> f941e = new ArrayDeque();

    /* renamed from: f */
    private final Deque<C0493ab.a> f942f = new ArrayDeque();

    /* renamed from: g */
    private final Deque<C0493ab> f943g = new ArrayDeque();

    public C0518p() {
    }

    private C0518p(ExecutorService executorService) {
        this.f940d = executorService;
    }

    /* renamed from: a */
    private synchronized ExecutorService m791a() {
        if (this.f940d == null) {
            this.f940d = new ThreadPoolExecutor(0, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60L, TimeUnit.SECONDS, new SynchronousQueue(), C0439c.m142a("OkHttp Dispatcher", false));
        }
        return this.f940d;
    }

    /* renamed from: a */
    private synchronized void m792a(@Nullable Runnable runnable) {
        this.f939c = runnable;
    }

    /* renamed from: a */
    private <T> void m793a(Deque<T> deque, T t, boolean z) {
        int m803i;
        Runnable runnable;
        synchronized (this) {
            if (!deque.remove(t)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
            if (z) {
                m799e();
            }
            m803i = m803i();
            runnable = this.f939c;
        }
        if (m803i != 0 || runnable == null) {
            return;
        }
        runnable.run();
    }

    /* renamed from: b */
    private synchronized int m794b() {
        return this.f937a;
    }

    /* renamed from: b */
    private synchronized void m795b(int i) {
        try {
            if (i <= 0) {
                throw new IllegalArgumentException("max < 1: " + i);
            }
            this.f938b = i;
            m799e();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: c */
    private synchronized int m796c() {
        return this.f938b;
    }

    /* renamed from: c */
    private int m797c(C0493ab.a aVar) {
        Iterator<C0493ab.a> it = this.f942f.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().m578a().equals(aVar.m578a())) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: d */
    private synchronized void m798d() {
        Iterator<C0493ab.a> it = this.f941e.iterator();
        while (it.hasNext()) {
            C0493ab.this.mo570c();
        }
        Iterator<C0493ab.a> it2 = this.f942f.iterator();
        while (it2.hasNext()) {
            C0493ab.this.mo570c();
        }
        Iterator<C0493ab> it3 = this.f943g.iterator();
        while (it3.hasNext()) {
            it3.next().mo570c();
        }
    }

    /* renamed from: e */
    private void m799e() {
        if (this.f942f.size() < this.f937a && !this.f941e.isEmpty()) {
            Iterator<C0493ab.a> it = this.f941e.iterator();
            while (it.hasNext()) {
                C0493ab.a next = it.next();
                if (m797c(next) < this.f938b) {
                    it.remove();
                    this.f942f.add(next);
                    m791a().execute(next);
                }
                if (this.f942f.size() >= this.f937a) {
                    return;
                }
            }
        }
    }

    /* renamed from: f */
    private synchronized List<InterfaceC0507e> m800f() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<C0493ab.a> it = this.f941e.iterator();
        while (it.hasNext()) {
            arrayList.add(C0493ab.this);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: g */
    private synchronized List<InterfaceC0507e> m801g() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        arrayList.addAll(this.f943g);
        Iterator<C0493ab.a> it = this.f942f.iterator();
        while (it.hasNext()) {
            arrayList.add(C0493ab.this);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: h */
    private synchronized int m802h() {
        return this.f941e.size();
    }

    /* renamed from: i */
    private synchronized int m803i() {
        return this.f942f.size() + this.f943g.size();
    }

    /* renamed from: a */
    public final synchronized void m804a(int i) {
        try {
            if (i <= 0) {
                throw new IllegalArgumentException("max < 1: " + i);
            }
            this.f937a = i;
            m799e();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final synchronized void m805a(C0493ab.a aVar) {
        if (this.f942f.size() >= this.f937a || m797c(aVar) >= this.f938b) {
            this.f941e.add(aVar);
        } else {
            this.f942f.add(aVar);
            m791a().execute(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final synchronized void m806a(C0493ab c0493ab) {
        this.f943g.add(c0493ab);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m807b(C0493ab.a aVar) {
        m793a(this.f942f, aVar, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m808b(C0493ab c0493ab) {
        m793a(this.f943g, c0493ab, false);
    }
}
