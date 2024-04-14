package com.p021b.p022a.p023a.p024a;

/* renamed from: com.b.a.a.a.g */
/* loaded from: classes.dex */
public final class C0638g {

    /* renamed from: a */
    final C0639h f1446a;

    /* renamed from: b */
    final /* synthetic */ C0637f f1447b;

    /* renamed from: c */
    private boolean f1448c;

    /* renamed from: a */
    public final void m1554a() {
        synchronized (this.f1447b) {
            if (this.f1448c) {
                throw new IllegalStateException();
            }
            if (this.f1446a.f1454f == this) {
                this.f1447b.m1553a(this);
            }
            this.f1448c = true;
        }
    }
}
