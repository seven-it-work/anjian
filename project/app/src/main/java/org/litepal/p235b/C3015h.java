package org.litepal.p235b;

import java.lang.reflect.InvocationTargetException;
import org.litepal.p235b.p238c.C3010a;
import org.litepal.p246g.C3058c;

/* renamed from: org.litepal.b.h */
/* loaded from: classes2.dex */
public final class C3015h extends AbstractC2994a {
    /* renamed from: b */
    private static void m13564b(C3012e c3012e, C3012e c3012e2) {
        if (c3012e2.isSaved()) {
            c3012e.addAssociatedModelWithFK(c3012e2.getTableName(), c3012e2.getBaseObjId());
            c3012e.addAssociatedModelWithoutFK(c3012e2.getTableName(), c3012e2.getBaseObjId());
        }
    }

    /* renamed from: b */
    private static void m13565b(C3012e c3012e, C3012e c3012e2, C3010a c3010a) {
        if (c3010a.f11015e == null) {
            m13451a(c3012e, c3012e2);
        } else if (c3012e2.isSaved()) {
            c3012e.addAssociatedModelWithFK(c3012e2.getTableName(), c3012e2.getBaseObjId());
            c3012e.addAssociatedModelWithoutFK(c3012e2.getTableName(), c3012e2.getBaseObjId());
        }
    }

    /* renamed from: c */
    private static void m13566c(C3012e c3012e, C3012e c3012e2) {
        m13451a(c3012e, c3012e2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static void m13567e(C3012e c3012e, C3010a c3010a) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        C3012e c2 = m13494c(c3012e, c3010a);
        if (c2 == null) {
            c3012e.addAssociatedTableNameToClearFK(C3058c.m13951a(c3010a.f11012b));
            return;
        }
        m13452a(c3012e, c2, c3010a);
        if (c3010a.f11015e == null) {
            m13451a(c3012e, c2);
        } else if (c2.isSaved()) {
            c3012e.addAssociatedModelWithFK(c2.getTableName(), c2.getBaseObjId());
            c3012e.addAssociatedModelWithoutFK(c2.getTableName(), c2.getBaseObjId());
        }
    }
}
