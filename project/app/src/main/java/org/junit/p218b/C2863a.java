package org.junit.p218b;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: org.junit.b.a */
/* loaded from: classes2.dex */
public final class C2863a extends AssertionError {
    private static final long serialVersionUID = 1;
    private final List<Integer> fIndices = new ArrayList();
    private final String fMessage;

    public C2863a(String str, AssertionError assertionError, int i) {
        this.fMessage = str;
        initCause(assertionError);
        addDimension(i);
    }

    public final void addDimension(int i) {
        this.fIndices.add(0, Integer.valueOf(i));
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        StringBuilder sb = new StringBuilder();
        if (this.fMessage != null) {
            sb.append(this.fMessage);
        }
        sb.append("arrays first differed at element ");
        Iterator<Integer> it = this.fIndices.iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            sb.append("[");
            sb.append(intValue);
            sb.append("]");
        }
        sb.append("; ");
        sb.append(getCause().getMessage());
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return getMessage();
    }
}
