package org.greenrobot.eventbus;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.greenrobot.eventbus.p207a.InterfaceC2769d;

/* renamed from: org.greenrobot.eventbus.d */
/* loaded from: classes2.dex */
public final class C2773d {

    /* renamed from: l */
    private static final ExecutorService f10496l = Executors.newCachedThreadPool();

    /* renamed from: e */
    boolean f10501e;

    /* renamed from: g */
    boolean f10503g;

    /* renamed from: h */
    boolean f10504h;

    /* renamed from: j */
    List<Class<?>> f10506j;

    /* renamed from: k */
    List<InterfaceC2769d> f10507k;

    /* renamed from: a */
    boolean f10497a = true;

    /* renamed from: b */
    boolean f10498b = true;

    /* renamed from: c */
    boolean f10499c = true;

    /* renamed from: d */
    boolean f10500d = true;

    /* renamed from: f */
    boolean f10502f = true;

    /* renamed from: i */
    ExecutorService f10505i = f10496l;

    /* renamed from: a */
    private C2772c m12509a() {
        C2772c c2772c;
        synchronized (C2772c.class) {
            if (C2772c.f10469b != null) {
                throw new C2774e("Default instance already exists. It may be only set once before it's used the first time to ensure consistent behavior.");
            }
            c2772c = new C2772c(this);
            C2772c.f10469b = c2772c;
        }
        return c2772c;
    }

    /* renamed from: a */
    private C2773d m12510a(Class<?> cls) {
        if (this.f10506j == null) {
            this.f10506j = new ArrayList();
        }
        this.f10506j.add(cls);
        return this;
    }

    /* renamed from: a */
    private C2773d m12511a(ExecutorService executorService) {
        this.f10505i = executorService;
        return this;
    }

    /* renamed from: a */
    private C2773d m12512a(InterfaceC2769d interfaceC2769d) {
        if (this.f10507k == null) {
            this.f10507k = new ArrayList();
        }
        this.f10507k.add(interfaceC2769d);
        return this;
    }

    /* renamed from: a */
    private C2773d m12513a(boolean z) {
        this.f10497a = z;
        return this;
    }

    /* renamed from: b */
    private C2772c m12514b() {
        return new C2772c(this);
    }

    /* renamed from: b */
    private C2773d m12515b(boolean z) {
        this.f10498b = z;
        return this;
    }

    /* renamed from: c */
    private C2773d m12516c(boolean z) {
        this.f10499c = z;
        return this;
    }

    /* renamed from: d */
    private C2773d m12517d(boolean z) {
        this.f10500d = z;
        return this;
    }

    /* renamed from: e */
    private C2773d m12518e(boolean z) {
        this.f10501e = z;
        return this;
    }

    /* renamed from: f */
    private C2773d m12519f(boolean z) {
        this.f10502f = z;
        return this;
    }

    /* renamed from: g */
    private C2773d m12520g(boolean z) {
        this.f10503g = z;
        return this;
    }

    /* renamed from: h */
    private C2773d m12521h(boolean z) {
        this.f10504h = z;
        return this;
    }
}
