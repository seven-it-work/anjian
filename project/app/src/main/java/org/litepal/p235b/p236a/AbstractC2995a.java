package org.litepal.p235b.p236a;

/* renamed from: org.litepal.b.a.a */
/* loaded from: classes2.dex */
public abstract class AbstractC2995a {

    /* renamed from: a */
    public Runnable f10995a;

    /* renamed from: a */
    private void m13454a(Runnable runnable) {
        this.f10995a = runnable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m13455a() {
        if (this.f10995a != null) {
            new Thread(this.f10995a).start();
        }
    }
}
