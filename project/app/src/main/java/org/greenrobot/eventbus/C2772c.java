package org.greenrobot.eventbus;

import android.os.Looper;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;

/* renamed from: org.greenrobot.eventbus.c */
/* loaded from: classes2.dex */
public class C2772c {

    /* renamed from: a */
    public static String f10468a = "EventBus";

    /* renamed from: b */
    static volatile C2772c f10469b;

    /* renamed from: d */
    private static final C2773d f10470d = new C2773d();

    /* renamed from: e */
    private static final Map<Class<?>, List<Class<?>>> f10471e = new HashMap();

    /* renamed from: c */
    final ExecutorService f10472c;

    /* renamed from: f */
    private final Map<Class<?>, CopyOnWriteArrayList<C2783n>> f10473f;

    /* renamed from: g */
    private final Map<Object, List<Class<?>>> f10474g;

    /* renamed from: h */
    private final Map<Class<?>, Object> f10475h;

    /* renamed from: i */
    private final ThreadLocal<b> f10476i;

    /* renamed from: j */
    private final HandlerC2775f f10477j;

    /* renamed from: k */
    private final RunnableC2771b f10478k;

    /* renamed from: l */
    private final RunnableC2765a f10479l;

    /* renamed from: m */
    private final C2782m f10480m;

    /* renamed from: n */
    private final boolean f10481n;

    /* renamed from: o */
    private final boolean f10482o;

    /* renamed from: p */
    private final boolean f10483p;

    /* renamed from: q */
    private final boolean f10484q;

    /* renamed from: r */
    private final boolean f10485r;

    /* renamed from: s */
    private final boolean f10486s;

    /* renamed from: t */
    private final int f10487t;

    /* renamed from: org.greenrobot.eventbus.c$a */
    /* loaded from: classes2.dex */
    interface a {
        /* renamed from: a */
        void m12508a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.greenrobot.eventbus.c$b */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a */
        final List<Object> f10490a = new ArrayList();

        /* renamed from: b */
        boolean f10491b;

        /* renamed from: c */
        boolean f10492c;

        /* renamed from: d */
        C2783n f10493d;

        /* renamed from: e */
        Object f10494e;

        /* renamed from: f */
        boolean f10495f;

        b() {
        }
    }

