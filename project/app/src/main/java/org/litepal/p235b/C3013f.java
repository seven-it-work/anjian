package org.litepal.p235b;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import org.litepal.p235b.p238c.C3010a;
import org.litepal.p242f.C3041c;
import org.litepal.p246g.C3054a;
import org.litepal.p246g.C3058c;

/* renamed from: org.litepal.b.f */
/* loaded from: classes2.dex */
public final class C3013f extends AbstractC2994a {
    /* renamed from: a */
    private static String m13550a(C3010a c3010a) {
        return C3054a.m13930a(C3058c.m13951a(c3010a.f11012b));
    }

    /* renamed from: a */
    private static void m13551a(Collection<C3012e> collection, C3012e c3012e) {
        if (collection.contains(c3012e)) {
            return;
        }
        collection.add(c3012e);
    }

    /* renamed from: b */
    private static void m13552b(C3012e c3012e, C3012e c3012e2) {
        if (c3012e2.isSaved()) {
            c3012e.addAssociatedModelForJoinTable(c3012e2.getTableName(), c3012e2.getBaseObjId());
        }
    }

    @Deprecated
    /* renamed from: c */
    private static boolean m13553c(C3012e c3012e, C3012e c3012e2) {
        SQLiteDatabase m13891a = C3041c.m13891a();
        Cursor cursor = null;
        try {
            try {
                Cursor query = m13891a.query(m13472a(c3012e, c3012e2.getTableName()), null, m13693f(c3012e.getTableName()) + " = ? and " + m13693f(c3012e2.getTableName()) + " = ?", new String[]{String.valueOf(c3012e.getBaseObjId()), String.valueOf(c3012e2.getBaseObjId())}, null, null, null);
                try {
                    boolean z = query.getCount() > 0;
                    query.close();
                    return z;
                } catch (Exception e) {
                    e = e;
                    cursor = query;
                    e.printStackTrace();
                    cursor.close();
                    return true;
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    cursor.close();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* renamed from: d */
    private static String m13554d(C3012e c3012e, C3012e c3012e2) {
        return m13693f(c3012e.getTableName()) + " = ? and " + m13693f(c3012e2.getTableName()) + " = ?";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static void m13555e(C3012e c3012e, C3010a c3010a) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Collection<C3012e> d = m13500d(c3012e, c3010a);
        c3012e.addEmptyModelForJoinTable(C3054a.m13930a(C3058c.m13951a(c3010a.f11012b)));
        if (d != null) {
            for (C3012e c3012e2 : d) {
                Collection<C3012e> a2 = m13448a(m13449a(c3012e2, c3010a), c3010a.f11015e);
                if (!a2.contains(c3012e)) {
                    a2.add(c3012e);
                }
                m13450a(c3012e2, c3010a, a2);
                if (c3012e2.isSaved()) {
                    c3012e.addAssociatedModelForJoinTable(c3012e2.getTableName(), c3012e2.getBaseObjId());
                }
            }
        }
    }

    /* renamed from: e */
    private static String[] m13556e(C3012e c3012e, C3012e c3012e2) {
        return new String[]{String.valueOf(c3012e.getBaseObjId()), String.valueOf(c3012e2.getBaseObjId())};
    }

    /* renamed from: f */
    private static String m13557f(C3012e c3012e, C3012e c3012e2) {
        return m13472a(c3012e, c3012e2.getTableName());
    }

    /* renamed from: f */
    private static void m13558f(C3012e c3012e, C3010a c3010a) {
        c3012e.addEmptyModelForJoinTable(C3054a.m13930a(C3058c.m13951a(c3010a.f11012b)));
    }
}
