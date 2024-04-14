package org.litepal.p242f;

import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.litepal.p242f.p244b.C3040d;
import org.litepal.p246g.C3058c;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.litepal.f.d */
/* loaded from: classes2.dex */
public class C3049d extends AbstractC3034a {

    /* renamed from: f */
    public static final String f11182f = "Creator";

    /* renamed from: a */
    private static String m13896a(C3040d c3040d) {
        return m13825g(c3040d.f11178a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m13897a(C3040d c3040d, SQLiteDatabase sQLiteDatabase, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(m13825g(c3040d.f11178a));
        } else if (C3058c.m13963c(c3040d.f11178a, sQLiteDatabase)) {
            arrayList = null;
            m13906b(arrayList, sQLiteDatabase);
            m13817a(c3040d.f11178a, 0, sQLiteDatabase);
        }
        arrayList.add(m13899c(c3040d));
        m13906b(arrayList, sQLiteDatabase);
        m13817a(c3040d.f11178a, 0, sQLiteDatabase);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* renamed from: b */
    private static List<String> m13898b(C3040d c3040d, SQLiteDatabase sQLiteDatabase, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(m13825g(c3040d.f11178a));
        } else if (C3058c.m13963c(c3040d.f11178a, sQLiteDatabase)) {
            return null;
        }
        arrayList.add(m13899c(c3040d));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static String m13899c(C3040d c3040d) {
        return m13815a(c3040d.f11178a, c3040d.f11179b, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.litepal.p242f.AbstractC3034a, org.litepal.p242f.AbstractC3051f
    /* renamed from: a */
    public void mo13828a(SQLiteDatabase sQLiteDatabase, boolean z) {
        Iterator<C3040d> it = m13913a().iterator();
        while (it.hasNext()) {
            m13897a(it.next(), sQLiteDatabase, z);
        }
    }
}
