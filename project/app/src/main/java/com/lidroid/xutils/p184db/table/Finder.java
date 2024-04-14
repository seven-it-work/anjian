package com.lidroid.xutils.p184db.table;

import android.database.Cursor;
import com.lidroid.xutils.exception.DbException;
import com.lidroid.xutils.p184db.sqlite.ColumnDbType;
import com.lidroid.xutils.p184db.sqlite.FinderLazyLoader;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.util.List;

/* loaded from: classes.dex */
public class Finder extends Column {
    private final String targetColumnName;
    private final String valueColumnName;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Finder(Class<?> cls, Field field) {
        super(cls, field);
        com.lidroid.xutils.p184db.annotation.Finder finder = (com.lidroid.xutils.p184db.annotation.Finder) field.getAnnotation(com.lidroid.xutils.p184db.annotation.Finder.class);
        this.valueColumnName = finder.valueColumn();
        this.targetColumnName = finder.targetColumn();
    }

    @Override // com.lidroid.xutils.p184db.table.Column
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.TEXT;
    }

    @Override // com.lidroid.xutils.p184db.table.Column
    public Object getColumnValue(Object obj) {
        return null;
    }

    @Override // com.lidroid.xutils.p184db.table.Column
    public Object getDefaultValue() {
        return null;
    }

    public String getTargetColumnName() {
        return this.targetColumnName;
    }

    public Class<?> getTargetEntityType() {
        return ColumnUtils.getFinderTargetEntityType(this);
    }

    @Override // com.lidroid.xutils.p184db.table.Column
    public void setValue2Entity(Object obj, Cursor cursor, int i) {
        Object obj2;
        Class<?> type = this.columnField.getType();
        Object columnValue = TableUtils.getColumnOrId(obj.getClass(), this.valueColumnName).getColumnValue(obj);
        if (type.equals(FinderLazyLoader.class)) {
            obj2 = new FinderLazyLoader(this, columnValue);
        } else {
            try {
                obj2 = type.equals(List.class) ? new FinderLazyLoader(this, columnValue).getAllFromDb() : new FinderLazyLoader(this, columnValue).getFirstFromDb();
            } catch (DbException e) {
                LogUtils.m10369e(e.getMessage(), e);
                obj2 = null;
            }
        }
        try {
            if (this.setMethod != null) {
                this.setMethod.invoke(obj, obj2);
            } else {
                this.columnField.setAccessible(true);
                this.columnField.set(obj, obj2);
            }
        } catch (Throwable th) {
            LogUtils.m10369e(th.getMessage(), th);
        }
    }
}
