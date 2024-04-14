package org.junit.p218b;

import org.junit.C2911c;
import org.junit.C2963i;

/* renamed from: org.junit.b.e */
/* loaded from: classes2.dex */
public final class C2904e extends AbstractC2881d {
    @Override // org.junit.p218b.AbstractC2881d
    /* renamed from: a */
    protected final void mo12878a(Object obj, Object obj2) {
        if (C2911c.m13026a(obj, obj2)) {
            return;
        }
        if ((obj instanceof String) && (obj2 instanceof String)) {
            throw new C2963i("", (String) obj, (String) obj2);
        }
        C2911c.m13032b(obj, obj2);
    }
}
