package org.junit.runner.p233b;

import java.io.PrintWriter;
import java.io.Serializable;
import java.io.StringWriter;
import org.junit.runner.C2980c;

/* renamed from: org.junit.runner.b.a */
/* loaded from: classes2.dex */
public final class C2975a implements Serializable {
    private static final long serialVersionUID = 1;
    private final C2980c fDescription;
    private final Throwable fThrownException;

    public C2975a(C2980c c2980c, Throwable th) {
        this.fThrownException = th;
        this.fDescription = c2980c;
    }

    public final C2980c getDescription() {
        return this.fDescription;
    }

    public final Throwable getException() {
        return this.fThrownException;
    }

    public final String getMessage() {
        return getException().getMessage();
    }

    public final String getTestHeader() {
        return this.fDescription.getDisplayName();
    }

    public final String getTrace() {
        StringWriter stringWriter = new StringWriter();
        getException().printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public final String toString() {
        return getTestHeader() + ": " + this.fThrownException.getMessage();
    }
}
