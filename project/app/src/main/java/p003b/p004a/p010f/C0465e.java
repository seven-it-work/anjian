package p003b.p004a.p010f;

import java.io.IOException;
import p003b.p004a.C0439c;
import p017c.C0538f;

/* renamed from: b.a.f.e */
/* loaded from: classes.dex */
public final class C0465e {

    /* renamed from: b */
    static final int f324b = 16384;

    /* renamed from: c */
    static final byte f325c = 0;

    /* renamed from: d */
    static final byte f326d = 1;

    /* renamed from: e */
    static final byte f327e = 2;

    /* renamed from: f */
    static final byte f328f = 3;

    /* renamed from: g */
    static final byte f329g = 4;

    /* renamed from: h */
    static final byte f330h = 5;

    /* renamed from: i */
    static final byte f331i = 6;

    /* renamed from: j */
    static final byte f332j = 7;

    /* renamed from: k */
    static final byte f333k = 8;

    /* renamed from: l */
    static final byte f334l = 9;

    /* renamed from: m */
    static final byte f335m = 0;

    /* renamed from: n */
    static final byte f336n = 1;

    /* renamed from: o */
    static final byte f337o = 1;

    /* renamed from: p */
    static final byte f338p = 4;

    /* renamed from: q */
    static final byte f339q = 4;

    /* renamed from: r */
    static final byte f340r = 8;

    /* renamed from: s */
    static final byte f341s = 32;

    /* renamed from: t */
    static final byte f342t = 32;

    /* renamed from: a */
    static final C0538f f323a = C0538f.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* renamed from: w */
    private static final String[] f345w = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* renamed from: u */
    static final String[] f343u = new String[64];

    /* renamed from: v */
    static final String[] f344v = new String[256];

    static {
        for (int i = 0; i < f344v.length; i++) {
            f344v[i] = C0439c.m138a("%8s", Integer.toBinaryString(i)).replace(' ', '0');
        }
        f343u[0] = "";
        f343u[1] = "END_STREAM";
        int[] iArr = {1};
        f343u[8] = "PADDED";
        for (int i2 = 0; i2 <= 0; i2++) {
            int i3 = iArr[i2];
            f343u[i3 | 8] = f343u[i3] + "|PADDED";
        }
        f343u[4] = "END_HEADERS";
        f343u[32] = "PRIORITY";
        f343u[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i4 = 0; i4 < 3; i4++) {
            int i5 = iArr2[i4];
            for (int i6 = 0; i6 <= 0; i6++) {
                int i7 = iArr[i6];
                int i8 = i7 | i5;
                f343u[i8] = f343u[i7] + '|' + f343u[i5];
                f343u[i8 | 8] = f343u[i7] + '|' + f343u[i5] + "|PADDED";
            }
        }
        for (int i9 = 0; i9 < f343u.length; i9++) {
            if (f343u[i9] == null) {
                f343u[i9] = f344v[i9];
            }
        }
    }

    private C0465e() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static IllegalArgumentException m309a(String str, Object... objArr) {
        throw new IllegalArgumentException(C0439c.m138a(str, objArr));
    }

    /* renamed from: a */
    private static String m310a(byte b2, byte b3) {
        if (b3 == 0) {
            return "";
        }
        switch (b2) {
            case 2:
            case 3:
            case 7:
            case 8:
                return f344v[b3];
            case 4:
            case 6:
                return b3 == 1 ? "ACK" : f344v[b3];
            case 5:
            default:
                String str = b3 < f343u.length ? f343u[b3] : f344v[b3];
                return (b2 != 5 || (b3 & 4) == 0) ? (b2 != 0 || (b3 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED") : str.replace("HEADERS", "PUSH_PROMISE");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m311a(boolean z, int i, int i2, byte b2, byte b3) {
        String str;
        String str2;
        String str3;
        String m138a = b2 < f345w.length ? f345w[b2] : C0439c.m138a("0x%02x", Byte.valueOf(b2));
        if (b3 != 0) {
            switch (b2) {
                case 2:
                case 3:
                case 7:
                case 8:
                    str = f344v[b3];
                    break;
                case 4:
                case 6:
                    if (b3 != 1) {
                        str = f344v[b3];
                        break;
                    } else {
                        str = "ACK";
                        break;
                    }
                case 5:
                default:
                    String str4 = b3 < f343u.length ? f343u[b3] : f344v[b3];
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
        objArr[3] = m138a;
        objArr[4] = str;
        return C0439c.m138a("%s 0x%08x %5d %-13s %s", objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static IOException m312b(String str, Object... objArr) throws IOException {
        throw new IOException(C0439c.m138a(str, objArr));
    }
}
