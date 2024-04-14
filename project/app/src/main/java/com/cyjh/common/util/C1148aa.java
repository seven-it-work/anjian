package com.cyjh.common.util;

import android.os.Build;
import android.support.v4.os.EnvironmentCompat;
import android.text.TextUtils;

/* renamed from: com.cyjh.common.util.aa */
/* loaded from: classes.dex */
public final class C1148aa {

    /* renamed from: a */
    public static final String f4029a = "MIUI";

    /* renamed from: b */
    public static final String f4030b = "EMUI";

    /* renamed from: c */
    public static final String f4031c = "FLYME";

    /* renamed from: d */
    public static final String f4032d = "OPPO";

    /* renamed from: e */
    public static final String f4033e = "SMARTISAN";

    /* renamed from: f */
    public static final String f4034f = "VIVO";

    /* renamed from: g */
    public static final String f4035g = "QIKU";

    /* renamed from: h */
    public static String f4036h = null;

    /* renamed from: i */
    private static final String f4037i = "Rom";

    /* renamed from: j */
    private static final String f4038j = "ro.miui.ui.version.name";

    /* renamed from: k */
    private static final String f4039k = "ro.build.version.emui";

    /* renamed from: l */
    private static final String f4040l = "ro.build.version.opporom";

    /* renamed from: m */
    private static final String f4041m = "ro.smartisan.version";

    /* renamed from: n */
    private static final String f4042n = "ro.vivo.os.version";

    /* renamed from: o */
    private static String f4043o;

    /* JADX WARN: Removed duplicated region for block: B:30:0x005f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String m4294a(java.lang.String r6) {
        /*
            r0 = 0
            java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3b
            java.lang.String r3 = "getprop "
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3b
            r2.append(r6)     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3b
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3b
            java.lang.Process r1 = r1.exec(r2)     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3b
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3b
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3b
            java.io.InputStream r1 = r1.getInputStream()     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3b
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3b
            r1 = 1024(0x400, float:1.435E-42)
            r2.<init>(r3, r1)     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3b
            java.lang.String r1 = r2.readLine()     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L5b
            r2.close()     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L5b
            r2.close()     // Catch: java.io.IOException -> L32
            return r1
        L32:
            r6 = move-exception
            r6.printStackTrace()
            return r1
        L37:
            r1 = move-exception
            goto L3d
        L39:
            r6 = move-exception
            goto L5d
        L3b:
            r1 = move-exception
            r2 = r0
        L3d:
            java.lang.String r3 = "Rom"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5b
            java.lang.String r5 = "Unable to read prop "
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L5b
            r4.append(r6)     // Catch: java.lang.Throwable -> L5b
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L5b
            android.util.Log.e(r3, r6, r1)     // Catch: java.lang.Throwable -> L5b
            if (r2 == 0) goto L5a
            r2.close()     // Catch: java.io.IOException -> L56
            return r0
        L56:
            r6 = move-exception
            r6.printStackTrace()
        L5a:
            return r0
        L5b:
            r6 = move-exception
            r0 = r2
        L5d:
            if (r0 == 0) goto L67
            r0.close()     // Catch: java.io.IOException -> L63
            goto L67
        L63:
            r0 = move-exception
            r0.printStackTrace()
        L67:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.common.util.C1148aa.m4294a(java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    private static boolean m4295a() {
        return m4297b(f4030b);
    }

    /* renamed from: b */
    private static boolean m4296b() {
        return m4297b(f4029a);
    }

    /* renamed from: b */
    private static boolean m4297b(String str) {
        String upperCase;
        if (f4043o == null) {
            String m4294a = m4294a(f4038j);
            f4036h = m4294a;
            if (TextUtils.isEmpty(m4294a)) {
                String m4294a2 = m4294a(f4039k);
                f4036h = m4294a2;
                if (TextUtils.isEmpty(m4294a2)) {
                    String m4294a3 = m4294a(f4040l);
                    f4036h = m4294a3;
                    if (TextUtils.isEmpty(m4294a3)) {
                        String m4294a4 = m4294a(f4042n);
                        f4036h = m4294a4;
                        if (TextUtils.isEmpty(m4294a4)) {
                            String m4294a5 = m4294a(f4041m);
                            f4036h = m4294a5;
                            if (TextUtils.isEmpty(m4294a5)) {
                                String str2 = Build.DISPLAY;
                                f4036h = str2;
                                if (str2.toUpperCase().contains(f4031c)) {
                                    upperCase = f4031c;
                                } else {
                                    f4036h = EnvironmentCompat.MEDIA_UNKNOWN;
                                    upperCase = Build.MANUFACTURER.toUpperCase();
                                }
                            } else {
                                upperCase = f4033e;
                            }
                        } else {
                            upperCase = f4034f;
                        }
                    } else {
                        upperCase = f4032d;
                    }
                } else {
                    upperCase = f4030b;
                }
            } else {
                upperCase = f4029a;
            }
            f4043o = upperCase;
        }
        return f4043o.equals(str);
    }

    /* renamed from: c */
    private static boolean m4298c() {
        return m4297b(f4034f);
    }

    /* renamed from: d */
    private static boolean m4299d() {
        return m4297b(f4032d);
    }

    /* renamed from: e */
    private static boolean m4300e() {
        return m4297b(f4031c);
    }

    /* renamed from: f */
    private static boolean m4301f() {
        return m4297b(f4035g) || m4297b("360");
    }

    /* renamed from: g */
    private static boolean m4302g() {
        return m4297b(f4033e);
    }

    /* renamed from: h */
    private static String m4303h() {
        if (f4043o == null) {
            m4297b("");
        }
        return f4043o;
    }

    /* renamed from: i */
    private static String m4304i() {
        if (f4036h == null) {
            m4297b("");
        }
        return f4036h;
    }

    /* renamed from: j */
    private static String m4305j() {
        String m4294a = m4294a(f4038j);
        f4036h = m4294a;
        if (!TextUtils.isEmpty(m4294a)) {
            return f4029a;
        }
        String m4294a2 = m4294a(f4039k);
        f4036h = m4294a2;
        if (!TextUtils.isEmpty(m4294a2)) {
            return f4030b;
        }
        String m4294a3 = m4294a(f4040l);
        f4036h = m4294a3;
        if (!TextUtils.isEmpty(m4294a3)) {
            return f4032d;
        }
        String m4294a4 = m4294a(f4042n);
        f4036h = m4294a4;
        if (!TextUtils.isEmpty(m4294a4)) {
            return f4034f;
        }
        String m4294a5 = m4294a(f4041m);
        f4036h = m4294a5;
        if (!TextUtils.isEmpty(m4294a5)) {
            return f4033e;
        }
        String str = Build.DISPLAY;
        f4036h = str;
        if (str.toUpperCase().contains(f4031c)) {
            return f4031c;
        }
        f4036h = EnvironmentCompat.MEDIA_UNKNOWN;
        String upperCase = Build.MANUFACTURER.toUpperCase();
        return TextUtils.isEmpty(upperCase) ? "0" : upperCase;
    }
}
