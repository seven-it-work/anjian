package com.p021b.p022a.p023a.p026c;

import com.p021b.p022a.EnumC0739al;
import java.net.ProtocolException;

/* renamed from: com.b.a.a.c.l */
/* loaded from: classes.dex */
public final class C0662l {

    /* renamed from: a */
    public final EnumC0739al f1535a;

    /* renamed from: b */
    public final int f1536b;

    /* renamed from: c */
    public final String f1537c;

    private C0662l(EnumC0739al enumC0739al, int i, String str) {
        this.f1535a = enumC0739al;
        this.f1536b = i;
        this.f1537c = str;
    }

    /* renamed from: a */
    public static C0662l m1656a(String str) {
        EnumC0739al enumC0739al;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int charAt = str.charAt(7) - '0';
            if (charAt == 0) {
                enumC0739al = EnumC0739al.HTTP_1_0;
            } else {
                if (charAt != 1) {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                enumC0739al = EnumC0739al.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            enumC0739al = EnumC0739al.HTTP_1_0;
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
            return new C0662l(enumC0739al, parseInt, str2);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f1535a == EnumC0739al.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f1536b);
        if (this.f1537c != null) {
            sb.append(' ');
            sb.append(this.f1537c);
        }
        return sb.toString();
    }
}
