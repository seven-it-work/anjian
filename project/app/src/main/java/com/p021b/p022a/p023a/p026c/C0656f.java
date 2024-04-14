package com.p021b.p022a.p023a.p026c;

import android.support.v7.widget.ActivityChooserView;
import com.p021b.p022a.C0728aa;
import com.p021b.p022a.C0730ac;
import com.p021b.p022a.C0746as;
import com.p021b.p022a.C0768r;
import com.p021b.p022a.InterfaceC0769s;
import java.util.regex.Pattern;

/* renamed from: com.b.a.a.c.f */
/* loaded from: classes.dex */
public final class C0656f {

    /* renamed from: a */
    private static final Pattern f1520a = Pattern.compile(" +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)");

    /* renamed from: a */
    public static int m1632a(String str, int i) {
        char charAt;
        while (i < str.length() && ((charAt = str.charAt(i)) == ' ' || charAt == '\t')) {
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public static int m1633a(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public static long m1634a(C0728aa c0728aa) {
        return m1636a(c0728aa.m1819a("Content-Length"));
    }

    /* renamed from: a */
    public static long m1635a(C0746as c0746as) {
        return m1634a(c0746as.m1918d());
    }

    /* renamed from: a */
    private static long m1636a(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    /* renamed from: a */
    public static void m1637a(InterfaceC0769s interfaceC0769s, C0730ac c0730ac, C0728aa c0728aa) {
        if (interfaceC0769s == InterfaceC0769s.f2111a || C0768r.m1983a(c0730ac, c0728aa).isEmpty()) {
            return;
        }
        interfaceC0769s.mo1986a();
    }

    /* renamed from: b */
    public static int m1638b(String str, int i) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 2147483647L) {
                return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            }
            if (parseLong < 0) {
                return 0;
            }
            return (int) parseLong;
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    /* renamed from: b */
    public static boolean m1639b(C0746as c0746as) {
        if (c0746as.m1914a().m1896b().equals("HEAD")) {
            return false;
        }
        int m1916b = c0746as.m1916b();
        return (((m1916b >= 100 && m1916b < 200) || m1916b == 204 || m1916b == 304) && m1634a(c0746as.m1918d()) == -1 && !"chunked".equalsIgnoreCase(c0746as.m1915a("Transfer-Encoding"))) ? false : true;
    }
}
