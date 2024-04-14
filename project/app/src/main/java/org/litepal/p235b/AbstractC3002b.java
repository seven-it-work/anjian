package org.litepal.p235b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.support.v7.widget.ActivityChooserView;
import android.util.SparseArray;
import com.cyjh.elfin.p073a.C1225b;
import com.umeng.commonsdk.proguard.C2518v;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import net.grandcentrix.tray.provider.TrayContract;
import org.litepal.AbstractC3026d;
import org.litepal.C3033f;
import org.litepal.p234a.InterfaceC2992b;
import org.litepal.p235b.p238c.C3010a;
import org.litepal.p239c.C3021b;
import org.litepal.p239c.C3024e;
import org.litepal.p246g.C3054a;
import org.litepal.p246g.C3058c;
import org.litepal.p246g.p247a.C3056b;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.litepal.b.b */
/* loaded from: classes2.dex */
public abstract class AbstractC3002b extends AbstractC3026d {

    /* renamed from: d */
    public static final String f11002d = "DataHandler";

    /* renamed from: e */
    SQLiteDatabase f11003e;

    /* renamed from: f */
    private C3012e f11004f;

    /* renamed from: g */
    private List<C3010a> f11005g;

    /* renamed from: h */
    private List<C3010a> f11006h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.litepal.b.b$a */
    /* loaded from: classes2.dex */
    public class a {

        /* renamed from: a */
        String f11007a;

        /* renamed from: b */
        Field f11008b;

        a() {
        }
    }

