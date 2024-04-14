package com.lidroid.xutils.p184db.table;

import android.database.Cursor;
import com.lidroid.xutils.p184db.converter.ColumnConverter;
import com.lidroid.xutils.p184db.converter.ColumnConverterFactory;
import com.lidroid.xutils.p184db.sqlite.ColumnDbType;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class Column {
    protected final ColumnConverter columnConverter;
    protected final Field columnField;
    protected final String columnName;
    private final Object defaultValue;
    protected final Method getMethod;
    private int index = -1;
    protected final Method setMethod;
    private Table table;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Column(Class<?> cls, Field field) {
        this.columnField = field;
        this.columnConverter = ColumnConverterFactory.getColumnConverter(field.getType());
        this.columnName = ColumnUtils.getColumnNameByField(field);
        this.defaultValue = this.columnConverter != null ? this.columnConverter.getFieldValue(ColumnUtils.getColumnDefaultValue(field)) : null;
        this.getMethod = ColumnUtils.getColumnGetMethod(cls, field);
        this.setMethod = ColumnUtils.getColumnSetMethod(cls, field);
    }

    public ColumnConverter getColumnConverter() {
        return this.columnConverter;
    }

    public ColumnDbType getColumnDbType() {
        return this.columnConverter.getColumnDbType();
    }

    public Field getColumnField() {
        return this.columnField;
    }

    public String getColumnName() {
        return this.columnName;
    }

    public Object getColumnValue(Object obj) {
        return this.columnConverter.fieldValue2ColumnValue(getFieldValue(obj));
    }

    public Object getDefaultValue() {
        return this.defaultValue;
    }

    public Object getFieldValue(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            if (this.getMethod != null) {
                return this.getMethod.invoke(obj, new Object[0]);
            }
            this.columnField.setAccessible(true);
            return this.columnField.get(obj);
        } catch (Throwable th) {
            LogUtils.m10369e(th.getMessage(), th);
            return null;
        }
    }

    public int getIndex() {
        return this.index;
    }

    public Table getTable() {
        return this.table;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTable(Table table) {
        this.table = table;
    }

    public void setValue2Entity(Object obj, Cursor cursor, int i) {
        this.index = i;
        Object fieldValue = this.columnConverter.getFieldValue(cursor, i);
        if (fieldValue == null && this.defaultValue == null) {
            return;
        }
        try {
            if (this.setMethod == null) {
                this.columnField.setAccessible(true);
                Field field = this.columnField;
                if (fieldValue == null) {
                    fieldValue = this.defaultValue;
                }
                field.set(obj, fieldValue);
                return;
            }
            Method method = this.setMethod;
            Object[] objArr = new Object[1];
            if (fieldValue == null) {
                fieldValue = this.defaultValue;
            }
            objArr[0] = fieldValue;
            method.invoke(obj, objArr);
        } catch (Throwable th) {
            LogUtils.m10369e(th.getMessage(), th);
        }
    }
}
