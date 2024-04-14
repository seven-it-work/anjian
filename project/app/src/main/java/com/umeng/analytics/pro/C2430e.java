package com.umeng.analytics.pro;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.umeng.analytics.pro.e */
/* loaded from: classes.dex */
class C2430e {

    /* renamed from: b */
    private static SQLiteOpenHelper f9062b;

    /* renamed from: d */
    private static Context f9063d;

    /* renamed from: a */
    private AtomicInteger f9064a;

    /* renamed from: c */
    private SQLiteDatabase f9065c;

    /* renamed from: com.umeng.analytics.pro.e$a */
    /* loaded from: classes.dex */
    private static class a {

        /* renamed from: a */
        private static final C2430e f9066a = new C2430e();

        private a() {
        }
    }

    private C2430e() {
        this.f9064a = new AtomicInteger();
    }

    /* renamed from: a */
    public static C2430e m10475a(Context context) {
        if (f9063d == null && context != null) {
            Context applicationContext = context.getApplicationContext();
            f9063d = applicationContext;
            f9062b = C2429d.m10467a(applicationContext);
        }
        return a.f9066a;
    }

    /* renamed from: a */
    public synchronized SQLiteDatabase m10476a() {
        if (this.f9064a.incrementAndGet() == 1) {
            this.f9065c = f9062b.getWritableDatabase();
        }
        return this.f9065c;
    }

    /* renamed from: b */
    public synchronized void m10477b() {
        try {
            if (this.f9064a.decrementAndGet() == 0) {
                this.f9065c.close();
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
