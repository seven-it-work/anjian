package com.zbar.p185a.p187b;

import android.app.Activity;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* renamed from: com.zbar.a.b.e */
/* loaded from: classes.dex */
public final class C2585e {

    /* renamed from: b */
    private static final int f10016b = 300;

    /* renamed from: c */
    private final Activity f10018c;

    /* renamed from: a */
    public final ScheduledExecutorService f10017a = Executors.newSingleThreadScheduledExecutor(new a(0));

    /* renamed from: d */
    private ScheduledFuture<?> f10019d = null;

    /* renamed from: com.zbar.a.b.e$a */
    /* loaded from: classes.dex */
    private static final class a implements ThreadFactory {
        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setDaemon(true);
            return thread;
        }
    }

    public C2585e(Activity activity) {
        this.f10018c = activity;
        m11660a();
    }

    /* renamed from: c */
    private void m11659c() {
        m11661b();
        this.f10017a.shutdown();
    }

    /* renamed from: a */
    public final void m11660a() {
        m11661b();
        this.f10019d = this.f10017a.schedule(new DialogInterfaceOnCancelListenerC2584d(this.f10018c), 300L, TimeUnit.SECONDS);
    }

    /* renamed from: b */
    public final void m11661b() {
        if (this.f10019d != null) {
            this.f10019d.cancel(true);
            this.f10019d = null;
        }
    }
}
