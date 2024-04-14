package com.bumptech.glide.load.p042b.p045c;

import android.os.Build;
import android.os.Process;
import android.os.StrictMode;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.support.v7.widget.ActivityChooserView;
import android.util.Log;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* renamed from: com.bumptech.glide.load.b.c.a */
/* loaded from: classes.dex */
public final class ExecutorServiceC0902a implements ExecutorService {

    /* renamed from: a */
    private static final String f2624a = "source";

    /* renamed from: b */
    private static final String f2625b = "disk-cache";

    /* renamed from: c */
    private static final int f2626c = 1;

    /* renamed from: d */
    private static final String f2627d = "GlideExecutor";

    /* renamed from: e */
    private static final String f2628e = "source-unlimited";

    /* renamed from: f */
    private static final String f2629f = "animation";

    /* renamed from: g */
    private static final long f2630g = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: h */
    private static final int f2631h = 4;

    /* renamed from: i */
    private static volatile int f2632i;

    /* renamed from: j */
    private final ExecutorService f2633j;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.b.c.a$a */
    /* loaded from: classes.dex */
    public static final class a implements ThreadFactory {

        /* renamed from: c */
        private static final int f2634c = 9;

        /* renamed from: a */
        final b f2635a;

        /* renamed from: b */
        final boolean f2636b;

        /* renamed from: d */
        private final String f2637d;

        /* renamed from: e */
        private int f2638e;

        a(String str, b bVar, boolean z) {
            this.f2637d = str;
            this.f2635a = bVar;
            this.f2636b = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public final synchronized Thread newThread(@NonNull Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-" + this.f2637d + "-thread-" + this.f2638e) { // from class: com.bumptech.glide.load.b.c.a.a.1
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    Process.setThreadPriority(9);
                    if (a.this.f2636b) {
                        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                    }
                    try {
                        super.run();
                    } catch (Throwable th) {
                        a.this.f2635a.mo2589a(th);
                    }
                }
            };
            this.f2638e = this.f2638e + 1;
            return thread;
        }
    }

    /* renamed from: com.bumptech.glide.load.b.c.a$b */
    /* loaded from: classes.dex */
    public interface b {

        /* renamed from: a */
        public static final b f2640a = new b() { // from class: com.bumptech.glide.load.b.c.a.b.1
            @Override // com.bumptech.glide.load.p042b.p045c.ExecutorServiceC0902a.b
            /* renamed from: a */
            public final void mo2589a(Throwable th) {
            }
        };

        /* renamed from: b */
        public static final b f2641b = new b() { // from class: com.bumptech.glide.load.b.c.a.b.2
            @Override // com.bumptech.glide.load.p042b.p045c.ExecutorServiceC0902a.b
            /* renamed from: a */
            public final void mo2589a(Throwable th) {
                if (Log.isLoggable(ExecutorServiceC0902a.f2627d, 6)) {
                    Log.e(ExecutorServiceC0902a.f2627d, "Request threw uncaught throwable", th);
                }
            }
        };

        /* renamed from: c */
        public static final b f2642c = new b() { // from class: com.bumptech.glide.load.b.c.a.b.3
            @Override // com.bumptech.glide.load.p042b.p045c.ExecutorServiceC0902a.b
            /* renamed from: a */
            public final void mo2589a(Throwable th) {
                throw new RuntimeException("Request threw uncaught throwable", th);
            }
        };

        /* renamed from: d */
        public static final b f2643d = f2641b;

        /* renamed from: a */
        void mo2589a(Throwable th);
    }

    @VisibleForTesting
    private ExecutorServiceC0902a(ExecutorService executorService) {
        this.f2633j = executorService;
    }

    /* renamed from: a */
    public static ExecutorServiceC0902a m2579a() {
        return m2583a(f2625b, b.f2643d);
    }

    /* renamed from: a */
    private static ExecutorServiceC0902a m2580a(int i, b bVar) {
        return new ExecutorServiceC0902a(new ThreadPoolExecutor(0, i, f2630g, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a(f2629f, bVar, true)));
    }

    /* renamed from: a */
    private static ExecutorServiceC0902a m2581a(int i, String str, b bVar) {
        return new ExecutorServiceC0902a(new ThreadPoolExecutor(i, i, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a(str, bVar, false)));
    }

    /* renamed from: a */
    private static ExecutorServiceC0902a m2582a(b bVar) {
        return m2583a(f2625b, bVar);
    }

    /* renamed from: a */
    private static ExecutorServiceC0902a m2583a(String str, b bVar) {
        return new ExecutorServiceC0902a(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a(str, bVar, true)));
    }

    /* renamed from: b */
    public static ExecutorServiceC0902a m2584b() {
        return m2581a(m2588e(), f2624a, b.f2643d);
    }

    /* renamed from: b */
    private static ExecutorServiceC0902a m2585b(b bVar) {
        return m2581a(m2588e(), f2624a, bVar);
    }

    /* renamed from: c */
    public static ExecutorServiceC0902a m2586c() {
        return new ExecutorServiceC0902a(new ThreadPoolExecutor(0, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, f2630g, TimeUnit.MILLISECONDS, new SynchronousQueue(), new a(f2628e, b.f2643d, false)));
    }

    /* renamed from: d */
    public static ExecutorServiceC0902a m2587d() {
        return new ExecutorServiceC0902a(new ThreadPoolExecutor(0, m2588e() >= 4 ? 2 : 1, f2630g, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a(f2629f, b.f2643d, true)));
    }

    /* renamed from: e */
    private static int m2588e() {
        if (f2632i == 0) {
            int availableProcessors = Runtime.getRuntime().availableProcessors();
            if (Build.VERSION.SDK_INT < 17) {
                availableProcessors = Math.max(C0903b.m2590a(), availableProcessors);
            }
            f2632i = Math.min(4, availableProcessors);
        }
        return f2632i;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.f2633j.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(@NonNull Runnable runnable) {
        this.f2633j.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public final <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f2633j.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public final <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection, long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.f2633j.invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public final <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return (T) this.f2633j.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection, long j, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (T) this.f2633j.invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return this.f2633j.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return this.f2633j.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        this.f2633j.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public final List<Runnable> shutdownNow() {
        return this.f2633j.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public final Future<?> submit(@NonNull Runnable runnable) {
        return this.f2633j.submit(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public final <T> Future<T> submit(@NonNull Runnable runnable, T t) {
        return this.f2633j.submit(runnable, t);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> Future<T> submit(@NonNull Callable<T> callable) {
        return this.f2633j.submit(callable);
    }

    public final String toString() {
        return this.f2633j.toString();
    }
}
