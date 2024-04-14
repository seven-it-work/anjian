package com.lidroid.xutils.p184db.table;

import com.lidroid.xutils.p184db.annotation.NoAutoIncrement;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.util.HashSet;

/* renamed from: com.lidroid.xutils.db.table.Id */
/* loaded from: classes.dex */
public class C2369Id extends Column {
    private String columnFieldClassName;
    private boolean isAutoIncrement;
    private boolean isAutoIncrementChecked;
    private static final HashSet<String> INTEGER_TYPES = new HashSet<>(2);
    private static final HashSet<String> AUTO_INCREMENT_TYPES = new HashSet<>(4);

    static {
        INTEGER_TYPES.add(Integer.TYPE.getName());
        INTEGER_TYPES.add(Integer.class.getName());
        AUTO_INCREMENT_TYPES.addAll(INTEGER_TYPES);
        AUTO_INCREMENT_TYPES.add(Long.TYPE.getName());
        AUTO_INCREMENT_TYPES.add(Long.class.getName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2369Id(Class<?> cls, Field field) {
        super(cls, field);
        this.isAutoIncrementChecked = false;
        this.isAutoIncrement = false;
        this.columnFieldClassName = this.columnField.getType().getName();
    }

    @Override // com.lidroid.xutils.p184db.table.Column
    public Object getColumnValue(Object obj) {
        Object columnValue = super.getColumnValue(obj);
        if (columnValue == null) {
            return null;
        }
        if (isAutoIncrement() && (columnValue.equals(0) || columnValue.equals(0L))) {
            return null;
        }
        return columnValue;
    }

    public boolean isAutoIncrement() {
        if (!this.isAutoIncrementChecked) {
            this.isAutoIncrementChecked = true;
            this.isAutoIncrement = this.columnField.getAnnotation(NoAutoIncrement.class) == null && AUTO_INCREMENT_TYPES.contains(this.columnFieldClassName);
        }
        return this.isAutoIncrement;
    }

    public void setAutoIncrementId(Object obj, long j) {
        Object valueOf = Long.valueOf(j);
        if (INTEGER_TYPES.contains(this.columnFieldClassName)) {
            valueOf = Integer.valueOf((int) j);
        }
        try {
            if (this.setMethod != null) {
                this.setMethod.invoke(obj, valueOf);
            } else {
                this.columnField.setAccessible(true);
                this.columnField.set(obj, valueOf);
            }
        } catch (Throwable th) {
            LogUtils.m10369e(th.getMessage(), th);
        }
    }
}
