package org.junit.p228e.p229a;

import java.util.Arrays;
import java.util.List;

/* renamed from: org.junit.e.a.e */
/* loaded from: classes2.dex */
public final class C2936e extends Exception {
    private static final long serialVersionUID = 1;
    private final List<Throwable> fErrors;

    public C2936e(String str) {
        this(new Exception(str));
    }

    public C2936e(Throwable th) {
        this((List<Throwable>) Arrays.asList(th));
    }

    public C2936e(List<Throwable> list) {
        this.fErrors = list;
    }

    public final List<Throwable> getCauses() {
        return this.fErrors;
    }
}
