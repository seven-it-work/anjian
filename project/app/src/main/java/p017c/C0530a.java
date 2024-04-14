package p017c;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* renamed from: c.a */
/* loaded from: classes.dex */
public class C0530a extends C0558z {

    /* renamed from: a */
    private static final int f1069a = 65536;

    /* renamed from: b */
    @Nullable
    static C0530a f1070b;

    /* renamed from: d */
    private static final long f1071d = TimeUnit.SECONDS.toMillis(60);

    /* renamed from: e */
    private static final long f1072e = TimeUnit.MILLISECONDS.toNanos(f1071d);

    /* renamed from: f */
    private boolean f1073f;

    /* renamed from: g */
    @Nullable
    private C0530a f1074g;

    /* renamed from: h */
    private long f1075h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c.a$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements InterfaceC0556x {

        /* renamed from: a */
        final /* synthetic */ InterfaceC0556x f1076a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass1(InterfaceC0556x interfaceC0556x) {
            this.f1076a = interfaceC0556x;
        }

        @Override // p017c.InterfaceC0556x
        /* renamed from: a */
        public final void mo114a(C0535c c0535c, long j) throws IOException {
            C0532ab.m1057a(c0535c.f1086c, 0L, j);
            while (true) {
                long j2 = 0;
                if (j <= 0) {
                    return;
                }
                C0553u c0553u = c0535c.f1085b;
                while (true) {
                    if (j2 >= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                        break;
                    }
                    long j3 = j2 + (c0535c.f1085b.f1149e - c0535c.f1085b.f1148d);
                    if (j3 >= j) {
                        j2 = j;
                        break;
                    }
                    j2 = j3;
                }
                C0530a.this.m1050j_();
                try {
                    try {
                        this.f1076a.mo114a(c0535c, j2);
                        C0530a.this.m1048a(true);
                        j -= j2;
                    } catch (IOException e) {
                        throw C0530a.this.m1049b(e);
                    }
                } catch (Throwable th) {
                    C0530a.this.m1048a(false);
                    throw th;
                }
            }
        }

        @Override // p017c.InterfaceC0556x, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            C0530a.this.m1050j_();
            try {
                try {
                    this.f1076a.close();
                    C0530a.this.m1048a(true);
                } catch (IOException e) {
                    throw C0530a.this.m1049b(e);
                }
            } catch (Throwable th) {
                C0530a.this.m1048a(false);
                throw th;
            }
        }

        @Override // p017c.InterfaceC0556x, java.io.Flushable
        public final void flush() throws IOException {
            C0530a.this.m1050j_();
            try {
                try {
                    this.f1076a.flush();
                    C0530a.this.m1048a(true);
                } catch (IOException e) {
                    throw C0530a.this.m1049b(e);
                }
            } catch (Throwable th) {
                C0530a.this.m1048a(false);
                throw th;
            }
        }

        @Override // p017c.InterfaceC0556x
        public final C0558z timeout() {
            return C0530a.this;
        }

        public final String toString() {
            return "AsyncTimeout.sink(" + this.f1076a + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c.a$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements InterfaceC0557y {

        /* renamed from: a */
        final /* synthetic */ InterfaceC0557y f1078a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass2(InterfaceC0557y interfaceC0557y) {
            this.f1078a = interfaceC0557y;
        }

        @Override // p017c.InterfaceC0557y, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            try {
                try {
                    this.f1078a.close();
                    C0530a.this.m1048a(true);
                } catch (IOException e) {
                    throw C0530a.this.m1049b(e);
                }
            } catch (Throwable th) {
                C0530a.this.m1048a(false);
                throw th;
            }
        }

        @Override // p017c.InterfaceC0557y
        public final long read(C0535c c0535c, long j) throws IOException {
            C0530a.this.m1050j_();
            try {
                try {
                    long read = this.f1078a.read(c0535c, j);
                    C0530a.this.m1048a(true);
                    return read;
                } catch (IOException e) {
                    throw C0530a.this.m1049b(e);
                }
            } catch (Throwable th) {
                C0530a.this.m1048a(false);
                throw th;
            }
        }

        @Override // p017c.InterfaceC0557y
        public final C0558z timeout() {
            return C0530a.this;
        }

