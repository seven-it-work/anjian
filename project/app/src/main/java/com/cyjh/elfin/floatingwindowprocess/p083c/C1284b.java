package com.cyjh.elfin.floatingwindowprocess.p083c;

/* renamed from: com.cyjh.elfin.floatingwindowprocess.c.b */
/* loaded from: classes.dex */
public class C1284b {

    /* renamed from: c */
    private static C1284b f4845c;

    /* renamed from: a */
    public boolean f4846a = false;

    /* renamed from: b */
    public a f4847b;

    /* renamed from: com.cyjh.elfin.floatingwindowprocess.c.b$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo5913a();

        /* renamed from: b */
        void mo5914b();
    }

    /* renamed from: a */
    public static C1284b m5947a() {
        if (f4845c == null) {
            synchronized (C1284b.class) {
                if (f4845c == null) {
                    f4845c = new C1284b();
                }
            }
        }
        return f4845c;
    }

    /* renamed from: a */
    private void m5948a(int i) {
        if (i == 2) {
            this.f4846a = true;
            if (this.f4847b != null) {
                this.f4847b.mo5913a();
                return;
            }
            return;
        }
        if (i == 1) {
            this.f4846a = false;
            if (this.f4847b != null) {
                this.f4847b.mo5914b();
            }
        }
    }

    /* renamed from: a */
    private void m5949a(a aVar) {
        this.f4847b = aVar;
    }

    /* renamed from: b */
    private boolean m5950b() {
        return this.f4846a;
    }

    /* renamed from: c */
    private void m5951c() {
        this.f4847b = null;
    }
}
