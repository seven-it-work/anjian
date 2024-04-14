package com.android.volley.toolbox;

import com.android.volley.C0596i;
import com.android.volley.InterfaceC0589b;
import com.github.kevinsawicki.http.HttpRequest;
import com.lidroid.xutils.util.CharsetUtils;
import java.util.Map;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;

/* renamed from: com.android.volley.toolbox.h */
/* loaded from: classes.dex */
public final class C0617h {
    /* renamed from: a */
    private static long m1466a(String str) {
        try {
            return DateUtils.parseDate(str).getTime();
        } catch (DateParseException unused) {
            return 0L;
        }
    }

    /* renamed from: a */
    public static InterfaceC0589b.a m1467a(C0596i c0596i) {
        long j;
        boolean z;
        long j2;
        boolean z2;
        long j3;
        long j4;
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = c0596i.f1246c;
        String str = map.get("Date");
        long m1466a = str != null ? m1466a(str) : 0L;
        String str2 = map.get("Cache-Control");
        if (str2 != null) {
            j = 0;
            z = false;
            j2 = 0;
            for (String str3 : str2.split(",")) {
                String trim = str3.trim();
                if (!trim.equals("no-cache") && !trim.equals("no-store")) {
                    if (trim.startsWith("max-age=")) {
                        try {
                            j = Long.parseLong(trim.substring(8));
                        } catch (Exception unused) {
                        }
                    } else if (trim.startsWith("stale-while-revalidate=")) {
                        j2 = Long.parseLong(trim.substring(23));
                    } else if (!trim.equals("must-revalidate") && !trim.equals("proxy-revalidate")) {
                    }
                }
                z = true;
            }
            z2 = true;
        } else {
            j = 0;
            z = false;
            j2 = 0;
            z2 = false;
        }
        String str4 = map.get("Expires");
        long m1466a2 = str4 != null ? m1466a(str4) : 0L;
        String str5 = map.get("Last-Modified");
        long m1466a3 = str5 != null ? m1466a(str5) : 0L;
        String str6 = map.get("ETag");
        if (z2) {
            long j5 = currentTimeMillis + (j * 1000);
            j3 = z ? j5 : j5 + (j2 * 1000);
            j4 = j5;
        } else if (m1466a <= 0 || m1466a2 < m1466a) {
            j3 = 0;
            j4 = 0;
        } else {
            j4 = currentTimeMillis + (m1466a2 - m1466a);
            j3 = j4;
        }
        InterfaceC0589b.a aVar = new InterfaceC0589b.a();
        aVar.f1210a = c0596i.f1245b;
        aVar.f1211b = str6;
        aVar.f1215f = j4;
        aVar.f1214e = j3;
        aVar.f1212c = m1466a;
        aVar.f1213d = m1466a3;
        aVar.f1216g = map;
        return aVar;
    }

    /* renamed from: a */
    public static String m1468a(Map<String, String> map) {
        return m1469a(map, CharsetUtils.DEFAULT_ENCODING_CHARSET);
    }

    /* renamed from: a */
    public static String m1469a(Map<String, String> map, String str) {
        String str2 = map.get("Content-Type");
        if (str2 != null) {
            String[] split = str2.split(";");
            for (int i = 1; i < split.length; i++) {
                String[] split2 = split[i].trim().split("=");
                if (split2.length == 2 && split2[0].equals(HttpRequest.PARAM_CHARSET)) {
                    return split2[1];
                }
            }
        }
        return str;
    }
}
