package org.junit.p218b.p222d.p225c;

import java.lang.Thread;
import java.lang.management.ManagementFactory;
import java.lang.management.ThreadMXBean;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import org.junit.p228e.p229a.AbstractC2941j;

/* renamed from: org.junit.b.d.c.c */
/* loaded from: classes2.dex */
public final class C2892c extends AbstractC2941j {

    /* renamed from: a */
    final AbstractC2941j f10762a;

    /* renamed from: b */
    private final TimeUnit f10763b;

    /* renamed from: c */
    private final long f10764c;

    /* renamed from: d */
    private final boolean f10765d;

    /* renamed from: e */
    private volatile ThreadGroup f10766e;

    /* renamed from: org.junit.b.d.c.c$a */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a */
        public boolean f10767a;

        /* renamed from: b */
        long f10768b;

        /* renamed from: c */
        TimeUnit f10769c;

        private a() {
            this.f10767a = false;
            this.f10768b = 0L;
            this.f10769c = TimeUnit.SECONDS;
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        /* renamed from: a */
        private a m12924a(boolean z) {
            this.f10767a = z;
            return this;
        }

        /* renamed from: a */
        public final a m12927a(long j, TimeUnit timeUnit) {
            if (j < 0) {
                throw new IllegalArgumentException("timeout must be non-negative");
            }
            if (timeUnit == null) {
                throw new NullPointerException("TimeUnit cannot be null");
            }
            this.f10768b = j;
            this.f10769c = timeUnit;
            return this;
        }

        /* renamed from: a */
        public final C2892c m12928a(AbstractC2941j abstractC2941j) {
            if (abstractC2941j == null) {
                throw new NullPointerException("statement cannot be null");
            }
            return new C2892c(this, abstractC2941j, (byte) 0);
        }
    }

    /* renamed from: org.junit.b.d.c.c$b */
    /* loaded from: classes2.dex */
    private class b implements Callable<Throwable> {

        /* renamed from: a */
        final CountDownLatch f10770a;

        private b() {
            this.f10770a = new CountDownLatch(1);
        }

        /* synthetic */ b(C2892c c2892c, byte b2) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Throwable call() throws Exception {
            try {
                this.f10770a.countDown();
                C2892c.this.f10762a.mo12846a();
                return null;
            } catch (Exception e) {
                throw e;
            } catch (Throwable th) {
                return th;
            }
        }

        /* renamed from: b */
        private void m12930b() throws InterruptedException {
            this.f10770a.await();
        }
    }

    private C2892c(a aVar, AbstractC2941j abstractC2941j) {
        this.f10766e = null;
        this.f10762a = abstractC2941j;
        this.f10764c = aVar.f10768b;
        this.f10763b = aVar.f10769c;
        this.f10765d = aVar.f10767a;
    }

    /* synthetic */ C2892c(a aVar, AbstractC2941j abstractC2941j, byte b2) {
        this(aVar, abstractC2941j);
    }

