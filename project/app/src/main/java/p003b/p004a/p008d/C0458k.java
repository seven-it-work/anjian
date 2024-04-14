package p003b.p004a.p008d;

import java.io.IOException;
import java.net.ProtocolException;
import p003b.C0496ae;
import p003b.EnumC0492aa;

/* renamed from: b.a.d.k */
/* loaded from: classes.dex */
public final class C0458k {

    /* renamed from: a */
    public static final int f251a = 307;

    /* renamed from: b */
    public static final int f252b = 308;

    /* renamed from: c */
    public static final int f253c = 100;

    /* renamed from: d */
    public final EnumC0492aa f254d;

    /* renamed from: e */
    public final int f255e;

    /* renamed from: f */
    public final String f256f;

    public C0458k(EnumC0492aa enumC0492aa, int i, String str) {
        this.f254d = enumC0492aa;
        this.f255e = i;
        this.f256f = str;
    }

    /* renamed from: a */
    private static C0458k m267a(C0496ae c0496ae) {
        return new C0458k(c0496ae.f663b, c0496ae.f664c, c0496ae.f665d);
    }

    /* renamed from: a */
    public static C0458k m268a(String str) throws IOException {
        EnumC0492aa enumC0492aa;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int charAt = str.charAt(7) - '0';
            if (charAt == 0) {
                enumC0492aa = EnumC0492aa.HTTP_1_0;
            } else {
                if (charAt != 1) {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                enumC0492aa = EnumC0492aa.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            enumC0492aa = EnumC0492aa.HTTP_1_0;
            i = 4;
        }
        int i2 = i + 3;
        if (str.length() < i2) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        try {
            int parseInt = Integer.parseInt(str.substring(i, i2));
            String str2 = "";
            if (str.length() > i2) {
                if (str.charAt(i2) != ' ') {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                str2 = str.substring(i + 4);
            }
            return new C0458k(enumC0492aa, parseInt, str2);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f254d == EnumC0492aa.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f255e);
        if (this.f256f != null) {
            sb.append(' ');
            sb.append(this.f256f);
        }
        return sb.toString();
    }
}
