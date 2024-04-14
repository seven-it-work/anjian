package com.umeng.analytics.pro;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.umeng.analytics.pro.C2428c;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.umeng.analytics.pro.d */
/* loaded from: classes.dex */
public class C2429d extends SQLiteOpenHelper {

    /* renamed from: b */
    private static Context f9059b;

    /* renamed from: a */
    private String f9060a;

    /* renamed from: com.umeng.analytics.pro.d$a */
    /* loaded from: classes.dex */
    private static class a {

        /* renamed from: a */
        private static final C2429d f9061a = new C2429d(C2429d.f9059b, C2431f.m10483b(C2429d.f9059b), C2428c.f9005c, null, 1);

        private a() {
        }
    }

    private C2429d(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, TextUtils.isEmpty(str) ? C2428c.f9005c : str, cursorFactory, i);
        this.f9060a = null;
        m10473a();
    }

    private C2429d(Context context, String str, String str2, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        this(new C2426a(context, str), str2, cursorFactory, i);
    }

    /* renamed from: a */
    public static C2429d m10467a(Context context) {
        if (f9059b == null) {
            f9059b = context.getApplicationContext();
        }
        return a.f9061a;
    }

    /* renamed from: a */
    private void m10468a(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f9060a = "create table if not exists __dp(id INTEGER primary key autoincrement, __id INTEGER, __ii TEXT, __ty INTEGER, __ve TEXT, __io TEXT)";
            sQLiteDatabase.execSQL(this.f9060a);
        } catch (SQLException unused) {
        }
    }

    /* renamed from: b */
    private void m10470b(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f9060a = "create table if not exists __er(id INTEGER primary key autoincrement, __i TEXT, __a TEXT, __t INTEGER)";
            sQLiteDatabase.execSQL(this.f9060a);
        } catch (SQLException unused) {
        }
    }

    /* renamed from: c */
    private void m10471c(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f9060a = "create table if not exists __et(id INTEGER primary key autoincrement, __i TEXT, __e TEXT, __s TEXT, __t INTEGER)";
            sQLiteDatabase.execSQL(this.f9060a);
        } catch (SQLException unused) {
        }
    }

    /* renamed from: d */
    private void m10472d(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f9060a = "create table if not exists __sd(id INTEGER primary key autoincrement, __ii TEXT unique, __a TEXT, __b TEXT, __c TEXT, __d TEXT, __e TEXT, __f TEXT, __g TEXT)";
            sQLiteDatabase.execSQL(this.f9060a);
        } catch (SQLException unused) {
        }
    }

    /* renamed from: a */
    public void m10473a() {
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (!C2431f.m10482a(C2428c.e.f9042a, writableDatabase)) {
                m10472d(writableDatabase);
            }
            if (!C2431f.m10482a(C2428c.d.f9033a, writableDatabase)) {
                m10471c(writableDatabase);
            }
            if (!C2431f.m10482a(C2428c.c.f9026a, writableDatabase)) {
                m10470b(writableDatabase);
            }
            if (C2431f.m10482a(C2428c.a.f9009a, writableDatabase)) {
                return;
            }
            m10468a(writableDatabase);
        } catch (Exception unused) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            try {
                sQLiteDatabase.beginTransaction();
                m10472d(sQLiteDatabase);
                m10471c(sQLiteDatabase);
                m10470b(sQLiteDatabase);
                m10468a(sQLiteDatabase);
                sQLiteDatabase.setTransactionSuccessful();
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable unused) {
                    }
                }
            } catch (SQLiteDatabaseCorruptException unused2) {
                C2431f.m10481a(f9059b);
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable unused3) {
                    }
                }
            } catch (Throwable unused4) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable unused5) {
                    }
                }
            }
        } catch (Throwable th) {
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable unused6) {
                }
            }
            throw th;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
