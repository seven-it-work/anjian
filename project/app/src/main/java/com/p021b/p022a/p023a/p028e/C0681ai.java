package com.p021b.p022a.p023a.p028e;

import java.util.concurrent.CountDownLatch;

/* renamed from: com.b.a.a.e.ai */
/* loaded from: classes.dex */
final class C0681ai {

    /* renamed from: a */
    private final CountDownLatch f1603a = new CountDownLatch(1);

    /* renamed from: b */
    private long f1604b = -1;

    /* renamed from: c */
    private long f1605c = -1;

    C0681ai() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1712a() {
        if (this.f1604b != -1) {
            throw new IllegalStateException();
        }
        this.f1604b = System.nanoTime();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m1713b() {
        if (this.f1605c != -1 || this.f1604b == -1) {
            throw new IllegalStateException();
        }
        this.f1605c = System.nanoTime();
        this.f1603a.countDown();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m1714c() {
        if (this.f1605c != -1 || this.f1604b == -1) {
            throw new IllegalStateException();
        }
        this.f1605c = this.f1604b - 1;
        this.f1603a.countDown();
    }
}
