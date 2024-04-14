package org.litepal.p235b;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.litepal.p234a.InterfaceC2992b;
import org.litepal.p235b.p238c.C3010a;
import org.litepal.p239c.C3024e;
import org.litepal.p246g.C3054a;
import org.litepal.p246g.C3058c;

/* renamed from: org.litepal.b.j */
/* loaded from: classes2.dex */
public class C3017j extends AbstractC3002b {

    /* renamed from: f */
    private ContentValues f11040f = new ContentValues();

    public C3017j(SQLiteDatabase sQLiteDatabase) {
        this.f11003e = sQLiteDatabase;
    }

    /* renamed from: a */
    private long m13578a(C3012e c3012e, ContentValues contentValues) {
        if (contentValues.size() == 0) {
            contentValues.putNull("id");
        }
        return this.f11003e.insert(c3012e.getTableName(), null, contentValues);
    }

    /* renamed from: a */
    private static Field m13579a(List<Field> list) {
        for (Field field : list) {
            if (m13692e(field.getName())) {
                return field;
            }
        }
        return null;
    }

    /* renamed from: a */
    private static void m13580a(long j) {
        if (j == -1) {
            throw new C3024e(C3024e.SAVE_FAILED);
        }
    }

    /* renamed from: a */
    private static void m13581a(ContentValues contentValues, C3012e c3012e) {
        Map<String, Long> associatedModelsMapWithoutFK = c3012e.getAssociatedModelsMapWithoutFK();
        for (String str : associatedModelsMapWithoutFK.keySet()) {
            contentValues.put(m13693f(str), associatedModelsMapWithoutFK.get(str));
        }
    }

    /* renamed from: a */
    private static void m13582a(C3012e c3012e, String str, Class<?> cls, long j) throws SecurityException, NoSuchFieldException, IllegalArgumentException, IllegalAccessException {
        Object valueOf;
        if ((str == null || cls == null || j <= 0) ? false : true) {
            if (cls == Integer.TYPE || cls == Integer.class) {
                valueOf = Integer.valueOf((int) j);
            } else {
                if (cls != Long.TYPE && cls != Long.class) {
                    throw new C3024e(C3024e.ID_TYPE_INVALID_EXCEPTION);
                }
                valueOf = Long.valueOf(j);
            }
            C3011d.m13549b(c3012e, str, valueOf, c3012e.getClass());
        }
    }

    /* renamed from: a */
    private static void m13583a(C3012e c3012e, Field field, long j) {
        Object valueOf;
        try {
            m13477a(c3012e, j);
            if (field != null) {
                String name = field.getName();
                Class<?> type = field.getType();
                if ((name == null || type == null || j <= 0) ? false : true) {
                    if (type != Integer.TYPE && type != Integer.class) {
                        if (type != Long.TYPE && type != Long.class) {
                            throw new C3024e(C3024e.ID_TYPE_INVALID_EXCEPTION);
                        }
                        valueOf = Long.valueOf(j);
                        C3011d.m13549b(c3012e, name, valueOf, c3012e.getClass());
                    }
                    valueOf = Integer.valueOf((int) j);
                    C3011d.m13549b(c3012e, name, valueOf, c3012e.getClass());
                }
            }
        } catch (Exception e) {
            throw new C3024e(e.getMessage(), e);
        }
    }

    /* renamed from: a */
    private void m13584a(C3012e c3012e, List<Field> list) throws InvocationTargetException, IllegalAccessException {
        m13585a(c3012e, list, c3012e.getBaseObjId());
        m13593c(c3012e);
        m13588a(c3012e, true);
        for (String str : c3012e.getListToClearAssociatedFK()) {
            String f = m13693f(c3012e.getTableName());
            ContentValues contentValues = new ContentValues();
            contentValues.putNull(f);
            this.f11003e.update(str, contentValues, f + " = " + c3012e.getBaseObjId(), null);
        }
    }

