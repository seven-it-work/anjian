package org.litepal.p242f;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import org.litepal.C3033f;
import org.litepal.LitePalApplication;
import org.litepal.p241e.C3029a;
import org.litepal.p246g.InterfaceC3057b;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.litepal.f.g */
/* loaded from: classes2.dex */
public final class C3052g extends SQLiteOpenHelper {

    /* renamed from: a */
    public static final String f11187a = "LitePalHelper";

    private C3052g(Context context, String str, int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3052g(String str, int i) {
        this(LitePalApplication.m13404a(), str, i);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        AbstractC3051f.m13904a(sQLiteDatabase);
        C3033f.m13805d();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        String str;
        AbstractC3051f.m13905b(sQLiteDatabase);
        String str2 = C3029a.m13714a().f11063f;
        SharedPreferences.Editor edit = LitePalApplication.m13404a().getSharedPreferences("litepal_prefs", 0).edit();
        if (TextUtils.isEmpty(str2)) {
            str = "litepal_version";
        } else {
            if (str2.endsWith(InterfaceC3057b.a.f11199a)) {
                str2 = str2.replace(InterfaceC3057b.a.f11199a, "");
            }
            str = "litepal_version_" + str2;
        }
        edit.putInt(str, i2);
        edit.apply();
        C3033f.m13805d();
    }
}
