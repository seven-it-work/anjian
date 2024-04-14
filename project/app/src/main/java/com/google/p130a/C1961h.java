package com.google.p130a;

/* renamed from: com.google.a.h */
/* loaded from: classes.dex */
public final class C1961h extends AbstractC2020q {
    private static final C1961h INSTANCE;

    static {
        C1961h c1961h = new C1961h();
        INSTANCE = c1961h;
        c1961h.setStackTrace(NO_TRACE);
    }

    private C1961h() {
    }

    private C1961h(Throwable th) {
        super(th);
    }

    public static C1961h getFormatInstance() {
        return isStackTrace ? new C1961h() : INSTANCE;
    }

    public static C1961h getFormatInstance(Throwable th) {
        return isStackTrace ? new C1961h(th) : INSTANCE;
    }
}
