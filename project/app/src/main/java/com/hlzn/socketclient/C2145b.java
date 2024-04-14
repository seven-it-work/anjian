package com.hlzn.socketclient;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: com.hlzn.socketclient.b */
/* loaded from: classes.dex */
public final class C2145b {

    /* renamed from: a */
    private ExecutorService f8080a;

    /* renamed from: b */
    private ExecutorService f8081b;

    /* renamed from: a */
    private synchronized void m9465a() {
        m9469c();
    }

    /* renamed from: a */
    private void m9466a(Runnable runnable) {
        if (this.f8080a == null) {
            m9465a();
        }
        this.f8080a.execute(runnable);
    }

    /* renamed from: b */
    private synchronized void m9467b() {
        m9470d();
    }

    /* renamed from: b */
    private void m9468b(Runnable runnable) {
        if (this.f8081b == null) {
            m9467b();
        }
        this.f8081b.execute(runnable);
    }

    /* renamed from: c */
    private synchronized void m9469c() {
        m9471e();
        this.f8080a = Executors.newFixedThreadPool(3);
    }

    /* renamed from: d */
    private synchronized void m9470d() {
        m9472f();
        this.f8081b = Executors.newFixedThreadPool(1);
    }

    /* renamed from: e */
    private synchronized void m9471e() {
        if (this.f8080a != null) {
            try {
                try {
                    this.f8080a.shutdownNow();
                } finally {
                    this.f8080a = null;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* renamed from: f */
    private synchronized void m9472f() {
        if (this.f8081b != null) {
            try {
                try {
                    this.f8081b.shutdownNow();
                } finally {
                    this.f8081b = null;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
