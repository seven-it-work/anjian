package p003b;

import java.io.IOException;

/* renamed from: b.aa */
/* loaded from: classes.dex */
public enum EnumC0492aa {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");

    private final String protocol;

    EnumC0492aa(String str) {
        this.protocol = str;
    }

    public static EnumC0492aa get(String str) throws IOException {
        if (str.equals(HTTP_1_0.protocol)) {
            return HTTP_1_0;
        }
        if (str.equals(HTTP_1_1.protocol)) {
            return HTTP_1_1;
        }
        if (str.equals(HTTP_2.protocol)) {
            return HTTP_2;
        }
        if (str.equals(SPDY_3.protocol)) {
            return SPDY_3;
        }
        throw new IOException("Unexpected protocol: " + str);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.protocol;
    }
}
