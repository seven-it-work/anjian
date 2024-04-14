package org.litepal.p242f.p245c;

/* renamed from: org.litepal.f.c.d */
/* loaded from: classes2.dex */
public final class C3045d extends AbstractC3047f {
    @Override // org.litepal.p242f.p245c.AbstractC3047f
    /* renamed from: a */
    public final String mo13895a(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("float") || str.equals("java.lang.Float") || str.equals("double") || str.equals("java.lang.Double")) {
            return "real";
        }
        return null;
    }
}
