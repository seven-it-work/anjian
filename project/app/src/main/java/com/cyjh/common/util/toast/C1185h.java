package com.cyjh.common.util.toast;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.util.Locale;

/* renamed from: com.cyjh.common.util.toast.h */
/* loaded from: classes.dex */
public final class C1185h {

    /* renamed from: a */
    private static final String f4146a = "KEY_LOCALE";

    /* renamed from: b */
    private static final String f4147b = "VALUE_FOLLOW_SYSTEM";

    private C1185h() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    private static Locale m4868a(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? configuration.getLocales().get(0) : configuration.locale;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001c, code lost:
    
        r0 = false;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.Locale m4869a(java.lang.String r8) {
        /*
            char[] r0 = r8.toCharArray()
            int r1 = r0.length
            r2 = 0
            r3 = 0
            r4 = 0
        L8:
            r5 = 1
            if (r3 >= r1) goto L18
            char r6 = r0[r3]
            r7 = 36
            if (r6 != r7) goto L15
            if (r4 > 0) goto L1c
            int r4 = r4 + 1
        L15:
            int r3 = r3 + 1
            goto L8
        L18:
            if (r4 != r5) goto L1c
            r0 = 1
            goto L1d
        L1c:
            r0 = 0
        L1d:
            r1 = 0
            if (r0 != 0) goto L21
            return r1
        L21:
            java.lang.String r0 = "$"
            int r0 = r8.indexOf(r0)     // Catch: java.lang.Exception -> L36
            java.util.Locale r3 = new java.util.Locale     // Catch: java.lang.Exception -> L36
            java.lang.String r2 = r8.substring(r2, r0)     // Catch: java.lang.Exception -> L36
            int r0 = r0 + r5
            java.lang.String r8 = r8.substring(r0)     // Catch: java.lang.Exception -> L36
            r3.<init>(r2, r8)     // Catch: java.lang.Exception -> L36
            return r3
        L36:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.common.util.toast.C1185h.m4869a(java.lang.String):java.util.Locale");
    }

    /* renamed from: a */
    private static void m4870a(Activity activity) {
        Locale locale;
        String string = C1188k.m4887a("Utils").f4149a.getString(f4146a, "");
        if (TextUtils.isEmpty(string)) {
            return;
        }
        if (f4147b.equals(string)) {
            Configuration configuration = Resources.getSystem().getConfiguration();
            locale = Build.VERSION.SDK_INT >= 24 ? configuration.getLocales().get(0) : configuration.locale;
        } else {
            Locale m4869a = m4869a(string);
            if (m4869a == null) {
                Log.e("LanguageUtils", "The string of " + string + " is not in the correct format.");
                C1188k.m4887a("Utils").f4149a.edit().remove(f4146a).apply();
            }
            locale = m4869a;
        }
        if (locale == null) {
            return;
        }
        m4871a(activity, locale);
        m4871a(C1194q.m5135a(), locale);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m4871a(Context context, Locale locale) {
        Resources resources = context.getResources();
        Configuration configuration = resources.getConfiguration();
        if (Build.VERSION.SDK_INT >= 17) {
            configuration.setLocale(locale);
        } else {
            configuration.locale = locale;
        }
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
    }

    /* renamed from: a */
    private static void m4872a(Configuration configuration, Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            configuration.setLocale(locale);
        } else {
            configuration.locale = locale;
        }
    }

    /* renamed from: b */
    private static Locale m4873b(String str) {
        Locale m4869a = m4869a(str);
        if (m4869a == null) {
            Log.e("LanguageUtils", "The string of " + str + " is not in the correct format.");
            C1188k.m4887a("Utils").f4149a.edit().remove(f4146a).apply();
        }
        return m4869a;
    }

    /* renamed from: c */
    private static boolean m4874c(String str) {
        int i = 0;
        for (char c2 : str.toCharArray()) {
            if (c2 == '$') {
                if (i > 0) {
                    return false;
                }
                i++;
            }
        }
        return i == 1;
    }
}
