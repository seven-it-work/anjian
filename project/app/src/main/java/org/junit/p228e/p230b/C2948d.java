package org.junit.p228e.p230b;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.junit.p228e.p229a.C2942k;

/* renamed from: org.junit.e.b.d */
/* loaded from: classes2.dex */
public final class C2948d {

    /* renamed from: a */
    final String f10861a;

    /* renamed from: b */
    final C2942k f10862b;

    /* renamed from: c */
    final List<Object> f10863c;

    public C2948d(String str, C2942k c2942k, List<Object> list) {
        m13272a(str, "The name is missing.");
        m13272a(c2942k, "The test class is missing.");
        m13272a(list, "The parameters are missing.");
        this.f10861a = str;
        this.f10862b = c2942k;
        this.f10863c = Collections.unmodifiableList(new ArrayList(list));
    }

    /* renamed from: a */
    private String m13271a() {
        return this.f10861a;
    }

    /* renamed from: a */
    private static void m13272a(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    /* renamed from: b */
    private C2942k m13273b() {
        return this.f10862b;
    }

    /* renamed from: c */
    private List<Object> m13274c() {
        return this.f10863c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2948d c2948d = (C2948d) obj;
        return this.f10861a.equals(c2948d.f10861a) && this.f10863c.equals(c2948d.f10863c) && this.f10862b.equals(c2948d.f10862b);
    }

    public final int hashCode() {
        return ((((this.f10861a.hashCode() + 14747) * 14747) + this.f10862b.hashCode()) * 14747) + this.f10863c.hashCode();
    }

    public final String toString() {
        return this.f10862b.m13228b() + " '" + this.f10861a + "' with parameters " + this.f10863c;
    }
}
