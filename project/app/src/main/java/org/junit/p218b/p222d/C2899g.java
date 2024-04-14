package org.junit.p218b.p222d;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.junit.InterfaceC2830a;
import org.junit.InterfaceC2954f;
import org.junit.InterfaceC2965k;
import org.junit.InterfaceC2967m;
import org.junit.p218b.C2872b;
import org.junit.p228e.p229a.C2943l;
import org.junit.runner.C2980c;
import org.junit.runner.p233b.C2975a;
import org.junit.runner.p233b.C2977c;

@Deprecated
/* renamed from: org.junit.b.d.g */
/* loaded from: classes2.dex */
public final class C2899g {

    /* renamed from: a */
    final C2977c f10788a;

    /* renamed from: b */
    final C2980c f10789b;

    /* renamed from: c */
    C2903k f10790c;

    /* renamed from: d */
    private final Object f10791d;

    /* renamed from: org.junit.b.d.g$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    final class AnonymousClass1 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ long f10792a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass1(long j) {
            this.f10792a = j;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
            Future submit = newSingleThreadExecutor.submit(new Callable<Object>() { // from class: org.junit.b.d.g.1.1
                @Override // java.util.concurrent.Callable
                public final Object call() throws Exception {
                    C2899g.this.m12959a();
                    return null;
                }
            });
            newSingleThreadExecutor.shutdown();
            try {
                if (!newSingleThreadExecutor.awaitTermination(this.f10792a, TimeUnit.MILLISECONDS)) {
                    newSingleThreadExecutor.shutdownNow();
                }
                submit.get(0L, TimeUnit.MILLISECONDS);
            } catch (TimeoutException unused) {
                C2899g.this.m12961a(new C2943l(this.f10792a, TimeUnit.MILLISECONDS));
            } catch (Exception e) {
                C2899g.this.m12961a(e);
            }
        }
    }

    /* renamed from: org.junit.b.d.g$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    final class AnonymousClass2 implements Runnable {
        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C2899g.this.m12959a();
        }
    }

    public C2899g(Object obj, C2903k c2903k, C2977c c2977c, C2980c c2980c) {
        this.f10791d = obj;
        this.f10788a = c2977c;
        this.f10789b = c2980c;
        this.f10790c = c2903k;
    }

    /* renamed from: a */
    private void m12954a(long j) {
        m12960a(new AnonymousClass1(j));
    }

    /* renamed from: b */
    private void m12955b() {
        if (this.f10790c.f10799a.getAnnotation(InterfaceC2965k.class) != null) {
            this.f10788a.m13371b(this.f10789b);
            return;
        }
        this.f10788a.m13369a(this.f10789b);
        try {
            InterfaceC2967m interfaceC2967m = (InterfaceC2967m) this.f10790c.f10799a.getAnnotation(InterfaceC2967m.class);
            long m13336b = interfaceC2967m == null ? 0L : interfaceC2967m.m13336b();
            m12960a(m13336b > 0 ? new AnonymousClass1(m13336b) : new AnonymousClass2());
        } finally {
            this.f10788a.m13372c(this.f10789b);
        }
    }

    /* renamed from: c */
    private void m12956c() {
        m12960a(new AnonymousClass2());
    }

    /* renamed from: d */
    private void m12957d() throws C2889c {
        try {
            try {
                Iterator<Method> it = this.f10790c.f10800b.m12979a(InterfaceC2954f.class).iterator();
                while (it.hasNext()) {
                    it.next().invoke(this.f10791d, new Object[0]);
                }
            } catch (C2872b unused) {
                throw new C2889c();
            } catch (Throwable th) {
                m12961a(th);
                throw new C2889c();
            }
        } catch (InvocationTargetException e) {
            throw e.getTargetException();
        }
    }

    /* renamed from: e */
    private void m12958e() {
        Iterator<Method> it = this.f10790c.f10800b.m12979a(InterfaceC2830a.class).iterator();
        while (it.hasNext()) {
            try {
                it.next().invoke(this.f10791d, new Object[0]);
            } catch (InvocationTargetException e) {
                th = e.getTargetException();
                m12961a(th);
            } catch (Throwable th) {
                th = th;
                m12961a(th);
            }
        }
    }

    /* renamed from: a */
    protected final void m12959a() {
        try {
            this.f10790c.f10799a.invoke(this.f10791d, new Object[0]);
            if (this.f10790c.m12987b()) {
                m12961a(new AssertionError("Expected exception: " + this.f10790c.m12985a().getName()));
            }
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof C2872b) {
                return;
            }
            if (!this.f10790c.m12987b()) {
                m12961a(targetException);
                return;
            }
            if (this.f10790c.m12986a(targetException)) {
                m12961a(new Exception("Unexpected exception, expected<" + this.f10790c.m12985a().getName() + "> but was<" + targetException.getClass().getName() + ">", targetException));
            }
        } catch (Throwable th) {
            m12961a(th);
        }
    }

    /* renamed from: a */
    public final void m12960a(Runnable runnable) {
        try {
            try {
                try {
                    try {
                        Iterator<Method> it = this.f10790c.f10800b.m12979a(InterfaceC2954f.class).iterator();
                        while (it.hasNext()) {
                            it.next().invoke(this.f10791d, new Object[0]);
                        }
                        runnable.run();
                        m12958e();
                    } catch (C2889c unused) {
                        m12958e();
                    } catch (Exception unused2) {
                        throw new RuntimeException("test should never throw an exception to this level");
                    }
                } catch (C2872b unused3) {
                    throw new C2889c();
                } catch (Throwable th) {
                    m12961a(th);
                    throw new C2889c();
                }
            } catch (InvocationTargetException e) {
                throw e.getTargetException();
            }
        } catch (Throwable th2) {
            m12958e();
            throw th2;
        }
    }

    /* renamed from: a */
    protected final void m12961a(Throwable th) {
        this.f10788a.m13367a(new C2975a(this.f10789b, th));
    }
}