    public C2772c() {
        this(f10470d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2772c(C2773d c2773d) {
        this.f10476i = new ThreadLocal<b>() { // from class: org.greenrobot.eventbus.c.1
            /* renamed from: a */
            private static b m12507a() {
                return new b();
            }

            @Override // java.lang.ThreadLocal
            protected final /* synthetic */ b initialValue() {
                return new b();
            }
        };
        this.f10473f = new HashMap();
        this.f10474g = new HashMap();
        this.f10475h = new ConcurrentHashMap();
        this.f10477j = new HandlerC2775f(this, Looper.getMainLooper());
        this.f10478k = new RunnableC2771b(this);
        this.f10479l = new RunnableC2765a(this);
        this.f10487t = c2773d.f10507k != null ? c2773d.f10507k.size() : 0;
        this.f10480m = new C2782m(c2773d.f10507k, c2773d.f10504h, c2773d.f10503g);
        this.f10482o = c2773d.f10497a;
        this.f10483p = c2773d.f10498b;
        this.f10484q = c2773d.f10499c;
        this.f10485r = c2773d.f10500d;
        this.f10481n = c2773d.f10501e;
        this.f10486s = c2773d.f10502f;
        this.f10472c = c2773d.f10505i;
    }

    /* renamed from: a */
    private <T> T m12481a(Class<T> cls) {
        T cast;
        synchronized (this.f10475h) {
            cast = cls.cast(this.f10475h.get(cls));
        }
        return cast;
    }

    /* renamed from: a */
    public static C2772c m12482a() {
        if (f10469b == null) {
            synchronized (C2772c.class) {
                if (f10469b == null) {
                    f10469b = new C2772c();
                }
            }
        }
        return f10469b;
    }

    /* renamed from: a */
    private void m12483a(Object obj, Class<?> cls) {
        CopyOnWriteArrayList<C2783n> copyOnWriteArrayList = this.f10473f.get(cls);
        if (copyOnWriteArrayList != null) {
            int size = copyOnWriteArrayList.size();
            int i = 0;
            while (i < size) {
                C2783n c2783n = copyOnWriteArrayList.get(i);
                if (c2783n.f10547a == obj) {
                    c2783n.f10549c = false;
                    copyOnWriteArrayList.remove(i);
                    i--;
                    size--;
                }
                i++;
            }
        }
    }

    /* renamed from: a */
    private void m12484a(Object obj, b bVar) throws Error {
        boolean m12490a;
        Class<?> cls = obj.getClass();
        if (this.f10486s) {
            List<Class<?>> m12496d = m12496d(cls);
            int size = m12496d.size();
            m12490a = false;
            for (int i = 0; i < size; i++) {
                m12490a |= m12490a(obj, bVar, m12496d.get(i));
            }
        } else {
            m12490a = m12490a(obj, bVar, cls);
        }
        if (m12490a) {
            return;
        }
        if (this.f10483p) {
            Log.d(f10468a, "No subscribers registered for event " + cls);
        }
        if (!this.f10485r || cls == C2776g.class || cls == C2780k.class) {
            return;
        }
        m12506c(new C2776g(this, obj));
    }

    /* renamed from: a */
    private void m12485a(Object obj, C2781l c2781l) {
        Class<?> cls = c2781l.f10526c;
        C2783n c2783n = new C2783n(obj, c2781l);
        CopyOnWriteArrayList<C2783n> copyOnWriteArrayList = this.f10473f.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f10473f.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(c2783n)) {
            throw new C2774e("Subscriber " + obj.getClass() + " already registered to event " + cls);
        }
        int size = copyOnWriteArrayList.size();
        for (int i = 0; i <= size; i++) {
            if (i == size || c2781l.f10527d > copyOnWriteArrayList.get(i).f10548b.f10527d) {
                copyOnWriteArrayList.add(i, c2783n);
                break;
            }
        }
        List<Class<?>> list = this.f10474g.get(obj);
        if (list == null) {
            list = new ArrayList<>();
            this.f10474g.put(obj, list);
        }
        list.add(cls);
        if (c2781l.f10528e) {
            if (!this.f10486s) {
                m12487a(c2783n, this.f10475h.get(cls));
                return;
            }
            for (Map.Entry<Class<?>, Object> entry : this.f10475h.entrySet()) {
                if (cls.isAssignableFrom(entry.getKey())) {
                    m12487a(c2783n, entry.getValue());
                }
            }
        }
    }

    /* renamed from: a */
    private static void m12486a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                m12486a(list, cls.getInterfaces());
            }
        }
    }

    /* renamed from: a */
    private void m12487a(C2783n c2783n, Object obj) {
        if (obj != null) {
            m12489a(c2783n, obj, Looper.getMainLooper() == Looper.myLooper());
        }
    }

    /* renamed from: a */
    private void m12488a(C2783n c2783n, Object obj, Throwable th) {
        if (!(obj instanceof C2780k)) {
            if (this.f10481n) {
                throw new C2774e("Invoking subscriber failed", th);
            }
            if (this.f10482o) {
                Log.e(f10468a, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + c2783n.f10547a.getClass(), th);
            }
            if (this.f10484q) {
                m12506c(new C2780k(this, th, obj, c2783n.f10547a));
                return;
            }
            return;
        }
        if (this.f10482o) {
            Log.e(f10468a, "SubscriberExceptionEvent subscriber " + c2783n.f10547a.getClass() + " threw an exception", th);
            C2780k c2780k = (C2780k) obj;
            Log.e(f10468a, "Initial event " + c2780k.f10522c + " caused exception in " + c2780k.f10523d, c2780k.f10521b);
        }
    }

    /* renamed from: a */
    private void m12489a(C2783n c2783n, Object obj, boolean z) {
        switch (c2783n.f10548b.f10525b) {
            case POSTING:
                m12493b(c2783n, obj);
                return;
            case MAIN:
                if (z) {
                    m12493b(c2783n, obj);
                    return;
                }
                HandlerC2775f handlerC2775f = this.f10477j;
                C2777h m12523a = C2777h.m12523a(c2783n, obj);
                synchronized (handlerC2775f) {
                    handlerC2775f.f10508a.m12526a(m12523a);
                    if (!handlerC2775f.f10509b) {
                        handlerC2775f.f10509b = true;
                        if (!handlerC2775f.sendMessage(handlerC2775f.obtainMessage())) {
                            throw new C2774e("Could not send handler message");
                        }
                    }
                }
                return;
            case BACKGROUND:
                if (!z) {
                    m12493b(c2783n, obj);
                    return;
                }
                RunnableC2771b runnableC2771b = this.f10478k;
                C2777h m12523a2 = C2777h.m12523a(c2783n, obj);
                synchronized (runnableC2771b) {
                    runnableC2771b.f10465a.m12526a(m12523a2);
                    if (!runnableC2771b.f10467c) {
                        runnableC2771b.f10467c = true;
                        runnableC2771b.f10466b.f10472c.execute(runnableC2771b);
                    }
                }
                return;
            case ASYNC:
                RunnableC2765a runnableC2765a = this.f10479l;
                runnableC2765a.f10454a.m12526a(C2777h.m12523a(c2783n, obj));
                runnableC2765a.f10455b.f10472c.execute(runnableC2765a);
                return;
            default:
                throw new IllegalStateException("Unknown thread mode: " + c2783n.f10548b.f10525b);
        }
    }

    /* renamed from: a */
    private boolean m12490a(Object obj, b bVar, Class<?> cls) {
        CopyOnWriteArrayList<C2783n> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = this.f10473f.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator<C2783n> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            C2783n next = it.next();
            bVar.f10494e = obj;
            bVar.f10493d = next;
            try {
                m12489a(next, obj, bVar.f10492c);
                if (bVar.f10495f) {
                    return true;
                }
            } finally {
                bVar.f10494e = null;
                bVar.f10493d = null;
                bVar.f10495f = false;
            }
        }
        return true;
    }

    /* renamed from: b */
    private <T> T m12491b(Class<T> cls) {
        T cast;
        synchronized (this.f10475h) {
            cast = cls.cast(this.f10475h.remove(cls));
        }
        return cast;
    }

    /* renamed from: b */
    private static C2773d m12492b() {
        return new C2773d();
    }

    /* renamed from: b */
    private void m12493b(C2783n c2783n, Object obj) {
        try {
            c2783n.f10548b.f10524a.invoke(c2783n.f10547a, obj);
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Unexpected exception", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (!(obj instanceof C2780k)) {
                if (this.f10481n) {
                    throw new C2774e("Invoking subscriber failed", cause);
                }
                if (this.f10482o) {
                    Log.e(f10468a, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + c2783n.f10547a.getClass(), cause);
                }
                if (this.f10484q) {
                    m12506c(new C2780k(this, cause, obj, c2783n.f10547a));
                    return;
                }
                return;
            }
            if (this.f10482o) {
                Log.e(f10468a, "SubscriberExceptionEvent subscriber " + c2783n.f10547a.getClass() + " threw an exception", cause);
                C2780k c2780k = (C2780k) obj;
                Log.e(f10468a, "Initial event " + c2780k.f10522c + " caused exception in " + c2780k.f10523d, c2780k.f10521b);
            }
        }
    }

    /* renamed from: c */
    private static void m12494c() {
        C2782m.m12536b();
        f10471e.clear();
    }

    /* renamed from: c */
    private boolean m12495c(Class<?> cls) {
        CopyOnWriteArrayList<C2783n> copyOnWriteArrayList;
        List<Class<?>> m12496d = m12496d(cls);
        if (m12496d != null) {
            int size = m12496d.size();
            for (int i = 0; i < size; i++) {
                Class<?> cls2 = m12496d.get(i);
                synchronized (this) {
                    copyOnWriteArrayList = this.f10473f.get(cls2);
                }
                if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: d */
    private static List<Class<?>> m12496d(Class<?> cls) {
        List<Class<?>> list;
        synchronized (f10471e) {
            list = f10471e.get(cls);
            if (list == null) {
                list = new ArrayList<>();
                for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
                    list.add(cls2);
                    m12486a(list, cls2.getInterfaces());
                }
                f10471e.put(cls, list);
            }
        }
        return list;
    }

    /* renamed from: d */
    private void m12497d() {
        synchronized (this.f10475h) {
            this.f10475h.clear();
        }
    }

    /* renamed from: d */
    private synchronized boolean m12498d(Object obj) {
        return this.f10474g.containsKey(obj);
    }

    /* renamed from: e */
    private ExecutorService m12499e() {
        return this.f10472c;
    }

    /* renamed from: e */
    private void m12500e(Object obj) {
        b bVar = this.f10476i.get();
        if (!bVar.f10491b) {
            throw new C2774e("This method may only be called from inside event handling methods on the posting thread");
        }
        if (obj == null) {
            throw new C2774e("Event may not be null");
        }
        if (bVar.f10494e != obj) {
            throw new C2774e("Only the currently handled event may be aborted");
        }
        if (bVar.f10493d.f10548b.f10525b != ThreadMode.POSTING) {
            throw new C2774e(" event handlers may only abort the incoming event");
        }
        bVar.f10495f = true;
    }

    /* renamed from: f */
    private void m12501f(Object obj) {
        synchronized (this.f10475h) {
            this.f10475h.put(obj.getClass(), obj);
        }
        m12506c(obj);
    }

    /* renamed from: g */
    private boolean m12502g(Object obj) {
        synchronized (this.f10475h) {
            Class<?> cls = obj.getClass();
            if (!obj.equals(this.f10475h.get(cls))) {
                return false;
            }
            this.f10475h.remove(cls);
            return true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0052, code lost:
    
        if (r2.f10544f == r3.mo12474a()) goto L31;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m12503a(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Class r0 = r10.getClass()
            org.greenrobot.eventbus.m r1 = r9.f10480m
            java.util.Map<java.lang.Class<?>, java.util.List<org.greenrobot.eventbus.l>> r2 = org.greenrobot.eventbus.C2782m.f10530a
            java.lang.Object r2 = r2.get(r0)
            java.util.List r2 = (java.util.List) r2
            if (r2 == 0) goto L12
            goto Lc3
        L12:
            boolean r2 = r1.f10537c
            if (r2 == 0) goto L2f
            org.greenrobot.eventbus.m$a r2 = org.greenrobot.eventbus.C2782m.m12534a()
            r2.m12543a(r0)
        L1d:
            java.lang.Class<?> r3 = r2.f10544f
            if (r3 == 0) goto L28
            r1.m12539b(r2)
            r2.m12542a()
            goto L1d
        L28:
            java.util.List r1 = org.greenrobot.eventbus.C2782m.m12533a(r2)
            r2 = r1
            goto L9f
        L2f:
            org.greenrobot.eventbus.m$a r2 = org.greenrobot.eventbus.C2782m.m12534a()
            r2.m12543a(r0)
        L36:
            java.lang.Class<?> r3 = r2.f10544f
            if (r3 == 0) goto L28
            org.greenrobot.eventbus.a.c r3 = r2.f10546h
            if (r3 == 0) goto L55
            org.greenrobot.eventbus.a.c r3 = r2.f10546h
            org.greenrobot.eventbus.a.c r3 = r3.mo12476b()
            if (r3 == 0) goto L55
            org.greenrobot.eventbus.a.c r3 = r2.f10546h
            org.greenrobot.eventbus.a.c r3 = r3.mo12476b()
            java.lang.Class<?> r4 = r2.f10544f
            java.lang.Class r5 = r3.mo12474a()
            if (r4 != r5) goto L55
            goto L74
        L55:
            java.util.List<org.greenrobot.eventbus.a.d> r3 = r1.f10536b
            if (r3 == 0) goto L73
            java.util.List<org.greenrobot.eventbus.a.d> r3 = r1.f10536b
            java.util.Iterator r3 = r3.iterator()
        L5f:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L73
            java.lang.Object r4 = r3.next()
            org.greenrobot.eventbus.a.d r4 = (org.greenrobot.eventbus.p207a.InterfaceC2769d) r4
            org.greenrobot.eventbus.a.c r4 = r4.m12479a()
            if (r4 == 0) goto L5f
            r3 = r4
            goto L74
        L73:
            r3 = 0
        L74:
            r2.f10546h = r3
            org.greenrobot.eventbus.a.c r3 = r2.f10546h
            if (r3 == 0) goto L98
            org.greenrobot.eventbus.a.c r3 = r2.f10546h
            org.greenrobot.eventbus.l[] r3 = r3.mo12478d()
            int r4 = r3.length
            r5 = 0
        L82:
            if (r5 >= r4) goto L9b
            r6 = r3[r5]
            java.lang.reflect.Method r7 = r6.f10524a
            java.lang.Class<?> r8 = r6.f10526c
            boolean r7 = r2.m12544a(r7, r8)
            if (r7 == 0) goto L95
            java.util.List<org.greenrobot.eventbus.l> r7 = r2.f10539a
            r7.add(r6)
        L95:
            int r5 = r5 + 1
            goto L82
        L98:
            r1.m12539b(r2)
        L9b:
            r2.m12542a()
            goto L36
        L9f:
            boolean r1 = r2.isEmpty()
            if (r1 == 0) goto Lbe
            org.greenrobot.eventbus.e r10 = new org.greenrobot.eventbus.e
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Subscriber "
            r1.<init>(r2)
            r1.append(r0)
            java.lang.String r0 = " and its super classes have no public methods with the @Subscribe annotation"
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            r10.<init>(r0)
            throw r10
        Lbe:
            java.util.Map<java.lang.Class<?>, java.util.List<org.greenrobot.eventbus.l>> r1 = org.greenrobot.eventbus.C2782m.f10530a
            r1.put(r0, r2)
        Lc3:
            monitor-enter(r9)
            java.util.Iterator r0 = r2.iterator()     // Catch: java.lang.Throwable -> Lda
        Lc8:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Throwable -> Lda
            if (r1 == 0) goto Ld8
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Throwable -> Lda
            org.greenrobot.eventbus.l r1 = (org.greenrobot.eventbus.C2781l) r1     // Catch: java.lang.Throwable -> Lda
            r9.m12485a(r10, r1)     // Catch: java.lang.Throwable -> Lda
            goto Lc8
        Ld8:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> Lda
            return
        Lda:
            r10 = move-exception
            monitor-exit(r9)     // Catch: java.lang.Throwable -> Lda
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.greenrobot.eventbus.C2772c.m12503a(java.lang.Object):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m12504a(C2777h c2777h) {
        Object obj = c2777h.f10515a;
        C2783n c2783n = c2777h.f10516b;
        C2777h.m12524a(c2777h);
        if (c2783n.f10549c) {
            m12493b(c2783n, obj);
        }
    }

    /* renamed from: b */
    public final synchronized void m12505b(Object obj) {
        List<Class<?>> list = this.f10474g.get(obj);
        if (list == null) {
            Log.w(f10468a, "Subscriber to unregister was not registered before: " + obj.getClass());
            return;
        }
        Iterator<Class<?>> it = list.iterator();
        while (it.hasNext()) {
            CopyOnWriteArrayList<C2783n> copyOnWriteArrayList = this.f10473f.get(it.next());
            if (copyOnWriteArrayList != null) {
                int size = copyOnWriteArrayList.size();
                int i = 0;
                while (i < size) {
                    C2783n c2783n = copyOnWriteArrayList.get(i);
                    if (c2783n.f10547a == obj) {
                        c2783n.f10549c = false;
                        copyOnWriteArrayList.remove(i);
                        i--;
                        size--;
                    }
                    i++;
                }
            }
        }
        this.f10474g.remove(obj);
    }

    /* renamed from: c */
    public final void m12506c(Object obj) {
        boolean m12490a;
        b bVar = this.f10476i.get();
        List<Object> list = bVar.f10490a;
        list.add(obj);
        if (bVar.f10491b) {
            return;
        }
        bVar.f10492c = Looper.getMainLooper() == Looper.myLooper();
        bVar.f10491b = true;
        if (bVar.f10495f) {
            throw new C2774e("Internal error. Abort state was not reset");
        }
        while (!list.isEmpty()) {
            try {
                Object remove = list.remove(0);
                Class<?> cls = remove.getClass();
                if (this.f10486s) {
                    List<Class<?>> m12496d = m12496d(cls);
                    int size = m12496d.size();
                    m12490a = false;
                    for (int i = 0; i < size; i++) {
                        m12490a |= m12490a(remove, bVar, m12496d.get(i));
                    }
                } else {
                    m12490a = m12490a(remove, bVar, cls);
                }
                if (!m12490a) {
                    if (this.f10483p) {
                        Log.d(f10468a, "No subscribers registered for event " + cls);
                    }
                    if (this.f10485r && cls != C2776g.class && cls != C2780k.class) {
                        m12506c(new C2776g(this, remove));
                    }
                }
            } finally {
                bVar.f10491b = false;
                bVar.f10492c = false;
            }
        }
    }

    public String toString() {
        return "EventBus[indexCount=" + this.f10487t + ", eventInheritance=" + this.f10486s + "]";
    }
}
