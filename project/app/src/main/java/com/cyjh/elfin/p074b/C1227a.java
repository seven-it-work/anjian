package com.cyjh.elfin.p074b;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* renamed from: com.cyjh.elfin.b.a */
/* loaded from: classes.dex */
public final class C1227a extends SQLiteOpenHelper {

    /* renamed from: b */
    private static final String f4551b = "create table Message(id integer primary key autoincrement,number text,title text,time text,content text,description text,type text)";

    /* renamed from: a */
    private Context f4552a;

    public C1227a(Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        this.f4552a = context;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(f4551b);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