    @Deprecated
    private C2892c(AbstractC2941j abstractC2941j, long j) {
        this(m12919b().m12927a(j, TimeUnit.MILLISECONDS), abstractC2941j);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ae A[RETURN] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.Exception m12914a(java.lang.Thread r17) {
        /*
            r16 = this;
            r0 = r16
            java.lang.StackTraceElement[] r1 = r17.getStackTrace()
            boolean r2 = r0.f10765d
            r3 = 2
            r4 = 0
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L6b
            java.lang.ThreadGroup r2 = r0.f10766e
            if (r2 == 0) goto L6b
            java.lang.ThreadGroup r2 = r0.f10766e
            int r7 = r2.activeCount()
            int r7 = r7 * 2
            r8 = 100
            int r7 = java.lang.Math.max(r7, r8)
            r8 = 0
        L21:
            java.lang.Thread[] r9 = new java.lang.Thread[r7]
            int r10 = r2.enumerate(r9)
            if (r10 < r7) goto L31
            int r7 = r7 + 100
            int r8 = r8 + r5
            r9 = 5
            if (r8 < r9) goto L21
            r7 = r4
            goto L42
        L31:
            int r2 = r9.length
            int r2 = java.lang.Math.min(r10, r2)
            java.lang.Thread[] r7 = new java.lang.Thread[r2]
            r8 = 0
        L39:
            if (r8 >= r2) goto L42
            r10 = r9[r8]
            r7[r8] = r10
            int r8 = r8 + 1
            goto L39
        L42:
            if (r7 == 0) goto L6b
            r8 = 0
            int r2 = r7.length
            r10 = r8
            r8 = 0
            r9 = r4
        L4a:
            if (r8 >= r2) goto L65
            r12 = r7[r8]
            java.lang.Thread$State r13 = r12.getState()
            java.lang.Thread$State r14 = java.lang.Thread.State.RUNNABLE
            if (r13 != r14) goto L62
            long r13 = m12922d(r12)
            if (r9 == 0) goto L60
            int r15 = (r13 > r10 ? 1 : (r13 == r10 ? 0 : -1))
            if (r15 <= 0) goto L62
        L60:
            r9 = r12
            r10 = r13
        L62:
            int r8 = r8 + 1
            goto L4a
        L65:
            r8 = r17
            if (r9 == r8) goto L6d
            r4 = r9
            goto L6d
        L6b:
            r8 = r17
        L6d:
            org.junit.e.a.l r2 = new org.junit.e.a.l
            long r9 = r0.f10764c
            java.util.concurrent.TimeUnit r7 = r0.f10763b
            r2.<init>(r9, r7)
            if (r1 == 0) goto L7e
            r2.setStackTrace(r1)
            r17.interrupt()
        L7e:
            if (r4 == 0) goto Lae
            java.lang.Exception r1 = new java.lang.Exception
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r8 = "Appears to be stuck in thread "
            r7.<init>(r8)
            java.lang.String r8 = r4.getName()
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            r1.<init>(r7)
            java.lang.StackTraceElement[] r4 = m12920b(r4)
            r1.setStackTrace(r4)
            org.junit.e.a.f r4 = new org.junit.e.a.f
            java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
            r3[r6] = r2
            r3[r5] = r1
            java.util.List r1 = java.util.Arrays.asList(r3)
            r4.<init>(r1)
            return r4
        Lae:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.junit.p218b.p222d.p225c.C2892c.m12914a(java.lang.Thread):java.lang.Exception");
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0083, code lost:
    
        if (r3 != r19) goto L38;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.Throwable m12915a(java.util.concurrent.FutureTask<java.lang.Throwable> r18, java.lang.Thread r19) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.junit.p218b.p222d.p225c.C2892c.m12915a(java.util.concurrent.FutureTask, java.lang.Thread):java.lang.Throwable");
    }

    /* renamed from: a */
    private static Thread[] m12917a(ThreadGroup threadGroup) {
        int max = Math.max(threadGroup.activeCount() * 2, 100);
        int i = 0;
        do {
            Thread[] threadArr = new Thread[max];
            int enumerate = threadGroup.enumerate(threadArr);
            if (enumerate < max) {
                int min = Math.min(enumerate, threadArr.length);
                Thread[] threadArr2 = new Thread[min];
                for (int i2 = 0; i2 < min; i2++) {
                    threadArr2[i2] = threadArr[i2];
                }
                return threadArr2;
            }
            max += 100;
            i++;
        } while (i < 5);
        return null;
    }

    /* renamed from: a */
    private static Thread[] m12918a(Thread[] threadArr, int i) {
        int min = Math.min(i, threadArr.length);
        Thread[] threadArr2 = new Thread[min];
        for (int i2 = 0; i2 < min; i2++) {
            threadArr2[i2] = threadArr[i2];
        }
        return threadArr2;
    }

    /* renamed from: b */
    public static a m12919b() {
        return new a((byte) 0);
    }

    /* renamed from: b */
    private static StackTraceElement[] m12920b(Thread thread) {
        try {
            return thread.getStackTrace();
        } catch (SecurityException unused) {
            return new StackTraceElement[0];
        }
    }

    /* renamed from: c */
    private Thread m12921c(Thread thread) {
        Thread[] threadArr;
        if (this.f10766e == null) {
            return null;
        }
        ThreadGroup threadGroup = this.f10766e;
        int max = Math.max(threadGroup.activeCount() * 2, 100);
        int i = 0;
        while (true) {
            Thread[] threadArr2 = new Thread[max];
            int enumerate = threadGroup.enumerate(threadArr2);
            if (enumerate >= max) {
                max += 100;
                i++;
                if (i >= 5) {
                    threadArr = null;
                    break;
                }
            } else {
                int min = Math.min(enumerate, threadArr2.length);
                threadArr = new Thread[min];
                for (int i2 = 0; i2 < min; i2++) {
                    threadArr[i2] = threadArr2[i2];
                }
            }
        }
        if (threadArr == null) {
            return null;
        }
        long j = 0;
        Thread thread2 = null;
        for (Thread thread3 : threadArr) {
            if (thread3.getState() == Thread.State.RUNNABLE) {
                long m12922d = m12922d(thread3);
                if (thread2 == null || m12922d > j) {
                    thread2 = thread3;
                    j = m12922d;
                }
            }
        }
        if (thread2 == thread) {
            return null;
        }
        return thread2;
    }

    /* renamed from: d */
    private static long m12922d(Thread thread) {
        ThreadMXBean threadMXBean = ManagementFactory.getThreadMXBean();
        if (!threadMXBean.isThreadCpuTimeSupported()) {
            return 0L;
        }
        try {
            return threadMXBean.getThreadCpuTime(thread.getId());
        } catch (UnsupportedOperationException unused) {
            return 0L;
        }
    }

    @Override // org.junit.p228e.p229a.AbstractC2941j
    /* renamed from: a */
    public final void mo12846a() throws Throwable {
        b bVar = new b(this, (byte) 0);
        FutureTask<Throwable> futureTask = new FutureTask<>(bVar);
        this.f10766e = new ThreadGroup("FailOnTimeoutGroup");
        Thread thread = new Thread(this.f10766e, futureTask, "Time-limited test");
        thread.setDaemon(true);
        thread.start();
        bVar.f10770a.await();
        Throwable m12915a = m12915a(futureTask, thread);
        if (m12915a != null) {
            throw m12915a;
        }
    }
}