    /* renamed from: a */
    private Object m13468a(Class<?> cls, Class<?> cls2) {
        String name = cls2.getName();
        if ("boolean".equals(name) || "java.lang.Boolean".equals(name)) {
            return false;
        }
        if ("float".equals(name) || "java.lang.Float".equals(name)) {
            return Float.valueOf(0.0f);
        }
        if ("double".equals(name) || "java.lang.Double".equals(name)) {
            return Double.valueOf(0.0d);
        }
        if ("int".equals(name) || "java.lang.Integer".equals(name)) {
            return 0;
        }
        if ("long".equals(name) || "java.lang.Long".equals(name)) {
            return 0L;
        }
        if ("short".equals(name) || "java.lang.Short".equals(name)) {
            return 0;
        }
        if ("char".equals(name) || "java.lang.Character".equals(name)) {
            return ' ';
        }
        if ("[B".equals(name) || "[Ljava.lang.Byte;".equals(name)) {
            return new byte[0];
        }
        if ("java.lang.String".equals(name)) {
            return "";
        }
        if (cls == cls2) {
            return null;
        }
        return m13493c(cls2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static Object m13469a(String str, Object obj) {
        return (str == null || obj == null) ? obj : "AES".equalsIgnoreCase(str) ? C3056b.m13947a((String) obj) : "MD5".equalsIgnoreCase(str) ? C3056b.m13950c((String) obj) : obj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static Object m13470a(C3012e c3012e, Field field) throws SecurityException, NoSuchMethodException, IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        if (m13491b(c3012e, field)) {
            return C3011d.m13546a(c3012e, field.getName(), c3012e.getClass());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static String m13471a(Collection<Long> collection) {
        StringBuilder sb = new StringBuilder();
        Iterator<Long> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            long longValue = it.next().longValue();
            if (z) {
                sb.append(" or ");
            }
            z = true;
            sb.append("id = ");
            sb.append(longValue);
        }
        return C3054a.m13930a(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static String m13472a(C3012e c3012e, String str) {
        return C3054a.m13930a(C3058c.m13952a(c3012e.getTableName(), str));
    }

    /* renamed from: a */
    private static String m13473a(long... jArr) {
        StringBuilder sb = new StringBuilder();
        int length = jArr.length;
        int i = 0;
        boolean z = false;
        while (i < length) {
            long j = jArr[i];
            if (z) {
                sb.append(" or ");
            }
            sb.append("id = ");
            sb.append(j);
            i++;
            z = true;
        }
        return C3054a.m13930a(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static String m13474a(String... strArr) {
        new Object[1][0] = strArr;
        if (strArr == null || strArr.length <= 0) {
            return null;
        }
        return strArr[0];
    }

    /* renamed from: a */
    private static void m13475a(Object obj, Field field, int i, String str, Cursor cursor) throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        Object invoke = cursor.getClass().getMethod(str, Integer.TYPE).invoke(cursor, Integer.valueOf(i));
        if (field.getType() == Boolean.TYPE || field.getType() == Boolean.class) {
            if ("0".equals(String.valueOf(invoke))) {
                invoke = false;
            } else if ("1".equals(String.valueOf(invoke))) {
                invoke = true;
            }
        } else if (field.getType() == Character.TYPE || field.getType() == Character.class) {
            invoke = Character.valueOf(((String) invoke).charAt(0));
        } else if (field.getType() == Date.class) {
            long longValue = ((Long) invoke).longValue();
            invoke = longValue <= 0 ? null : new Date(longValue);
        }
        if (!m13683a(field.getType())) {
            InterfaceC2992b interfaceC2992b = (InterfaceC2992b) field.getAnnotation(InterfaceC2992b.class);
            if (interfaceC2992b != null && "java.lang.String".equals(field.getType().getName())) {
                invoke = m13486b(interfaceC2992b.m13409a(), invoke);
            }
            C3011d.m13549b(obj, field.getName(), invoke, obj.getClass());
            return;
        }
        Collection collection = (Collection) C3011d.m13546a(obj, field.getName(), obj.getClass());
        if (collection == null) {
            collection = List.class.isAssignableFrom(field.getType()) ? new ArrayList() : new HashSet();
            C3011d.m13549b(obj, field.getName(), collection, obj.getClass());
        }
        String b2 = m13684b(field);
        if ("java.lang.String".equals(b2)) {
            InterfaceC2992b interfaceC2992b2 = (InterfaceC2992b) field.getAnnotation(InterfaceC2992b.class);
            if (interfaceC2992b2 != null) {
                invoke = m13486b(interfaceC2992b2.m13409a(), invoke);
            }
        } else if (obj.getClass().getName().equals(b2) && ((invoke instanceof Long) || (invoke instanceof Integer))) {
            invoke = C3033f.m13755a(obj.getClass(), ((Long) invoke).longValue());
        }
        collection.add(invoke);
    }

    /* renamed from: a */
    private void m13476a(Object obj, List<Field> list, List<C3010a> list2, Cursor cursor, SparseArray<a> sparseArray) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        int size = sparseArray.size();
        if (size > 0) {
            for (int i = 0; i < size; i++) {
                int keyAt = sparseArray.keyAt(i);
                a aVar = sparseArray.get(keyAt);
                m13475a(obj, aVar.f11008b, keyAt, aVar.f11007a, cursor);
            }
        } else {
            for (Field field : list) {
                String m13506g = m13506g(field);
                int columnIndex = cursor.getColumnIndex(C3054a.m13930a(m13692e(field.getName()) ? "id" : C3058c.m13964d(field.getName())));
                if (columnIndex != -1) {
                    m13475a(obj, field, columnIndex, m13506g, cursor);
                    a aVar2 = new a();
                    aVar2.f11007a = m13506g;
                    aVar2.f11008b = field;
                    sparseArray.put(columnIndex, aVar2);
                }
            }
        }
        if (list2 != null) {
            for (C3010a c3010a : list2) {
                int columnIndex2 = cursor.getColumnIndex(m13693f(C3058c.m13951a(c3010a.f11012b)));
                if (columnIndex2 != -1) {
                    try {
                        C3012e c3012e = (C3012e) C3033f.m13755a(Class.forName(c3010a.f11012b), cursor.getLong(columnIndex2));
                        if (c3012e != null) {
                            m13479a((C3012e) obj, c3010a.f11014d, c3012e);
                        }
                    } catch (ClassNotFoundException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m13477a(C3012e c3012e, long j) throws SecurityException, NoSuchFieldException, IllegalArgumentException, IllegalAccessException {
        if (j > 0) {
            C3011d.m13548a(c3012e, "baseObjId", Long.valueOf(j), C3012e.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m13478a(C3012e c3012e, Field field, ContentValues contentValues) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Object m13470a = m13470a(c3012e, field);
        if ("java.util.Date".equals(field.getType().getName()) && m13470a != null) {
            m13470a = Long.valueOf(((Date) m13470a).getTime());
        }
        InterfaceC2992b interfaceC2992b = (InterfaceC2992b) field.getAnnotation(InterfaceC2992b.class);
        if (interfaceC2992b != null && "java.lang.String".equals(field.getType().getName())) {
            m13470a = m13469a(interfaceC2992b.m13409a(), m13470a);
        }
        Object[] objArr = {C3054a.m13930a(C3058c.m13964d(field.getName())), m13470a};
        C3011d.m13547a(contentValues, "put", objArr, contentValues.getClass(), m13483a(field, m13470a, objArr));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m13479a(C3012e c3012e, Field field, Object obj) throws SecurityException, NoSuchMethodException, IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        if (m13491b(c3012e, field)) {
            C3011d.m13549b(c3012e, field.getName(), obj, c3012e.getClass());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m13480a(C3012e c3012e, Collection<C3010a> collection) {
        try {
            for (C3010a c3010a : collection) {
                if (c3010a.f11016f == 2) {
                    new C3014g();
                    C3014g.m13561e(c3012e, c3010a);
                } else if (c3010a.f11016f == 1) {
                    new C3015h();
                    C3015h.m13567e(c3012e, c3010a);
                } else if (c3010a.f11016f == 3) {
                    new C3013f();
                    C3013f.m13555e(c3012e, c3010a);
                }
            }
        } catch (Exception e) {
            throw new C3024e(e.getMessage(), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00c4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0006 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m13481a(org.litepal.p235b.C3012e r18, java.util.List<java.lang.reflect.Field> r19, java.util.Map<java.lang.reflect.Field, org.litepal.p242f.p244b.C3039c> r20) throws java.lang.NoSuchMethodException, java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        /*
            r17 = this;
            r1 = r20
            java.util.Iterator r2 = r19.iterator()
        L6:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto Ld5
            java.lang.Object r3 = r2.next()
            java.lang.reflect.Field r3 = (java.lang.reflect.Field) r3
            r4 = 0
            java.lang.Object r5 = r1.get(r3)
            org.litepal.f.b.c r5 = (org.litepal.p242f.p244b.C3039c) r5
            if (r5 != 0) goto L63
            java.lang.String r5 = m13684b(r3)
            java.lang.String r6 = r18.getClassName()
            boolean r5 = r6.equals(r5)
            if (r5 == 0) goto L30
            java.lang.String r5 = org.litepal.p246g.C3058c.m13953a(r3)
            java.lang.String r6 = "getLong"
            goto L3c
        L30:
            java.lang.String r5 = r3.getName()
            java.lang.String r5 = org.litepal.p246g.C3058c.m13964d(r5)
            java.lang.String r6 = m13506g(r3)
        L3c:
            java.lang.String r7 = r18.getClassName()
            java.lang.String r8 = r3.getName()
            java.lang.String r7 = org.litepal.p246g.C3058c.m13960b(r7, r8)
            java.lang.String r8 = r18.getClassName()
            java.lang.String r8 = org.litepal.p246g.C3058c.m13959b(r8)
            org.litepal.f.b.c r9 = new org.litepal.f.b.c
            r9.<init>()
            r9.f11173a = r7
            r9.f11174b = r5
            r9.f11176d = r8
            r9.f11177e = r6
            r1.put(r3, r9)
            r14 = r5
            r15 = r6
            goto L6d
        L63:
            java.lang.String r7 = r5.f11173a
            java.lang.String r6 = r5.f11174b
            java.lang.String r8 = r5.f11176d
            java.lang.String r5 = r5.f11177e
            r15 = r5
            r14 = r6
        L6d:
            r5 = r17
            android.database.sqlite.SQLiteDatabase r6 = r5.f11003e     // Catch: java.lang.Throwable -> Lcd
            r9 = 0
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lcd
            r10.<init>()     // Catch: java.lang.Throwable -> Lcd
            r10.append(r8)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r8 = " = ?"
            r10.append(r8)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r10 = r10.toString()     // Catch: java.lang.Throwable -> Lcd
            r8 = 1
            java.lang.String[] r11 = new java.lang.String[r8]     // Catch: java.lang.Throwable -> Lcd
            r8 = 0
            long r12 = r18.getBaseObjId()     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r12 = java.lang.String.valueOf(r12)     // Catch: java.lang.Throwable -> Lcd
            r11[r8] = r12     // Catch: java.lang.Throwable -> Lcd
            r12 = 0
            r13 = 0
            r16 = 0
            r8 = r9
            r9 = r10
            r10 = r11
            r11 = r12
            r12 = r13
            r13 = r16
            android.database.Cursor r6 = r6.query(r7, r8, r9, r10, r11, r12, r13)     // Catch: java.lang.Throwable -> Lcd
            boolean r4 = r6.moveToFirst()     // Catch: java.lang.Throwable -> Lc9
            if (r4 == 0) goto Lc0
        La6:
            java.lang.String r4 = org.litepal.p246g.C3054a.m13930a(r14)     // Catch: java.lang.Throwable -> Lc9
            int r4 = r6.getColumnIndex(r4)     // Catch: java.lang.Throwable -> Lc9
            r7 = -1
            if (r4 == r7) goto Lb7
            r7 = r18
            m13475a(r7, r3, r4, r15, r6)     // Catch: java.lang.Throwable -> Lc9
            goto Lb9
        Lb7:
            r7 = r18
        Lb9:
            boolean r4 = r6.moveToNext()     // Catch: java.lang.Throwable -> Lc9
            if (r4 != 0) goto La6
            goto Lc2
        Lc0:
            r7 = r18
        Lc2:
            if (r6 == 0) goto L6
            r6.close()
            goto L6
        Lc9:
            r0 = move-exception
            r1 = r0
            r4 = r6
            goto Lcf
        Lcd:
            r0 = move-exception
            r1 = r0
        Lcf:
            if (r4 == 0) goto Ld4
            r4.close()
        Ld4:
            throw r1
        Ld5:
            r5 = r17
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.p235b.AbstractC3002b.m13481a(org.litepal.b.e, java.util.List, java.util.Map):void");
    }

    /* renamed from: a */
    private static boolean m13482a() {
        return false;
    }

    /* renamed from: a */
    private static Class<?>[] m13483a(Field field, Object obj, Object[] objArr) {
        Class<?>[] clsArr;
        Class<?> cls;
        String name = field.getType().getName();
        if (name.equals("char") || name.endsWith("Character")) {
            objArr[1] = String.valueOf(obj);
            return new Class[]{String.class, String.class};
        }
        if (field.getType().isPrimitive()) {
            clsArr = new Class[2];
            clsArr[0] = String.class;
            Class<?> type = field.getType();
            if (type != null && type.isPrimitive()) {
                String name2 = type.getName();
                if ("int".equals(name2)) {
                    cls = Integer.class;
                } else if ("short".equals(name2)) {
                    cls = Short.class;
                } else if ("long".equals(name2)) {
                    cls = Long.class;
                } else if ("float".equals(name2)) {
                    cls = Float.class;
                } else if ("double".equals(name2)) {
                    cls = Double.class;
                } else if ("boolean".equals(name2)) {
                    cls = Boolean.class;
                } else if ("char".equals(name2)) {
                    cls = Character.class;
                }
                clsArr[1] = cls;
            }
            cls = null;
            clsArr[1] = cls;
        } else {
            if ("java.util.Date".equals(field.getType().getName())) {
                return new Class[]{String.class, Long.class};
            }
            clsArr = new Class[]{String.class, field.getType()};
        }
        return clsArr;
    }

    /* renamed from: a */
    private Object[] m13484a(Class<?> cls, Constructor<?> constructor) {
        String str;
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        Object[] objArr = new Object[parameterTypes.length];
        for (int i = 0; i < parameterTypes.length; i++) {
            Class<?> cls2 = parameterTypes[i];
            String name = cls2.getName();
            if ("boolean".equals(name) || "java.lang.Boolean".equals(name)) {
                str = false;
            } else if ("float".equals(name) || "java.lang.Float".equals(name)) {
                str = Float.valueOf(0.0f);
            } else if ("double".equals(name) || "java.lang.Double".equals(name)) {
                str = Double.valueOf(0.0d);
            } else {
                if (!"int".equals(name) && !"java.lang.Integer".equals(name)) {
                    if ("long".equals(name) || "java.lang.Long".equals(name)) {
                        str = 0L;
                    } else if (!"short".equals(name) && !"java.lang.Short".equals(name)) {
                        str = ("char".equals(name) || "java.lang.Character".equals(name)) ? ' ' : ("[B".equals(name) || "[Ljava.lang.Byte;".equals(name)) ? new byte[0] : "java.lang.String".equals(name) ? "" : cls == cls2 ? null : m13493c(cls2);
                    }
                }
                str = 0;
            }
            objArr[i] = str;
        }
        return objArr;
    }

    /* renamed from: a */
    private static String[] m13485a(String[] strArr, List<Field> list, List<C3010a> list2) {
        if (strArr == null || strArr.length <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        Iterator<Field> it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(it.next().getName());
        }
        boolean z = false;
        for (int i = 0; i < arrayList.size(); i++) {
            String str = (String) arrayList.get(i);
            if (C3054a.m13934a(arrayList2, str)) {
                arrayList3.add(Integer.valueOf(i));
            } else if (m13692e(str)) {
                if (TrayContract.Preferences.Columns.f10375ID.equalsIgnoreCase(str)) {
                    arrayList.set(i, C3054a.m13930a("id"));
                }
                z = true;
            }
        }
        for (int size = arrayList3.size() - 1; size >= 0; size--) {
            arrayList4.add((String) arrayList.remove(((Integer) arrayList3.get(size)).intValue()));
        }
        for (Field field : list) {
            if (C3054a.m13934a(arrayList4, field.getName())) {
                arrayList5.add(field);
            }
        }
        list.clear();
        list.addAll(arrayList5);
        if (list2 != null && list2.size() > 0) {
            for (int i2 = 0; i2 < list2.size(); i2++) {
                arrayList.add(m13693f(C3058c.m13951a(list2.get(i2).f11012b)));
            }
        }
        if (!z) {
            arrayList.add(C3054a.m13930a("id"));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: b */
    private static Object m13486b(String str, Object obj) {
        return (str == null || obj == null || !"AES".equalsIgnoreCase(str)) ? obj : C3056b.m13949b((String) obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public static String m13487b(Class<?> cls) {
        return C3054a.m13930a(C3058c.m13951a(cls.getName()));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x01a1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0179 A[LOOP:1: B:30:0x00f6->B:47:0x0179, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0172 A[EDGE_INSN: B:48:0x0172->B:49:0x0172 BREAK  A[LOOP:1: B:30:0x00f6->B:47:0x0179], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m13488b(org.litepal.p235b.C3012e r30) {
        /*
            Method dump skipped, instructions count: 462
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.p235b.AbstractC3002b.m13488b(org.litepal.b.e):void");
    }

    /* renamed from: b */
    private static void m13489b(C3012e c3012e, Field field, ContentValues contentValues) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Object m13546a = C3011d.m13546a(c3012e, field.getName(), c3012e.getClass());
        if (m13546a != null) {
            if ("java.util.Date".equals(field.getType().getName())) {
                m13546a = Long.valueOf(((Date) m13546a).getTime());
            }
            InterfaceC2992b interfaceC2992b = (InterfaceC2992b) field.getAnnotation(InterfaceC2992b.class);
            if (interfaceC2992b != null && "java.lang.String".equals(field.getType().getName())) {
                m13546a = m13469a(interfaceC2992b.m13409a(), m13546a);
            }
            Object[] objArr = {C3054a.m13930a(C3058c.m13964d(field.getName())), m13546a};
            C3011d.m13547a(contentValues, "put", objArr, contentValues.getClass(), m13483a(field, m13546a, objArr));
        }
    }

    /* renamed from: b */
    private boolean m13490b() {
        return C3018k.class.getName().equals(getClass().getName());
    }

    /* renamed from: b */
    private static boolean m13491b(C3012e c3012e, Field field) {
        return (c3012e == null || field == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public static String[] m13492b(String... strArr) {
        new Object[1][0] = strArr;
        if (strArr == null || strArr.length <= 1) {
            return null;
        }
        String[] strArr2 = new String[strArr.length - 1];
        System.arraycopy(strArr, 1, strArr2, 0, strArr.length - 1);
        return strArr2;
    }

    /* renamed from: c */
    private Object m13493c(Class<?> cls) {
        try {
            Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
            SparseArray sparseArray = new SparseArray();
            int i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            for (Constructor<?> constructor : declaredConstructors) {
                int length = constructor.getParameterTypes().length;
                int i2 = length;
                for (Class<?> cls2 : constructor.getParameterTypes()) {
                    if (cls2 != cls) {
                        if (cls2.getName().startsWith("com.android") && cls2.getName().endsWith("InstantReloadException")) {
                        }
                    }
                    i2 += C1225b.f4496ak;
                }
                if (sparseArray.get(i2) == null) {
                    sparseArray.put(i2, constructor);
                }
                if (i2 < i) {
                    i = i2;
                }
            }
            Constructor<?> constructor2 = (Constructor) sparseArray.get(i);
            if (constructor2 != null) {
                constructor2.setAccessible(true);
            }
            return constructor2.newInstance(m13484a(cls, constructor2));
        } catch (Exception e) {
            throw new C3024e(e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public static C3012e m13494c(C3012e c3012e, C3010a c3010a) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        return (C3012e) m13470a(c3012e, c3010a.f11014d);
    }

    /* renamed from: c */
    private void m13495c(C3012e c3012e, Field field, ContentValues contentValues) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Object m13546a;
        boolean z = false;
        if (C3018k.class.getName().equals(getClass().getName())) {
            C3012e m13511a = m13511a(c3012e);
            Object m13470a = m13470a(c3012e, field);
            Object m13470a2 = m13470a(m13511a, field);
            if (m13470a != null && m13470a2 != null) {
                z = m13470a.toString().equals(m13470a2.toString());
            } else if (m13470a == m13470a2) {
                z = true;
            }
            if (z) {
                return;
            }
            m13478a(c3012e, field, contentValues);
            return;
        }
        if (!C3017j.class.getName().equals(getClass().getName()) || (m13546a = C3011d.m13546a(c3012e, field.getName(), c3012e.getClass())) == null) {
            return;
        }
        if ("java.util.Date".equals(field.getType().getName())) {
            m13546a = Long.valueOf(((Date) m13546a).getTime());
        }
        InterfaceC2992b interfaceC2992b = (InterfaceC2992b) field.getAnnotation(InterfaceC2992b.class);
        if (interfaceC2992b != null && "java.lang.String".equals(field.getType().getName())) {
            m13546a = m13469a(interfaceC2992b.m13409a(), m13546a);
        }
        Object[] objArr = {C3054a.m13930a(C3058c.m13964d(field.getName())), m13546a};
        C3011d.m13547a(contentValues, "put", objArr, contentValues.getClass(), m13483a(field, m13546a, objArr));
    }

    /* renamed from: c */
    private boolean m13496c() {
        return C3017j.class.getName().equals(getClass().getName());
    }

    /* renamed from: c */
    private static boolean m13497c(Field field) {
        String name = field.getType().getName();
        return name.equals("char") || name.endsWith("Character");
    }

    /* renamed from: c */
    private boolean m13498c(C3012e c3012e, Field field) throws IllegalAccessException, SecurityException, IllegalArgumentException, NoSuchMethodException, InvocationTargetException {
        C3012e m13511a = m13511a(c3012e);
        Object m13470a = m13470a(c3012e, field);
        Object m13470a2 = m13470a(m13511a, field);
        return (m13470a == null || m13470a2 == null) ? m13470a == m13470a2 : m13470a.toString().equals(m13470a2.toString());
    }

    /* renamed from: d */
    private static Constructor<?> m13499d(Class<?> cls) {
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        SparseArray sparseArray = new SparseArray();
        int i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        for (Constructor<?> constructor : declaredConstructors) {
            int length = constructor.getParameterTypes().length;
            int i2 = length;
            for (Class<?> cls2 : constructor.getParameterTypes()) {
                if (cls2 == cls || (cls2.getName().startsWith("com.android") && cls2.getName().endsWith("InstantReloadException"))) {
                    i2 += C1225b.f4496ak;
                }
            }
            if (sparseArray.get(i2) == null) {
                sparseArray.put(i2, constructor);
            }
            if (i2 < i) {
                i = i2;
            }
        }
        Constructor<?> constructor2 = (Constructor) sparseArray.get(i);
        if (constructor2 != null) {
            constructor2.setAccessible(true);
        }
        return constructor2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public static Collection<C3012e> m13500d(C3012e c3012e, C3010a c3010a) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        return (Collection) m13470a(c3012e, c3010a.f11014d);
    }

    /* renamed from: d */
    private static boolean m13501d(Field field) {
        return "boolean".equals(field.getType().getName());
    }

    /* renamed from: e */
    private static Class<?> m13502e(Class<?> cls) {
        if (cls == null || !cls.isPrimitive()) {
            return null;
        }
        String name = cls.getName();
        if ("int".equals(name)) {
            return Integer.class;
        }
        if ("short".equals(name)) {
            return Short.class;
        }
        if ("long".equals(name)) {
            return Long.class;
        }
        if ("float".equals(name)) {
            return Float.class;
        }
        if ("double".equals(name)) {
            return Double.class;
        }
        if ("boolean".equals(name)) {
            return Boolean.class;
        }
        if ("char".equals(name)) {
            return Character.class;
        }
        return null;
    }

    /* renamed from: e */
    private static String m13503e(Field field) {
        String str;
        StringBuilder sb;
        String name = field.getName();
        if (m13501d(field)) {
            if (name.matches("^is[A-Z]{1}.*$")) {
                name = name.substring(2);
            }
            str = C2518v.f9531Y;
        } else {
            str = "get";
        }
        if (name.matches("^[a-z]{1}[A-Z]{1}.*")) {
            sb = new StringBuilder();
            sb.append(str);
            sb.append(name);
        } else {
            sb = new StringBuilder();
            sb.append(str);
            sb.append(C3054a.m13936b(name));
        }
        return sb.toString();
    }

    /* renamed from: f */
    private static String m13504f(Class<?> cls) {
        String str = "get" + (cls.isPrimitive() ? C3054a.m13936b(cls.getName()) : cls.getSimpleName());
        return "getBoolean".equals(str) ? "getInt" : ("getChar".equals(str) || "getCharacter".equals(str)) ? "getString" : "getDate".equals(str) ? "getLong" : "getInteger".equals(str) ? "getInt" : "getbyte[]".equalsIgnoreCase(str) ? "getBlob" : str;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* renamed from: f */
    private static String m13505f(Field field) {
        StringBuilder sb;
        String m13936b;
        if (m13501d(field) && field.getName().matches("^is[A-Z]{1}.*$")) {
            sb = new StringBuilder();
            sb.append("set");
            m13936b = field.getName().substring(2);
        } else if (field.getName().matches("^[a-z]{1}[A-Z]{1}.*")) {
            sb = new StringBuilder();
            sb.append("set");
            m13936b = field.getName();
        } else {
            sb = new StringBuilder();
            sb.append("set");
            m13936b = C3054a.m13936b(field.getName());
        }
        sb.append(m13936b);
        return sb.toString();
    }

    /* renamed from: g */
    private static String m13506g(Field field) {
        return m13504f(m13683a(field.getType()) ? m13676a(field) : field.getType());
    }

    /* renamed from: g */
    private void m13507g(String str) {
        List<C3010a> list;
        Collection<C3010a> b2 = m13697b(str);
        if (this.f11005g == null) {
            this.f11005g = new ArrayList();
        } else {
            this.f11005g.clear();
        }
        if (this.f11006h == null) {
            this.f11006h = new ArrayList();
        } else {
            this.f11006h.clear();
        }
        for (C3010a c3010a : b2) {
            if (c3010a.f11016f == 2 || c3010a.f11016f == 1) {
                if (c3010a.f11013c.equals(str)) {
                    list = this.f11005g;
                    list.add(c3010a);
                }
            } else if (c3010a.f11016f == 3) {
            }
            list = this.f11006h;
            list.add(c3010a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final <T> T m13508a(String str, String[] strArr, String[] strArr2, Class<T> cls) {
        Cursor cursor;
        C3054a.m13931a(strArr2);
        Cursor cursor2 = (T) null;
        try {
            try {
                cursor = this.f11003e.query(str, strArr, m13474a(strArr2), m13492b(strArr2), null, null, null);
                try {
                    if (cursor.moveToFirst()) {
                        cursor2 = (T) cursor.getClass().getMethod(m13504f((Class<?>) cls), Integer.TYPE).invoke(cursor, 0);
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return (T) cursor2;
                } catch (Exception e) {
                    e = e;
                    cursor2 = (T) cursor;
                    throw new C3024e(e.getMessage(), e);
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = cursor2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final <T> java.util.List<T> m13509a(java.lang.Class<T> r22, java.lang.String[] r23, java.lang.String r24, java.lang.String[] r25, java.lang.String r26, java.lang.String r27, java.util.List<org.litepal.p235b.p238c.C3010a> r28) {
        /*
            r21 = this;
            r7 = r21
            r8 = r28
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            r1 = 0
            java.lang.String r2 = r22.getName()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L90
            java.util.List r10 = r7.m13698c(r2)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L90
            java.lang.String r2 = r22.getName()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L90
            java.util.List r11 = r7.m13699d(r2)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L90
            r2 = r23
            java.lang.String[] r2 = m13485a(r2, r11, r8)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L90
            java.lang.String[] r14 = org.litepal.p246g.C3058c.m13958a(r2)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L90
            java.lang.String r13 = m13487b(r22)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L90
            android.database.sqlite.SQLiteDatabase r12 = r7.f11003e     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L90
            r17 = 0
            r18 = 0
            r15 = r24
            r16 = r25
            r19 = r26
            r20 = r27
            android.database.Cursor r12 = r12.query(r13, r14, r15, r16, r17, r18, r19, r20)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L90
            boolean r1 = r12.moveToFirst()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
            if (r1 == 0) goto L84
            android.util.SparseArray r13 = new android.util.SparseArray     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
            r13.<init>()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
            java.util.HashMap r14 = new java.util.HashMap     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
            r14.<init>()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
        L4a:
            java.lang.Object r15 = r21.m13493c(r22)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
            r1 = r15
            org.litepal.b.e r1 = (org.litepal.p235b.C3012e) r1     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
            java.lang.String r2 = "id"
            int r2 = r12.getColumnIndexOrThrow(r2)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
            long r2 = r12.getLong(r2)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
            m13477a(r1, r2)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
            r1 = r7
            r2 = r15
            r3 = r10
            r4 = r8
            r5 = r12
            r6 = r13
            r1.m13476a(r2, r3, r4, r5, r6)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
            r1 = r15
            org.litepal.b.e r1 = (org.litepal.p235b.C3012e) r1     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
            r7.m13481a(r1, r11, r14)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
            if (r8 == 0) goto L75
            r1 = r15
            org.litepal.b.e r1 = (org.litepal.p235b.C3012e) r1     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
            r7.m13488b(r1)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
        L75:
            r9.add(r15)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
            boolean r1 = r12.moveToNext()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
            if (r1 != 0) goto L4a
            r13.clear()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
            r14.clear()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L9d
        L84:
            if (r12 == 0) goto L89
            r12.close()
        L89:
            return r9
        L8a:
            r0 = move-exception
            goto L92
        L8c:
            r0 = move-exception
            r12 = r1
        L8e:
            r1 = r0
            goto L9f
        L90:
            r0 = move-exception
            r12 = r1
        L92:
            r1 = r0
            org.litepal.c.e r2 = new org.litepal.c.e     // Catch: java.lang.Throwable -> L9d
            java.lang.String r3 = r1.getMessage()     // Catch: java.lang.Throwable -> L9d
            r2.<init>(r3, r1)     // Catch: java.lang.Throwable -> L9d
            throw r2     // Catch: java.lang.Throwable -> L9d
        L9d:
            r0 = move-exception
            goto L8e
        L9f:
            if (r12 == 0) goto La4
            r12.close()
        La4:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.p235b.AbstractC3002b.m13509a(java.lang.Class, java.lang.String[], java.lang.String, java.lang.String[], java.lang.String, java.lang.String, java.util.List):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final List<C3010a> m13510a(String str, boolean z) {
        List<C3010a> list;
        if (!z) {
            return null;
        }
        Collection<C3010a> b2 = m13697b(str);
        if (this.f11005g == null) {
            this.f11005g = new ArrayList();
        } else {
            this.f11005g.clear();
        }
        if (this.f11006h == null) {
            this.f11006h = new ArrayList();
        } else {
            this.f11006h.clear();
        }
        for (C3010a c3010a : b2) {
            if (c3010a.f11016f == 2 || c3010a.f11016f == 1) {
                if (c3010a.f11013c.equals(str)) {
                    list = this.f11005g;
                    list.add(c3010a);
                }
            } else if (c3010a.f11016f == 3) {
            }
            list = this.f11006h;
            list.add(c3010a);
        }
        return this.f11005g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final C3012e m13511a(C3012e c3012e) {
        InstantiationException e;
        String str;
        if (this.f11004f != null) {
            return this.f11004f;
        }
        try {
            try {
                str = c3012e.getClassName();
                try {
                    this.f11004f = (C3012e) Class.forName(str).newInstance();
                    return this.f11004f;
                } catch (ClassNotFoundException unused) {
                    throw new C3021b(C3021b.CLASS_NOT_FOUND + str);
                } catch (InstantiationException e2) {
                    e = e2;
                    throw new C3024e(str + C3024e.INSTANTIATION_EXCEPTION, e);
                }
            } catch (ClassNotFoundException unused2) {
                str = null;
            } catch (InstantiationException e3) {
                e = e3;
                str = null;
            }
        } catch (Exception e4) {
            throw new C3024e(e4.getMessage(), e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m13512a(C3012e c3012e, List<Field> list, ContentValues contentValues) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Object m13546a;
        for (Field field : list) {
            if (!m13692e(field.getName())) {
                boolean z = false;
                if (C3018k.class.getName().equals(getClass().getName())) {
                    C3012e m13511a = m13511a(c3012e);
                    Object m13470a = m13470a(c3012e, field);
                    Object m13470a2 = m13470a(m13511a, field);
                    if (m13470a != null && m13470a2 != null) {
                        z = m13470a.toString().equals(m13470a2.toString());
                    } else if (m13470a == m13470a2) {
                        z = true;
                    }
                    if (!z) {
                        m13478a(c3012e, field, contentValues);
                    }
                } else if (C3017j.class.getName().equals(getClass().getName()) && (m13546a = C3011d.m13546a(c3012e, field.getName(), c3012e.getClass())) != null) {
                    if ("java.util.Date".equals(field.getType().getName())) {
                        m13546a = Long.valueOf(((Date) m13546a).getTime());
                    }
                    InterfaceC2992b interfaceC2992b = (InterfaceC2992b) field.getAnnotation(InterfaceC2992b.class);
                    if (interfaceC2992b != null && "java.lang.String".equals(field.getType().getName())) {
                        m13546a = m13469a(interfaceC2992b.m13409a(), m13546a);
                    }
                    Object[] objArr = {C3054a.m13930a(C3058c.m13964d(field.getName())), m13546a};
                    C3011d.m13547a(contentValues, "put", objArr, contentValues.getClass(), m13483a(field, m13546a, objArr));
                }
            }
        }
    }
}
