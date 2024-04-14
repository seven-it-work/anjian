package p003b.p004a.p007c;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: b.a.c.e */
/* loaded from: classes.dex */
public final class C0444e extends RuntimeException {
    private static final Method addSuppressedExceptionMethod;
    private IOException lastException;

    static {
        Method method;
        try {
            method = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception unused) {
            method = null;
        }
        addSuppressedExceptionMethod = method;
    }

    public C0444e(IOException iOException) {
        super(iOException);
        this.lastException = iOException;
    }

    private void addSuppressedIfPossible(IOException iOException, IOException iOException2) {
        if (addSuppressedExceptionMethod != null) {
            try {
                addSuppressedExceptionMethod.invoke(iOException, iOException2);
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
    }

    public final void addConnectException(IOException iOException) {
        addSuppressedIfPossible(iOException, this.lastException);
        this.lastException = iOException;
    }

    public final IOException getLastConnectException() {
        return this.lastException;
    }
}
