package com.android.volley.toolbox;

import com.android.volley.AbstractC0599l;
import com.android.volley.C0601n;
import com.android.volley.C0606s;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* renamed from: com.android.volley.toolbox.r */
/* loaded from: classes.dex */
public final class FutureC0627r<T> implements C0601n.a, C0601n.b<T>, Future<T> {

    /* renamed from: a */
    private AbstractC0599l<?> f1394a;

    /* renamed from: b */
    private boolean f1395b = false;

    /* renamed from: c */
    private T f1396c;

    /* renamed from: d */
    private C0606s f1397d;

    private FutureC0627r() {
    }

    /* renamed from: a */
    private static <E> FutureC0627r<E> m1514a() {
        return new FutureC0627r<>();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002e A[Catch: all -> 0x0044, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0005, B:6:0x000c, B:8:0x000d, B:10:0x0011, B:15:0x0019, B:16:0x002a, B:18:0x002e, B:19:0x0035, B:20:0x0036, B:22:0x003a, B:23:0x003f, B:24:0x0040, B:27:0x001d, B:29:0x0025), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0036 A[Catch: all -> 0x0044, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0005, B:6:0x000c, B:8:0x000d, B:10:0x0011, B:15:0x0019, B:16:0x002a, B:18:0x002e, B:19:0x0035, B:20:0x0036, B:22:0x003a, B:23:0x003f, B:24:0x0040, B:27:0x001d, B:29:0x0025), top: B:2:0x0001 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private synchronized T m1515a(java.lang.Long r6) throws java.lang.InterruptedException, java.util.concurrent.ExecutionException, java.util.concurrent.TimeoutException {
        /*
            r5 = this;
            monitor-enter(r5)
            com.android.volley.s r0 = r5.f1397d     // Catch: java.lang.Throwable -> L44
            if (r0 == 0) goto Ld
            java.util.concurrent.ExecutionException r6 = new java.util.concurrent.ExecutionException     // Catch: java.lang.Throwable -> L44
            com.android.volley.s r0 = r5.f1397d     // Catch: java.lang.Throwable -> L44
            r6.<init>(r0)     // Catch: java.lang.Throwable -> L44
            throw r6     // Catch: java.lang.Throwable -> L44
        Ld:
            boolean r0 = r5.f1395b     // Catch: java.lang.Throwable -> L44
            if (r0 == 0) goto L15
            T r6 = r5.f1396c     // Catch: java.lang.Throwable -> L44
            monitor-exit(r5)
            return r6
        L15:
            r0 = 0
            if (r6 != 0) goto L1d
        L19:
            r5.wait(r0)     // Catch: java.lang.Throwable -> L44
            goto L2a
        L1d:
            long r2 = r6.longValue()     // Catch: java.lang.Throwable -> L44
            int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r4 <= 0) goto L2a
            long r0 = r6.longValue()     // Catch: java.lang.Throwable -> L44
            goto L19
        L2a:
            com.android.volley.s r6 = r5.f1397d     // Catch: java.lang.Throwable -> L44
            if (r6 == 0) goto L36
            java.util.concurrent.ExecutionException r6 = new java.util.concurrent.ExecutionException     // Catch: java.lang.Throwable -> L44
            com.android.volley.s r0 = r5.f1397d     // Catch: java.lang.Throwable -> L44
            r6.<init>(r0)     // Catch: java.lang.Throwable -> L44
            throw r6     // Catch: java.lang.Throwable -> L44
        L36:
            boolean r6 = r5.f1395b     // Catch: java.lang.Throwable -> L44
            if (r6 != 0) goto L40
            java.util.concurrent.TimeoutException r6 = new java.util.concurrent.TimeoutException     // Catch: java.lang.Throwable -> L44
            r6.<init>()     // Catch: java.lang.Throwable -> L44
            throw r6     // Catch: java.lang.Throwable -> L44
        L40:
            T r6 = r5.f1396c     // Catch: java.lang.Throwable -> L44
            monitor-exit(r5)
            return r6
        L44:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.volley.toolbox.FutureC0627r.m1515a(java.lang.Long):java.lang.Object");
    }

    /* renamed from: a */
    private void m1516a(AbstractC0599l<?> abstractC0599l) {
        this.f1394a = abstractC0599l;
    }

    @Override // com.android.volley.C0601n.a
    /* renamed from: a */
    public final synchronized void mo1407a(C0606s c0606s) {
        this.f1397d = c0606s;
        notifyAll();
    }

    @Override // com.android.volley.C0601n.b
    /* renamed from: a */
    public final synchronized void mo1408a(T t) {
        this.f1395b = true;
        this.f1396c = t;
        notifyAll();
    }

    @Override // java.util.concurrent.Future
    public final synchronized boolean cancel(boolean z) {
        if (this.f1394a == null) {
            return false;
        }
        if (isDone()) {
            return false;
        }
        this.f1394a.f1258h = true;
        return true;
    }

    @Override // java.util.concurrent.Future
    public final T get() throws InterruptedException, ExecutionException {
        try {
            return m1515a((Long) null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.util.concurrent.Future
    public final T get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return m1515a(Long.valueOf(TimeUnit.MILLISECONDS.convert(j, timeUnit)));
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        if (this.f1394a == null) {
            return false;
        }
        return this.f1394a.mo1382a();
    }

    @Override // java.util.concurrent.Future
    public final synchronized boolean isDone() {
        boolean z;
        if (!this.f1395b && this.f1397d == null) {
            z = isCancelled();
        }
        return z;
    }
}
