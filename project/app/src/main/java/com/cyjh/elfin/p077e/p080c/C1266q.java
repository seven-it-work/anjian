package com.cyjh.elfin.p077e.p080c;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.CallSuper;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.v7.widget.ActivityChooserView;
import android.util.Log;
import com.umeng.commonsdk.proguard.C2518v;
import java.lang.Thread;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* renamed from: com.cyjh.elfin.e.c.q */
/* loaded from: classes.dex */
public final class C1266q {

    /* renamed from: a */
    private static final Handler f4738a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    private static final Map<Integer, Map<Integer, ExecutorService>> f4739b = new HashMap();

    /* renamed from: c */
    private static final Map<d, ExecutorService> f4740c = new ConcurrentHashMap();

    /* renamed from: d */
    private static final int f4741d = Runtime.getRuntime().availableProcessors();

    /* renamed from: e */
    private static final Timer f4742e = new Timer();

    /* renamed from: f */
    private static final byte f4743f = -1;

    /* renamed from: g */
    private static final byte f4744g = -2;

    /* renamed from: h */
    private static final byte f4745h = -4;

    /* renamed from: i */
    private static final byte f4746i = -8;

    /* renamed from: j */
    private static Executor f4747j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.e.c.q$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass3 implements Executor {
        AnonymousClass3() {
        }

        @Override // java.util.concurrent.Executor
        public final void execute(@NonNull Runnable runnable) {
            C1266q.m5814a(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.elfin.e.c.q$a */
    /* loaded from: classes.dex */
    public static final class a extends LinkedBlockingQueue<Runnable> {
        private int mCapacity;
        private volatile e mPool;

        a() {
            this.mCapacity = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }

        a(int i) {
            this.mCapacity = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            this.mCapacity = i;
        }

        a(boolean z) {
            this.mCapacity = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            if (z) {
                this.mCapacity = 0;
            }
        }

        @Override // java.util.concurrent.LinkedBlockingQueue, java.util.Queue, java.util.concurrent.BlockingQueue
        public final boolean offer(@NonNull Runnable runnable) {
            if (this.mCapacity > size() || this.mPool == null || this.mPool.getPoolSize() >= this.mPool.getMaximumPoolSize()) {
                return super.offer((a) runnable);
            }
            return false;
        }
    }

    /* renamed from: com.cyjh.elfin.e.c.q$b */
    /* loaded from: classes.dex */
    public static abstract class b<T> extends d<T> {
        @Override // com.cyjh.elfin.p077e.p080c.C1266q.d
        /* renamed from: a */
        public final void mo5872a(Throwable th) {
            Log.e("ThreadUtils", "onFail: ", th);
        }

        @Override // com.cyjh.elfin.p077e.p080c.C1266q.d
        /* renamed from: b */
        public final void mo5873b() {
            Log.e("ThreadUtils", "onCancel: " + Thread.currentThread());
        }
    }

    /* renamed from: com.cyjh.elfin.e.c.q$c */
    /* loaded from: classes.dex */
    public static class c<T> {

        /* renamed from: a */
        private CountDownLatch f4752a = new CountDownLatch(1);

        /* renamed from: b */
        private AtomicBoolean f4753b = new AtomicBoolean();

        /* renamed from: c */
        private T f4754c;

        /* renamed from: a */
        private T m5874a() {
            if (!this.f4753b.get()) {
                try {
                    this.f4752a.await();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            return this.f4754c;
        }

        /* renamed from: a */
        private void m5875a(T t) {
            if (this.f4753b.compareAndSet(false, true)) {
                this.f4754c = t;
                this.f4752a.countDown();
            }
        }
    }

    /* renamed from: com.cyjh.elfin.e.c.q$d */
    /* loaded from: classes.dex */
    public static abstract class d<T> implements Runnable {

        /* renamed from: a */
        private static final int f4755a = 0;

        /* renamed from: b */
        private static final int f4756b = 1;

        /* renamed from: c */
        private static final int f4757c = 2;

        /* renamed from: f */
        private static final int f4758f = 3;

        /* renamed from: g */
        private static final int f4759g = 4;

        /* renamed from: h */
        private static final int f4760h = 5;

        /* renamed from: i */
        private static final int f4761i = 6;

        /* renamed from: d */
        final AtomicInteger f4762d = new AtomicInteger(0);

        /* renamed from: e */
        a f4763e;

        /* renamed from: j */
        private volatile boolean f4764j;

        /* renamed from: k */
        private volatile Thread f4765k;

        /* renamed from: l */
        private Timer f4766l;

        /* renamed from: m */
        private long f4767m;

        /* renamed from: n */
        private Executor f4768n;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.cyjh.elfin.e.c.q$d$5, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass5 implements Runnable {
            AnonymousClass5() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                d.this.mo5873b();
                d.this.m5890d();
            }
        }

        /* renamed from: com.cyjh.elfin.e.c.q$d$a */
        /* loaded from: classes.dex */
        public interface a {
            /* renamed from: a */
            void m5891a();
        }

        /* renamed from: a */
        private d<T> m5876a(long j, a aVar) {
            this.f4767m = j;
            this.f4763e = aVar;
            return this;
        }

        /* renamed from: a */
        private d<T> m5877a(Executor executor) {
            this.f4768n = executor;
            return this;
        }

        /* renamed from: a */
        private void m5879a(boolean z) {
            this.f4764j = z;
        }

        /* renamed from: b */
        static /* synthetic */ void m5880b(d dVar) {
            synchronized (dVar.f4762d) {
                if (dVar.f4762d.get() > 1) {
                    return;
                }
                dVar.f4762d.set(6);
                if (dVar.f4765k != null) {
                    dVar.f4765k.interrupt();
                }
                dVar.m5890d();
            }
        }

        /* renamed from: e */
        private void m5882e() {
            synchronized (this.f4762d) {
                if (this.f4762d.get() > 1) {
                    return;
                }
                this.f4762d.set(4);
                if (this.f4765k != null) {
                    this.f4765k.interrupt();
                }
                m5886i().execute(new AnonymousClass5());
            }
        }

        /* renamed from: f */
        private void m5883f() {
            synchronized (this.f4762d) {
                if (this.f4762d.get() > 1) {
                    return;
                }
                this.f4762d.set(6);
                if (this.f4765k != null) {
                    this.f4765k.interrupt();
                }
                m5890d();
            }
        }

        /* renamed from: g */
        private boolean m5884g() {
            return this.f4762d.get() >= 4;
        }

        /* renamed from: h */
        private boolean m5885h() {
            return this.f4762d.get() > 1;
        }

        /* renamed from: i */
        private Executor m5886i() {
            return this.f4768n == null ? C1266q.m5823b() : this.f4768n;
        }

        /* renamed from: a */
        public abstract T mo5887a() throws Throwable;

        /* renamed from: a */
        public abstract void mo5888a(T t);

        /* renamed from: a */
        public abstract void mo5872a(Throwable th);

        /* renamed from: b */
        public abstract void mo5873b();

        /* renamed from: c */
        public final void m5889c() {
            synchronized (this.f4762d) {
                if (this.f4762d.get() > 1) {
                    return;
                }
                this.f4762d.set(4);
                if (this.f4765k != null) {
                    this.f4765k.interrupt();
                }
                m5886i().execute(new AnonymousClass5());
            }
        }

        @CallSuper
        /* renamed from: d */
        protected final void m5890d() {
            C1266q.f4740c.remove(this);
            if (this.f4766l != null) {
                this.f4766l.cancel();
                this.f4766l = null;
                this.f4763e = null;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f4764j) {
                if (this.f4765k == null) {
                    if (!this.f4762d.compareAndSet(0, 1)) {
                        return;
                    }
                    this.f4765k = Thread.currentThread();
                    if (this.f4763e != null) {
                        Log.w("ThreadUtils", "Scheduled task doesn't support timeout.");
                    }
                } else if (this.f4762d.get() != 1) {
                    return;
                }
            } else {
                if (!this.f4762d.compareAndSet(0, 1)) {
                    return;
                }
                this.f4765k = Thread.currentThread();
                if (this.f4763e != null) {
                    this.f4766l = new Timer();
                    this.f4766l.schedule(new TimerTask() { // from class: com.cyjh.elfin.e.c.q.d.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public final void run() {
                            if ((d.this.f4762d.get() > 1) || d.this.f4763e == null) {
                                return;
                            }
                            d.m5880b(d.this);
                        }
                    }, this.f4767m);
                }
            }
            try {
                final T mo5887a = mo5887a();
                if (this.f4764j) {
                    if (this.f4762d.get() != 1) {
                        return;
                    }
                    m5886i().execute(new Runnable() { // from class: com.cyjh.elfin.e.c.q.d.2
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public final void run() {
                            d.this.mo5888a((d) mo5887a);
                        }
                    });
                } else if (this.f4762d.compareAndSet(1, 3)) {
                    m5886i().execute(new Runnable() { // from class: com.cyjh.elfin.e.c.q.d.3
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public final void run() {
                            d.this.mo5888a((d) mo5887a);
                            d.this.m5890d();
                        }
                    });
                }
            } catch (InterruptedException unused) {
                this.f4762d.compareAndSet(4, 5);
            } catch (Throwable th) {
                if (this.f4762d.compareAndSet(1, 2)) {
                    m5886i().execute(new Runnable() { // from class: com.cyjh.elfin.e.c.q.d.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            d.this.mo5872a(th);
                            d.this.m5890d();
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.e.c.q$e */
    /* loaded from: classes.dex */
    public static final class e extends ThreadPoolExecutor {

        /* renamed from: a */
        private final AtomicInteger f4777a;

        /* renamed from: b */
        private a f4778b;

        private e(int i, int i2, long j, TimeUnit timeUnit, a aVar, ThreadFactory threadFactory) {
            super(i, i2, j, timeUnit, aVar, threadFactory);
            this.f4777a = new AtomicInteger();
            aVar.mPool = this;
            this.f4778b = aVar;
        }

        /* renamed from: a */
        private int m5892a() {
            return this.f4777a.get();
        }

        /* renamed from: a */
        static /* synthetic */ ExecutorService m5893a(int i, int i2) {
            if (i == -8) {
                return new e(C1266q.f4741d + 1, (C1266q.f4741d * 2) + 1, 30L, TimeUnit.SECONDS, new a(true), new f(C2518v.f9572r, i2));
            }
            if (i == -4) {
                return new e((C1266q.f4741d * 2) + 1, (C1266q.f4741d * 2) + 1, 30L, TimeUnit.SECONDS, new a(), new f("io", i2));
            }
            switch (i) {
                case -2:
                    return new e(0, 128, 60L, TimeUnit.SECONDS, new a(true), new f("cached", i2));
                case -1:
                    return new e(1, 1, 0L, TimeUnit.MILLISECONDS, new a(), new f("single", i2));
                default:
                    return new e(i, i, 0L, TimeUnit.MILLISECONDS, new a(), new f("fixed(" + i + ")", i2));
            }
        }

        /* renamed from: b */
        private static ExecutorService m5894b(int i, int i2) {
            if (i == -8) {
                return new e(C1266q.f4741d + 1, (C1266q.f4741d * 2) + 1, 30L, TimeUnit.SECONDS, new a(true), new f(C2518v.f9572r, i2));
            }
            if (i == -4) {
                return new e((C1266q.f4741d * 2) + 1, (C1266q.f4741d * 2) + 1, 30L, TimeUnit.SECONDS, new a(), new f("io", i2));
            }
            switch (i) {
                case -2:
                    return new e(0, 128, 60L, TimeUnit.SECONDS, new a(true), new f("cached", i2));
                case -1:
                    return new e(1, 1, 0L, TimeUnit.MILLISECONDS, new a(), new f("single", i2));
                default:
                    return new e(i, i, 0L, TimeUnit.MILLISECONDS, new a(), new f("fixed(" + i + ")", i2));
            }
        }

        @Override // java.util.concurrent.ThreadPoolExecutor
        protected final void afterExecute(Runnable runnable, Throwable th) {
            this.f4777a.decrementAndGet();
            super.afterExecute(runnable, th);
        }

        @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
        public final void execute(@NonNull Runnable runnable) {
            if (isShutdown()) {
                return;
            }
            this.f4777a.incrementAndGet();
            try {
                super.execute(runnable);
            } catch (RejectedExecutionException unused) {
                Log.e("ThreadUtils", "This will not happen!");
                this.f4778b.offer(runnable);
            } catch (Throwable unused2) {
                this.f4777a.decrementAndGet();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.e.c.q$f */
    /* loaded from: classes.dex */
    public static final class f extends AtomicLong implements ThreadFactory {
        private static final AtomicInteger POOL_NUMBER = new AtomicInteger(1);
        private static final long serialVersionUID = -9209200509960368598L;
        private final boolean isDaemon;
        private final String namePrefix;
        private final int priority;

        f(String str, int i) {
            this(str, i, false);
        }

        f(String str, int i, boolean z) {
            this.namePrefix = str + "-pool-" + POOL_NUMBER.getAndIncrement() + "-thread-";
            this.priority = i;
            this.isDaemon = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(@NonNull Runnable runnable) {
            Thread thread = new Thread(runnable, this.namePrefix + getAndIncrement()) { // from class: com.cyjh.elfin.e.c.q.f.1
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    try {
                        super.run();
                    } catch (Throwable th) {
                        Log.e("ThreadUtils", "Request threw uncaught throwable", th);
                    }
                }
            };
            thread.setDaemon(this.isDaemon);
            thread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.cyjh.elfin.e.c.q.f.2
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public final void uncaughtException(Thread thread2, Throwable th) {
                    System.out.println(th);
                }
            });
            thread.setPriority(this.priority);
            return thread;
        }
    }

    /* renamed from: a */
    private static ExecutorService m5800a(@IntRange(from = 1) int i) {
        return m5825b(i, 5);
    }

    /* renamed from: a */
    private static ExecutorService m5801a(@IntRange(from = 1) int i, @IntRange(from = 1, m23to = 10) int i2) {
        return m5825b(i, i2);
    }

    /* renamed from: a */
    private static <T> void m5802a(@IntRange(from = 1) int i, d<T> dVar) {
        m5834b(m5825b(i, 5), dVar);
    }

    /* renamed from: a */
    private static <T> void m5803a(@IntRange(from = 1) int i, d<T> dVar, @IntRange(from = 1, m23to = 10) int i2) {
        m5834b(m5825b(i, i2), dVar);
    }

    /* renamed from: a */
    private static <T> void m5804a(@IntRange(from = 1) int i, d<T> dVar, long j, long j2, TimeUnit timeUnit) {
        m5835b(m5825b(i, 5), dVar, j, j2, timeUnit);
    }

    /* renamed from: a */
    private static <T> void m5805a(@IntRange(from = 1) int i, d<T> dVar, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i2) {
        m5835b(m5825b(i, i2), dVar, j, j2, timeUnit);
    }

    /* renamed from: a */
    private static <T> void m5806a(@IntRange(from = 1) int i, d<T> dVar, long j, TimeUnit timeUnit) {
        m5846c(m5825b(i, 5), dVar, j, timeUnit);
    }

    /* renamed from: a */
    private static <T> void m5807a(@IntRange(from = 1) int i, d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i2) {
        m5846c(m5825b(i, i2), dVar, j, timeUnit);
    }

    /* renamed from: a */
    public static <T> void m5808a(d<T> dVar) {
        m5834b(m5825b(-8, 5), dVar);
    }

    /* renamed from: a */
    private static <T> void m5809a(d<T> dVar, @IntRange(from = 1, m23to = 10) int i) {
        m5834b(m5825b(-1, i), dVar);
    }

    /* renamed from: a */
    private static <T> void m5810a(d<T> dVar, long j, long j2, TimeUnit timeUnit) {
        m5835b(m5825b(-1, 5), dVar, j, j2, timeUnit);
    }

    /* renamed from: a */
    private static <T> void m5811a(d<T> dVar, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5835b(m5825b(-1, i), dVar, j, j2, timeUnit);
    }

    /* renamed from: a */
    private static <T> void m5812a(d<T> dVar, long j, TimeUnit timeUnit) {
        m5846c(m5825b(-1, 5), dVar, j, timeUnit);
    }

    /* renamed from: a */
    private static <T> void m5813a(d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5846c(m5825b(-1, i), dVar, j, timeUnit);
    }

    /* renamed from: a */
    public static void m5814a(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            f4738a.post(runnable);
        }
    }

    /* renamed from: a */
    private static void m5815a(Runnable runnable, long j) {
        f4738a.postDelayed(runnable, j);
    }

    /* renamed from: a */
    private static void m5816a(List<d> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (d dVar : list) {
            if (dVar != null) {
                dVar.m5889c();
            }
        }
    }

    /* renamed from: a */
    private static void m5817a(Executor executor) {
        f4747j = executor;
    }

    /* renamed from: a */
    private static void m5818a(ExecutorService executorService) {
        d key;
        if (!(executorService instanceof e)) {
            Log.e("ThreadUtils", "The executorService is not ThreadUtils's pool.");
            return;
        }
        for (Map.Entry<d, ExecutorService> entry : f4740c.entrySet()) {
            if (entry.getValue() == executorService && (key = entry.getKey()) != null) {
                key.m5889c();
            }
        }
    }

    /* renamed from: a */
    private static <T> void m5819a(ExecutorService executorService, d<T> dVar) {
        m5834b(executorService, dVar);
    }

    /* renamed from: a */
    private static <T> void m5820a(ExecutorService executorService, d<T> dVar, long j, long j2, TimeUnit timeUnit) {
        m5835b(executorService, dVar, j, j2, timeUnit);
    }

    /* renamed from: a */
    private static <T> void m5821a(ExecutorService executorService, d<T> dVar, long j, TimeUnit timeUnit) {
        m5846c(executorService, dVar, j, timeUnit);
    }

    /* renamed from: a */
    private static void m5822a(d... dVarArr) {
        if (dVarArr == null || dVarArr.length == 0) {
            return;
        }
        for (d dVar : dVarArr) {
            if (dVar != null) {
                dVar.m5889c();
            }
        }
    }

    /* renamed from: b */
    static /* synthetic */ Executor m5823b() {
        if (f4747j == null) {
            f4747j = new AnonymousClass3();
        }
        return f4747j;
    }

    /* renamed from: b */
    private static ExecutorService m5824b(@IntRange(from = 1, m23to = 10) int i) {
        return m5825b(-1, i);
    }

    /* renamed from: b */
    private static ExecutorService m5825b(int i, int i2) {
        ExecutorService executorService;
        synchronized (f4739b) {
            Map<Integer, ExecutorService> map = f4739b.get(Integer.valueOf(i));
            if (map == null) {
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                executorService = e.m5893a(i, i2);
                concurrentHashMap.put(Integer.valueOf(i2), executorService);
                f4739b.put(Integer.valueOf(i), concurrentHashMap);
            } else {
                executorService = map.get(Integer.valueOf(i2));
                if (executorService == null) {
                    executorService = e.m5893a(i, i2);
                    map.put(Integer.valueOf(i2), executorService);
                }
            }
        }
        return executorService;
    }

    /* renamed from: b */
    private static <T> void m5826b(@IntRange(from = 1) int i, d<T> dVar, long j, TimeUnit timeUnit) {
        m5835b(m5825b(i, 5), dVar, 0L, j, timeUnit);
    }

    /* renamed from: b */
    private static <T> void m5827b(@IntRange(from = 1) int i, d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i2) {
        m5835b(m5825b(i, i2), dVar, 0L, j, timeUnit);
    }

    /* renamed from: b */
    private static <T> void m5828b(d<T> dVar) {
        m5834b(m5825b(-1, 5), dVar);
    }

    /* renamed from: b */
    private static <T> void m5829b(d<T> dVar, @IntRange(from = 1, m23to = 10) int i) {
        m5834b(m5825b(-2, i), dVar);
    }

    /* renamed from: b */
    private static <T> void m5830b(d<T> dVar, long j, long j2, TimeUnit timeUnit) {
        m5835b(m5825b(-2, 5), dVar, j, j2, timeUnit);
    }

    /* renamed from: b */
    private static <T> void m5831b(d<T> dVar, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5835b(m5825b(-2, i), dVar, j, j2, timeUnit);
    }

    /* renamed from: b */
    private static <T> void m5832b(d<T> dVar, long j, TimeUnit timeUnit) {
        m5835b(m5825b(-1, 5), dVar, 0L, j, timeUnit);
    }

    /* renamed from: b */
    private static <T> void m5833b(d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5835b(m5825b(-1, i), dVar, 0L, j, timeUnit);
    }

    /* renamed from: b */
    private static <T> void m5834b(ExecutorService executorService, d<T> dVar) {
        m5845c(executorService, dVar, 0L, 0L, (TimeUnit) null);
    }

    /* renamed from: b */
    private static <T> void m5835b(ExecutorService executorService, d<T> dVar, long j, long j2, TimeUnit timeUnit) {
        m5845c(executorService, dVar, j, j2, timeUnit);
    }

    /* renamed from: b */
    private static <T> void m5836b(ExecutorService executorService, d<T> dVar, long j, TimeUnit timeUnit) {
        m5835b(executorService, dVar, 0L, j, timeUnit);
    }

    /* renamed from: c */
    private static ExecutorService m5838c(@IntRange(from = 1, m23to = 10) int i) {
        return m5825b(-2, i);
    }

    /* renamed from: c */
    private static <T> void m5839c(d<T> dVar) {
        m5834b(m5825b(-2, 5), dVar);
    }

    /* renamed from: c */
    private static <T> void m5840c(d<T> dVar, @IntRange(from = 1, m23to = 10) int i) {
        m5834b(m5825b(-4, i), dVar);
    }

    /* renamed from: c */
    private static <T> void m5841c(d<T> dVar, long j, long j2, TimeUnit timeUnit) {
        m5835b(m5825b(-4, 5), dVar, j, j2, timeUnit);
    }

    /* renamed from: c */
    private static <T> void m5842c(d<T> dVar, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5835b(m5825b(-4, i), dVar, j, j2, timeUnit);
    }

    /* renamed from: c */
    private static <T> void m5843c(d<T> dVar, long j, TimeUnit timeUnit) {
        m5846c(m5825b(-2, 5), dVar, j, timeUnit);
    }

    /* renamed from: c */
    private static <T> void m5844c(d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5846c(m5825b(-2, i), dVar, j, timeUnit);
    }

    /* renamed from: c */
    private static <T> void m5845c(final ExecutorService executorService, final d<T> dVar, long j, long j2, TimeUnit timeUnit) {
        synchronized (f4740c) {
            if (f4740c.get(dVar) != null) {
                Log.e("ThreadUtils", "Task can only be executed once.");
                return;
            }
            f4740c.put(dVar, executorService);
            if (j2 != 0) {
                ((d) dVar).f4764j = true;
                f4742e.scheduleAtFixedRate(new TimerTask() { // from class: com.cyjh.elfin.e.c.q.2
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public final void run() {
                        executorService.execute(dVar);
                    }
                }, timeUnit.toMillis(j), timeUnit.toMillis(j2));
            } else if (j == 0) {
                executorService.execute(dVar);
            } else {
                f4742e.schedule(new TimerTask() { // from class: com.cyjh.elfin.e.c.q.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public final void run() {
                        executorService.execute(dVar);
                    }
                }, timeUnit.toMillis(j));
            }
        }
    }

    /* renamed from: c */
    private static <T> void m5846c(ExecutorService executorService, d<T> dVar, long j, TimeUnit timeUnit) {
        m5845c(executorService, dVar, j, 0L, timeUnit);
    }

    /* renamed from: d */
    private static ExecutorService m5847d(@IntRange(from = 1, m23to = 10) int i) {
        return m5825b(-4, i);
    }

    /* renamed from: d */
    private static <T> void m5848d(d<T> dVar) {
        m5834b(m5825b(-4, 5), dVar);
    }

    /* renamed from: d */
    private static <T> void m5849d(d<T> dVar, @IntRange(from = 1, m23to = 10) int i) {
        m5834b(m5825b(-8, i), dVar);
    }

    /* renamed from: d */
    private static <T> void m5850d(d<T> dVar, long j, long j2, TimeUnit timeUnit) {
        m5835b(m5825b(-8, 5), dVar, j, j2, timeUnit);
    }

    /* renamed from: d */
    private static <T> void m5851d(d<T> dVar, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5835b(m5825b(-8, i), dVar, j, j2, timeUnit);
    }

    /* renamed from: d */
    private static <T> void m5852d(d<T> dVar, long j, TimeUnit timeUnit) {
        m5835b(m5825b(-2, 5), dVar, 0L, j, timeUnit);
    }

    /* renamed from: d */
    private static <T> void m5853d(d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5835b(m5825b(-2, i), dVar, 0L, j, timeUnit);
    }

    /* renamed from: d */
    private static boolean m5854d() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: e */
    private static Handler m5855e() {
        return f4738a;
    }

    /* renamed from: e */
    private static ExecutorService m5856e(@IntRange(from = 1, m23to = 10) int i) {
        return m5825b(-8, i);
    }

    /* renamed from: e */
    private static void m5857e(d dVar) {
        if (dVar == null) {
            return;
        }
        dVar.m5889c();
    }

    /* renamed from: e */
    private static <T> void m5858e(d<T> dVar, long j, TimeUnit timeUnit) {
        m5846c(m5825b(-4, 5), dVar, j, timeUnit);
    }

    /* renamed from: e */
    private static <T> void m5859e(d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5846c(m5825b(-4, i), dVar, j, timeUnit);
    }

    /* renamed from: f */
    private static ExecutorService m5860f() {
        return m5825b(-1, 5);
    }

    /* renamed from: f */
    private static ExecutorService m5861f(int i) {
        return m5825b(i, 5);
    }

    /* renamed from: f */
    private static <T> void m5862f(d<T> dVar, long j, TimeUnit timeUnit) {
        m5835b(m5825b(-4, 5), dVar, 0L, j, timeUnit);
    }

    /* renamed from: f */
    private static <T> void m5863f(d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5835b(m5825b(-4, i), dVar, 0L, j, timeUnit);
    }

    /* renamed from: g */
    private static ExecutorService m5864g() {
        return m5825b(-2, 5);
    }

    /* renamed from: g */
    private static <T> void m5865g(d<T> dVar, long j, TimeUnit timeUnit) {
        m5846c(m5825b(-8, 5), dVar, j, timeUnit);
    }

    /* renamed from: g */
    private static <T> void m5866g(d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5846c(m5825b(-8, i), dVar, j, timeUnit);
    }

    /* renamed from: h */
    private static ExecutorService m5867h() {
        return m5825b(-4, 5);
    }

    /* renamed from: h */
    private static <T> void m5868h(d<T> dVar, long j, TimeUnit timeUnit) {
        m5835b(m5825b(-8, 5), dVar, 0L, j, timeUnit);
    }

    /* renamed from: h */
    private static <T> void m5869h(d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5835b(m5825b(-8, i), dVar, 0L, j, timeUnit);
    }

    /* renamed from: i */
    private static ExecutorService m5870i() {
        return m5825b(-8, 5);
    }

    /* renamed from: j */
    private static Executor m5871j() {
        if (f4747j == null) {
            f4747j = new AnonymousClass3();
        }
        return f4747j;
    }
}
