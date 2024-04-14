package com.cyjh.elfin.p077e.p078a;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.cyjh.common.util.C1148aa;

/* renamed from: com.cyjh.elfin.e.a.g */
/* loaded from: classes.dex */
public final class C1245g {

    /* renamed from: a */
    private static final String f4637a = "RomUtils";

    /* renamed from: a */
    public static double m5590a() {
        try {
            String m5591a = m5591a("ro.build.version.emui");
            return Double.parseDouble(m5591a.substring(m5591a.indexOf("_") + 1));
        } catch (Exception e) {
            e.printStackTrace();
            return 4.0d;
        }
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0064: MOVE (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:27:0x0064 */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0067 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String m5591a(java.lang.String r6) {
        /*
            r0 = 0
            java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L3f
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L3f
            java.lang.String r3 = "getprop "
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L3f
            r2.append(r6)     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L3f
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L3f
            java.lang.Process r1 = r1.exec(r2)     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L3f
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L3f
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L3f
            java.io.InputStream r1 = r1.getInputStream()     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L3f
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L3f
            r1 = 1024(0x400, float:1.435E-42)
            r2.<init>(r3, r1)     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L3f
            java.lang.String r1 = r2.readLine()     // Catch: java.io.IOException -> L3b java.lang.Throwable -> L63
            r2.close()     // Catch: java.io.IOException -> L3b java.lang.Throwable -> L63
            r2.close()     // Catch: java.io.IOException -> L32
            return r1
        L32:
            r6 = move-exception
            java.lang.String r0 = "RomUtils"
            java.lang.String r2 = "Exception while closing InputStream"
            android.util.Log.e(r0, r2, r6)
            return r1
        L3b:
            r1 = move-exception
            goto L41
        L3d:
            r6 = move-exception
            goto L65
        L3f:
            r1 = move-exception
            r2 = r0
        L41:
            java.lang.String r3 = "RomUtils"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L63
            java.lang.String r5 = "Unable to read sysprop "
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L63
            r4.append(r6)     // Catch: java.lang.Throwable -> L63
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L63
            android.util.Log.e(r3, r6, r1)     // Catch: java.lang.Throwable -> L63
            if (r2 == 0) goto L62
            r2.close()     // Catch: java.io.IOException -> L5a
            return r0
        L5a:
            r6 = move-exception
            java.lang.String r1 = "RomUtils"
            java.lang.String r2 = "Exception while closing InputStream"
            android.util.Log.e(r1, r2, r6)
        L62:
            return r0
        L63:
            r6 = move-exception
            r0 = r2
        L65:
            if (r0 == 0) goto L73
            r0.close()     // Catch: java.io.IOException -> L6b
            goto L73
        L6b:
            r0 = move-exception
            java.lang.String r1 = "RomUtils"
            java.lang.String r2 = "Exception while closing InputStream"
            android.util.Log.e(r1, r2, r0)
        L73:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.elfin.p077e.p078a.C1245g.m5591a(java.lang.String):java.lang.String");
    }

    /* renamed from: b */
    public static boolean m5592b() {
        return Build.MANUFACTURER.contains("HUAWEI");
    }

    /* renamed from: c */
    public static boolean m5593c() {
        return !TextUtils.isEmpty(m5591a("ro.miui.ui.version.name"));
    }

    /* renamed from: d */
    public static boolean m5594d() {
        String m5591a = m5591a("ro.build.display.id");
        if (TextUtils.isEmpty(m5591a)) {
            return false;
        }
        return m5591a.contains("flyme") || m5591a.toLowerCase().contains("flyme");
    }

    /* renamed from: e */
    public static boolean m5595e() {
        return Build.MANUFACTURER.contains("QiKU") || Build.MANUFACTURER.contains("360");
    }

    /* renamed from: f */
    public static boolean m5596f() {
        return Build.MANUFACTURER.contains(C1148aa.f4032d) || Build.MANUFACTURER.contains("oppo");
    }

    /* renamed from: g */
    private static int m5597g() {
        String m5591a = m5591a("ro.miui.ui.version.name");
        if (m5591a == null) {
            return -1;
        }
        try {
            return Integer.parseInt(m5591a.substring(1));
        } catch (Exception unused) {
            Log.e(f4637a, "get miui version code error, version : " + m5591a);
            return -1;
        }
    }
}
