package org.litepal.p235b;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.litepal.p235b.p238c.C3010a;
import org.litepal.p239c.C3024e;
import org.litepal.p246g.C3058c;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.litepal.b.a */
/* loaded from: classes2.dex */
public abstract class AbstractC2994a extends AbstractC3002b {
    /* renamed from: a */
    private static String m13447a(C3010a c3010a) {
        return m13693f(C3058c.m13951a(c3010a.f11012b));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static Collection<C3012e> m13448a(Collection<C3012e> collection, Field field) {
        Collection<C3012e> hashSet;
        if (List.class.isAssignableFrom(field.getType())) {
            hashSet = new ArrayList<>();
        } else {
            if (!Set.class.isAssignableFrom(field.getType())) {
                throw new C3024e(C3024e.WRONG_FIELD_TYPE_FOR_ASSOCIATIONS);
            }
            hashSet = new HashSet<>();
        }
        if (collection != null) {
            hashSet.addAll(collection);
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static Collection<C3012e> m13449a(C3012e c3012e, C3010a c3010a) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        return (Collection) m13470a(c3012e, c3010a.f11015e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m13450a(C3012e c3012e, C3010a c3010a, Collection<C3012e> collection) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        m13479a(c3012e, c3010a.f11015e, collection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m13451a(C3012e c3012e, C3012e c3012e2) {
        if (c3012e2 != null) {
            if (c3012e2.isSaved()) {
                c3012e.addAssociatedModelWithFK(c3012e2.getTableName(), c3012e2.getBaseObjId());
            } else if (c3012e.isSaved()) {
                c3012e2.addAssociatedModelWithoutFK(c3012e.getTableName(), c3012e.getBaseObjId());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m13452a(C3012e c3012e, C3012e c3012e2, C3010a c3010a) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        m13479a(c3012e2, c3010a.f11015e, c3012e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public static void m13453b(C3012e c3012e, C3010a c3010a) {
        c3012e.addFKNameToClearSelf(m13693f(C3058c.m13951a(c3010a.f11012b)));
    }
}
