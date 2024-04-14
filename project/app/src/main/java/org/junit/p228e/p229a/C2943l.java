package org.junit.p228e.p229a;

import java.util.concurrent.TimeUnit;

/* renamed from: org.junit.e.a.l */
/* loaded from: classes2.dex */
public final class C2943l extends Exception {
    private static final long serialVersionUID = 31935685163547539L;
    private final TimeUnit timeUnit;
    private final long timeout;

    public C2943l(long j, TimeUnit timeUnit) {
        super(String.format("test timed out after %d %s", Long.valueOf(j), timeUnit.name().toLowerCase()));
        this.timeUnit = timeUnit;
        this.timeout = j;
    }

    public final TimeUnit getTimeUnit() {
        return this.timeUnit;
    }

    public final long getTimeout() {
        return this.timeout;
    }
}