        public final String toString() {
            return "AsyncTimeout.source(" + this.f1078a + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c.a$a */
    /* loaded from: classes.dex */
    public static final class a extends Thread {
        a() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0015, code lost:
        
            r1.mo406a();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void run() {
            /*
                r3 = this;
            L0:
                java.lang.Class<c.a> r0 = p017c.C0530a.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L0
                c.a r1 = p017c.C0530a.m1047e()     // Catch: java.lang.Throwable -> L19
                if (r1 != 0) goto Lb
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                goto L0
            Lb:
                c.a r2 = p017c.C0530a.f1070b     // Catch: java.lang.Throwable -> L19
                if (r1 != r2) goto L14
                r1 = 0
                p017c.C0530a.f1070b = r1     // Catch: java.lang.Throwable -> L19
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                return
            L14:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                r1.mo406a()     // Catch: java.lang.InterruptedException -> L0
                goto L0
            L19:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                throw r1     // Catch: java.lang.InterruptedException -> L0
            */
            throw new UnsupportedOperationException("Method not decompiled: p017c.C0530a.a.run():void");
        }
    }

    /* renamed from: a */
    private InterfaceC0556x m1042a(InterfaceC0556x interfaceC0556x) {
        return new AnonymousClass1(interfaceC0556x);
    }

    /* renamed from: a */
    private InterfaceC0557y m1043a(InterfaceC0557y interfaceC0557y) {
        return new AnonymousClass2(interfaceC0557y);
    }

    /* renamed from: a */
    private static synchronized void m1044a(C0530a c0530a, long j, boolean z) {
        synchronized (C0530a.class) {
            if (f1070b == null) {
                f1070b = new C0530a();
                new a().start();
            }
            long nanoTime = System.nanoTime();
            if (j != 0 && z) {
                c0530a.f1075h = nanoTime + Math.min(j, c0530a.mo1186c() - nanoTime);
            } else if (j != 0) {
                c0530a.f1075h = nanoTime + j;
            } else {
                if (!z) {
                    throw new AssertionError();
                }
                c0530a.f1075h = c0530a.mo1186c();
            }
            long j2 = c0530a.f1075h - nanoTime;
            C0530a c0530a2 = f1070b;
            while (c0530a2.f1074g != null && j2 >= c0530a2.f1074g.f1075h - nanoTime) {
                c0530a2 = c0530a2.f1074g;
            }
            c0530a.f1074g = c0530a2.f1074g;
            c0530a2.f1074g = c0530a;
            if (c0530a2 == f1070b) {
                C0530a.class.notify();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x000b, code lost:
    
        r1.f1074g = r3.f1074g;
        r3.f1074g = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0012, code lost:
    
        r3 = false;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static synchronized boolean m1045a(p017c.C0530a r3) {
        /*
            java.lang.Class<c.a> r0 = p017c.C0530a.class
            monitor-enter(r0)
            c.a r1 = p017c.C0530a.f1070b     // Catch: java.lang.Throwable -> L1a
        L5:
            if (r1 == 0) goto L18
            c.a r2 = r1.f1074g     // Catch: java.lang.Throwable -> L1a
            if (r2 != r3) goto L15
            c.a r2 = r3.f1074g     // Catch: java.lang.Throwable -> L1a
            r1.f1074g = r2     // Catch: java.lang.Throwable -> L1a
            r1 = 0
            r3.f1074g = r1     // Catch: java.lang.Throwable -> L1a
            r3 = 0
        L13:
            monitor-exit(r0)
            return r3
        L15:
            c.a r1 = r1.f1074g     // Catch: java.lang.Throwable -> L1a
            goto L5
        L18:
            r3 = 1
            goto L13
        L1a:
            r3 = move-exception
            monitor-exit(r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p017c.C0530a.m1045a(c.a):boolean");
    }

    /* renamed from: b */
    private long m1046b(long j) {
        return this.f1075h - j;
    }

    @Nullable
    /* renamed from: e */
    static C0530a m1047e() throws InterruptedException {
        C0530a c0530a = f1070b.f1074g;
        if (c0530a == null) {
            long nanoTime = System.nanoTime();
            C0530a.class.wait(f1071d);
            if (f1070b.f1074g != null || System.nanoTime() - nanoTime < f1072e) {
                return null;
            }
            return f1070b;
        }
        long nanoTime2 = c0530a.f1075h - System.nanoTime();
        if (nanoTime2 > 0) {
            long j = nanoTime2 / 1000000;
            C0530a.class.wait(j, (int) (nanoTime2 - (1000000 * j)));
            return null;
        }
        f1070b.f1074g = c0530a.f1074g;
        c0530a.f1074g = null;
        return c0530a;
    }

    /* renamed from: a */
    protected IOException mo405a(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* renamed from: a */
    protected void mo406a() {
    }

    /* renamed from: a */
    final void m1048a(boolean z) throws IOException {
        if (m1051k_() && z) {
            throw mo405a((IOException) null);
        }
    }

    /* renamed from: b */
    final IOException m1049b(IOException iOException) throws IOException {
        return !m1051k_() ? iOException : mo405a(iOException);
    }

    /* renamed from: j_ */
    public final void m1050j_() {
        if (this.f1073f) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long l_ = mo1189l_();
        boolean m_ = mo1190m_();
        if (l_ != 0 || m_) {
            this.f1073f = true;
            m1044a(this, l_, m_);
        }
    }

    /* renamed from: k_ */
    public final boolean m1051k_() {
        if (!this.f1073f) {
            return false;
        }
        this.f1073f = false;
        return m1045a(this);
    }
}
