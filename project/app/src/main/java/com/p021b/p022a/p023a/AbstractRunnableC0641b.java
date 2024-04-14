package com.p021b.p022a.p023a;

/* renamed from: com.b.a.a.b */
/* loaded from: classes.dex */
public abstract class AbstractRunnableC0641b implements Runnable {

    /* renamed from: b */
    protected final String f1455b;

    public AbstractRunnableC0641b(String str, Object... objArr) {
        this.f1455b = C0650c.m1606a(str, objArr);
    }

    /* renamed from: b */
    public abstract void mo1558b();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f1455b);
        try {
            mo1558b();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
