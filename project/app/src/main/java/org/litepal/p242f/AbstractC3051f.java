package org.litepal.p242f;

import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.litepal.AbstractC3026d;
import org.litepal.p239c.C3021b;
import org.litepal.p241e.C3029a;
import org.litepal.p242f.p244b.C3037a;
import org.litepal.p242f.p244b.C3040d;
import org.litepal.p246g.C3054a;

/* renamed from: org.litepal.f.f */
/* loaded from: classes2.dex */
public abstract class AbstractC3051f extends AbstractC3026d {

    /* renamed from: g */
    public static final String f11184g = "Generator";

    /* renamed from: d */
    private Collection<C3040d> f11185d;

    /* renamed from: e */
    private Collection<C3037a> f11186e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m13904a(SQLiteDatabase sQLiteDatabase) {
        m13911d(sQLiteDatabase, true);
        m13908c(sQLiteDatabase, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m13905b(SQLiteDatabase sQLiteDatabase) {
        new C3050e().mo13828a(sQLiteDatabase, false);
        m13911d(sQLiteDatabase, false);
        new C3053h().mo13829b(sQLiteDatabase, false);
        new C3053h().mo13828a(sQLiteDatabase, false);
        m13908c(sQLiteDatabase, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public static void m13906b(List<String> list, SQLiteDatabase sQLiteDatabase) {
        String str = "";
        if (list == null) {
            return;
        }
        try {
            if (list.isEmpty()) {
                return;
            }
            for (String str2 : list) {
                if (!TextUtils.isEmpty(str2)) {
                    String m13930a = C3054a.m13930a(str2);
                    try {
                        sQLiteDatabase.execSQL(m13930a);
                        str = m13930a;
                    } catch (SQLException unused) {
                        str = m13930a;
                        throw new C3021b(C3021b.SQL_ERROR + str);
                    }
                }
            }
        } catch (SQLException unused2) {
        }
    }

    /* renamed from: c */
    private static void m13907c(SQLiteDatabase sQLiteDatabase) {
        new C3053h().mo13829b(sQLiteDatabase, false);
    }

    /* renamed from: c */
    private static void m13908c(SQLiteDatabase sQLiteDatabase, boolean z) {
        new C3049d().mo13829b(sQLiteDatabase, z);
    }

    /* renamed from: c */
    private boolean m13909c() {
        return this.f11185d != null && this.f11185d.size() == C3029a.m13714a().m13730d().size();
    }

    /* renamed from: d */
    private static void m13910d(SQLiteDatabase sQLiteDatabase) {
        new C3053h().mo13828a(sQLiteDatabase, false);
    }

    /* renamed from: d */
    private static void m13911d(SQLiteDatabase sQLiteDatabase, boolean z) {
        new C3049d().mo13828a(sQLiteDatabase, z);
    }

    /* renamed from: e */
    private static void m13912e(SQLiteDatabase sQLiteDatabase) {
        new C3050e().mo13828a(sQLiteDatabase, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Collection<C3040d> m13913a() {
        if (this.f11185d == null) {
            this.f11185d = new ArrayList();
        }
        if (!(this.f11185d != null && this.f11185d.size() == C3029a.m13714a().m13730d().size())) {
            this.f11185d.clear();
            Iterator<String> it = C3029a.m13714a().m13730d().iterator();
            while (it.hasNext()) {
                this.f11185d.add(m13695a(it.next()));
            }
        }
        return this.f11185d;
    }

    /* renamed from: a */
    protected abstract void mo13828a(SQLiteDatabase sQLiteDatabase, boolean z);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final Collection<C3037a> m13914b() {
        if (this.f11186e == null || this.f11186e.isEmpty()) {
            List<String> m13730d = C3029a.m13714a().m13730d();
            if (this.f11044b == null) {
                this.f11044b = new HashSet();
            }
            if (this.f11045c == null) {
                this.f11045c = new HashSet();
            }
            this.f11044b.clear();
            this.f11045c.clear();
            Iterator<String> it = m13730d.iterator();
            while (it.hasNext()) {
                super.m13696a(it.next(), 1);
            }
            this.f11186e = this.f11044b;
        }
        return this.f11186e;
    }

    /* renamed from: b */
    protected abstract void mo13829b(SQLiteDatabase sQLiteDatabase, boolean z);
}
