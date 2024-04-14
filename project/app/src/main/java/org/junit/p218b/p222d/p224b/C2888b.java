package org.junit.p218b.p222d.p224b;

import java.lang.annotation.Annotation;
import org.junit.p228e.p229a.AbstractC2934c;

/* renamed from: org.junit.b.d.b.b */
/* loaded from: classes2.dex */
final class C2888b extends Exception {
    public C2888b(AbstractC2934c<?> abstractC2934c, Class<? extends Annotation> cls, String str) {
        super(String.format("The @%s '%s' %s", cls.getSimpleName(), abstractC2934c.mo13188b(), str));
    }
}
