package org.litepal.p242f;

import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.os.Environment;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import com.umeng.analytics.pro.C2428c;
import com.umeng.commonsdk.framework.C2452c;
import java.io.File;
import org.litepal.LitePalApplication;
import org.litepal.p239c.C3021b;
import org.litepal.p239c.C3023d;
import org.litepal.p241e.C3029a;
import org.litepal.p246g.C3054a;
import org.litepal.p246g.InterfaceC3057b;

/* renamed from: org.litepal.f.c */
/* loaded from: classes2.dex */
public final class C3041c {

    /* renamed from: a */
    private static C3052g f11181a;

    /* renamed from: a */
    public static synchronized SQLiteDatabase m13891a() {
        String str;
        SQLiteDatabase writableDatabase;
        synchronized (C3041c.class) {
            C3029a m13714a = C3029a.m13714a();
            if (TextUtils.isEmpty(m13714a.f11059b)) {
                C3029a.m13718b();
                if (TextUtils.isEmpty(m13714a.f11059b)) {
                    throw new C3023d(C3023d.DBNAME_IS_EMPTY_OR_NOT_DEFINED);
                }
            }
            if (!m13714a.f11059b.endsWith(InterfaceC3057b.a.f11199a)) {
                m13714a.f11059b += InterfaceC3057b.a.f11199a;
            }
            if (m13714a.f11058a <= 0) {
                throw new C3023d(C3023d.VERSION_OF_DATABASE_LESS_THAN_ONE);
            }
            int i = m13714a.f11058a;
            String str2 = m13714a.f11063f;
            SharedPreferences sharedPreferences = LitePalApplication.m13404a().getSharedPreferences("litepal_prefs", 0);
            if (TextUtils.isEmpty(str2)) {
                str = "litepal_version";
            } else {
                if (str2.endsWith(InterfaceC3057b.a.f11199a)) {
                    str2 = str2.replace(InterfaceC3057b.a.f11199a, "");
                }
                str = "litepal_version_" + str2;
            }
            if (i < sharedPreferences.getInt(str, 0)) {
                throw new C3023d(C3023d.VERSION_IS_EARLIER_THAN_CURRENT);
            }
            if (TextUtils.isEmpty(m13714a.f11060c)) {
                m13714a.f11060c = InterfaceC3057b.a.f11201c;
            } else if (!m13714a.f11060c.equals(InterfaceC3057b.a.f11200b) && !m13714a.f11060c.equals(InterfaceC3057b.a.f11201c) && !m13714a.f11060c.equals(InterfaceC3057b.a.f11202d)) {
                throw new C3023d(m13714a.f11060c + C3023d.CASES_VALUE_IS_INVALID);
            }
            if (f11181a == null) {
                String str3 = m13714a.f11059b;
                if ("external".equalsIgnoreCase(m13714a.f11061d)) {
                    str3 = LitePalApplication.m13404a().getExternalFilesDir("") + C2428c.f9004b + str3;
                } else if (!C2452c.f9206d.equalsIgnoreCase(m13714a.f11061d) && !TextUtils.isEmpty(m13714a.f11061d)) {
                    String replace = (Environment.getExternalStorageDirectory().getPath() + "/" + m13714a.f11061d).replace("//", "/");
                    if (C3054a.m13933a("android.support.v4.content.ContextCompat", "checkSelfPermission") && ContextCompat.checkSelfPermission(LitePalApplication.m13404a(), "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                        throw new C3021b(String.format(C3021b.EXTERNAL_STORAGE_PERMISSION_DENIED, replace));
                    }
                    File file = new File(replace);
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    str3 = replace + "/" + str3;
                }
                f11181a = new C3052g(str3, m13714a.f11058a);
            }
            writableDatabase = f11181a.getWritableDatabase();
        }
        return writableDatabase;
    }

    /* renamed from: b */
    public static void m13892b() {
        if (f11181a != null) {
            f11181a.getWritableDatabase().close();
            f11181a = null;
        }
    }

    /* renamed from: c */
    private static SQLiteDatabase m13893c() {
        return m13891a();
    }

    /* renamed from: d */
    private static C3052g m13894d() {
        String str;
        C3029a m13714a = C3029a.m13714a();
        if (TextUtils.isEmpty(m13714a.f11059b)) {
            C3029a.m13718b();
            if (TextUtils.isEmpty(m13714a.f11059b)) {
                throw new C3023d(C3023d.DBNAME_IS_EMPTY_OR_NOT_DEFINED);
            }
        }
        if (!m13714a.f11059b.endsWith(InterfaceC3057b.a.f11199a)) {
            m13714a.f11059b += InterfaceC3057b.a.f11199a;
        }
        if (m13714a.f11058a <= 0) {
            throw new C3023d(C3023d.VERSION_OF_DATABASE_LESS_THAN_ONE);
        }
        int i = m13714a.f11058a;
        String str2 = m13714a.f11063f;
        SharedPreferences sharedPreferences = LitePalApplication.m13404a().getSharedPreferences("litepal_prefs", 0);
        if (TextUtils.isEmpty(str2)) {
            str = "litepal_version";
        } else {
            if (str2.endsWith(InterfaceC3057b.a.f11199a)) {
                str2 = str2.replace(InterfaceC3057b.a.f11199a, "");
            }
            str = "litepal_version_" + str2;
        }
        if (i < sharedPreferences.getInt(str, 0)) {
            throw new C3023d(C3023d.VERSION_IS_EARLIER_THAN_CURRENT);
        }
        if (TextUtils.isEmpty(m13714a.f11060c)) {
            m13714a.f11060c = InterfaceC3057b.a.f11201c;
        } else if (!m13714a.f11060c.equals(InterfaceC3057b.a.f11200b) && !m13714a.f11060c.equals(InterfaceC3057b.a.f11201c) && !m13714a.f11060c.equals(InterfaceC3057b.a.f11202d)) {
            throw new C3023d(m13714a.f11060c + C3023d.CASES_VALUE_IS_INVALID);
        }
        if (f11181a == null) {
            String str3 = m13714a.f11059b;
            if ("external".equalsIgnoreCase(m13714a.f11061d)) {
                str3 = LitePalApplication.m13404a().getExternalFilesDir("") + C2428c.f9004b + str3;
            } else if (!C2452c.f9206d.equalsIgnoreCase(m13714a.f11061d) && !TextUtils.isEmpty(m13714a.f11061d)) {
                String replace = (Environment.getExternalStorageDirectory().getPath() + "/" + m13714a.f11061d).replace("//", "/");
                if (C3054a.m13933a("android.support.v4.content.ContextCompat", "checkSelfPermission") && ContextCompat.checkSelfPermission(LitePalApplication.m13404a(), "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                    throw new C3021b(String.format(C3021b.EXTERNAL_STORAGE_PERMISSION_DENIED, replace));
                }
                File file = new File(replace);
                if (!file.exists()) {
                    file.mkdirs();
                }
                str3 = replace + "/" + str3;
            }
            f11181a = new C3052g(str3, m13714a.f11058a);
        }
        return f11181a;
    }
}
