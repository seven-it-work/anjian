package p003b.p004a;

/* renamed from: b.a.b */
/* loaded from: classes.dex */
public abstract class AbstractRunnableC0436b implements Runnable {

    /* renamed from: b */
    protected final String f139b;

    public AbstractRunnableC0436b(String str, Object... objArr) {
        this.f139b = C0439c.m138a(str, objArr);
    }

    /* renamed from: b */
    public abstract void mo121b();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f139b);
        try {
            mo121b();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
