package com.p021b.p032b;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.b.d */
/* loaded from: classes.dex */
public final class C0781d extends Thread {
    public C0781d() {
        super("Okio Watchdog");
        setDaemon(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0017, code lost:
    
        r1.mo1692a();
     */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            r3 = this;
        L0:
            java.lang.Class<com.b.b.a> r0 = com.p021b.p032b.C0777a.class
            monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L0
            com.b.b.a r1 = com.p021b.p032b.C0777a.m2006e()     // Catch: java.lang.Throwable -> L1b
            if (r1 != 0) goto Lb
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1b
            goto L0
        Lb:
            com.b.b.a r2 = com.p021b.p032b.C0777a.m2007f()     // Catch: java.lang.Throwable -> L1b
            if (r1 != r2) goto L16
            com.p021b.p032b.C0777a.m2008g()     // Catch: java.lang.Throwable -> L1b
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1b
            return
        L16:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1b
            r1.mo1692a()     // Catch: java.lang.InterruptedException -> L0
            goto L0
        L1b:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1b
            throw r1     // Catch: java.lang.InterruptedException -> L0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p021b.p032b.C0781d.run():void");
    }
}
