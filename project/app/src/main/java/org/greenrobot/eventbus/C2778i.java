package org.greenrobot.eventbus;

/* renamed from: org.greenrobot.eventbus.i */
/* loaded from: classes2.dex */
final class C2778i {

    /* renamed from: a */
    private C2777h f10518a;

    /* renamed from: b */
    private C2777h f10519b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final synchronized C2777h m12525a() {
        C2777h c2777h;
        c2777h = this.f10518a;
        if (this.f10518a != null) {
            this.f10518a = this.f10518a.f10517c;
            if (this.f10518a == null) {
                this.f10519b = null;
            }
        }
        return c2777h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final synchronized void m12526a(C2777h c2777h) {
        try {
            if (c2777h == null) {
                throw new NullPointerException("null cannot be enqueued");
            }
            if (this.f10519b != null) {
                this.f10519b.f10517c = c2777h;
                this.f10519b = c2777h;
            } else {
                if (this.f10518a != null) {
                    throw new IllegalStateException("Head present, but no tail");
                }
                this.f10519b = c2777h;
                this.f10518a = c2777h;
            }
            notifyAll();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final synchronized C2777h m12527b() throws InterruptedException {
        if (this.f10518a == null) {
            wait(1000L);
        }
        return m12525a();
    }
}
