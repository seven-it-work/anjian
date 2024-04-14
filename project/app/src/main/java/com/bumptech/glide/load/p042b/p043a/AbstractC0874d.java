package com.bumptech.glide.load.p042b.p043a;

import com.bumptech.glide.load.p042b.p043a.InterfaceC0883m;
import com.bumptech.glide.util.C1086k;
import java.util.Queue;

/* renamed from: com.bumptech.glide.load.b.a.d */
/* loaded from: classes.dex */
abstract class AbstractC0874d<T extends InterfaceC0883m> {

    /* renamed from: a */
    private static final int f2503a = 20;

    /* renamed from: b */
    private final Queue<T> f2504b = C1086k.m3484a(20);

    /* renamed from: a */
    abstract T mo2462a();

    /* renamed from: a */
    public final void m2463a(T t) {
        if (this.f2504b.size() < 20) {
            this.f2504b.offer(t);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final T m2464b() {
        T poll = this.f2504b.poll();
        return poll == null ? mo2462a() : poll;
    }
}
