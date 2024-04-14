package com.lidroid.xutils.p184db.table;

import android.text.TextUtils;
import com.lidroid.xutils.p184db.annotation.Check;
import com.lidroid.xutils.p184db.annotation.Column;
import com.lidroid.xutils.p184db.annotation.Finder;
import com.lidroid.xutils.p184db.annotation.Foreign;
import com.lidroid.xutils.p184db.annotation.InterfaceC2368Id;
import com.lidroid.xutils.p184db.annotation.NotNull;
import com.lidroid.xutils.p184db.annotation.Transient;
import com.lidroid.xutils.p184db.annotation.Unique;
import com.lidroid.xutils.p184db.converter.ColumnConverter;
import com.lidroid.xutils.p184db.converter.ColumnConverterFactory;
import com.lidroid.xutils.p184db.sqlite.FinderLazyLoader;
import com.lidroid.xutils.p184db.sqlite.ForeignLazyLoader;
import com.lidroid.xutils.util.LogUtils;
import com.umeng.commonsdk.proguard.C2518v;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public class ColumnUtils {
    private static final HashSet<String> DB_PRIMITIVE_TYPES;

    static {
        HashSet<String> hashSet = new HashSet<>(14);
        DB_PRIMITIVE_TYPES = hashSet;
        hashSet.add(Integer.TYPE.getName());
        DB_PRIMITIVE_TYPES.add(Long.TYPE.getName());
        DB_PRIMITIVE_TYPES.add(Short.TYPE.getName());
        DB_PRIMITIVE_TYPES.add(Byte.TYPE.getName());
        DB_PRIMITIVE_TYPES.add(Float.TYPE.getName());
        DB_PRIMITIVE_TYPES.add(Double.TYPE.getName());
        DB_PRIMITIVE_TYPES.add(Integer.class.getName());
        DB_PRIMITIVE_TYPES.add(Long.class.getName());
        DB_PRIMITIVE_TYPES.add(Short.class.getName());
        DB_PRIMITIVE_TYPES.add(Byte.class.getName());
        DB_PRIMITIVE_TYPES.add(Float.class.getName());
        DB_PRIMITIVE_TYPES.add(Double.class.getName());
        DB_PRIMITIVE_TYPES.add(String.class.getName());
        DB_PRIMITIVE_TYPES.add(byte[].class.getName());
    }

    private ColumnUtils() {
    }

    public static Object convert2DbColumnValueIfNeeded(Object obj) {
        ColumnConverter columnConverter;
        if (obj == null) {
            return obj;
        }
        Class<?> cls = obj.getClass();
        return (isDbPrimitiveType(cls) || (columnConverter = ColumnConverterFactory.getColumnConverter(cls)) == null) ? obj : columnConverter.fieldValue2ColumnValue(obj);
    }

    private static Method getBooleanColumnGetMethod(Class<?> cls, String str) {
        String str2 = C2518v.f9531Y + str.substring(0, 1).toUpperCase() + str.substring(1);
        if (!isStartWithIs(str)) {
            str = str2;
        }
        try {
            return cls.getDeclaredMethod(str, new Class[0]);
        } catch (NoSuchMethodException unused) {
            LogUtils.m10366d(String.valueOf(str) + " not exist");
            return null;
        }
    }

    private static Method getBooleanColumnSetMethod(Class<?> cls, Field field) {
        StringBuilder sb;
        String substring;
        String name = field.getName();
        if (isStartWithIs(field.getName())) {
            sb = new StringBuilder("set");
            sb.append(name.substring(2, 3).toUpperCase());
            substring = name.substring(3);
        } else {
            sb = new StringBuilder("set");
            sb.append(name.substring(0, 1).toUpperCase());
            substring = name.substring(1);
        }
        sb.append(substring);
        String sb2 = sb.toString();
        try {
            return cls.getDeclaredMethod(sb2, field.getType());
        } catch (NoSuchMethodException unused) {
            LogUtils.m10366d(String.valueOf(sb2) + " not exist");
            return null;
        }
    }

    public static String getCheck(Field field) {
        Check check = (Check) field.getAnnotation(Check.class);
        if (check != null) {
            return check.value();
        }
        return null;
    }

    public static String getColumnDefaultValue(Field field) {
        Column column = (Column) field.getAnnotation(Column.class);
        if (column == null || TextUtils.isEmpty(column.defaultValue())) {
            return null;
        }
        return column.defaultValue();
    }

    public static Method getColumnGetMethod(Class<?> cls, Field field) {
        Method booleanColumnGetMethod;
        while (true) {
            String name = field.getName();
            booleanColumnGetMethod = field.getType() == Boolean.TYPE ? getBooleanColumnGetMethod(cls, name) : null;
            if (booleanColumnGetMethod == null) {
                String str = "get" + name.substring(0, 1).toUpperCase() + name.substring(1);
                try {
                    booleanColumnGetMethod = cls.getDeclaredMethod(str, new Class[0]);
                } catch (NoSuchMethodException unused) {
                    LogUtils.m10366d(String.valueOf(str) + " not exist");
                }
            }
            if (booleanColumnGetMethod != null || Object.class.equals(cls.getSuperclass())) {
                break;
            }
            cls = cls.getSuperclass();
        }
        return booleanColumnGetMethod;
    }

    public static String getColumnNameByField(Field field) {
        Column column = (Column) field.getAnnotation(Column.class);
        if (column != null && !TextUtils.isEmpty(column.column())) {
            return column.column();
        }
        InterfaceC2368Id interfaceC2368Id = (InterfaceC2368Id) field.getAnnotation(InterfaceC2368Id.class);
        if (interfaceC2368Id != null && !TextUtils.isEmpty(interfaceC2368Id.column())) {
            return interfaceC2368Id.column();
        }
        Foreign foreign = (Foreign) field.getAnnotation(Foreign.class);
        return (foreign == null || TextUtils.isEmpty(foreign.column())) ? ((Finder) field.getAnnotation(Finder.class)) != null ? field.getName() : field.getName() : foreign.column();
    }

    public static Method getColumnSetMethod(Class<?> cls, Field field) {
        Method booleanColumnSetMethod;
        while (true) {
            String name = field.getName();
            booleanColumnSetMethod = field.getType() == Boolean.TYPE ? getBooleanColumnSetMethod(cls, field) : null;
            if (booleanColumnSetMethod == null) {
                String str = "set" + name.substring(0, 1).toUpperCase() + name.substring(1);
                try {
                    booleanColumnSetMethod = cls.getDeclaredMethod(str, field.getType());
                } catch (NoSuchMethodException unused) {
                    LogUtils.m10366d(String.valueOf(str) + " not exist");
                }
            }
            if (booleanColumnSetMethod != null || Object.class.equals(cls.getSuperclass())) {
                break;
            }
            cls = cls.getSuperclass();
        }
        return booleanColumnSetMethod;
    }

    public static Class<?> getFinderTargetEntityType(Finder finder) {
        Class<?> type = finder.getColumnField().getType();
        return (type.equals(FinderLazyLoader.class) || type.equals(List.class)) ? (Class) ((ParameterizedType) finder.getColumnField().getGenericType()).getActualTypeArguments()[0] : type;
    }

    public static String getForeignColumnNameByField(Field field) {
        Foreign foreign = (Foreign) field.getAnnotation(Foreign.class);
        return foreign != null ? foreign.foreign() : field.getName();
    }

    public static Class<?> getForeignEntityType(Foreign foreign) {
        Class<?> type = foreign.getColumnField().getType();
        return (type.equals(ForeignLazyLoader.class) || type.equals(List.class)) ? (Class) ((ParameterizedType) foreign.getColumnField().getGenericType()).getActualTypeArguments()[0] : type;
    }

    public static boolean isDbPrimitiveType(Class<?> cls) {
        return DB_PRIMITIVE_TYPES.contains(cls.getName());
    }

    public static boolean isFinder(Field field) {
        return field.getAnnotation(Finder.class) != null;
    }

    public static boolean isForeign(Field field) {
        return field.getAnnotation(Foreign.class) != null;
    }

    public static boolean isNotNull(Field field) {
        return field.getAnnotation(NotNull.class) != null;
    }

    private static boolean isStartWithIs(String str) {
        return str != null && str.startsWith(C2518v.f9531Y);
    }

    public static boolean isTransient(Field field) {
        return field.getAnnotation(Transient.class) != null;
    }

    public static boolean isUnique(Field field) {
        return field.getAnnotation(Unique.class) != null;
    }
}
