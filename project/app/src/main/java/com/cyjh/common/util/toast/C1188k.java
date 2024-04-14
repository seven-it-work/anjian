package com.cyjh.common.util.toast;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import android.support.annotation.NonNull;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@SuppressLint({"ApplySharedPref"})
/* renamed from: com.cyjh.common.util.toast.k */
/* loaded from: classes.dex */
public final class C1188k {

    /* renamed from: b */
    private static final Map<String, C1188k> f4148b = new HashMap();

    /* renamed from: a */
    SharedPreferences f4149a;

    private C1188k(String str) {
        this.f4149a = C1194q.m5135a().getSharedPreferences(str, 0);
    }

    private C1188k(String str, int i) {
        this.f4149a = C1194q.m5135a().getSharedPreferences(str, i);
    }

    /* renamed from: a */
    private static C1188k m4885a() {
        return m4888a("", 0);
    }

    /* renamed from: a */
    private static C1188k m4886a(int i) {
        return m4888a("", i);
    }

    /* renamed from: a */
    public static C1188k m4887a(String str) {
        return m4888a(str, 0);
    }

    /* renamed from: a */
    private static C1188k m4888a(String str, int i) {
        C1188k c1188k;
        boolean z = false;
        if (str != null) {
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                if (!Character.isWhitespace(str.charAt(i2))) {
                    break;
                }
            }
        }
        z = true;
        if (z) {
            str = "spUtils";
        }
        C1188k c1188k2 = f4148b.get(str);
        if (c1188k2 != null) {
            return c1188k2;
        }
        synchronized (C1188k.class) {
            c1188k = f4148b.get(str);
            if (c1188k == null) {
                c1188k = new C1188k(str, i);
                f4148b.put(str, c1188k);
            }
        }
        return c1188k;
    }

    /* renamed from: a */
    private void m4889a(@NonNull String str, float f) {
        this.f4149a.edit().putFloat(str, f).apply();
    }

    /* renamed from: a */
    private void m4890a(@NonNull String str, long j) {
        this.f4149a.edit().putLong(str, j).apply();
    }

    /* renamed from: a */
    private void m4891a(@NonNull String str, String str2) {
        this.f4149a.edit().putString(str, str2).apply();
    }

    /* renamed from: a */
    private void m4892a(@NonNull String str, Set<String> set) {
        this.f4149a.edit().putStringSet(str, set).apply();
    }

    /* renamed from: a */
    private void m4893a(@NonNull String str, boolean z) {
        this.f4149a.edit().putBoolean(str, z).apply();
    }

    /* renamed from: b */
    private String m4894b(@NonNull String str) {
        return this.f4149a.getString(str, "");
    }

    /* renamed from: b */
    private Map<String, ?> m4895b() {
        return this.f4149a.getAll();
    }

    /* renamed from: b */
    private void m4896b(@NonNull String str, float f) {
        this.f4149a.edit().putFloat(str, f).apply();
    }

    /* renamed from: b */
    private void m4897b(@NonNull String str, int i) {
        this.f4149a.edit().putInt(str, i).apply();
    }

    /* renamed from: b */
    private void m4898b(@NonNull String str, long j) {
        this.f4149a.edit().putLong(str, j).apply();
    }

    /* renamed from: b */
    private void m4899b(@NonNull String str, String str2) {
        this.f4149a.edit().putString(str, str2).apply();
    }

    /* renamed from: b */
    private void m4900b(@NonNull String str, Set<String> set) {
        this.f4149a.edit().putStringSet(str, set).apply();
    }

    /* renamed from: b */
    private void m4901b(@NonNull String str, boolean z) {
        this.f4149a.edit().putBoolean(str, z).apply();
    }

    /* renamed from: c */
    private int m4902c(@NonNull String str) {
        return this.f4149a.getInt(str, -1);
    }

    /* renamed from: c */
    private String m4903c(@NonNull String str, String str2) {
        return this.f4149a.getString(str, str2);
    }

    /* renamed from: c */
    private Set<String> m4904c(@NonNull String str, Set<String> set) {
        return this.f4149a.getStringSet(str, set);
    }

    /* renamed from: c */
    private void m4905c() {
        this.f4149a.edit().clear().apply();
    }

    /* renamed from: c */
    private void m4906c(@NonNull String str, int i) {
        this.f4149a.edit().putInt(str, i).apply();
    }

    /* renamed from: d */
    private int m4907d(@NonNull String str) {
        return this.f4149a.getInt(str, -1);
    }

    /* renamed from: d */
    private void m4908d() {
        this.f4149a.edit().clear().apply();
    }

    /* renamed from: e */
    private long m4909e(@NonNull String str) {
        return this.f4149a.getLong(str, -1L);
    }

    /* renamed from: f */
    private long m4910f(@NonNull String str) {
        return this.f4149a.getLong(str, -1L);
    }

    /* renamed from: g */
    private float m4911g(@NonNull String str) {
        return this.f4149a.getFloat(str, -1.0f);
    }

    /* renamed from: h */
    private float m4912h(@NonNull String str) {
        return this.f4149a.getFloat(str, -1.0f);
    }

    /* renamed from: i */
    private boolean m4913i(@NonNull String str) {
        return this.f4149a.getBoolean(str, false);
    }

    /* renamed from: j */
    private boolean m4914j(@NonNull String str) {
        return this.f4149a.getBoolean(str, false);
    }

    /* renamed from: k */
    private Set<String> m4915k(@NonNull String str) {
        return this.f4149a.getStringSet(str, Collections.emptySet());
    }

    /* renamed from: l */
    private boolean m4916l(@NonNull String str) {
        return this.f4149a.contains(str);
    }

    /* renamed from: m */
    private void m4917m(@NonNull String str) {
        this.f4149a.edit().remove(str).apply();
    }

    /* renamed from: n */
    private void m4918n(@NonNull String str) {
        this.f4149a.edit().remove(str).apply();
    }

    /* renamed from: o */
    private static boolean m4919o(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }
}
