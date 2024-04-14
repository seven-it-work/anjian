package org.greenrobot.eventbus;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.greenrobot.eventbus.a */
/* loaded from: classes2.dex */
public final class RunnableC2765a implements Runnable {

    /* renamed from: a */
    final C2778i f10454a = new C2778i();

    /* renamed from: b */
    final C2772c f10455b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2765a(C2772c c2772c) {
        this.f10455b = c2772c;
    }

    /* renamed from: a */
    private void m12471a(C2783n c2783n, Object obj) {
        this.f10454a.m12526a(C2777h.m12523a(c2783n, obj));
        this.f10455b.f10472c.execute(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2777h m12525a = this.f10454a.m12525a();
        if (m12525a == null) {
            throw new IllegalStateException("No pending post available");
        }
        this.f10455b.m12504a(m12525a);
    }
}
