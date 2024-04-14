package com.iflytek.voiceads.download.p178c;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.didi.virtualapk.delegate.RemoteContentProvider;
import com.iflytek.voiceads.download.p179d.C2262a;
import java.util.ArrayList;
import java.util.List;
import net.grandcentrix.tray.provider.TrayContract;

/* renamed from: com.iflytek.voiceads.download.c.b */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2259b implements InterfaceC2258a {

    /* renamed from: a */
    private static final String[] f8473a = {TrayContract.Preferences.Columns.f10375ID, RemoteContentProvider.KEY_URI, "path"};

    /* renamed from: b */
    private static final String f8474b = String.format("REPLACE INTO %s (_id,uri,path) VALUES(?,?,?);", "download_info");

    /* renamed from: c */
    private C2260c f8475c;

    /* renamed from: d */
    private SQLiteDatabase f8476d;

    /* renamed from: e */
    private SQLiteDatabase f8477e;

    public C2259b(Context context) {
        this.f8475c = new C2260c(context);
        this.f8476d = this.f8475c.getWritableDatabase();
        this.f8477e = this.f8475c.getReadableDatabase();
    }

    /* renamed from: a */
    private void m9913a(Cursor cursor, C2262a c2262a) {
        c2262a.m9959b(cursor.getInt(0));
        c2262a.m9955a(cursor.getString(1));
        c2262a.m9961b(cursor.getString(2));
    }

    @Override // com.iflytek.voiceads.download.p178c.InterfaceC2258a
    /* renamed from: a */
    public C2262a mo9909a(int i) {
        C2262a c2262a = null;
        Cursor query = this.f8477e.query("download_info", f8473a, "_id=?", new String[]{String.valueOf(i)}, null, null, null);
        if (query != null && query.getCount() > 0) {
            while (query.moveToNext()) {
                c2262a = new C2262a();
                m9913a(query, c2262a);
            }
            query.close();
        }
        return c2262a;
    }

    @Override // com.iflytek.voiceads.download.p178c.InterfaceC2258a
    /* renamed from: a */
    public List<C2262a> mo9910a() {
        Cursor query = this.f8477e.query("download_info", null, null, null, null, null, null);
        ArrayList arrayList = new ArrayList();
        if (query != null && query.getCount() > 0) {
            while (query.moveToNext()) {
                C2262a c2262a = new C2262a();
                m9913a(query, c2262a);
                arrayList.add(c2262a);
            }
            query.close();
        }
        return arrayList;
    }

    @Override // com.iflytek.voiceads.download.p178c.InterfaceC2258a
    /* renamed from: a */
    public void mo9911a(C2262a c2262a) {
        this.f8476d.execSQL(f8474b, new Object[]{Integer.valueOf(c2262a.m9967h()), c2262a.m9958b(), c2262a.m9962c()});
    }

    @Override // com.iflytek.voiceads.download.p178c.InterfaceC2258a
    /* renamed from: b */
    public void mo9912b(C2262a c2262a) {
        this.f8476d.delete("download_info", "_id=?", new String[]{String.valueOf(c2262a.m9967h())});
    }
}
