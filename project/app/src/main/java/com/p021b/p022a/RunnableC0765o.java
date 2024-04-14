package com.p021b.p022a;

/* renamed from: com.b.a.o */
/* loaded from: classes.dex */
final class RunnableC0765o implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0764n f2085a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0765o(C0764n c0764n) {
        this.f2085a = c0764n;
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (true) {
            long m1966a = this.f2085a.m1966a(System.nanoTime());
            if (m1966a == -1) {
                return;
            }
            if (m1966a > 0) {
                long j = m1966a / 1000000;
                long j2 = m1966a - (1000000 * j);
                synchronized (this.f2085a) {
                    try {
                        this.f2085a.wait(j, (int) j2);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
    }
}
