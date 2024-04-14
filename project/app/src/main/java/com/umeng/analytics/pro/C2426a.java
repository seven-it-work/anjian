package com.umeng.analytics.pro;

import android.content.Context;
import android.content.ContextWrapper;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;

/* renamed from: com.umeng.analytics.pro.a */
/* loaded from: classes.dex */
class C2426a extends ContextWrapper {

    /* renamed from: a */
    private String f8933a;

    public C2426a(Context context, String str) {
        super(context);
        this.f8933a = str;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getDatabasePath(String str) {
        File file = new File(this.f8933a + str);
        if (!file.getParentFile().exists() && !file.getParentFile().isDirectory()) {
            file.getParentFile().mkdirs();
        }
        return file;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i, SQLiteDatabase.CursorFactory cursorFactory) {
        return SQLiteDatabase.openDatabase(getDatabasePath(str).getAbsolutePath(), cursorFactory, 268435472);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return SQLiteDatabase.openDatabase(getDatabasePath(str).getAbsolutePath(), cursorFactory, 268435472);
    }
}
