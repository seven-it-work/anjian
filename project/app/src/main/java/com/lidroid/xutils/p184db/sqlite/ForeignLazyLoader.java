package com.lidroid.xutils.p184db.sqlite;

import com.lidroid.xutils.exception.DbException;
import com.lidroid.xutils.p184db.table.ColumnUtils;
import com.lidroid.xutils.p184db.table.Foreign;
import com.lidroid.xutils.p184db.table.Table;
import java.util.List;

/* loaded from: classes.dex */
public class ForeignLazyLoader<T> {
    private Object columnValue;
    private final Foreign foreignColumn;

    public ForeignLazyLoader(Foreign foreign, Object obj) {
        this.foreignColumn = foreign;
        this.columnValue = ColumnUtils.convert2DbColumnValueIfNeeded(obj);
    }

    public List<T> getAllFromDb() throws DbException {
        Table table = this.foreignColumn.getTable();
        if (table != null) {
            return table.f8836db.findAll(Selector.from(this.foreignColumn.getForeignEntityType()).where(this.foreignColumn.getForeignColumnName(), "=", this.columnValue));
        }
        return null;
    }

    public Object getColumnValue() {
        return this.columnValue;
    }

    public T getFirstFromDb() throws DbException {
        Table table = this.foreignColumn.getTable();
        if (table != null) {
            return (T) table.f8836db.findFirst(Selector.from(this.foreignColumn.getForeignEntityType()).where(this.foreignColumn.getForeignColumnName(), "=", this.columnValue));
        }
        return null;
    }

    public void setColumnValue(Object obj) {
        this.columnValue = ColumnUtils.convert2DbColumnValueIfNeeded(obj);
    }
}
