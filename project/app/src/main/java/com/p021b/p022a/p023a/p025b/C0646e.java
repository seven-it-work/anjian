package com.p021b.p022a.p023a.p025b;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: com.b.a.a.b.e */
/* loaded from: classes.dex */
public final class C0646e extends RuntimeException {

    /* renamed from: a */
    private static final Method f1476a;

    /* renamed from: b */
    private IOException f1477b;

    static {
        Method method;
        try {
            method = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception unused) {
            method = null;
        }
        f1476a = method;
    }

    public C0646e(IOException iOException) {
        super(iOException);
        this.f1477b = iOException;
    }

    /* renamed from: a */
    public final IOException m1576a() {
        return this.f1477b;
    }

    /* renamed from: a */
    public final void m1577a(IOException iOException) {
        IOException iOException2 = this.f1477b;
        if (f1476a != null) {
            try {
                f1476a.invoke(iOException, iOException2);
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        this.f1477b = iOException;
    }
}
