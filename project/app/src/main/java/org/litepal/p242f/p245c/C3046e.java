package org.litepal.p242f.p245c;

/* renamed from: org.litepal.f.c.e */
/* loaded from: classes2.dex */
public final class C3046e extends AbstractC3047f {
    @Override // org.litepal.p242f.p245c.AbstractC3047f
    /* renamed from: a */
    public final String mo13895a(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("int") || str.equals("java.lang.Integer") || str.equals("long") || str.equals("java.lang.Long") || str.equals("short") || str.equals("java.lang.Short")) {
            return "integer";
        }
        return null;
    }
}
