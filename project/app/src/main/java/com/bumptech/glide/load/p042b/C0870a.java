package com.bumptech.glide.load.p042b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.p042b.C0919o;
import com.bumptech.glide.util.C1084i;
import com.bumptech.glide.util.C1086k;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* renamed from: com.bumptech.glide.load.b.a */
/* loaded from: classes.dex */
public final class C0870a {

    /* renamed from: h */
    private static final int f2482h = 1;

    /* renamed from: a */
    final Handler f2483a = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.bumptech.glide.load.b.a.1
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            C0870a.this.m2436a((b) message.obj);
            return true;
        }
    });

    /* renamed from: b */
    @VisibleForTesting
    public final Map<InterfaceC1022g, b> f2484b = new HashMap();

    /* renamed from: c */
    C0919o.a f2485c;

    /* renamed from: d */
    @Nullable
    ReferenceQueue<C0919o<?>> f2486d;

    /* renamed from: e */
    @Nullable
    public Thread f2487e;

    /* renamed from: f */
    public volatile boolean f2488f;

    /* renamed from: g */
    @Nullable
    volatile a f2489g;

    /* renamed from: i */
    private final boolean f2490i;

    /* renamed from: com.bumptech.glide.load.b.a$2, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Process.setThreadPriority(10);
            C0870a c0870a = C0870a.this;
            while (!c0870a.f2488f) {
                try {
                    c0870a.f2483a.obtainMessage(1, (b) c0870a.f2486d.remove()).sendToTarget();
                    a aVar = c0870a.f2489g;
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.b.a$a */
    /* loaded from: classes.dex */
    interface a {
        /* renamed from: a */
        void m2442a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.b.a$b */
    /* loaded from: classes.dex */
    public static final class b extends WeakReference<C0919o<?>> {

        /* renamed from: a */
        final InterfaceC1022g f2494a;

        /* renamed from: b */
        final boolean f2495b;

        /* renamed from: c */
        @Nullable
        InterfaceC0925u<?> f2496c;

        b(@NonNull InterfaceC1022g interfaceC1022g, @NonNull C0919o<?> c0919o, @NonNull ReferenceQueue<? super C0919o<?>> referenceQueue, boolean z) {
            super(c0919o, referenceQueue);
            this.f2494a = (InterfaceC1022g) C1084i.m3470a(interfaceC1022g, "Argument must not be null");
            this.f2496c = (c0919o.f2818a && z) ? (InterfaceC0925u) C1084i.m3470a(c0919o.f2819b, "Argument must not be null") : null;
            this.f2495b = c0919o.f2818a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m2449a() {
            this.f2496c = null;
            clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0870a(boolean z) {
        this.f2490i = z;
    }

    /* renamed from: a */
    private ReferenceQueue<C0919o<?>> m2429a() {
        if (this.f2486d == null) {
            this.f2486d = new ReferenceQueue<>();
            this.f2487e = new Thread(new AnonymousClass2(), "glide-active-resources");
            this.f2487e.start();
        }
        return this.f2486d;
    }

    @VisibleForTesting
    /* renamed from: a */
    private void m2430a(a aVar) {
        this.f2489g = aVar;
    }

    /* renamed from: a */
    private void m2431a(C0919o.a aVar) {
        this.f2485c = aVar;
    }

    /* renamed from: a */
    private void m2432a(InterfaceC1022g interfaceC1022g) {
        b remove = this.f2484b.remove(interfaceC1022g);
        if (remove != null) {
            remove.m2449a();
        }
    }

    @Nullable
    /* renamed from: b */
    private C0919o<?> m2433b(InterfaceC1022g interfaceC1022g) {
        b bVar = this.f2484b.get(interfaceC1022g);
        if (bVar == null) {
            return null;
        }
        C0919o<?> c0919o = (C0919o) bVar.get();
        if (c0919o == null) {
            m2436a(bVar);
        }
        return c0919o;
    }

    /* renamed from: b */
    private void m2434b() {
        while (!this.f2488f) {
            try {
                this.f2483a.obtainMessage(1, (b) this.f2486d.remove()).sendToTarget();
                a aVar = this.f2489g;
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    @VisibleForTesting
    /* renamed from: c */
    private void m2435c() {
        this.f2488f = true;
        if (this.f2487e == null) {
            return;
        }
        this.f2487e.interrupt();
        try {
            this.f2487e.join(TimeUnit.SECONDS.toMillis(5L));
            if (this.f2487e.isAlive()) {
                throw new RuntimeException("Failed to join in time");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    /* renamed from: a */
    public final void m2436a(@NonNull b bVar) {
        C1086k.m3485a();
        this.f2484b.remove(bVar.f2494a);
        if (!bVar.f2495b || bVar.f2496c == null) {
            return;
        }
        C0919o<?> c0919o = new C0919o<>(bVar.f2496c, true, false);
        c0919o.m2723a(bVar.f2494a, this.f2485c);
        this.f2485c.mo2695a(bVar.f2494a, c0919o);
    }

    /* renamed from: a */
    public final void m2437a(InterfaceC1022g interfaceC1022g, C0919o<?> c0919o) {
        if (this.f2486d == null) {
            this.f2486d = new ReferenceQueue<>();
            this.f2487e = new Thread(new AnonymousClass2(), "glide-active-resources");
            this.f2487e.start();
        }
        b put = this.f2484b.put(interfaceC1022g, new b(interfaceC1022g, c0919o, this.f2486d, this.f2490i));
        if (put != null) {
            put.m2449a();
        }
    }
}
