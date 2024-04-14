package com.p021b.p022a;

import java.io.IOException;

/* renamed from: com.b.a.al */
/* loaded from: classes.dex */
public enum EnumC0739al {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");


    /* renamed from: e */
    private final String f1870e;

    EnumC0739al(String str) {
        this.f1870e = str;
    }

    /* renamed from: a */
    public static EnumC0739al m1887a(String str) {
        if (str.equals(HTTP_1_0.f1870e)) {
            return HTTP_1_0;
        }
        if (str.equals(HTTP_1_1.f1870e)) {
            return HTTP_1_1;
        }
        if (str.equals(HTTP_2.f1870e)) {
            return HTTP_2;
        }
        if (str.equals(SPDY_3.f1870e)) {
            return SPDY_3;
        }
        throw new IOException("Unexpected protocol: " + str);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f1870e;
    }
}
