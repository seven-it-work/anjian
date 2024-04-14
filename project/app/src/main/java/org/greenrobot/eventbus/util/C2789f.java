package org.greenrobot.eventbus.util;

/* renamed from: org.greenrobot.eventbus.util.f */
/* loaded from: classes2.dex */
public class C2789f implements InterfaceC2788e {

    /* renamed from: a */
    protected final Throwable f10589a;

    /* renamed from: b */
    protected final boolean f10590b;

    /* renamed from: c */
    Object f10591c;

    private C2789f(Throwable th) {
        this.f10589a = th;
        this.f10590b = false;
    }

    private C2789f(Throwable th, boolean z) {
        this.f10589a = th;
        this.f10590b = z;
    }

    /* renamed from: c */
    private Throwable m12591c() {
        return this.f10589a;
    }

    @Override // org.greenrobot.eventbus.util.InterfaceC2788e
    /* renamed from: a */
    public final Object mo12589a() {
        return this.f10591c;
    }

    @Override // org.greenrobot.eventbus.util.InterfaceC2788e
    /* renamed from: a */
    public final void mo12590a(Object obj) {
        this.f10591c = obj;
    }

    /* renamed from: b */
    public final boolean m12592b() {
        return this.f10590b;
    }
}
