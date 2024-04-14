package org.junit.p231f;

import java.lang.reflect.Modifier;
import java.util.Collections;
import java.util.List;
import org.junit.p228e.p229a.C2942k;

/* renamed from: org.junit.f.d */
/* loaded from: classes2.dex */
public final class C2958d implements InterfaceC2959e {

    /* renamed from: a */
    private static final List<Exception> f10885a = Collections.emptyList();

    @Override // org.junit.p231f.InterfaceC2959e
    /* renamed from: a */
    public final List<Exception> mo13312a(C2942k c2942k) {
        if (Modifier.isPublic(c2942k.f10854b.getModifiers())) {
            return f10885a;
        }
        return Collections.singletonList(new Exception("The class " + c2942k.m13228b() + " is not public."));
    }
}
