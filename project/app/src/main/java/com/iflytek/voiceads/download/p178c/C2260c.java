package com.iflytek.voiceads.download.p178c;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* renamed from: com.iflytek.voiceads.download.c.c */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2260c extends SQLiteOpenHelper {

    /* renamed from: a */
    private static final String f8478a = String.format("CREATE TABLE %s (_id integer PRIMARY KEY NOT NULL,uri varchar(255) NOT NULL,path varchar(255) NOT NULL);", "download_info");

    public C2260c(Context context) {
        super(context, "ifly_ad.db", (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(f8478a);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
