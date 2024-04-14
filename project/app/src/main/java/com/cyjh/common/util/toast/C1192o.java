package com.cyjh.common.util.toast;

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

/* renamed from: com.cyjh.common.util.toast.o */
/* loaded from: classes.dex */
public final class C1192o {

    /* renamed from: a */
    private static final Handler f4152a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    private static final Map<Integer, Map<Integer, ExecutorService>> f4153b = new HashMap();

    /* renamed from: c */
    private static final Map<d, ExecutorService> f4154c = new ConcurrentHashMap();

    /* renamed from: d */
    private static final int f4155d = Runtime.getRuntime().availableProcessors();

    /* renamed from: e */
    private static final Timer f4156e = new Timer();

    /* renamed from: f */
    private static final byte f4157f = -1;

    /* renamed from: g */
    private static final byte f4158g = -2;

    /* renamed from: h */
    private static final byte f4159h = -4;

    /* renamed from: i */
    private static final byte f4160i = -8;

    /* renamed from: j */
    private static Executor f4161j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.common.util.toast.o$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass3 implements Executor {
        AnonymousClass3() {
        }

        @Override // java.util.concurrent.Executor
        public final void execute(@NonNull Runnable runnable) {
            C1192o.m4987a(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.common.util.toast.o$a */
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

    /* renamed from: com.cyjh.common.util.toast.o$b */
    /* loaded from: classes.dex */
    public static abstract class b<T> extends d<T> {
        @Override // com.cyjh.common.util.toast.C1192o.d
        /* renamed from: a */
        public final void mo5045a() {
            Log.e("ThreadUtils", "onCancel: " + Thread.currentThread());
        }

        @Override // com.cyjh.common.util.toast.C1192o.d
        /* renamed from: a */
        public final void mo5046a(Throwable th) {
            Log.e("ThreadUtils", "onFail: ", th);
        }
    }

    /* renamed from: com.cyjh.common.util.toast.o$c */
    /* loaded from: classes.dex */
    public static class c<T> {

        /* renamed from: a */
        private CountDownLatch f4166a = new CountDownLatch(1);

        /* renamed from: b */
        private AtomicBoolean f4167b = new AtomicBoolean();

        /* renamed from: c */
        private T f4168c;

        /* renamed from: a */
        private T m5047a() {
            if (!this.f4167b.get()) {
                try {
                    this.f4166a.await();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            return this.f4168c;
        }

        /* renamed from: a */
        private T m5048a(long j, TimeUnit timeUnit, T t) {
            if (!this.f4167b.get()) {
                try {
                    this.f4166a.await(j, timeUnit);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    return t;
                }
            }
            return this.f4168c;
        }

        /* renamed from: a */
        private void m5049a(T t) {
            if (this.f4167b.compareAndSet(false, true)) {
                this.f4168c = t;
                this.f4166a.countDown();
            }
        }
    }

    /* renamed from: com.cyjh.common.util.toast.o$d */
    /* loaded from: classes.dex */
    public static abstract class d<T> implements Runnable {

        /* renamed from: d */
        private static final int f4169d = 0;

        /* renamed from: e */
        private static final int f4170e = 1;

        /* renamed from: f */
        private static final int f4171f = 2;

        /* renamed from: g */
        private static final int f4172g = 3;

        /* renamed from: h */
        private static final int f4173h = 4;

        /* renamed from: i */
        private static final int f4174i = 5;

        /* renamed from: j */
        private static final int f4175j = 6;

        /* renamed from: a */
        final AtomicInteger f4176a = new AtomicInteger(0);

        /* renamed from: b */
        volatile Thread f4177b;

        /* renamed from: c */
        a f4178c;

        /* renamed from: k */
        private volatile boolean f4179k;

        /* renamed from: l */
        private Timer f4180l;

        /* renamed from: m */
        private long f4181m;

        /* renamed from: n */
        private Executor f4182n;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.cyjh.common.util.toast.o$d$5, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass5 implements Runnable {
            AnonymousClass5() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                d.this.mo5045a();
                d.this.m5064e();
            }
        }

        /* renamed from: com.cyjh.common.util.toast.o$d$a */
        /* loaded from: classes.dex */
        public interface a {
            /* renamed from: a */
            void m5065a();
        }

        /* renamed from: a */
        private d<T> m5050a(long j, a aVar) {
            this.f4181m = j;
            this.f4178c = aVar;
            return this;
        }

        /* renamed from: a */
        private d<T> m5051a(Executor executor) {
            this.f4182n = executor;
            return this;
        }

        /* renamed from: a */
        private void m5053a(boolean z) {
            this.f4179k = z;
        }

        /* renamed from: c */
        private static /* synthetic */ void m5055c(d dVar) {
            synchronized (dVar.f4176a) {
                if (dVar.f4176a.get() > 1) {
                    return;
                }
                dVar.f4176a.set(6);
                if (dVar.f4177b != null) {
                    dVar.f4177b.interrupt();
                }
            }
        }

        /* renamed from: f */
        private void m5056f() {
            synchronized (this.f4176a) {
                if (this.f4176a.get() > 1) {
                    return;
                }
                this.f4176a.set(4);
                if (this.f4177b != null) {
                    this.f4177b.interrupt();
                }
                m5060j().execute(new AnonymousClass5());
            }
        }

        /* renamed from: g */
        private void m5057g() {
            synchronized (this.f4176a) {
                if (this.f4176a.get() > 1) {
                    return;
                }
                this.f4176a.set(6);
                if (this.f4177b != null) {
                    this.f4177b.interrupt();
                }
            }
        }

        /* renamed from: h */
        private boolean m5058h() {
            return this.f4176a.get() >= 4;
        }

        /* renamed from: i */
        private boolean m5059i() {
            return this.f4176a.get() > 1;
        }

        /* renamed from: j */
        private Executor m5060j() {
            return this.f4182n == null ? C1192o.m5010c() : this.f4182n;
        }

        /* renamed from: a */
        public abstract void mo5045a();

        /* renamed from: a */
        public abstract void mo5046a(Throwable th);

        /* renamed from: b */
        public abstract T m5061b() throws Throwable;

        /* renamed from: c */
        public abstract void mo5062c();

        /* renamed from: d */
        public final void m5063d() {
            synchronized (this.f4176a) {
                if (this.f4176a.get() > 1) {
                    return;
                }
                this.f4176a.set(4);
                if (this.f4177b != null) {
                    this.f4177b.interrupt();
                }
                m5060j().execute(new AnonymousClass5());
            }
        }

        @CallSuper
        /* renamed from: e */
        protected final void m5064e() {
            C1192o.f4154c.remove(this);
            if (this.f4180l != null) {
                this.f4180l.cancel();
                this.f4180l = null;
                this.f4178c = null;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f4179k) {
                if (this.f4177b == null) {
                    if (!this.f4176a.compareAndSet(0, 1)) {
                        return;
                    }
                    this.f4177b = Thread.currentThread();
                    if (this.f4178c != null) {
                        Log.w("ThreadUtils", "Scheduled task doesn't support timeout.");
                    }
                } else if (this.f4176a.get() != 1) {
                    return;
                }
            } else {
                if (!this.f4176a.compareAndSet(0, 1)) {
                    return;
                }
                this.f4177b = Thread.currentThread();
                if (this.f4178c != null) {
                    this.f4180l = new Timer();
                    this.f4180l.schedule(new TimerTask() { // from class: com.cyjh.common.util.toast.o.d.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public final void run() {
                            if ((d.this.f4176a.get() > 1) || d.this.f4178c == null) {
                                return;
                            }
                            d dVar = d.this;
                            synchronized (dVar.f4176a) {
                                if (dVar.f4176a.get() <= 1) {
                                    dVar.f4176a.set(6);
                                    if (dVar.f4177b != null) {
                                        dVar.f4177b.interrupt();
                                    }
                                }
                            }
                            d.this.m5064e();
                        }
                    }, this.f4181m);
                }
            }
            try {
                final T m5061b = m5061b();
                if (this.f4179k) {
                    if (this.f4176a.get() != 1) {
                        return;
                    }
                    m5060j().execute(new Runnable() { // from class: com.cyjh.common.util.toast.o.d.2
                        @Override // java.lang.Runnable
                        public final void run() {
                        }
                    });
                } else if (this.f4176a.compareAndSet(1, 3)) {
                    m5060j().execute(new Runnable() { // from class: com.cyjh.common.util.toast.o.d.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            d.this.m5064e();
                        }
                    });
                }
            } catch (InterruptedException unused) {
                this.f4176a.compareAndSet(4, 5);
            } catch (Throwable th) {
                if (this.f4176a.compareAndSet(1, 2)) {
                    m5060j().execute(new Runnable() { // from class: com.cyjh.common.util.toast.o.d.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            d.this.mo5046a(th);
                            d.this.m5064e();
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.common.util.toast.o$e */
    /* loaded from: classes.dex */
    public static final class e extends ThreadPoolExecutor {

        /* renamed from: a */
        private final AtomicInteger f4191a;

        /* renamed from: b */
        private a f4192b;

        private e(int i, int i2, long j, TimeUnit timeUnit, a aVar, ThreadFactory threadFactory) {
            super(i, i2, j, timeUnit, aVar, threadFactory);
            this.f4191a = new AtomicInteger();
            aVar.mPool = this;
            this.f4192b = aVar;
        }

        /* renamed from: a */
        private int m5066a() {
            return this.f4191a.get();
        }

        /* renamed from: a */
        static /* synthetic */ ExecutorService m5067a(int i, int i2) {
            if (i == -8) {
                return new e(C1192o.f4155d + 1, (C1192o.f4155d * 2) + 1, 30L, TimeUnit.SECONDS, new a(true), new f(C2518v.f9572r, i2));
            }
            if (i == -4) {
                return new e((C1192o.f4155d * 2) + 1, (C1192o.f4155d * 2) + 1, 30L, TimeUnit.SECONDS, new a(), new f("io", i2));
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
        private static ExecutorService m5068b(int i, int i2) {
            if (i == -8) {
                return new e(C1192o.f4155d + 1, (C1192o.f4155d * 2) + 1, 30L, TimeUnit.SECONDS, new a(true), new f(C2518v.f9572r, i2));
            }
            if (i == -4) {
                return new e((C1192o.f4155d * 2) + 1, (C1192o.f4155d * 2) + 1, 30L, TimeUnit.SECONDS, new a(), new f("io", i2));
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
            this.f4191a.decrementAndGet();
            super.afterExecute(runnable, th);
        }

        @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
        public final void execute(@NonNull Runnable runnable) {
            if (isShutdown()) {
                return;
            }
            this.f4191a.incrementAndGet();
            try {
                super.execute(runnable);
            } catch (RejectedExecutionException unused) {
                Log.e("ThreadUtils", "This will not happen!");
                this.f4192b.offer(runnable);
            } catch (Throwable unused2) {
                this.f4191a.decrementAndGet();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.common.util.toast.o$f */
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
            Thread thread = new Thread(runnable, this.namePrefix + getAndIncrement()) { // from class: com.cyjh.common.util.toast.o.f.1
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
            thread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.cyjh.common.util.toast.o.f.2
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
    public static ExecutorService m4972a() {
        return m4998b(-2, 5);
    }

    /* renamed from: a */
    private static ExecutorService m4973a(@IntRange(from = 1) int i) {
        return m4998b(i, 5);
    }

    /* renamed from: a */
    private static ExecutorService m4974a(@IntRange(from = 1) int i, @IntRange(from = 1, m23to = 10) int i2) {
        return m4998b(i, i2);
    }

    /* renamed from: a */
    private static <T> void m4975a(@IntRange(from = 1) int i, d<T> dVar) {
        m5007b(m4998b(i, 5), dVar);
    }

    /* renamed from: a */
    private static <T> void m4976a(@IntRange(from = 1) int i, d<T> dVar, @IntRange(from = 1, m23to = 10) int i2) {
        m5007b(m4998b(i, i2), dVar);
    }

    /* renamed from: a */
    private static <T> void m4977a(@IntRange(from = 1) int i, d<T> dVar, long j, long j2, TimeUnit timeUnit) {
        m5008b(m4998b(i, 5), dVar, j, j2, timeUnit);
    }

    /* renamed from: a */
    private static <T> void m4978a(@IntRange(from = 1) int i, d<T> dVar, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i2) {
        m5008b(m4998b(i, i2), dVar, j, j2, timeUnit);
    }

    /* renamed from: a */
    private static <T> void m4979a(@IntRange(from = 1) int i, d<T> dVar, long j, TimeUnit timeUnit) {
        m5019c(m4998b(i, 5), dVar, j, timeUnit);
    }

    /* renamed from: a */
    private static <T> void m4980a(@IntRange(from = 1) int i, d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i2) {
        m5019c(m4998b(i, i2), dVar, j, timeUnit);
    }

    /* renamed from: a */
    private static <T> void m4981a(d<T> dVar) {
        m5007b(m4998b(-1, 5), dVar);
    }

    /* renamed from: a */
    private static <T> void m4982a(d<T> dVar, @IntRange(from = 1, m23to = 10) int i) {
        m5007b(m4998b(-1, i), dVar);
    }

    /* renamed from: a */
    private static <T> void m4983a(d<T> dVar, long j, long j2, TimeUnit timeUnit) {
        m5008b(m4998b(-1, 5), dVar, j, j2, timeUnit);
    }

    /* renamed from: a */
    private static <T> void m4984a(d<T> dVar, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5008b(m4998b(-1, i), dVar, j, j2, timeUnit);
    }

    /* renamed from: a */
    private static <T> void m4985a(d<T> dVar, long j, TimeUnit timeUnit) {
        m5019c(m4998b(-1, 5), dVar, j, timeUnit);
    }

    /* renamed from: a */
    private static <T> void m4986a(d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5019c(m4998b(-1, i), dVar, j, timeUnit);
    }

    /* renamed from: a */
    public static void m4987a(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            f4152a.post(runnable);
        }
    }

    /* renamed from: a */
    public static void m4988a(Runnable runnable, long j) {
        f4152a.postDelayed(runnable, j);
    }

    /* renamed from: a */
    private static void m4989a(List<d> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (d dVar : list) {
            if (dVar != null) {
                dVar.m5063d();
            }
        }
    }

    /* renamed from: a */
    private static void m4990a(Executor executor) {
        f4161j = executor;
    }

    /* renamed from: a */
    private static void m4991a(ExecutorService executorService) {
        d key;
        if (!(executorService instanceof e)) {
            Log.e("ThreadUtils", "The executorService is not ThreadUtils's pool.");
            return;
        }
        for (Map.Entry<d, ExecutorService> entry : f4154c.entrySet()) {
            if (entry.getValue() == executorService && (key = entry.getKey()) != null) {
                key.m5063d();
            }
        }
    }

    /* renamed from: a */
    private static <T> void m4992a(ExecutorService executorService, d<T> dVar) {
        m5007b(executorService, dVar);
    }

    /* renamed from: a */
    private static <T> void m4993a(ExecutorService executorService, d<T> dVar, long j, long j2, TimeUnit timeUnit) {
        m5008b(executorService, dVar, j, j2, timeUnit);
    }

    /* renamed from: a */
    private static <T> void m4994a(ExecutorService executorService, d<T> dVar, long j, TimeUnit timeUnit) {
        m5019c(executorService, dVar, j, timeUnit);
    }

    /* renamed from: a */
    private static void m4995a(d... dVarArr) {
        if (dVarArr == null || dVarArr.length == 0) {
            return;
        }
        for (d dVar : dVarArr) {
            if (dVar != null) {
                dVar.m5063d();
            }
        }
    }

    /* renamed from: b */
    private static ExecutorService m4997b(@IntRange(from = 1, m23to = 10) int i) {
        return m4998b(-1, i);
    }

    /* renamed from: b */
    private static ExecutorService m4998b(int i, int i2) {
        ExecutorService executorService;
        synchronized (f4153b) {
            Map<Integer, ExecutorService> map = f4153b.get(Integer.valueOf(i));
            if (map == null) {
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                executorService = e.m5067a(i, i2);
                concurrentHashMap.put(Integer.valueOf(i2), executorService);
                f4153b.put(Integer.valueOf(i), concurrentHashMap);
            } else {
                executorService = map.get(Integer.valueOf(i2));
                if (executorService == null) {
                    executorService = e.m5067a(i, i2);
                    map.put(Integer.valueOf(i2), executorService);
                }
            }
        }
        return executorService;
    }

    /* renamed from: b */
    private static <T> void m4999b(@IntRange(from = 1) int i, d<T> dVar, long j, TimeUnit timeUnit) {
        m5008b(m4998b(i, 5), dVar, 0L, j, timeUnit);
    }

    /* renamed from: b */
    private static <T> void m5000b(@IntRange(from = 1) int i, d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i2) {
        m5008b(m4998b(i, i2), dVar, 0L, j, timeUnit);
    }

    /* renamed from: b */
    private static <T> void m5001b(d<T> dVar) {
        m5007b(m4998b(-2, 5), dVar);
    }

    /* renamed from: b */
    private static <T> void m5002b(d<T> dVar, @IntRange(from = 1, m23to = 10) int i) {
        m5007b(m4998b(-2, i), dVar);
    }

    /* renamed from: b */
    private static <T> void m5003b(d<T> dVar, long j, long j2, TimeUnit timeUnit) {
        m5008b(m4998b(-2, 5), dVar, j, j2, timeUnit);
    }

    /* renamed from: b */
    private static <T> void m5004b(d<T> dVar, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5008b(m4998b(-2, i), dVar, j, j2, timeUnit);
    }

    /* renamed from: b */
    private static <T> void m5005b(d<T> dVar, long j, TimeUnit timeUnit) {
        m5008b(m4998b(-1, 5), dVar, 0L, j, timeUnit);
    }

    /* renamed from: b */
    private static <T> void m5006b(d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5008b(m4998b(-1, i), dVar, 0L, j, timeUnit);
    }

    /* renamed from: b */
    private static <T> void m5007b(ExecutorService executorService, d<T> dVar) {
        m5018c(executorService, dVar, 0L, 0L, (TimeUnit) null);
    }

    /* renamed from: b */
    private static <T> void m5008b(ExecutorService executorService, d<T> dVar, long j, long j2, TimeUnit timeUnit) {
        m5018c(executorService, dVar, j, j2, timeUnit);
    }

    /* renamed from: b */
    private static <T> void m5009b(ExecutorService executorService, d<T> dVar, long j, TimeUnit timeUnit) {
        m5008b(executorService, dVar, 0L, j, timeUnit);
    }

    /* renamed from: c */
    static /* synthetic */ Executor m5010c() {
        if (f4161j == null) {
            f4161j = new AnonymousClass3();
        }
        return f4161j;
    }

    /* renamed from: c */
    private static ExecutorService m5011c(@IntRange(from = 1, m23to = 10) int i) {
        return m4998b(-2, i);
    }

    /* renamed from: c */
    private static <T> void m5012c(d<T> dVar) {
        m5007b(m4998b(-4, 5), dVar);
    }

    /* renamed from: c */
    private static <T> void m5013c(d<T> dVar, @IntRange(from = 1, m23to = 10) int i) {
        m5007b(m4998b(-4, i), dVar);
    }

    /* renamed from: c */
    private static <T> void m5014c(d<T> dVar, long j, long j2, TimeUnit timeUnit) {
        m5008b(m4998b(-4, 5), dVar, j, j2, timeUnit);
    }

    /* renamed from: c */
    private static <T> void m5015c(d<T> dVar, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5008b(m4998b(-4, i), dVar, j, j2, timeUnit);
    }

    /* renamed from: c */
    private static <T> void m5016c(d<T> dVar, long j, TimeUnit timeUnit) {
        m5019c(m4998b(-2, 5), dVar, j, timeUnit);
    }

    /* renamed from: c */
    private static <T> void m5017c(d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5019c(m4998b(-2, i), dVar, j, timeUnit);
    }

    /* renamed from: c */
    private static <T> void m5018c(final ExecutorService executorService, final d<T> dVar, long j, long j2, TimeUnit timeUnit) {
        synchronized (f4154c) {
            if (f4154c.get(dVar) != null) {
                Log.e("ThreadUtils", "Task can only be executed once.");
                return;
            }
            f4154c.put(dVar, executorService);
            if (j2 != 0) {
                ((d) dVar).f4179k = true;
                f4156e.scheduleAtFixedRate(new TimerTask() { // from class: com.cyjh.common.util.toast.o.2
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public final void run() {
                        executorService.execute(dVar);
                    }
                }, timeUnit.toMillis(j), timeUnit.toMillis(j2));
            } else if (j == 0) {
                executorService.execute(dVar);
            } else {
                f4156e.schedule(new TimerTask() { // from class: com.cyjh.common.util.toast.o.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public final void run() {
                        executorService.execute(dVar);
                    }
                }, timeUnit.toMillis(j));
            }
        }
    }

    /* renamed from: c */
    private static <T> void m5019c(ExecutorService executorService, d<T> dVar, long j, TimeUnit timeUnit) {
        m5018c(executorService, dVar, j, 0L, timeUnit);
    }

    /* renamed from: d */
    private static ExecutorService m5021d(@IntRange(from = 1, m23to = 10) int i) {
        return m4998b(-4, i);
    }

    /* renamed from: d */
    private static <T> void m5022d(d<T> dVar) {
        m5007b(m4998b(-8, 5), dVar);
    }

    /* renamed from: d */
    private static <T> void m5023d(d<T> dVar, @IntRange(from = 1, m23to = 10) int i) {
        m5007b(m4998b(-8, i), dVar);
    }

    /* renamed from: d */
    private static <T> void m5024d(d<T> dVar, long j, long j2, TimeUnit timeUnit) {
        m5008b(m4998b(-8, 5), dVar, j, j2, timeUnit);
    }

    /* renamed from: d */
    private static <T> void m5025d(d<T> dVar, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5008b(m4998b(-8, i), dVar, j, j2, timeUnit);
    }

    /* renamed from: d */
    private static <T> void m5026d(d<T> dVar, long j, TimeUnit timeUnit) {
        m5008b(m4998b(-2, 5), dVar, 0L, j, timeUnit);
    }

    /* renamed from: d */
    private static <T> void m5027d(d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5008b(m4998b(-2, i), dVar, 0L, j, timeUnit);
    }

    /* renamed from: e */
    private static ExecutorService m5028e(@IntRange(from = 1, m23to = 10) int i) {
        return m4998b(-8, i);
    }

    /* renamed from: e */
    private static void m5029e(d dVar) {
        if (dVar == null) {
            return;
        }
        dVar.m5063d();
    }

    /* renamed from: e */
    private static <T> void m5030e(d<T> dVar, long j, TimeUnit timeUnit) {
        m5019c(m4998b(-4, 5), dVar, j, timeUnit);
    }

    /* renamed from: e */
    private static <T> void m5031e(d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5019c(m4998b(-4, i), dVar, j, timeUnit);
    }

    /* renamed from: e */
    private static boolean m5032e() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: f */
    private static Handler m5033f() {
        return f4152a;
    }

    /* renamed from: f */
    private static ExecutorService m5034f(int i) {
        return m4998b(i, 5);
    }

    /* renamed from: f */
    private static <T> void m5035f(d<T> dVar, long j, TimeUnit timeUnit) {
        m5008b(m4998b(-4, 5), dVar, 0L, j, timeUnit);
    }

    /* renamed from: f */
    private static <T> void m5036f(d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5008b(m4998b(-4, i), dVar, 0L, j, timeUnit);
    }

    /* renamed from: g */
    private static ExecutorService m5037g() {
        return m4998b(-1, 5);
    }

    /* renamed from: g */
    private static <T> void m5038g(d<T> dVar, long j, TimeUnit timeUnit) {
        m5019c(m4998b(-8, 5), dVar, j, timeUnit);
    }

    /* renamed from: g */
    private static <T> void m5039g(d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5019c(m4998b(-8, i), dVar, j, timeUnit);
    }

    /* renamed from: h */
    private static ExecutorService m5040h() {
        return m4998b(-4, 5);
    }

    /* renamed from: h */
    private static <T> void m5041h(d<T> dVar, long j, TimeUnit timeUnit) {
        m5008b(m4998b(-8, 5), dVar, 0L, j, timeUnit);
    }

    /* renamed from: h */
    private static <T> void m5042h(d<T> dVar, long j, TimeUnit timeUnit, @IntRange(from = 1, m23to = 10) int i) {
        m5008b(m4998b(-8, i), dVar, 0L, j, timeUnit);
    }

    /* renamed from: i */
    private static ExecutorService m5043i() {
        return m4998b(-8, 5);
    }

    /* renamed from: j */
    private static Executor m5044j() {
        if (f4161j == null) {
            f4161j = new AnonymousClass3();
        }
        return f4161j;
    }
}