    /* renamed from: a */
    private void m13585a(C3012e c3012e, List<Field> list, long j) throws IllegalAccessException, InvocationTargetException {
        for (Field field : list) {
            InterfaceC2992b interfaceC2992b = (InterfaceC2992b) field.getAnnotation(InterfaceC2992b.class);
            String b2 = m13684b(field);
            String m13409a = (interfaceC2992b == null || !"java.lang.String".equals(b2)) ? null : interfaceC2992b.m13409a();
            field.setAccessible(true);
            Collection collection = (Collection) field.get(c3012e);
            if (collection != null) {
                Log.d(AbstractC3002b.f11002d, "updateGenericTables: class name is " + c3012e.getClassName() + " , field name is " + field.getName());
                String m13960b = C3058c.m13960b(c3012e.getClassName(), field.getName());
                String m13959b = C3058c.m13959b(c3012e.getClassName());
                this.f11003e.delete(m13960b, m13959b + " = ?", new String[]{String.valueOf(j)});
                for (Object obj : collection) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(m13959b, Long.valueOf(j));
                    Object a2 = m13469a(m13409a, obj);
                    if (c3012e.getClassName().equals(b2)) {
                        C3012e c3012e2 = (C3012e) a2;
                        if (c3012e2 != null) {
                            long baseObjId = c3012e2.getBaseObjId();
                            if (baseObjId > 0) {
                                contentValues.put(C3058c.m13953a(field), Long.valueOf(baseObjId));
                            }
                        }
                    } else {
                        C3011d.m13547a(contentValues, "put", new Object[]{C3054a.m13930a(C3058c.m13964d(field.getName())), a2}, contentValues.getClass(), new Class[]{String.class, m13676a(field)});
                    }
                    this.f11003e.insert(m13960b, null, contentValues);
                }
            }
        }
    }

    /* renamed from: a */
    private void m13586a(C3012e c3012e, List<Field> list, List<Field> list2) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Field field;
        Object valueOf;
        this.f11040f.clear();
        ContentValues contentValues = this.f11040f;
        m13512a(c3012e, list, contentValues);
        m13581a(contentValues, c3012e);
        ContentValues contentValues2 = this.f11040f;
        if (contentValues2.size() == 0) {
            contentValues2.putNull("id");
        }
        long insert = this.f11003e.insert(c3012e.getTableName(), null, contentValues2);
        if (insert == -1) {
            throw new C3024e(C3024e.SAVE_FAILED);
        }
        Iterator<Field> it = list.iterator();
        try {
            while (it.hasNext()) {
                field = it.next();
                if (!m13692e(field.getName())) {
                }
            }
            m13477a(c3012e, insert);
            if (field != null) {
                String name = field.getName();
                Class<?> type = field.getType();
                if ((name == null || type == null || insert <= 0) ? false : true) {
                    if (type != Integer.TYPE && type != Integer.class) {
                        if (type != Long.TYPE && type != Long.class) {
                            throw new C3024e(C3024e.ID_TYPE_INVALID_EXCEPTION);
                        }
                        valueOf = Long.valueOf(insert);
                        C3011d.m13549b(c3012e, name, valueOf, c3012e.getClass());
                    }
                    valueOf = Integer.valueOf((int) insert);
                    C3011d.m13549b(c3012e, name, valueOf, c3012e.getClass());
                }
            }
            m13585a(c3012e, list2, insert);
            m13593c(c3012e);
            m13588a(c3012e, false);
            return;
        } catch (Exception e) {
            throw new C3024e(e.getMessage(), e);
        }
        field = null;
    }

    /* renamed from: a */
    private void m13587a(C3012e c3012e, List<Field> list, List<Field> list2, long j) throws IllegalAccessException, InvocationTargetException {
        Field field;
        Object valueOf;
        if (j == -1) {
            throw new C3024e(C3024e.SAVE_FAILED);
        }
        Iterator<Field> it = list.iterator();
        try {
            while (it.hasNext()) {
                field = it.next();
                if (!m13692e(field.getName())) {
                }
            }
            m13477a(c3012e, j);
            if (field != null) {
                String name = field.getName();
                Class<?> type = field.getType();
                if ((name == null || type == null || j <= 0) ? false : true) {
                    if (type != Integer.TYPE && type != Integer.class) {
                        if (type != Long.TYPE && type != Long.class) {
                            throw new C3024e(C3024e.ID_TYPE_INVALID_EXCEPTION);
                        }
                        valueOf = Long.valueOf(j);
                        C3011d.m13549b(c3012e, name, valueOf, c3012e.getClass());
                    }
                    valueOf = Integer.valueOf((int) j);
                    C3011d.m13549b(c3012e, name, valueOf, c3012e.getClass());
                }
            }
            m13585a(c3012e, list2, j);
            m13593c(c3012e);
            m13588a(c3012e, false);
            return;
        } catch (Exception e) {
            throw new C3024e(e.getMessage(), e);
        }
        field = null;
    }

    /* renamed from: a */
    private void m13588a(C3012e c3012e, boolean z) {
        Map<String, List<Long>> associatedModelsMapForJoinTable = c3012e.getAssociatedModelsMapForJoinTable();
        ContentValues contentValues = new ContentValues();
        for (String str : associatedModelsMapForJoinTable.keySet()) {
            String a2 = m13472a(c3012e, str);
            if (z) {
                this.f11003e.delete(a2, m13693f(c3012e.getTableName()) + " = ?", new String[]{String.valueOf(c3012e.getBaseObjId())});
            }
            Iterator<Long> it = associatedModelsMapForJoinTable.get(str).iterator();
            while (it.hasNext()) {
                long longValue = it.next().longValue();
                contentValues.clear();
                contentValues.put(m13693f(c3012e.getTableName()), Long.valueOf(c3012e.getBaseObjId()));
                contentValues.put(m13693f(str), Long.valueOf(longValue));
                this.f11003e.insert(a2, null, contentValues);
            }
        }
    }

    /* renamed from: a */
    private static boolean m13589a(String str, Class<?> cls, long j) {
        return (str == null || cls == null || j <= 0) ? false : true;
    }

    /* renamed from: b */
    private void m13590b(C3012e c3012e, ContentValues contentValues) {
        if (contentValues.size() > 0) {
            this.f11003e.update(c3012e.getTableName(), contentValues, "id = ?", new String[]{String.valueOf(c3012e.getBaseObjId())});
        }
    }

    /* renamed from: b */
    private void m13591b(C3012e c3012e, List<Field> list, ContentValues contentValues) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        m13512a(c3012e, list, contentValues);
        m13581a(contentValues, c3012e);
    }

    /* renamed from: b */
    private void m13592b(C3012e c3012e, List<Field> list, List<Field> list2) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        this.f11040f.clear();
        ContentValues contentValues = this.f11040f;
        m13512a(c3012e, list, contentValues);
        m13581a(contentValues, c3012e);
        Iterator<String> it = c3012e.getListToClearSelfFK().iterator();
        while (it.hasNext()) {
            contentValues.putNull(it.next());
        }
        ContentValues contentValues2 = this.f11040f;
        if (contentValues2.size() > 0) {
            this.f11003e.update(c3012e.getTableName(), contentValues2, "id = ?", new String[]{String.valueOf(c3012e.getBaseObjId())});
        }
        m13585a(c3012e, list2, c3012e.getBaseObjId());
        m13593c(c3012e);
        m13588a(c3012e, true);
        for (String str : c3012e.getListToClearAssociatedFK()) {
            String f = m13693f(c3012e.getTableName());
            ContentValues contentValues3 = new ContentValues();
            contentValues3.putNull(f);
            this.f11003e.update(str, contentValues3, f + " = " + c3012e.getBaseObjId(), null);
        }
    }

    /* renamed from: c */
    private void m13593c(C3012e c3012e) {
        Map<String, Set<Long>> associatedModelsMapWithFK = c3012e.getAssociatedModelsMapWithFK();
        ContentValues contentValues = new ContentValues();
        for (String str : associatedModelsMapWithFK.keySet()) {
            contentValues.clear();
            contentValues.put(m13693f(c3012e.getTableName()), Long.valueOf(c3012e.getBaseObjId()));
            Set<Long> set = associatedModelsMapWithFK.get(str);
            if (set != null && !set.isEmpty()) {
                this.f11003e.update(str, contentValues, m13471a(set), null);
            }
        }
    }

    /* renamed from: c */
    private void m13594c(C3012e c3012e, List<Field> list, ContentValues contentValues) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        m13512a(c3012e, list, contentValues);
        m13581a(contentValues, c3012e);
        Iterator<String> it = c3012e.getListToClearSelfFK().iterator();
        while (it.hasNext()) {
            contentValues.putNull(it.next());
        }
    }

    /* renamed from: d */
    private void m13595d(C3012e c3012e) {
        for (String str : c3012e.getListToClearAssociatedFK()) {
            String f = m13693f(c3012e.getTableName());
            ContentValues contentValues = new ContentValues();
            contentValues.putNull(f);
            this.f11003e.update(str, contentValues, f + " = " + c3012e.getBaseObjId(), null);
        }
    }

    /* renamed from: e */
    private static String m13596e(C3012e c3012e) {
        return m13693f(c3012e.getTableName()) + " = ?";
    }

    /* renamed from: b */
    public final <T extends C3012e> void m13597b(Collection<T> collection) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        if (collection == null || collection.size() <= 0) {
            return;
        }
        C3012e[] c3012eArr = (C3012e[]) collection.toArray(new C3012e[0]);
        String className = c3012eArr[0].getClassName();
        List<Field> c2 = m13698c(className);
        List<Field> d = m13699d(className);
        Collection<C3010a> b2 = m13697b(className);
        for (C3012e c3012e : c3012eArr) {
            if (c3012e.isSaved()) {
                m13480a(c3012e, b2);
                m13592b(c3012e, c2, d);
            } else {
                m13480a(c3012e, b2);
                m13586a(c3012e, c2, d);
                m13480a(c3012e, b2);
            }
            c3012e.clearAssociatedData();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m13598b(C3012e c3012e) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        String className = c3012e.getClassName();
        List<Field> c2 = m13698c(className);
        List<Field> d = m13699d(className);
        Collection<C3010a> b2 = m13697b(className);
        if (c3012e.isSaved()) {
            m13480a(c3012e, b2);
            m13592b(c3012e, c2, d);
        } else {
            m13480a(c3012e, b2);
            m13586a(c3012e, c2, d);
            m13480a(c3012e, b2);
        }
    }
}
