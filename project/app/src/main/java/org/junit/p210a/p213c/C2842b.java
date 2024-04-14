package org.junit.p210a.p213c;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.List;
import org.junit.p218b.C2909j;
import org.junit.runner.AbstractC2985h;
import org.junit.runner.C2986i;
import org.junit.runner.JUnitCore;
import org.junit.runner.p233b.C2975a;

/* renamed from: org.junit.a.c.b */
/* loaded from: classes2.dex */
public final class C2842b {

    /* renamed from: a */
    C2986i f10698a;

    private C2842b(List<C2975a> list) {
        this(new C2841a(list).m12763a());
    }

    private C2842b(C2986i c2986i) {
        this.f10698a = c2986i;
    }

    /* renamed from: a */
    private int m12764a() {
        return this.f10698a.getFailures().size();
    }

    /* renamed from: a */
    private static C2842b m12765a(Class<?> cls) {
        return new C2842b(new JUnitCore().m13346a(AbstractC2985h.m13392a(cls)));
    }

    /* renamed from: a */
    private static C2842b m12766a(AbstractC2985h abstractC2985h) {
        return new C2842b(new JUnitCore().m13346a(abstractC2985h));
    }

    public final String toString() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        new C2909j(new PrintStream(byteArrayOutputStream)).mo12760a(this.f10698a);
        return byteArrayOutputStream.toString();
    }
}
