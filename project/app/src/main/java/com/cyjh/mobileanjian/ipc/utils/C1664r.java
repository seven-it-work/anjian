package com.cyjh.mobileanjian.ipc.utils;

import android.content.Context;
import android.support.v4.os.EnvironmentCompat;
import com.cyjh.common.util.C1176s;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;

/* renamed from: com.cyjh.mobileanjian.ipc.utils.r */
/* loaded from: classes.dex */
public final class C1664r {

    /* renamed from: a */
    private static String f6426a = "";

    /* JADX WARN: Removed duplicated region for block: B:17:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0053 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String m7523a() {
        /*
            java.lang.String r0 = ""
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.io.IOException -> L37
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.io.IOException -> L37
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.io.IOException -> L37
            java.lang.String r4 = "/proc/cpuinfo"
            r3.<init>(r4)     // Catch: java.io.IOException -> L37
            r2.<init>(r3)     // Catch: java.io.IOException -> L37
            r1.<init>(r2)     // Catch: java.io.IOException -> L37
        L13:
            java.lang.String r2 = r1.readLine()     // Catch: java.io.IOException -> L37
            if (r2 == 0) goto L34
            java.lang.String r3 = "Serial"
            boolean r3 = r2.startsWith(r3)     // Catch: java.io.IOException -> L37
            if (r3 == 0) goto L13
            java.lang.String r3 = ":"
            int r3 = r2.indexOf(r3)     // Catch: java.io.IOException -> L37
            int r3 = r3 + 1
            java.lang.String r2 = r2.substring(r3)     // Catch: java.io.IOException -> L37
            java.lang.String r0 = r2.trim()     // Catch: java.io.IOException -> L32
            goto L13
        L32:
            r0 = r2
            goto L37
        L34:
            r1.close()     // Catch: java.io.IOException -> L37
        L37:
            if (r0 != 0) goto L3b
            java.lang.String r0 = ""
        L3b:
            r1 = 0
        L3c:
            int r2 = r0.length()
            if (r1 >= r2) goto L4d
            char r2 = r0.charAt(r1)
            r3 = 48
            if (r2 != r3) goto L4d
            int r1 = r1 + 1
            goto L3c
        L4d:
            int r2 = r0.length()
            if (r1 != r2) goto L55
            java.lang.String r0 = ""
        L55:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.utils.C1664r.m7523a():java.lang.String");
    }

    /* renamed from: a */
    public static String m7524a(Context context) {
        String m7529d = m7529d(context);
        return (m7529d.endsWith("null") || m7529d.endsWith(EnvironmentCompat.MEDIA_UNKNOWN)) ? m7531f(context) : m7529d;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* renamed from: a */
    private static String m7525a(Context context, boolean z) {
        String str;
        String m7528c = m7528c(context);
        String m7523a = m7523a();
        String m7526b = m7526b();
        if (!z || m7528c == null || m7528c == "") {
            if (m7528c != null && m7528c != "") {
                m7523a = m7528c;
            }
            str = (m7523a == null || m7523a == "") ? m7526b : m7523a;
        } else if (m7526b == null || m7526b == "") {
            str = m7528c;
        } else {
            str = m7528c + "-" + m7526b;
        }
        StringBuilder sb = m7528c == "" ? new StringBuilder("imei:none-") : new StringBuilder("imei:");
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: b */
    private static String m7526b() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, "ro.serialno", "cyjhuser");
        } catch (ClassNotFoundException unused) {
            return "";
        } catch (IllegalAccessException | InvocationTargetException unused2) {
            return "";
        } catch (NoSuchMethodException unused3) {
            return "";
        }
    }

    /* renamed from: b */
    public static boolean m7527b(Context context) {
        String m7529d = m7529d(context);
        return m7529d.endsWith("null") || m7529d.endsWith(EnvironmentCompat.MEDIA_UNKNOWN);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0046  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String m7528c(android.content.Context r6) {
        /*
            java.lang.String r0 = ""
            r1 = 0
            java.lang.String r2 = "phone"
            java.lang.Object r2 = r6.getSystemService(r2)     // Catch: java.lang.Exception -> L14
            android.telephony.TelephonyManager r2 = (android.telephony.TelephonyManager) r2     // Catch: java.lang.Exception -> L14
            int r3 = r2.getPhoneType()     // Catch: java.lang.Exception -> L14
            java.lang.String r2 = r2.getDeviceId()     // Catch: java.lang.Exception -> L15
            goto L17
        L14:
            r3 = 0
        L15:
            java.lang.String r2 = ""
        L17:
            java.lang.String r4 = "phone"
            java.lang.Object r6 = r6.getSystemService(r4)     // Catch: java.lang.Exception -> L28
            android.telephony.TelephonyManager r6 = (android.telephony.TelephonyManager) r6     // Catch: java.lang.Exception -> L28
            int r4 = r6.getPhoneType()     // Catch: java.lang.Exception -> L28
            java.lang.String r6 = r6.getDeviceId()     // Catch: java.lang.Exception -> L29
            goto L2b
        L28:
            r4 = 0
        L29:
            java.lang.String r6 = ""
        L2b:
            r1 = 1
            r5 = 2
            if (r3 != r1) goto L46
            if (r4 != r5) goto L5f
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r2)
            java.lang.String r1 = "|"
            r0.append(r1)
            r0.append(r6)
        L41:
            java.lang.String r0 = r0.toString()
            return r0
        L46:
            if (r4 != r1) goto L5d
            if (r3 != r5) goto L5b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r6)
            java.lang.String r6 = "|"
            r0.append(r6)
            r0.append(r2)
            goto L41
        L5b:
            r0 = r6
            return r0
        L5d:
            if (r3 != r5) goto L60
        L5f:
            r0 = r2
        L60:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.utils.C1664r.m7528c(android.content.Context):java.lang.String");
    }

    /* renamed from: d */
    private static String m7529d(Context context) {
        String str;
        String m7525a = m7525a(context, false);
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/cpuinfo")));
            while (true) {
                str = bufferedReader.readLine();
                if (str == null) {
                    break;
                }
                if (str.startsWith("Hardware")) {
                    str = str.split(":")[1].trim().replaceAll(C1176s.a.f4108a, "_");
                    break;
                }
            }
            bufferedReader.close();
        } catch (FileNotFoundException | IOException | Exception unused) {
            str = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        return m7525a + "[arm]@_@" + str;
    }

    /* renamed from: e */
    private static String m7530e(Context context) {
        return m7525a(context, true) + "[x86]@_@model";
    }

    /* renamed from: f */
    private static String m7531f(Context context) {
        String str;
        String m7525a = m7525a(context, true);
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/cpuinfo")));
            while (true) {
                str = bufferedReader.readLine();
                if (str == null) {
                    break;
                }
                if (str.startsWith("model name")) {
                    str = str.split(":")[1].trim().replaceAll(C1176s.a.f4108a, "_");
                    break;
                }
            }
            bufferedReader.close();
        } catch (FileNotFoundException | IOException | Exception unused) {
            str = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        return m7525a + "[x86]@_@" + str;
    }

    /* renamed from: g */
    private static String m7532g(Context context) {
        if (f6426a != "") {
            return f6426a;
        }
        String m7529d = m7529d(context);
        if (m7529d.endsWith("null") || m7529d.endsWith(EnvironmentCompat.MEDIA_UNKNOWN)) {
            m7529d = m7525a(context, true) + "[x86]@_@model";
        }
        f6426a = m7529d;
        return m7529d;
    }
}
