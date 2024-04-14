package org.litepal.p242f.p245c;

/* renamed from: org.litepal.f.c.b */
/* loaded from: classes2.dex */
public final class C3043b extends AbstractC3047f {
    @Override // org.litepal.p242f.p245c.AbstractC3047f
    /* renamed from: a */
    public final String mo13895a(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("boolean") || str.equals("java.lang.Boolean")) {
            return "integer";
        }
        return null;
    }
}
