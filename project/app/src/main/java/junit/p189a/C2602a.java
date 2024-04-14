package junit.p189a;

import junit.p190b.AbstractC2615j;
import junit.p190b.C2618m;
import junit.p190b.C2619n;
import junit.p190b.InterfaceC2614i;

/* renamed from: junit.a.a */
/* loaded from: classes.dex */
public final class C2602a extends C2619n {

    /* renamed from: c */
    private volatile int f10053c;

    public C2602a() {
    }

    private C2602a(Class<? extends AbstractC2615j> cls) {
        super(cls);
    }

    private C2602a(Class<? extends AbstractC2615j> cls, String str) {
        super(cls, str);
    }

    private C2602a(String str) {
        super(str);
    }

    /* renamed from: b */
    private synchronized void m11677b() {
        while (this.f10053c < this.f10086b.size()) {
            try {
                wait();
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    @Override // junit.p190b.C2619n
    /* renamed from: a */
    public final void mo11678a(final InterfaceC2614i interfaceC2614i, final C2618m c2618m) {
        new Thread() { // from class: junit.a.a.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                try {
                    interfaceC2614i.mo11679a(c2618m);
                } finally {
                    C2602a.this.m11680i_();
                }
            }
        }.start();
    }

    @Override // junit.p190b.C2619n, junit.p190b.InterfaceC2614i
    /* renamed from: a */
    public final void mo11679a(C2618m c2618m) {
        this.f10053c = 0;
        super.mo11679a(c2618m);
        m11677b();
    }

    /* renamed from: i_ */
    public final synchronized void m11680i_() {
        this.f10053c++;
        notifyAll();
    }
}
