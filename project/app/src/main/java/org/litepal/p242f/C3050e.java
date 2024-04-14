package org.litepal.p242f;

import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.litepal.p242f.p244b.C3040d;
import org.litepal.p246g.C3054a;

/* renamed from: org.litepal.f.e */
/* loaded from: classes2.dex */
public final class C3050e extends AbstractC3036b {

    /* renamed from: h */
    private Collection<C3040d> f11183h;

    /* renamed from: b */
    private boolean m13900b(String str, int i) {
        ArrayList arrayList = new ArrayList();
        Iterator<C3040d> it = this.f11183h.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().f11178a);
        }
        return !C3054a.m13934a(arrayList, str) && i == 0;
    }

    /* renamed from: c */
    private void m13901c() {
        List<String> m13902d = m13902d();
        m13833a(m13902d, this.f11162e);
        m13850a(m13902d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003a, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003d, code lost:
    
        if (r3 == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003f, code lost:
    
        org.litepal.p246g.C3059d.m13972a(org.litepal.p242f.AbstractC3036b.f11161d, "need to drop " + r1);
        r0.add(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0059, code lost:
    
        if (r2.moveToNext() != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003c, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005b, code lost:
    
        if (r2 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006f, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006c, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006a, code lost:
    
        if (r2 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0018, code lost:
    
        if (r2.moveToFirst() != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001a, code lost:
    
        r1 = r2.getString(r2.getColumnIndexOrThrow(org.litepal.p246g.InterfaceC3057b.c.f11208b));
        r3 = r2.getInt(r2.getColumnIndexOrThrow(org.litepal.p246g.InterfaceC3057b.c.f11209c));
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0036, code lost:
    
        if (org.litepal.p246g.C3054a.m13934a(m13903e(), r1) != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0038, code lost:
    
        if (r3 != 0) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0073  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.util.List<java.lang.String> m13902d() {
        /*
            r11 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r11.f11162e     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L63
            java.lang.String r3 = "table_schema"
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            android.database.Cursor r2 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L63
            boolean r1 = r2.moveToFirst()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L70
            if (r1 == 0) goto L5b
        L1a:
            java.lang.String r1 = "name"
            int r1 = r2.getColumnIndexOrThrow(r1)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L70
            java.lang.String r1 = r2.getString(r1)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L70
            java.lang.String r3 = "type"
            int r3 = r2.getColumnIndexOrThrow(r3)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L70
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L70
            java.util.List r4 = r11.m13903e()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L70
            boolean r4 = org.litepal.p246g.C3054a.m13934a(r4, r1)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L70
            if (r4 != 0) goto L3c
            if (r3 != 0) goto L3c
            r3 = 1
            goto L3d
        L3c:
            r3 = 0
        L3d:
            if (r3 == 0) goto L55
            java.lang.String r3 = "AssociationUpdater"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L70
            java.lang.String r5 = "need to drop "
            r4.<init>(r5)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L70
            r4.append(r1)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L70
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L70
            org.litepal.p246g.C3059d.m13972a(r3, r4)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L70
            r0.add(r1)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L70
        L55:
            boolean r1 = r2.moveToNext()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L70
            if (r1 != 0) goto L1a
        L5b:
            if (r2 == 0) goto L6f
            goto L6c
        L5e:
            r1 = move-exception
            goto L67
        L60:
            r0 = move-exception
            r2 = r1
            goto L71
        L63:
            r2 = move-exception
            r10 = r2
            r2 = r1
            r1 = r10
        L67:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L70
            if (r2 == 0) goto L6f
        L6c:
            r2.close()
        L6f:
            return r0
        L70:
            r0 = move-exception
        L71:
            if (r2 == 0) goto L76
            r2.close()
        L76:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.p242f.C3050e.m13902d():java.util.List");
    }

    /* renamed from: e */
    private List<String> m13903e() {
        ArrayList arrayList = new ArrayList();
        Iterator<C3040d> it = this.f11183h.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().f11178a);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.litepal.p242f.AbstractC3036b, org.litepal.p242f.C3049d, org.litepal.p242f.AbstractC3034a, org.litepal.p242f.AbstractC3051f
    /* renamed from: a */
    public final void mo13828a(SQLiteDatabase sQLiteDatabase, boolean z) {
        this.f11183h = m13913a();
        this.f11162e = sQLiteDatabase;
        List<String> m13902d = m13902d();
        m13833a(m13902d, this.f11162e);
        m13850a(m13902d);
    }
}
