package com.p021b.p022a.p023a;

import java.util.concurrent.ThreadFactory;

/* renamed from: com.b.a.a.d */
/* loaded from: classes.dex */
final class ThreadFactoryC0664d implements ThreadFactory {

    /* renamed from: a */
    final /* synthetic */ String f1538a;

    /* renamed from: b */
    final /* synthetic */ boolean f1539b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ThreadFactoryC0664d(String str, boolean z) {
        this.f1538a = str;
        this.f1539b = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.f1538a);
        thread.setDaemon(this.f1539b);
        return thread;
    }
}
