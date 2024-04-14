package org.litepal.p235b;

import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import org.litepal.p235b.p238c.C3010a;
import org.litepal.p246g.C3058c;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.litepal.b.g */
/* loaded from: classes2.dex */
public final class C3014g extends AbstractC2994a {
    /* renamed from: a */
    private static void m13559a(Collection<C3012e> collection, C3012e c3012e, C3012e c3012e2) {
        if (!collection.contains(c3012e)) {
            collection.add(c3012e);
        }
        if (c3012e2.isSaved()) {
            c3012e.addAssociatedModelWithoutFK(c3012e2.getTableName(), c3012e2.getBaseObjId());
        }
    }

    /* renamed from: b */
    private static void m13560b(C3012e c3012e, C3012e c3012e2) {
        m13451a(c3012e, c3012e2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static void m13561e(C3012e c3012e, C3010a c3010a) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        if (!c3012e.getClassName().equals(c3010a.f11013c)) {
            Collection<C3012e> d = m13500d(c3012e, c3010a);
            if (d == null || d.isEmpty()) {
                c3012e.addAssociatedTableNameToClearFK(C3058c.m13951a(c3010a.f11012b));
                return;
            }
            for (C3012e c3012e2 : d) {
                m13452a(c3012e, c3012e2, c3010a);
                m13451a(c3012e, c3012e2);
            }
            return;
        }
        C3012e c2 = m13494c(c3012e, c3010a);
        if (c2 == null) {
            m13453b(c3012e, c3010a);
            return;
        }
        Collection<C3012e> a2 = m13448a(m13449a(c2, c3010a), c3010a.f11015e);
        m13450a(c2, c3010a, a2);
        if (!a2.contains(c3012e)) {
            a2.add(c3012e);
        }
        if (c2.isSaved()) {
            c3012e.addAssociatedModelWithoutFK(c2.getTableName(), c2.getBaseObjId());
        }
    }

    /* renamed from: f */
    private static void m13562f(C3012e c3012e, C3010a c3010a) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        C3012e c2 = m13494c(c3012e, c3010a);
        if (c2 == null) {
            m13453b(c3012e, c3010a);
            return;
        }
        Collection<C3012e> a2 = m13448a(m13449a(c2, c3010a), c3010a.f11015e);
        m13450a(c2, c3010a, a2);
        if (!a2.contains(c3012e)) {
            a2.add(c3012e);
        }
        if (c2.isSaved()) {
            c3012e.addAssociatedModelWithoutFK(c2.getTableName(), c2.getBaseObjId());
        }
    }

    /* renamed from: g */
    private static void m13563g(C3012e c3012e, C3010a c3010a) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Collection<C3012e> d = m13500d(c3012e, c3010a);
        if (d == null || d.isEmpty()) {
            c3012e.addAssociatedTableNameToClearFK(C3058c.m13951a(c3010a.f11012b));
            return;
        }
        for (C3012e c3012e2 : d) {
            m13452a(c3012e, c3012e2, c3010a);
            m13451a(c3012e, c3012e2);
        }
    }
}
