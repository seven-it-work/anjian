package com.p021b.p022a;

/* renamed from: com.b.a.ax */
/* loaded from: classes.dex */
public enum EnumC0751ax {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");


    /* renamed from: f */
    final String f1930f;

    EnumC0751ax(String str) {
        this.f1930f = str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static EnumC0751ax m1945a(String str) {
        char c2;
        int hashCode = str.hashCode();
        if (hashCode == 79201641) {
            if (str.equals("SSLv3")) {
                c2 = 4;
            }
            c2 = 65535;
        } else if (hashCode != 79923350) {
            switch (hashCode) {
                case -503070503:
                    if (str.equals("TLSv1.1")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -503070502:
                    if (str.equals("TLSv1.2")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -503070501:
                    if (str.equals("TLSv1.3")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
        } else {
            if (str.equals("TLSv1")) {
                c2 = 3;
            }
            c2 = 65535;
        }
        switch (c2) {
            case 0:
                return TLS_1_3;
            case 1:
                return TLS_1_2;
            case 2:
                return TLS_1_1;
            case 3:
                return TLS_1_0;
            case 4:
                return SSL_3_0;
            default:
                throw new IllegalArgumentException("Unexpected TLS version: " + str);
        }
    }
}
