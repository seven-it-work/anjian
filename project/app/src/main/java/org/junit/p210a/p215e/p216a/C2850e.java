package org.junit.p210a.p215e.p216a;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* renamed from: org.junit.a.e.a.e */
/* loaded from: classes2.dex */
public final class C2850e extends AssertionError {
    private static final long serialVersionUID = 1;

    public C2850e(Throwable th, String str, Object... objArr) {
        super(String.format("%s(%s)", str, join(", ", objArr)));
        initCause(th);
    }

    public static String join(String str, Collection<Object> collection) {
        StringBuilder sb = new StringBuilder();
        Iterator<Object> it = collection.iterator();
        while (it.hasNext()) {
            sb.append(stringValueOf(it.next()));
            if (it.hasNext()) {
                sb.append(str);
            }
        }
        return sb.toString();
    }

    public static String join(String str, Object... objArr) {
        return join(str, Arrays.asList(objArr));
    }

    private static String stringValueOf(Object obj) {
        try {
            return String.valueOf(obj);
        } catch (Throwable unused) {
            return "[toString failed]";
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C2850e) && toString().equals(obj.toString());
    }

    public final int hashCode() {
        return toString().hashCode();
    }
}
