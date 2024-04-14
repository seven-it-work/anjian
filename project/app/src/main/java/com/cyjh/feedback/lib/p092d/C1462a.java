package com.cyjh.feedback.lib.p092d;

import android.support.annotation.NonNull;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.cyjh.feedback.lib.d.a */
/* loaded from: classes.dex */
public class C1462a {

    /* renamed from: e */
    private static final int f5672e = 30;

    /* renamed from: a */
    public ThreadPoolExecutor f5674a;

    /* renamed from: b */
    private static final int f5669b = Runtime.getRuntime().availableProcessors();

    /* renamed from: c */
    private static final int f5670c = Math.max(2, Math.min(f5669b - 1, 4));

    /* renamed from: d */
    private static final int f5671d = (f5669b * 2) + 1;

    /* renamed from: f */
    private static final ThreadFactory f5673f = new ThreadFactory() { // from class: com.cyjh.feedback.lib.d.a.1

        /* renamed from: a */
        private final AtomicInteger f5675a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(@NonNull Runnable runnable) {
            return new Thread(runnable, "ThreadPoolProxy #" + this.f5675a.getAndIncrement());
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    public C1462a() {
        if (this.f5674a == null || this.f5674a.isShutdown() || this.f5674a.isTerminated()) {
            synchronized (C1462a.class) {
                if (this.f5674a == null || this.f5674a.isShutdown() || this.f5674a.isTerminated()) {
                    this.f5674a = new ThreadPoolExecutor(f5670c, f5671d, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(10), f5673f, new ThreadPoolExecutor.AbortPolicy());
                }
            }
        }
    }

    /* renamed from: a */
    private void m6770a() {
        if (this.f5674a == null || this.f5674a.isShutdown() || this.f5674a.isTerminated()) {
            synchronized (C1462a.class) {
                if (this.f5674a == null || this.f5674a.isShutdown() || this.f5674a.isTerminated()) {
                    this.f5674a = new ThreadPoolExecutor(f5670c, f5671d, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(10), f5673f, new ThreadPoolExecutor.AbortPolicy());
                }
            }
        }
    }

    /* renamed from: b */
    private void m6771b(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        this.f5674a.remove(runnable);
    }

    /* renamed from: a */
    public final void m6772a(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        this.f5674a.execute(runnable);
    }
}
