package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;

/* renamed from: com.umeng.analytics.pro.t */
/* loaded from: classes.dex */
public final class C2445t {

    /* renamed from: a */
    private static C2445t f9174a = null;

    /* renamed from: b */
    private static Context f9175b = null;

    /* renamed from: c */
    private static String f9176c = null;

    /* renamed from: d */
    private static final String f9177d = "mobclick_agent_user_";

    /* renamed from: com.umeng.analytics.pro.t$a */
    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a */
        private static final C2445t f9178a = new C2445t();

        private a() {
        }
    }

    /* renamed from: a */
    public static synchronized C2445t m10624a(Context context) {
        C2445t c2445t;
        synchronized (C2445t.class) {
            if (f9175b == null && context != null) {
                f9175b = context.getApplicationContext();
            }
            if (f9175b != null) {
                f9176c = context.getPackageName();
            }
            c2445t = a.f9178a;
        }
        return c2445t;
    }

    /* renamed from: e */
    private SharedPreferences m10625e() {
        if (f9175b == null) {
            return null;
        }
        return f9175b.getSharedPreferences(f9177d + f9176c, 0);
    }

    /* renamed from: a */
    public final void m10626a(int i) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f9175b);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putInt("vt", i).commit();
        }
    }

    /* renamed from: a */
    public final void m10627a(String str) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f9175b);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString("st", str).commit();
        }
    }

    /* renamed from: a */
    public final void m10628a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        SharedPreferences.Editor edit = m10625e().edit();
        edit.putString("au_p", str);
        edit.putString("au_u", str2);
        edit.commit();
    }

    /* renamed from: a */
    public final String[] m10629a() {
        SharedPreferences m10625e = m10625e();
        if (m10625e == null) {
            return null;
        }
        String string = m10625e.getString("au_p", null);
        String string2 = m10625e.getString("au_u", null);
        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
            return null;
        }
        return new String[]{string, string2};
    }

    /* renamed from: b */
    public final void m10630b() {
        SharedPreferences m10625e = m10625e();
        if (m10625e != null) {
            m10625e.edit().remove("au_p").remove("au_u").commit();
        }
    }

    /* renamed from: c */
    public final String m10631c() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f9175b);
        if (sharedPreferences != null) {
            return sharedPreferences.getString("st", null);
        }
        return null;
    }

    /* renamed from: d */
    public final int m10632d() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f9175b);
        if (sharedPreferences != null) {
            return sharedPreferences.getInt("vt", 0);
        }
        return 0;
    }
}
