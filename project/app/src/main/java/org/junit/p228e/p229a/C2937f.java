package org.junit.p228e.p229a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.junit.p218b.p222d.p223a.C2884b;

/* renamed from: org.junit.e.a.f */
/* loaded from: classes2.dex */
public class C2937f extends Exception {
    private static final long serialVersionUID = 1;
    private final List<Throwable> fErrors;

    public C2937f(List<Throwable> list) {
        this.fErrors = new ArrayList(list);
    }

    public static void assertEmpty(List<Throwable> list) throws Exception {
        if (list.isEmpty()) {
            return;
        }
        if (list.size() != 1) {
            throw new C2884b(list);
        }
        throw list.get(0);
    }

    public List<Throwable> getFailures() {
        return Collections.unmodifiableList(this.fErrors);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        StringBuilder sb = new StringBuilder(String.format("There were %d errors:", Integer.valueOf(this.fErrors.size())));
        for (Throwable th : this.fErrors) {
            sb.append(String.format("\n  %s(%s)", th.getClass().getName(), th.getMessage()));
        }
        return sb.toString();
    }
}
