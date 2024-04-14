package p003b;

import android.support.v7.widget.ActivityChooserView;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import p003b.p004a.C0439c;
import p003b.p004a.p007c.C0442c;
import p003b.p004a.p007c.C0443d;
import p003b.p004a.p007c.C0446g;
import p003b.p004a.p012h.C0481e;

/* renamed from: b.k */
/* loaded from: classes.dex */
public final class C0513k {

    /* renamed from: a */
    static final Executor f893a = new ThreadPoolExecutor(0, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60, TimeUnit.SECONDS, new SynchronousQueue(), C0439c.m142a("OkHttp ConnectionPool", true));

    /* renamed from: g */
    static final /* synthetic */ boolean f894g = true;

    /* renamed from: b */
    final int f895b;

    /* renamed from: c */
    final Runnable f896c;

    /* renamed from: d */
    final Deque<C0442c> f897d;

    /* renamed from: e */
    final C0443d f898e;

    /* renamed from: f */
    boolean f899f;

    /* renamed from: h */
    private final long f900h;

    public C0513k() {
        this(TimeUnit.MINUTES);
    }

    private C0513k(TimeUnit timeUnit) {
        this.f896c = new Runnable() { // from class: b.k.1
            @Override // java.lang.Runnable
            public final void run() {
                while (true) {
                    long m741a = C0513k.this.m741a(System.nanoTime());
                    if (m741a == -1) {
                        return;
                    }
                    if (m741a > 0) {
                        long j = m741a / 1000000;
                        long j2 = m741a - (1000000 * j);
                        synchronized (C0513k.this) {
                            try {
                                C0513k.this.wait(j, (int) j2);
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                }
            }
        };
        this.f897d = new ArrayDeque();
        this.f898e = new C0443d();
        this.f895b = 5;
        this.f900h = timeUnit.toNanos(5L);
    }

    /* renamed from: a */
    private synchronized int m733a() {
        int i;
        i = 0;
        Iterator<C0442c> it = this.f897d.iterator();
        while (it.hasNext()) {
            if (it.next().f198k.isEmpty()) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: a */
    private int m734a(C0442c c0442c, long j) {
        List<Reference<C0446g>> list = c0442c.f198k;
        int i = 0;
        while (i < list.size()) {
            Reference<C0446g> reference = list.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                C0481e.m489b().mo468a("A connection to " + c0442c.f188a.f694a.f49a + " was leaked. Did you forget to close a response body?", ((C0446g.a) reference).f225a);
                list.remove(i);
                c0442c.f195h = true;
                if (list.isEmpty()) {
                    c0442c.f199l = j - this.f900h;
                    return 0;
                }
            }
        }
        return list.size();
    }

    @Nullable
    /* renamed from: a */
    private C0442c m735a(C0428a c0428a, C0446g c0446g, C0498ag c0498ag) {
        if (!f894g && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (C0442c c0442c : this.f897d) {
            if (c0442c.m178a(c0428a, c0498ag)) {
                c0446g.m210a(c0442c);
                return c0442c;
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: a */
    private Socket m736a(C0428a c0428a, C0446g c0446g) {
        if (!f894g && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (C0442c c0442c : this.f897d) {
            if (c0442c.m178a(c0428a, (C0498ag) null) && c0442c.m184e() && c0442c != c0446g.m213b()) {
                if (!C0446g.f214h && !Thread.holdsLock(c0446g.f217c)) {
                    throw new AssertionError();
                }
                if (c0446g.f221g != null || c0446g.f219e.f198k.size() != 1) {
                    throw new IllegalStateException();
                }
                Reference<C0446g> reference = c0446g.f219e.f198k.get(0);
                Socket m209a = c0446g.m209a(true, false, false);
                c0446g.f219e = c0442c;
                c0442c.f198k.add(reference);
                return m209a;
            }
        }
        return null;
    }

    /* renamed from: a */
    private void m737a(C0442c c0442c) {
        if (!f894g && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (!this.f899f) {
            this.f899f = true;
            f893a.execute(this.f896c);
        }
        this.f897d.add(c0442c);
    }

    /* renamed from: b */
    private synchronized int m738b() {
        return this.f897d.size();
    }

    /* renamed from: b */
    private boolean m739b(C0442c c0442c) {
        if (!f894g && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (c0442c.f195h || this.f895b == 0) {
            this.f897d.remove(c0442c);
            return true;
        }
        notifyAll();
        return false;
    }

    /* renamed from: c */
    private void m740c() {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator<C0442c> it = this.f897d.iterator();
            while (it.hasNext()) {
                C0442c next = it.next();
                if (next.f198k.isEmpty()) {
                    next.f195h = true;
                    arrayList.add(next);
                    it.remove();
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            C0439c.m146a(((C0442c) it2.next()).f190c);
        }
    }

    /* renamed from: a */
    final long m741a(long j) {
        int size;
        synchronized (this) {
            long j2 = Long.MIN_VALUE;
            C0442c c0442c = null;
            int i = 0;
            int i2 = 0;
            for (C0442c c0442c2 : this.f897d) {
                List<Reference<C0446g>> list = c0442c2.f198k;
                int i3 = 0;
                while (true) {
                    if (i3 >= list.size()) {
                        size = list.size();
                        break;
                    }
                    Reference<C0446g> reference = list.get(i3);
                    if (reference.get() == null) {
                        C0481e.m489b().mo468a("A connection to " + c0442c2.f188a.f694a.f49a + " was leaked. Did you forget to close a response body?", ((C0446g.a) reference).f225a);
                        list.remove(i3);
                        c0442c2.f195h = true;
                        if (list.isEmpty()) {
                            c0442c2.f199l = j - this.f900h;
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
                    long j3 = j - c0442c2.f199l;
                    if (j3 > j2) {
                        c0442c = c0442c2;
                        j2 = j3;
                    }
                }
            }
            if (j2 < this.f900h && i <= this.f895b) {
                if (i > 0) {
                    return this.f900h - j2;
                }
                if (i2 > 0) {
                    return this.f900h;
                }
                this.f899f = false;
                return -1L;
            }
            this.f897d.remove(c0442c);
            C0439c.m146a(c0442c.f190c);
            return 0L;
        }
    }
}
