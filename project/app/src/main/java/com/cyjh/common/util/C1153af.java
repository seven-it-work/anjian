package com.cyjh.common.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.cyjh.common.p066a.C1132a;

/* renamed from: com.cyjh.common.util.af */
/* loaded from: classes.dex */
public class C1153af {

    /* renamed from: b */
    public static final String f4059b = "app_version";

    /* renamed from: c */
    public static final String f4060c = "last_app_version";

    /* renamed from: d */
    private static final String f4061d = "af";

    /* renamed from: e */
    private static C1153af f4062e;

    /* renamed from: a */
    public SharedPreferences f4063a;

    /* renamed from: a */
    public static C1153af m4332a() {
        if (f4062e == null) {
            synchronized (C1153af.class) {
                if (f4062e == null) {
                    f4062e = new C1153af();
                }
            }
        }
        return f4062e;
    }

    /* renamed from: a */
    private void m4333a(Context context, String str) {
        this.f4063a = context.getSharedPreferences(str, 0);
    }

    /* renamed from: a */
    private void m4334a(SharedPreferences sharedPreferences) {
        this.f4063a = sharedPreferences;
    }

    /* renamed from: d */
    private static void m4335d() {
    }

    /* renamed from: a */
    public final void m4336a(String str) {
        C1151ad.m4324b("saveVersion ", "appVersion:" + str);
        if (this.f4063a != null) {
            try {
                this.f4063a.edit().putString("app_version", str).apply();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: b */
    public final String m4337b() {
        return this.f4063a != null ? this.f4063a.getString("app_version", C1132a.m4191a()) : C1132a.m4191a();
    }

    /* renamed from: b */
    public final void m4338b(String str) {
        C1151ad.m4324b("setLastAppVersion", "appVersion:" + str);
        if (this.f4063a != null) {
            try {
                this.f4063a.edit().putString(f4060c, str).apply();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: c */
    public final String m4339c() {
        return this.f4063a != null ? this.f4063a.getString(f4060c, C1132a.m4191a()) : C1132a.m4191a();
    }
}
