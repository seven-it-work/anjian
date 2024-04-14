package org.junit;

import java.util.Arrays;
import java.util.List;
import org.p202a.InterfaceC2748k;
import org.p202a.p203a.C2721e;
import org.p202a.p203a.C2722f;
import org.p202a.p203a.C2725i;
import org.p202a.p203a.C2727k;
import org.p202a.p203a.C2728l;

/* renamed from: org.junit.d */
/* loaded from: classes2.dex */
public final class C2913d {
    /* renamed from: a */
    private static <T> void m13079a(T t, InterfaceC2748k<T> interfaceC2748k) {
        if (!interfaceC2748k.mo12320a(t)) {
            throw new C2930e(t, interfaceC2748k);
        }
    }

    /* renamed from: a */
    private static <T> void m13080a(String str, T t, InterfaceC2748k<T> interfaceC2748k) {
        if (!interfaceC2748k.mo12320a(t)) {
            throw new C2930e(str, t, interfaceC2748k);
        }
    }

    /* renamed from: a */
    private static void m13081a(String str, Throwable th) {
        C2728l c2728l = new C2728l();
        if (!c2728l.mo12320a(th)) {
            throw new C2930e(str, th, c2728l);
        }
    }

    /* renamed from: a */
    private static void m13082a(String str, boolean z) {
        if (!z) {
            throw new C2930e(str);
        }
    }

    /* renamed from: a */
    private static void m13083a(Throwable th) {
        m13079a(th, new C2728l());
    }

    /* renamed from: a */
    public static void m13084a(boolean z) {
        m13079a(Boolean.valueOf(z), (InterfaceC2748k<Boolean>) C2722f.m12334a(C2725i.m12345b(true)));
    }

    /* renamed from: a */
    public static void m13085a(Object... objArr) {
        m13079a(Arrays.asList(objArr), (InterfaceC2748k<List>) C2721e.m12331a(C2727k.m12353a((InterfaceC2748k) new C2728l())));
    }

    /* renamed from: b */
    private static void m13086b(String str, boolean z) {
        if ((!z) != true) {
            throw new C2930e(str);
        }
    }

    /* renamed from: b */
    private static void m13087b(boolean z) {
        m13084a(!z);
    }
}
