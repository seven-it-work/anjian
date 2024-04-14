package com.lidroid.xutils.p184db.sqlite;

import android.database.Cursor;
import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.p184db.table.C2369Id;
import com.lidroid.xutils.p184db.table.Column;
import com.lidroid.xutils.p184db.table.DbModel;
import com.lidroid.xutils.p184db.table.Finder;
import com.lidroid.xutils.p184db.table.Table;
import com.lidroid.xutils.util.LogUtils;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class CursorUtils {

    /* loaded from: classes.dex */
    private static class EntityTempCache {
        private static final ConcurrentHashMap<String, Object> cache = new ConcurrentHashMap<>();
        private static long seq;

        private EntityTempCache() {
        }

        public static <T> T get(Class<T> cls, Object obj) {
            return (T) cache.get(String.valueOf(cls.getName()) + "#" + obj);
        }

        public static <T> void put(Class<T> cls, Object obj, Object obj2) {
            cache.put(String.valueOf(cls.getName()) + "#" + obj, obj2);
        }

        public static void setSeq(long j) {
            if (seq != j) {
                cache.clear();
                seq = j;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class FindCacheSequence {
        private static long seq;
        private static final String FOREIGN_LAZY_LOADER_CLASS_NAME = ForeignLazyLoader.class.getName();
        private static final String FINDER_LAZY_LOADER_CLASS_NAME = FinderLazyLoader.class.getName();

        private FindCacheSequence() {
        }

        public static long getSeq() {
            String className = Thread.currentThread().getStackTrace()[4].getClassName();
            if (!className.equals(FOREIGN_LAZY_LOADER_CLASS_NAME) && !className.equals(FINDER_LAZY_LOADER_CLASS_NAME)) {
                seq++;
            }
            return seq;
        }
    }

    public static DbModel getDbModel(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        DbModel dbModel = new DbModel();
        int columnCount = cursor.getColumnCount();
        for (int i = 0; i < columnCount; i++) {
            dbModel.add(cursor.getColumnName(i), cursor.getString(i));
        }
        return dbModel;
    }

    public static <T> T getEntity(DbUtils dbUtils, Cursor cursor, Class<T> cls, long j) {
        if (dbUtils == null || cursor == null) {
            return null;
        }
        EntityTempCache.setSeq(j);
        try {
            Table table = Table.get(dbUtils, cls);
            C2369Id c2369Id = table.f8837id;
            String columnName = c2369Id.getColumnName();
            int index = c2369Id.getIndex();
            if (index < 0) {
                index = cursor.getColumnIndex(columnName);
            }
            Object fieldValue = c2369Id.getColumnConverter().getFieldValue(cursor, index);
            T t = (T) EntityTempCache.get(cls, fieldValue);
            if (t != null) {
                return t;
            }
            T newInstance = cls.newInstance();
            c2369Id.setValue2Entity(newInstance, cursor, index);
            EntityTempCache.put(cls, fieldValue, newInstance);
            int columnCount = cursor.getColumnCount();
            for (int i = 0; i < columnCount; i++) {
                Column column = table.columnMap.get(cursor.getColumnName(i));
                if (column != null) {
                    column.setValue2Entity(newInstance, cursor, i);
                }
            }
            Iterator<Finder> it = table.finderMap.values().iterator();
            while (it.hasNext()) {
                it.next().setValue2Entity(newInstance, null, 0);
            }
            return newInstance;
        } catch (Throwable th) {
            LogUtils.m10369e(th.getMessage(), th);
            return null;
        }
    }
}
