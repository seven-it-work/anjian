package com.android.volley;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

/* renamed from: com.android.volley.g */
/* loaded from: classes.dex */
public final class C0594g extends Thread {

    /* renamed from: a */
    volatile boolean f1239a = false;

    /* renamed from: b */
    private final BlockingQueue<AbstractC0599l<?>> f1240b;

    /* renamed from: c */
    private final InterfaceC0593f f1241c;

    /* renamed from: d */
    private final InterfaceC0589b f1242d;

    /* renamed from: e */
    private final InterfaceC0602o f1243e;

    public C0594g(BlockingQueue<AbstractC0599l<?>> blockingQueue, InterfaceC0593f interfaceC0593f, InterfaceC0589b interfaceC0589b, InterfaceC0602o interfaceC0602o) {
        this.f1240b = blockingQueue;
        this.f1241c = interfaceC0593f;
        this.f1242d = interfaceC0589b;
        this.f1243e = interfaceC0602o;
    }

    /* renamed from: a */
    private void m1348a() {
        this.f1239a = true;
        interrupt();
    }

    @TargetApi(14)
    /* renamed from: a */
    private static void m1349a(AbstractC0599l<?> abstractC0599l) {
        if (Build.VERSION.SDK_INT >= 14) {
            TrafficStats.setThreadStatsTag(abstractC0599l.f1253c);
        }
    }

    /* renamed from: a */
    private void m1350a(AbstractC0599l<?> abstractC0599l, C0606s c0606s) {
        this.f1243e.mo1346a(abstractC0599l, AbstractC0599l.m1355a(c0606s));
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        AbstractC0599l<?> take;
        String str;
        Process.setThreadPriority(10);
        while (true) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            try {
                take = this.f1240b.take();
                try {
                    take.m1381a("network-queue-take");
                } catch (C0606s e) {
                    e.setNetworkTimeMs(SystemClock.elapsedRealtime() - elapsedRealtime);
                    this.f1243e.mo1346a(take, AbstractC0599l.m1355a(e));
                } catch (Exception e2) {
                    C0607t.m1411a(e2, "Unhandled exception %s", e2.toString());
                    C0606s c0606s = new C0606s(e2);
                    c0606s.setNetworkTimeMs(SystemClock.elapsedRealtime() - elapsedRealtime);
                    this.f1243e.mo1346a(take, c0606s);
                }
            } catch (InterruptedException unused) {
                if (this.f1239a) {
                    return;
                }
            }
            if (take.mo1382a()) {
                str = "network-discard-cancelled";
            } else {
                if (Build.VERSION.SDK_INT >= 14) {
                    TrafficStats.setThreadStatsTag(take.f1253c);
                }
                C0596i mo1347a = this.f1241c.mo1347a(take);
                take.m1381a("network-http-complete");
                if (mo1347a.f1247d && take.f1259i) {
                    str = "not-modified";
                } else {
                    C0601n<?> mo1379a = take.mo1379a(mo1347a);
                    take.m1381a("network-parse-complete");
                    if (take.f1257g && mo1379a.f1292b != null) {
                        this.f1242d.mo1331a(take.f1252b, mo1379a.f1292b);
                        take.m1381a("network-cache-written");
                    }
                    take.f1259i = true;
                    this.f1243e.mo1344a(take, mo1379a);
                }
            }
            take.m1384b(str);
        }
    }
}
