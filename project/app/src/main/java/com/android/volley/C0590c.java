package com.android.volley;

import android.os.Process;
import com.android.volley.InterfaceC0589b;
import java.util.concurrent.BlockingQueue;

/* renamed from: com.android.volley.c */
/* loaded from: classes.dex */
public final class C0590c extends Thread {

    /* renamed from: b */
    private static final boolean f1217b = C0607t.f1296b;

    /* renamed from: a */
    volatile boolean f1218a = false;

    /* renamed from: c */
    private final BlockingQueue<AbstractC0599l<?>> f1219c;

    /* renamed from: d */
    private final BlockingQueue<AbstractC0599l<?>> f1220d;

    /* renamed from: e */
    private final InterfaceC0589b f1221e;

    /* renamed from: f */
    private final InterfaceC0602o f1222f;

    public C0590c(BlockingQueue<AbstractC0599l<?>> blockingQueue, BlockingQueue<AbstractC0599l<?>> blockingQueue2, InterfaceC0589b interfaceC0589b, InterfaceC0602o interfaceC0602o) {
        this.f1219c = blockingQueue;
        this.f1220d = blockingQueue2;
        this.f1221e = interfaceC0589b;
        this.f1222f = interfaceC0602o;
    }

    /* renamed from: a */
    private void m1338a() {
        this.f1218a = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (f1217b) {
            C0607t.m1410a("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f1221e.mo1330a();
        while (true) {
            try {
                final AbstractC0599l<?> take = this.f1219c.take();
                take.m1381a("cache-queue-take");
                if (take.mo1382a()) {
                    take.m1384b("cache-discard-canceled");
                } else {
                    InterfaceC0589b.a mo1329a = this.f1221e.mo1329a(take.f1252b);
                    if (mo1329a == null) {
                        take.m1381a("cache-miss");
                    } else {
                        if (mo1329a.f1214e < System.currentTimeMillis()) {
                            take.m1381a("cache-hit-expired");
                            take.f1261k = mo1329a;
                        } else {
                            take.m1381a("cache-hit");
                            C0601n<?> mo1379a = take.mo1379a(new C0596i(mo1329a.f1210a, mo1329a.f1216g));
                            take.m1381a("cache-hit-parsed");
                            if (mo1329a.f1215f < System.currentTimeMillis()) {
                                take.m1381a("cache-hit-refresh-needed");
                                take.f1261k = mo1329a;
                                mo1379a.f1294d = true;
                                this.f1222f.mo1345a(take, mo1379a, new Runnable() { // from class: com.android.volley.c.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        try {
                                            C0590c.this.f1220d.put(take);
                                        } catch (InterruptedException unused) {
                                        }
                                    }
                                });
                            } else {
                                this.f1222f.mo1344a(take, mo1379a);
                            }
                        }
                    }
                    this.f1220d.put(take);
                }
            } catch (InterruptedException unused) {
                if (this.f1218a) {
                    return;
                }
            }
        }
    }
}
