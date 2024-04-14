package p003b.p004a.p010f;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* renamed from: b.a.f.l */
/* loaded from: classes.dex */
final class C0472l {

    /* renamed from: a */
    final CountDownLatch f477a = new CountDownLatch(1);

    /* renamed from: b */
    long f478b = -1;

    /* renamed from: c */
    long f479c = -1;

    /* renamed from: a */
    private long m433a(long j, TimeUnit timeUnit) throws InterruptedException {
        if (this.f477a.await(j, timeUnit)) {
            return this.f479c - this.f478b;
        }
        return -2L;
    }

    /* renamed from: a */
    private void m434a() {
        if (this.f478b != -1) {
            throw new IllegalStateException();
        }
        this.f478b = System.nanoTime();
    }

    /* renamed from: b */
    private void m435b() {
        if (this.f479c != -1 || this.f478b == -1) {
            throw new IllegalStateException();
        }
        this.f479c = System.nanoTime();
        this.f477a.countDown();
    }

    /* renamed from: c */
    private void m436c() {
        if (this.f479c != -1 || this.f478b == -1) {
            throw new IllegalStateException();
        }
        this.f479c = this.f478b - 1;
        this.f477a.countDown();
    }

    /* renamed from: d */
    private long m437d() throws InterruptedException {
        this.f477a.await();
        return this.f479c - this.f478b;
    }
}
