package org.jdeferred.p208a;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* renamed from: org.jdeferred.a.g */
/* loaded from: classes2.dex */
public final class CallableC2797g<V> implements Callable<V> {

    /* renamed from: a */
    private final Future<V> f10617a;

    private CallableC2797g(Future<V> future) {
        this.f10617a = future;
    }

    @Override // java.util.concurrent.Callable
    public final V call() throws Exception {
        try {
            return this.f10617a.get();
        } catch (InterruptedException e) {
            throw e;
        } catch (ExecutionException e2) {
            if (e2.getCause() instanceof Exception) {
                throw ((Exception) e2.getCause());
            }
            throw e2;
        }
    }
}
