package com.cyjh.elfin.p074b;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.cyjh.common.p071f.InterfaceC1142a;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.feedback.lib.p092d.C1463b;
import com.cyjh.http.bean.NotifyMsgBean;
import com.umeng.analytics.pro.C2427b;
import java.util.List;
import org.litepal.p246g.InterfaceC3057b;

/* renamed from: com.cyjh.elfin.b.b */
/* loaded from: classes.dex */
public class C1228b {

    /* renamed from: b */
    private static final int f4553b = 1;

    /* renamed from: c */
    private static C1228b f4554c;

    /* renamed from: a */
    public C1227a f4555a = new C1227a(AppContext.m5350a(), "MESSAGE.db");

    /* renamed from: com.cyjh.elfin.b.b$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ InterfaceC1142a f4556a;

        public AnonymousClass1(InterfaceC1142a interfaceC1142a) {
            this.f4556a = interfaceC1142a;
        }

        /* JADX WARN: Code restructure failed: missing block: B:2:0x0021, code lost:
        
            if (r2.moveToFirst() != false) goto L4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:3:0x0023, code lost:
        
            r3 = new com.cyjh.http.bean.NotifyMsgBean();
            r3.NoticeContent = r2.getString(r2.getColumnIndex(com.umeng.analytics.pro.C2427b.f8956W));
            r3.DescriptionType = r2.getString(r2.getColumnIndex(org.litepal.p246g.InterfaceC3057b.c.f11209c));
            r3.NoticeDescription = r2.getString(r2.getColumnIndex("description"));
            r3.f5814ID = r2.getString(r2.getColumnIndex("number"));
            r3.NoticeTitle = r2.getString(r2.getColumnIndex("title"));
            r3.NoticeTime = r2.getString(r2.getColumnIndex("time"));
            r0.add(r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:4:0x0077, code lost:
        
            if (r2.moveToNext() != false) goto L9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x0079, code lost:
        
            r2.close();
            r1.close();
            r10.f4556a.mo4231a(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0084, code lost:
        
            return;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void run() {
            /*
                r10 = this;
                java.util.ArrayList r0 = new java.util.ArrayList
                r0.<init>()
                com.cyjh.elfin.b.b r1 = com.cyjh.elfin.p074b.C1228b.this
                com.cyjh.elfin.b.a r1 = com.cyjh.elfin.p074b.C1228b.m5344a(r1)
                android.database.sqlite.SQLiteDatabase r1 = r1.getWritableDatabase()
                java.lang.String r3 = "Message"
                java.lang.String r9 = "id desc"
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r2 = r1
                android.database.Cursor r2 = r2.query(r3, r4, r5, r6, r7, r8, r9)
                boolean r3 = r2.moveToFirst()
                if (r3 == 0) goto L79
            L23:
                com.cyjh.http.bean.NotifyMsgBean r3 = new com.cyjh.http.bean.NotifyMsgBean
                r3.<init>()
                java.lang.String r4 = "content"
                int r4 = r2.getColumnIndex(r4)
                java.lang.String r4 = r2.getString(r4)
                r3.NoticeContent = r4
                java.lang.String r4 = "type"
                int r4 = r2.getColumnIndex(r4)
                java.lang.String r4 = r2.getString(r4)
                r3.DescriptionType = r4
                java.lang.String r4 = "description"
                int r4 = r2.getColumnIndex(r4)
                java.lang.String r4 = r2.getString(r4)
                r3.NoticeDescription = r4
                java.lang.String r4 = "number"
                int r4 = r2.getColumnIndex(r4)
                java.lang.String r4 = r2.getString(r4)
                r3.f5814ID = r4
                java.lang.String r4 = "title"
                int r4 = r2.getColumnIndex(r4)
                java.lang.String r4 = r2.getString(r4)
                r3.NoticeTitle = r4
                java.lang.String r4 = "time"
                int r4 = r2.getColumnIndex(r4)
                java.lang.String r4 = r2.getString(r4)
                r3.NoticeTime = r4
                r0.add(r3)
                boolean r3 = r2.moveToNext()
                if (r3 != 0) goto L23
            L79:
                r2.close()
                r1.close()
                com.cyjh.common.f.a r1 = r10.f4556a
                r1.mo4231a(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.cyjh.elfin.p074b.C1228b.AnonymousClass1.run():void");
        }
    }

    private C1228b() {
    }

    /* renamed from: a */
    public static C1228b m5345a() {
        if (f4554c == null) {
            synchronized (C1228b.class) {
                if (f4554c == null) {
                    f4554c = new C1228b();
                }
            }
        }
        return f4554c;
    }

    /* renamed from: a */
    private void m5346a(InterfaceC1142a interfaceC1142a) {
        C1463b.m6773a().m6772a(new AnonymousClass1(interfaceC1142a));
    }

    /* renamed from: a */
    private void m5347a(List<NotifyMsgBean> list) {
        SQLiteDatabase writableDatabase = this.f4555a.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        for (int size = list.size() - 1; size >= 0; size--) {
            NotifyMsgBean notifyMsgBean = list.get(size);
            contentValues.clear();
            contentValues.put("number", notifyMsgBean.f5814ID);
            contentValues.put("title", notifyMsgBean.NoticeTitle);
            contentValues.put("time", notifyMsgBean.NoticeTime);
            contentValues.put(C2427b.f8956W, notifyMsgBean.NoticeContent);
            contentValues.put("description", notifyMsgBean.NoticeDescription);
            contentValues.put(InterfaceC3057b.c.f11209c, notifyMsgBean.DescriptionType);
            writableDatabase.insert(C1225b.f4512d, null, contentValues);
        }
        writableDatabase.close();
    }

    /* renamed from: b */
    private void m5348b() {
        this.f4555a.getWritableDatabase().delete(C1225b.f4512d, null, null);
    }

    /* renamed from: c */
    private void m5349c() {
        this.f4555a.close();
    }
}
