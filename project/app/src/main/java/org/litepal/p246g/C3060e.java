package org.litepal.p246g;

import android.content.SharedPreferences;
import android.text.TextUtils;
import org.litepal.LitePalApplication;
import org.litepal.p246g.InterfaceC3057b;

/* renamed from: org.litepal.g.e */
/* loaded from: classes2.dex */
public final class C3060e {

    /* renamed from: a */
    private static final String f11222a = "litepal_version";

    /* renamed from: b */
    private static final String f11223b = "litepal_prefs";

    /* renamed from: a */
    public static void m13973a(String str) {
        String str2;
        SharedPreferences.Editor edit = LitePalApplication.m13404a().getSharedPreferences(f11223b, 0).edit();
        if (TextUtils.isEmpty(str)) {
            str2 = f11222a;
        } else {
            if (str.endsWith(InterfaceC3057b.a.f11199a)) {
                str = str.replace(InterfaceC3057b.a.f11199a, "");
            }
            str2 = "litepal_version_" + str;
        }
        edit.remove(str2);
        edit.apply();
    }

    /* renamed from: a */
    private static void m13974a(String str, int i) {
        String str2;
        SharedPreferences.Editor edit = LitePalApplication.m13404a().getSharedPreferences(f11223b, 0).edit();
        if (TextUtils.isEmpty(str)) {
            str2 = f11222a;
        } else {
            if (str.endsWith(InterfaceC3057b.a.f11199a)) {
                str = str.replace(InterfaceC3057b.a.f11199a, "");
            }
            str2 = "litepal_version_" + str;
        }
        edit.putInt(str2, i);
        edit.apply();
    }

    /* renamed from: b */
    private static int m13975b(String str) {
        String str2;
        SharedPreferences sharedPreferences = LitePalApplication.m13404a().getSharedPreferences(f11223b, 0);
        if (TextUtils.isEmpty(str)) {
            str2 = f11222a;
        } else {
            if (str.endsWith(InterfaceC3057b.a.f11199a)) {
                str = str.replace(InterfaceC3057b.a.f11199a, "");
            }
            str2 = "litepal_version_" + str;
        }
        return sharedPreferences.getInt(str2, 0);
    }
}
