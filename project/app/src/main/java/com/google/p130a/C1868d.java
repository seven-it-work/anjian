package com.google.p130a;

/* renamed from: com.google.a.d */
/* loaded from: classes.dex */
public final class C1868d extends AbstractC2020q {
    private static final C1868d INSTANCE;

    static {
        C1868d c1868d = new C1868d();
        INSTANCE = c1868d;
        c1868d.setStackTrace(NO_TRACE);
    }

    private C1868d() {
    }

    private C1868d(Throwable th) {
        super(th);
    }

    public static C1868d getChecksumInstance() {
        return isStackTrace ? new C1868d() : INSTANCE;
    }

    public static C1868d getChecksumInstance(Throwable th) {
        return isStackTrace ? new C1868d(th) : INSTANCE;
    }
}
