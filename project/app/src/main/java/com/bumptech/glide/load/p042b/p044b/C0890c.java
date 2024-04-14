package com.bumptech.glide.load.p042b.p044b;

import com.bumptech.glide.util.C1084i;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: com.bumptech.glide.load.b.b.c */
/* loaded from: classes.dex */
final class C0890c {

    /* renamed from: a */
    final Map<String, a> f2568a = new HashMap();

    /* renamed from: b */
    final b f2569b = new b();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.b.b.c$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        final Lock f2570a = new ReentrantLock();

        /* renamed from: b */
        int f2571b;

        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.b.b.c$b */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: b */
        private static final int f2572b = 10;

        /* renamed from: a */
        final Queue<a> f2573a = new ArrayDeque();

        b() {
        }

        /* renamed from: a */
        private void m2537a(a aVar) {
            synchronized (this.f2573a) {
                if (this.f2573a.size() < 10) {
                    this.f2573a.offer(aVar);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final a m2538a() {
            a poll;
            synchronized (this.f2573a) {
                poll = this.f2573a.poll();
            }
            return poll == null ? new a() : poll;
        }
    }

    /* renamed from: b */
    private void m2535b(String str) {
        a aVar;
        synchronized (this) {
            aVar = this.f2568a.get(str);
            if (aVar == null) {
                aVar = this.f2569b.m2538a();
                this.f2568a.put(str, aVar);
            }
            aVar.f2571b++;
        }
        aVar.f2570a.lock();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m2536a(String str) {
        a aVar;
        synchronized (this) {
            aVar = (a) C1084i.m3470a(this.f2568a.get(str), "Argument must not be null");
            if (aVar.f2571b <= 0) {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + aVar.f2571b);
            }
            aVar.f2571b--;
            if (aVar.f2571b == 0) {
                a remove = this.f2568a.remove(str);
                if (!remove.equals(aVar)) {
                    throw new IllegalStateException("Removed the wrong lock, expected to remove: " + aVar + ", but actually removed: " + remove + ", safeKey: " + str);
                }
                b bVar = this.f2569b;
                synchronized (bVar.f2573a) {
                    if (bVar.f2573a.size() < 10) {
                        bVar.f2573a.offer(remove);
                    }
                }
            }
        }
        aVar.f2570a.unlock();
    }
}
