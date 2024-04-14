package com.android.volley;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.android.volley.m */
/* loaded from: classes.dex */
public final class C0600m {

    /* renamed from: g */
    private static final int f1277g = 4;

    /* renamed from: a */
    final Map<String, Queue<AbstractC0599l<?>>> f1278a;

    /* renamed from: b */
    final Set<AbstractC0599l<?>> f1279b;

    /* renamed from: c */
    final PriorityBlockingQueue<AbstractC0599l<?>> f1280c;

    /* renamed from: d */
    List<b> f1281d;

    /* renamed from: e */
    private AtomicInteger f1282e;

    /* renamed from: f */
    private final PriorityBlockingQueue<AbstractC0599l<?>> f1283f;

    /* renamed from: h */
    private final InterfaceC0589b f1284h;

    /* renamed from: i */
    private final InterfaceC0593f f1285i;

    /* renamed from: j */
    private final InterfaceC0602o f1286j;

    /* renamed from: k */
    private C0594g[] f1287k;

    /* renamed from: l */
    private C0590c f1288l;

    /* renamed from: com.android.volley.m$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        boolean mo1402a(AbstractC0599l<?> abstractC0599l);
    }

    /* renamed from: com.android.volley.m$b */
    /* loaded from: classes.dex */
    public interface b<T> {
        /* renamed from: a */
        void m1403a();
    }

    private C0600m(InterfaceC0589b interfaceC0589b, InterfaceC0593f interfaceC0593f) {
        this(interfaceC0589b, interfaceC0593f, new C0592e(new Handler(Looper.getMainLooper())));
    }

    public C0600m(InterfaceC0589b interfaceC0589b, InterfaceC0593f interfaceC0593f, byte b2) {
        this(interfaceC0589b, interfaceC0593f);
    }

    private C0600m(InterfaceC0589b interfaceC0589b, InterfaceC0593f interfaceC0593f, InterfaceC0602o interfaceC0602o) {
        this.f1282e = new AtomicInteger();
        this.f1278a = new HashMap();
        this.f1279b = new HashSet();
        this.f1280c = new PriorityBlockingQueue<>();
        this.f1283f = new PriorityBlockingQueue<>();
        this.f1281d = new ArrayList();
        this.f1284h = interfaceC0589b;
        this.f1285i = interfaceC0593f;
        this.f1287k = new C0594g[4];
        this.f1286j = interfaceC0602o;
    }

    /* renamed from: a */
    private void m1392a(a aVar) {
        synchronized (this.f1279b) {
            for (AbstractC0599l<?> abstractC0599l : this.f1279b) {
                if (aVar.mo1402a(abstractC0599l)) {
                    abstractC0599l.f1258h = true;
                }
            }
        }
    }

    /* renamed from: a */
    private <T> void m1393a(b<T> bVar) {
        synchronized (this.f1281d) {
            this.f1281d.add(bVar);
        }
    }

    /* renamed from: b */
    private void m1394b() {
        if (this.f1288l != null) {
            C0590c c0590c = this.f1288l;
            c0590c.f1218a = true;
            c0590c.interrupt();
        }
        for (int i = 0; i < this.f1287k.length; i++) {
            if (this.f1287k[i] != null) {
                C0594g c0594g = this.f1287k[i];
                c0594g.f1239a = true;
                c0594g.interrupt();
            }
        }
    }

    /* renamed from: b */
    private <T> void m1395b(AbstractC0599l<T> abstractC0599l) {
        synchronized (this.f1279b) {
            this.f1279b.remove(abstractC0599l);
        }
        synchronized (this.f1281d) {
            Iterator<b> it = this.f1281d.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
        if (abstractC0599l.f1257g) {
            synchronized (this.f1278a) {
                String str = abstractC0599l.f1252b;
                Queue<AbstractC0599l<?>> remove = this.f1278a.remove(str);
                if (remove != null) {
                    if (C0607t.f1296b) {
                        C0607t.m1410a("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), str);
                    }
                    this.f1280c.addAll(remove);
                }
            }
        }
    }

    /* renamed from: b */
    private <T> void m1396b(b<T> bVar) {
        synchronized (this.f1281d) {
            this.f1281d.remove(bVar);
        }
    }

    /* renamed from: c */
    private int m1397c() {
        return this.f1282e.incrementAndGet();
    }

    /* renamed from: d */
    private InterfaceC0589b m1398d() {
        return this.f1284h;
    }

    /* renamed from: a */
    public final <T> AbstractC0599l<T> m1399a(AbstractC0599l<T> abstractC0599l) {
        abstractC0599l.f1256f = this;
        synchronized (this.f1279b) {
            this.f1279b.add(abstractC0599l);
        }
        abstractC0599l.f1255e = Integer.valueOf(this.f1282e.incrementAndGet());
        abstractC0599l.m1381a("add-to-queue");
        if (!abstractC0599l.f1257g) {
            this.f1283f.add(abstractC0599l);
            return abstractC0599l;
        }
        synchronized (this.f1278a) {
            String str = abstractC0599l.f1252b;
            if (this.f1278a.containsKey(str)) {
                Queue<AbstractC0599l<?>> queue = this.f1278a.get(str);
                if (queue == null) {
                    queue = new LinkedList<>();
                }
                queue.add(abstractC0599l);
                this.f1278a.put(str, queue);
                if (C0607t.f1296b) {
                    C0607t.m1410a("Request for cacheKey=%s is in flight, putting on hold.", str);
                }
            } else {
                this.f1278a.put(str, null);
                this.f1280c.add(abstractC0599l);
            }
        }
        return abstractC0599l;
    }

    /* renamed from: a */
    public final void m1400a() {
        if (this.f1288l != null) {
            C0590c c0590c = this.f1288l;
            c0590c.f1218a = true;
            c0590c.interrupt();
        }
        for (int i = 0; i < this.f1287k.length; i++) {
            if (this.f1287k[i] != null) {
                C0594g c0594g = this.f1287k[i];
                c0594g.f1239a = true;
                c0594g.interrupt();
            }
        }
        this.f1288l = new C0590c(this.f1280c, this.f1283f, this.f1284h, this.f1286j);
        this.f1288l.start();
        for (int i2 = 0; i2 < this.f1287k.length; i2++) {
            C0594g c0594g2 = new C0594g(this.f1283f, this.f1285i, this.f1284h, this.f1286j);
            this.f1287k[i2] = c0594g2;
            c0594g2.start();
        }
    }

    /* renamed from: a */
    public final void m1401a(final Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Cannot cancelAll with a null tag");
        }
        m1392a(new a() { // from class: com.android.volley.m.1
            @Override // com.android.volley.C0600m.a
            /* renamed from: a */
            public final boolean mo1402a(AbstractC0599l<?> abstractC0599l) {
                return abstractC0599l.f1262l == obj;
            }
        });
    }
}
