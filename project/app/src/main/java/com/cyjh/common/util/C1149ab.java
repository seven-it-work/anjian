package com.cyjh.common.util;

import android.content.Context;
import android.content.SharedPreferences;

/* renamed from: com.cyjh.common.util.ab */
/* loaded from: classes.dex */
public class C1149ab {

    /* renamed from: b */
    private static C1149ab f4044b = null;

    /* renamed from: c */
    private static String f4045c = "com.cyjh.elfin.base.AppContext";

    /* renamed from: a */
    public SharedPreferences f4046a;

    /* renamed from: a */
    public static C1149ab m4306a() {
        if (f4044b == null) {
            synchronized (C1149ab.class) {
                if (f4044b == null) {
                    f4044b = new C1149ab();
                }
            }
        }
        return f4044b;
    }

    /* renamed from: a */
    private void m4307a(Context context) {
        this.f4046a = new SharedPreferencesC1155ah(context);
    }

    /* renamed from: a */
    private void m4308a(String str) {
        if (this.f4046a == null) {
            return;
        }
        this.f4046a.edit().remove(str).apply();
    }

    /* renamed from: a */
    private void m4309a(String str, int i) {
        if (this.f4046a == null) {
            return;
        }
        this.f4046a.edit().putInt(str, i).apply();
    }

    /* renamed from: b */
    private int m4310b(String str, int i) {
        if (this.f4046a == null) {
            return 0;
        }
        return this.f4046a.getInt(str, i);
    }

    /* renamed from: b */
    private String m4311b(String str, String str2) {
        if (this.f4046a == null) {
            return null;
        }
        return this.f4046a.getString(str, str2);
    }

    /* renamed from: a */
    public final void m4312a(String str, Boolean bool) {
        if (this.f4046a == null) {
            return;
        }
        this.f4046a.edit().putBoolean(str, bool.booleanValue()).apply();
    }

    /* renamed from: a */
    public final void m4313a(String str, String str2) {
        if (this.f4046a == null) {
            return;
        }
        this.f4046a.edit().putString(str, str2).apply();
    }

    /* renamed from: b */
    public final boolean m4314b(String str, Boolean bool) {
        if (this.f4046a == null) {
            return false;
        }
        return this.f4046a.getBoolean(str, bool.booleanValue());
    }
}
