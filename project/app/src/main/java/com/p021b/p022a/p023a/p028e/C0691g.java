package com.p021b.p022a.p023a.p028e;

import com.p021b.p022a.p023a.C0650c;
import com.p021b.p032b.C0786i;
import java.io.IOException;

/* renamed from: com.b.a.a.e.g */
/* loaded from: classes.dex */
public final class C0691g {

    /* renamed from: a */
    static final C0786i f1647a = C0786i.m2071a("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* renamed from: d */
    private static final String[] f1650d = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* renamed from: b */
    static final String[] f1648b = new String[64];

    /* renamed from: c */
    static final String[] f1649c = new String[256];

    static {
        for (int i = 0; i < f1649c.length; i++) {
            f1649c[i] = C0650c.m1606a("%8s", Integer.toBinaryString(i)).replace(' ', '0');
        }
        f1648b[0] = "";
        f1648b[1] = "END_STREAM";
        int[] iArr = {1};
        f1648b[8] = "PADDED";
        for (int i2 = 0; i2 <= 0; i2++) {
            int i3 = iArr[i2];
            f1648b[i3 | 8] = f1648b[i3] + "|PADDED";
        }
        f1648b[4] = "END_HEADERS";
        f1648b[32] = "PRIORITY";
        f1648b[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i4 = 0; i4 < 3; i4++) {
            int i5 = iArr2[i4];
            for (int i6 = 0; i6 <= 0; i6++) {
                int i7 = iArr[i6];
                int i8 = i7 | i5;
                f1648b[i8] = f1648b[i7] + '|' + f1648b[i5];
                f1648b[i8 | 8] = f1648b[i7] + '|' + f1648b[i5] + "|PADDED";
            }
        }
        for (int i9 = 0; i9 < f1648b.length; i9++) {
            if (f1648b[i9] == null) {
                f1648b[i9] = f1649c[i9];
            }
        }
    }

    private C0691g() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static IllegalArgumentException m1748a(String str, Object... objArr) {
        throw new IllegalArgumentException(C0650c.m1606a(str, objArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m1749a(boolean z, int i, int i2, byte b2, byte b3) {
        String str;
        String str2;
        String str3;
        String m1606a = b2 < f1650d.length ? f1650d[b2] : C0650c.m1606a("0x%02x", Byte.valueOf(b2));
        if (b3 != 0) {
            switch (b2) {
                case 2:
                case 3:
                case 7:
                case 8:
                    str = f1649c[b3];
                    break;
                case 4:
                case 6:
                    if (b3 != 1) {
                        str = f1649c[b3];
                        break;
                    } else {
                        str = "ACK";
                        break;
                    }
                case 5:
                default:
                    String str4 = b3 < f1648b.length ? f1648b[b3] : f1649c[b3];
                    if (b2 == 5 && (b3 & 4) != 0) {
                        str2 = "HEADERS";
                        str3 = "PUSH_PROMISE";
                    } else if (b2 != 0 || (b3 & 32) == 0) {
                        str = str4;
                        break;
                    } else {
                        str2 = "PRIORITY";
                        str3 = "COMPRESSED";
                    }
                    str = str4.replace(str2, str3);
                    break;
            }
        } else {
            str = "";
        }
        Object[] objArr = new Object[5];
        objArr[0] = z ? "<<" : ">>";
        objArr[1] = Integer.valueOf(i);
        objArr[2] = Integer.valueOf(i2);
        objArr[3] = m1606a;
        objArr[4] = str;
        return C0650c.m1606a("%s 0x%08x %5d %-13s %s", objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static IOException m1750b(String str, Object... objArr) {
        throw new IOException(C0650c.m1606a(str, objArr));
    }
}
