package org.junit.p218b.p222d;

import java.util.Arrays;
import java.util.List;

@Deprecated
/* renamed from: org.junit.b.d.d */
/* loaded from: classes2.dex */
public final class C2896d extends Exception {
    private static final long serialVersionUID = 1;
    private final List<Throwable> fErrors;

    public C2896d(String str) {
        this(new Exception(str));
    }

    public C2896d(List<Throwable> list) {
        this.fErrors = list;
    }

    public C2896d(Throwable... thArr) {
        this((List<Throwable>) Arrays.asList(thArr));
    }

    public final List<Throwable> getCauses() {
        return this.fErrors;
    }
}
