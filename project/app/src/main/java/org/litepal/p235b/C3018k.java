package org.litepal.p235b;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.litepal.C2993b;
import org.litepal.C3033f;
import org.litepal.p234a.InterfaceC2992b;
import org.litepal.p239c.C3024e;
import org.litepal.p246g.C3054a;
import org.litepal.p246g.C3058c;

/* renamed from: org.litepal.b.k */
/* loaded from: classes2.dex */
public class C3018k extends AbstractC3002b {
    public C3018k(SQLiteDatabase sQLiteDatabase) {
        this.f11003e = sQLiteDatabase;
    }

    /* renamed from: a */
    private int m13599a(C3012e c3012e, long j, ContentValues contentValues) {
        int i;
        try {
            m13480a(c3012e, m13697b(c3012e.getClassName()));
            Map<String, Long> associatedModelsMapWithoutFK = c3012e.getAssociatedModelsMapWithoutFK();
            for (String str : associatedModelsMapWithoutFK.keySet()) {
                contentValues.put(m13693f(str), associatedModelsMapWithoutFK.get(str));
            }
            Map<String, Set<Long>> associatedModelsMapWithFK = c3012e.getAssociatedModelsMapWithFK();
            ContentValues contentValues2 = new ContentValues();
            Iterator<String> it = associatedModelsMapWithFK.keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    i = 0;
                    break;
                }
                String next = it.next();
                contentValues2.clear();
                contentValues2.put(m13693f(c3012e.getTableName()), Long.valueOf(j));
                Set<Long> set = associatedModelsMapWithFK.get(next);
                if (set != null && !set.isEmpty()) {
                    i = this.f11003e.update(next, contentValues2, m13471a(set), null);
                    break;
                }
            }
            return 0 + i;
        } catch (Exception e) {
            throw new C3024e(e.getMessage(), e);
        }
    }

    /* renamed from: a */
    public static void m13600a(ContentValues contentValues) {
        if (Build.VERSION.SDK_INT >= 11) {
            HashMap hashMap = new HashMap();
            for (String str : contentValues.keySet()) {
                if (C3058c.m13962c(str)) {
                    hashMap.put(str, contentValues.get(str));
                }
            }
            for (String str2 : hashMap.keySet()) {
                String m13964d = C3058c.m13964d(str2);
                Object obj = contentValues.get(str2);
                contentValues.remove(str2);
                if (obj == null) {
                    contentValues.putNull(m13964d);
                } else {
                    String name = obj.getClass().getName();
                    if ("java.lang.Byte".equals(name)) {
                        contentValues.put(m13964d, (Byte) obj);
                    } else if ("[B".equals(name)) {
                        contentValues.put(m13964d, (byte[]) obj);
                    } else if ("java.lang.Boolean".equals(name)) {
                        contentValues.put(m13964d, (Boolean) obj);
                    } else if ("java.lang.String".equals(name)) {
                        contentValues.put(m13964d, (String) obj);
                    } else if ("java.lang.Float".equals(name)) {
                        contentValues.put(m13964d, (Float) obj);
                    } else if ("java.lang.Long".equals(name)) {
                        contentValues.put(m13964d, (Long) obj);
                    } else if ("java.lang.Integer".equals(name)) {
                        contentValues.put(m13964d, (Integer) obj);
                    } else if ("java.lang.Short".equals(name)) {
                        contentValues.put(m13964d, (Short) obj);
                    } else if ("java.lang.Double".equals(name)) {
                        contentValues.put(m13964d, (Double) obj);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    private static void m13601a(C3012e c3012e, ContentValues contentValues) {
        Map<String, Long> associatedModelsMapWithoutFK = c3012e.getAssociatedModelsMapWithoutFK();
        for (String str : associatedModelsMapWithoutFK.keySet()) {
            contentValues.put(m13693f(str), associatedModelsMapWithoutFK.get(str));
        }
    }

    /* renamed from: a */
    private void m13602a(C3012e c3012e, ContentValues contentValues, long... jArr) {
        NoSuchFieldException noSuchFieldException;
        String str;
        try {
            try {
                C3012e a2 = m13511a(c3012e);
                Class<?> cls = a2.getClass();
                Iterator<String> it = c3012e.getFieldsToSetToDefault().iterator();
                String str2 = null;
                while (it.hasNext()) {
                    try {
                        str = it.next();
                        if (!m13692e(str)) {
                            try {
                                Field declaredField = cls.getDeclaredField(str);
                                if (!m13683a(declaredField.getType())) {
                                    m13478a(a2, declaredField, contentValues);
                                } else if (jArr != null && jArr.length > 0) {
                                    if (C3054a.m13937c(m13684b(declaredField))) {
                                        String m13960b = C3058c.m13960b(c3012e.getClassName(), declaredField.getName());
                                        String m13959b = C3058c.m13959b(c3012e.getClassName());
                                        StringBuilder sb = new StringBuilder();
                                        int length = jArr.length;
                                        int i = 0;
                                        boolean z = false;
                                        while (i < length) {
                                            long j = jArr[i];
                                            if (z) {
                                                sb.append(" or ");
                                            }
                                            sb.append(m13959b);
                                            sb.append(" = ");
                                            sb.append(j);
                                            i++;
                                            z = true;
                                        }
                                        try {
                                            this.f11003e.delete(m13960b, sb.toString(), null);
                                        } catch (NoSuchFieldException e) {
                                            e = e;
                                            noSuchFieldException = e;
                                            throw new C3024e(C3024e.noSuchFieldExceptioin(c3012e.getClassName(), str), noSuchFieldException);
                                        } catch (Exception e2) {
                                            e = e2;
                                            Exception exc = e;
                                            throw new C3024e(exc.getMessage(), exc);
                                        }
                                    }
                                }
                                str2 = str;
                            } catch (NoSuchFieldException e3) {
                                e = e3;
                            }
                        }
                    } catch (NoSuchFieldException e4) {
                        noSuchFieldException = e4;
                        str = str2;
                    }
                }
            } catch (NoSuchFieldException e5) {
                noSuchFieldException = e5;
                str = null;
            }
        } catch (Exception e6) {
            e = e6;
        }
    }

    /* renamed from: a */
    private void m13603a(C3012e c3012e, List<Field> list, long... jArr) throws IllegalAccessException, InvocationTargetException {
        Iterator it;
        Field field;
        long[] jArr2 = jArr;
        if (jArr2.length > 0) {
            Iterator<Field> it2 = list.iterator();
            while (it2.hasNext()) {
                Field next = it2.next();
                InterfaceC2992b interfaceC2992b = (InterfaceC2992b) next.getAnnotation(InterfaceC2992b.class);
                String b2 = m13684b(next);
                String m13409a = (interfaceC2992b == null || !"java.lang.String".equals(b2)) ? null : interfaceC2992b.m13409a();
                next.setAccessible(true);
                Collection collection = (Collection) next.get(c3012e);
                if (collection != null && !collection.isEmpty()) {
                    String m13960b = C3058c.m13960b(c3012e.getClassName(), next.getName());
                    String m13959b = C3058c.m13959b(c3012e.getClassName());
                    int length = jArr2.length;
                    int i = 0;
                    while (i < length) {
                        long j = jArr2[i];
                        Iterator<Field> it3 = it2;
                        this.f11003e.delete(m13960b, m13959b + " = ?", new String[]{String.valueOf(j)});
                        Iterator it4 = collection.iterator();
                        while (it4.hasNext()) {
                            Object next2 = it4.next();
                            ContentValues contentValues = new ContentValues();
                            contentValues.put(m13959b, Long.valueOf(j));
                            Object a2 = m13469a(m13409a, next2);
                            if (c3012e.getClassName().equals(b2)) {
                                C3012e c3012e2 = (C3012e) a2;
                                if (c3012e2 != null) {
                                    it = it4;
                                    long baseObjId = c3012e2.getBaseObjId();
                                    if (baseObjId > 0) {
                                        contentValues.put(C3058c.m13953a(next), Long.valueOf(baseObjId));
                                        field = next;
                                    } else {
                                        it4 = it;
                                    }
                                }
                            } else {
                                it = it4;
                                field = next;
                                C3011d.m13547a(contentValues, "put", new Object[]{C3058c.m13964d(C3054a.m13930a(next.getName())), a2}, contentValues.getClass(), new Class[]{String.class, m13676a(next)});
                            }
                            this.f11003e.insert(m13960b, null, contentValues);
                            it4 = it;
                            next = field;
                        }
                        i++;
                        it2 = it3;
                        jArr2 = jArr;
                    }
                }
                it2 = it2;
                jArr2 = jArr;
            }
        }
    }

    /* renamed from: b */
    private int m13604b(String str, ContentValues contentValues, String... strArr) {
        C3054a.m13931a(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = C3058c.m13966e(strArr[0]);
        }
        m13600a(contentValues);
        return m13608a(str, contentValues, strArr);
    }

    /* renamed from: b */
    private void m13605b(C3012e c3012e) {
        try {
            m13480a(c3012e, m13697b(c3012e.getClassName()));
        } catch (Exception e) {
            throw new C3024e(e.getMessage(), e);
        }
    }

    /* renamed from: c */
    private int m13606c(C3012e c3012e, long j) {
        Map<String, Set<Long>> associatedModelsMapWithFK = c3012e.getAssociatedModelsMapWithFK();
        ContentValues contentValues = new ContentValues();
        for (String str : associatedModelsMapWithFK.keySet()) {
            contentValues.clear();
            contentValues.put(m13693f(c3012e.getTableName()), Long.valueOf(j));
            Set<Long> set = associatedModelsMapWithFK.get(str);
            if (set != null && !set.isEmpty()) {
                return this.f11003e.update(str, contentValues, m13471a(set), null);
            }
        }
        return 0;
    }

    /* renamed from: a */
    public final int m13607a(Class<?> cls, long j, ContentValues contentValues) {
        if (contentValues.size() <= 0) {
            return 0;
        }
        m13600a(contentValues);
        return this.f11003e.update(m13487b(cls), contentValues, "id = " + j, null);
    }

    /* renamed from: a */
    public final int m13608a(String str, ContentValues contentValues, String... strArr) {
        C3054a.m13931a(strArr);
        if (contentValues.size() > 0) {
            return this.f11003e.update(str, contentValues, m13474a(strArr), m13492b(strArr));
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m13609a(C3012e c3012e, String... strArr) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        C3054a.m13931a(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = C3058c.m13966e(strArr[0]);
        }
        List<Field> c2 = m13698c(c3012e.getClassName());
        List<Field> d = m13699d(c3012e.getClassName());
        long[] jArr = null;
        if (!d.isEmpty()) {
            C2993b m13763a = C3033f.m13763a("id");
            m13763a.f10941b = strArr;
            List m13442a = m13763a.m13442a((Class) c3012e.getClass(), false);
            if (m13442a.size() > 0) {
                jArr = new long[m13442a.size()];
                for (int i = 0; i < jArr.length; i++) {
                    jArr[i] = ((C3012e) m13442a.get(i)).getBaseObjId();
                }
                m13603a(c3012e, d, jArr);
            }
        }
        ContentValues contentValues = new ContentValues();
        m13512a(c3012e, c2, contentValues);
        m13602a(c3012e, contentValues, jArr);
        return m13608a(c3012e.getTableName(), contentValues, strArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final int m13610b(C3012e c3012e, long j) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        List<Field> c2 = m13698c(c3012e.getClassName());
        m13603a(c3012e, m13699d(c3012e.getClassName()), j);
        ContentValues contentValues = new ContentValues();
        m13512a(c3012e, c2, contentValues);
        m13602a(c3012e, contentValues, j);
        if (contentValues.size() <= 0) {
            return 0;
        }
        return this.f11003e.update(c3012e.getTableName(), contentValues, "id = " + j, null);
    }
}
