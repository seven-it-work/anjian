package org.junit.p218b;

import org.p202a.C2751n;
import org.p202a.InterfaceC2744g;
import org.p202a.InterfaceC2748k;
import org.p202a.InterfaceC2750m;

/* renamed from: org.junit.b.b */
/* loaded from: classes2.dex */
public class C2872b extends RuntimeException implements InterfaceC2750m {
    private static final long serialVersionUID = 2;
    private final String fAssumption;
    private final InterfaceC2748k<?> fMatcher;
    private final Object fValue;
    private final boolean fValueMatcher;

    @Deprecated
    public C2872b(Object obj, InterfaceC2748k<?> interfaceC2748k) {
        this(null, true, obj, interfaceC2748k);
    }

    @Deprecated
    public C2872b(String str) {
        this(str, false, null, null);
    }

    @Deprecated
    public C2872b(String str, Object obj, InterfaceC2748k<?> interfaceC2748k) {
        this(str, true, obj, interfaceC2748k);
    }

    @Deprecated
    public C2872b(String str, Throwable th) {
        this(str, false, null, null);
        initCause(th);
    }

    @Deprecated
    public C2872b(String str, boolean z, Object obj, InterfaceC2748k<?> interfaceC2748k) {
        this.fAssumption = str;
        this.fValue = obj;
        this.fMatcher = interfaceC2748k;
        this.fValueMatcher = z;
        if (obj instanceof Throwable) {
            initCause((Throwable) obj);
        }
    }

    @Override // org.p202a.InterfaceC2750m
    public void describeTo(InterfaceC2744g interfaceC2744g) {
        if (this.fAssumption != null) {
            interfaceC2744g.mo12297a(this.fAssumption);
        }
        if (this.fValueMatcher) {
            if (this.fAssumption != null) {
                interfaceC2744g.mo12297a(": ");
            }
            interfaceC2744g.mo12297a("got: ");
            interfaceC2744g.mo12296a(this.fValue);
            if (this.fMatcher != null) {
                interfaceC2744g.mo12297a(", expected: ");
                interfaceC2744g.mo12300a((InterfaceC2750m) this.fMatcher);
            }
        }
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return C2751n.m12429c(this);
    }
}
