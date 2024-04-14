package com.bumptech.glide.request;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.p042b.C0920p;
import com.bumptech.glide.request.p056a.InterfaceC1055f;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.C1086k;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* renamed from: com.bumptech.glide.request.e */
/* loaded from: classes.dex */
public final class RunnableC1064e<R> implements InterfaceFutureC1061b<R>, InterfaceC1065f<R>, Runnable {

    /* renamed from: a */
    private static final a f3322a = new a();

    /* renamed from: b */
    private final Handler f3323b;

    /* renamed from: c */
    private final int f3324c;

    /* renamed from: d */
    private final int f3325d;

    /* renamed from: e */
    private final boolean f3326e;

    /* renamed from: f */
    private final a f3327f;

    /* renamed from: g */
    @Nullable
    private R f3328g;

    /* renamed from: h */
    @Nullable
    private InterfaceC1062c f3329h;

    /* renamed from: i */
    private boolean f3330i;

    /* renamed from: j */
    private boolean f3331j;

    /* renamed from: k */
    private boolean f3332k;

    /* renamed from: l */
    @Nullable
    private C0920p f3333l;

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.request.e$a */
    /* loaded from: classes.dex */
    static class a {
        a() {
        }

        /* renamed from: a */
        private static void m3275a(Object obj) {
            obj.notifyAll();
        }

        /* renamed from: a */
        private static void m3276a(Object obj, long j) throws InterruptedException {
            obj.wait(j);
        }
    }

    public RunnableC1064e(Handler handler, int i, int i2) {
        this(handler, i, i2, f3322a);
    }

    private RunnableC1064e(Handler handler, int i, int i2, a aVar) {
        this.f3323b = handler;
        this.f3324c = i;
        this.f3325d = i2;
        this.f3326e = true;
        this.f3327f = aVar;
    }

    /* renamed from: a */
    private synchronized R m3271a(Long l) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.f3326e && !isDone()) {
            C1086k.m3492b();
        }
        if (this.f3330i) {
            throw new CancellationException();
        }
        if (this.f3332k) {
            throw new ExecutionException(this.f3333l);
        }
        if (this.f3331j) {
            return this.f3328g;
        }
        if (l == null) {
            wait(0L);
        } else if (l.longValue() > 0) {
            long currentTimeMillis = System.currentTimeMillis();
            long longValue = currentTimeMillis + l.longValue();
            while (!isDone() && currentTimeMillis < longValue) {
                wait(longValue - currentTimeMillis);
                currentTimeMillis = System.currentTimeMillis();
            }
        }
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        if (this.f3332k) {
            throw new ExecutionException(this.f3333l);
        }
        if (this.f3330i) {
            throw new CancellationException();
        }
        if (!this.f3331j) {
            throw new TimeoutException();
        }
        return this.f3328g;
    }

    /* renamed from: a */
    private void m3272a() {
        this.f3323b.post(this);
    }

    @Override // com.bumptech.glide.request.InterfaceC1065f
    /* renamed from: a */
    public final synchronized boolean mo3273a(@Nullable C0920p c0920p, Object obj, Target<R> target, boolean z) {
        this.f3332k = true;
        this.f3333l = c0920p;
        notifyAll();
        return false;
    }

    @Override // com.bumptech.glide.request.InterfaceC1065f
    /* renamed from: a */
    public final synchronized boolean mo3274a(R r, Object obj, Target<R> target, EnumC0849a enumC0849a, boolean z) {
        this.f3331j = true;
        this.f3328g = r;
        notifyAll();
        return false;
    }

    @Override // java.util.concurrent.Future
    public final synchronized boolean cancel(boolean z) {
        if (isDone()) {
            return false;
        }
        this.f3330i = true;
        notifyAll();
        if (z) {
            this.f3323b.post(this);
        }
        return true;
    }

    @Override // java.util.concurrent.Future
    public final R get() throws InterruptedException, ExecutionException {
        try {
            return m3271a(null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.util.concurrent.Future
    public final R get(long j, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return m3271a(Long.valueOf(timeUnit.toMillis(j)));
    }

    @Override // com.bumptech.glide.request.target.Target
    @Nullable
    public final InterfaceC1062c getRequest() {
        return this.f3329h;
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
        sizeReadyCallback.onSizeReady(this.f3324c, this.f3325d);
    }

    @Override // java.util.concurrent.Future
    public final synchronized boolean isCancelled() {
        return this.f3330i;
    }

    @Override // java.util.concurrent.Future
    public final synchronized boolean isDone() {
        boolean z;
        if (!this.f3330i && !this.f3331j) {
            z = this.f3332k;
        }
        return z;
    }

    @Override // com.bumptech.glide.manager.InterfaceC1040i
    public final void onDestroy() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void onLoadCleared(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final synchronized void onLoadFailed(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void onLoadStarted(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final synchronized void onResourceReady(@NonNull R r, @Nullable InterfaceC1055f<? super R> interfaceC1055f) {
    }

    @Override // com.bumptech.glide.manager.InterfaceC1040i
    public final void onStart() {
    }

    @Override // com.bumptech.glide.manager.InterfaceC1040i
    public final void onStop() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f3329h != null) {
            this.f3329h.mo3248b();
            this.f3329h = null;
        }
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void setRequest(@Nullable InterfaceC1062c interfaceC1062c) {
        this.f3329h = interfaceC1062c;
    }
}
