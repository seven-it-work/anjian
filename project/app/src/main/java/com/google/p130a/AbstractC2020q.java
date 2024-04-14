package com.google.p130a;

/* renamed from: com.google.a.q */
/* loaded from: classes.dex */
public abstract class AbstractC2020q extends Exception {
    protected static final StackTraceElement[] NO_TRACE;
    protected static final boolean isStackTrace;

    static {
        isStackTrace = System.getProperty("surefire.test.class.path") != null;
        NO_TRACE = new StackTraceElement[0];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2020q() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2020q(Throwable th) {
        super(th);
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return null;
    }
}
