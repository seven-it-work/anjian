package com.umeng.analytics.pro;

import com.umeng.analytics.AnalyticsConfig;
import java.lang.Thread;

/* renamed from: com.umeng.analytics.pro.j */
/* loaded from: classes.dex */
public class C2435j implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private Thread.UncaughtExceptionHandler f9147a;

    /* renamed from: b */
    private InterfaceC2439n f9148b;

    public C2435j() {
        if (Thread.getDefaultUncaughtExceptionHandler() == this) {
            return;
        }
        this.f9147a = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    /* renamed from: a */
    private void m10569a(Throwable th) {
        if (AnalyticsConfig.CATCH_EXCEPTION) {
            this.f9148b.mo10414a(th);
        } else {
            this.f9148b.mo10414a(null);
        }
    }

    /* renamed from: a */
    public void m10570a(InterfaceC2439n interfaceC2439n) {
        this.f9148b = interfaceC2439n;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        m10569a(th);
        if (this.f9147a == null || this.f9147a == Thread.getDefaultUncaughtExceptionHandler()) {
            return;
        }
        this.f9147a.uncaughtException(thread, th);
    }
}
