package com.lidroid.xutils.p184db.table;

import android.text.TextUtils;
import com.lidroid.xutils.p184db.annotation.InterfaceC2368Id;
import com.lidroid.xutils.p184db.annotation.Table;
import com.lidroid.xutils.p184db.converter.ColumnConverterFactory;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import net.grandcentrix.tray.provider.TrayContract;
import org.apache.commons.io.FilenameUtils;

/* loaded from: classes.dex */
public class TableUtils {
    private static ConcurrentHashMap<String, HashMap<String, Column>> entityColumnsMap = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, C2369Id> entityIdMap = new ConcurrentHashMap<>();

    private TableUtils() {
    }

    private static void addColumns2Map(Class<?> cls, String str, HashMap<String, Column> hashMap) {
        Column finder;
        String columnName;
        if (Object.class.equals(cls)) {
            return;
        }
        try {
            for (Field field : cls.getDeclaredFields()) {
                if (!ColumnUtils.isTransient(field) && !Modifier.isStatic(field.getModifiers())) {
                    if (ColumnConverterFactory.isSupportColumnConverter(field.getType())) {
                        if (!field.getName().equals(str)) {
                            finder = new Column(cls, field);
                            if (!hashMap.containsKey(finder.getColumnName())) {
                                columnName = finder.getColumnName();
                                hashMap.put(columnName, finder);
                            }
                        }
                    } else if (ColumnUtils.isForeign(field)) {
                        finder = new Foreign(cls, field);
                        if (!hashMap.containsKey(finder.getColumnName())) {
                            columnName = finder.getColumnName();
                            hashMap.put(columnName, finder);
                        }
                    } else if (ColumnUtils.isFinder(field)) {
                        finder = new Finder(cls, field);
                        if (!hashMap.containsKey(finder.getColumnName())) {
                            columnName = finder.getColumnName();
                            hashMap.put(columnName, finder);
                        }
                    }
                }
            }
            if (Object.class.equals(cls.getSuperclass())) {
                return;
            }
            addColumns2Map(cls.getSuperclass(), str, hashMap);
        } catch (Throwable th) {
            LogUtils.m10369e(th.getMessage(), th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized HashMap<String, Column> getColumnMap(Class<?> cls) {
        synchronized (TableUtils.class) {
            if (entityColumnsMap.containsKey(cls.getName())) {
                return entityColumnsMap.get(cls.getName());
            }
            HashMap<String, Column> hashMap = new HashMap<>();
            addColumns2Map(cls, getPrimaryKeyFieldName(cls), hashMap);
            entityColumnsMap.put(cls.getName(), hashMap);
            return hashMap;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Column getColumnOrId(Class<?> cls, String str) {
        return getPrimaryKeyColumnName(cls).equals(str) ? getId(cls) : getColumnMap(cls).get(str);
    }

    public static String getExecAfterTableCreated(Class<?> cls) {
        Table table = (Table) cls.getAnnotation(Table.class);
        if (table != null) {
            return table.execAfterTableCreated();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized C2369Id getId(Class<?> cls) {
        synchronized (TableUtils.class) {
            if (Object.class.equals(cls)) {
                throw new RuntimeException("field 'id' not found");
            }
            if (entityIdMap.containsKey(cls.getName())) {
                return entityIdMap.get(cls.getName());
            }
            Field field = null;
            Field[] declaredFields = cls.getDeclaredFields();
            if (declaredFields != null) {
                int length = declaredFields.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    Field field2 = declaredFields[i];
                    if (field2.getAnnotation(InterfaceC2368Id.class) != null) {
                        field = field2;
                        break;
                    }
                    i++;
                }
                if (field == null) {
                    for (Field field3 : declaredFields) {
                        if (!"id".equals(field3.getName()) && !TrayContract.Preferences.Columns.f10375ID.equals(field3.getName())) {
                        }
                        field = field3;
                        break;
                    }
                }
            }
            if (field == null) {
                return getId(cls.getSuperclass());
            }
            C2369Id c2369Id = new C2369Id(cls, field);
            entityIdMap.put(cls.getName(), c2369Id);
            return c2369Id;
        }
    }

    private static String getPrimaryKeyColumnName(Class<?> cls) {
        C2369Id id = getId(cls);
        if (id == null) {
            return null;
        }
        return id.getColumnName();
    }

    private static String getPrimaryKeyFieldName(Class<?> cls) {
        C2369Id id = getId(cls);
        if (id == null) {
            return null;
        }
        return id.getColumnField().getName();
    }

    public static String getTableName(Class<?> cls) {
        Table table = (Table) cls.getAnnotation(Table.class);
        return (table == null || TextUtils.isEmpty(table.name())) ? cls.getName().replace(FilenameUtils.EXTENSION_SEPARATOR, '_') : table.name();
    }
}
