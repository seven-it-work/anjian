package com.lidroid.xutils.p184db.sqlite;

import com.lidroid.xutils.exception.DbException;
import com.lidroid.xutils.p184db.table.ColumnUtils;
import com.lidroid.xutils.p184db.table.Finder;
import com.lidroid.xutils.p184db.table.Table;
import java.util.List;

/* loaded from: classes.dex */
public class FinderLazyLoader<T> {
    private final Finder finderColumn;
    private final Object finderValue;

    public FinderLazyLoader(Finder finder, Object obj) {
        this.finderColumn = finder;
        this.finderValue = ColumnUtils.convert2DbColumnValueIfNeeded(obj);
    }

    public List<T> getAllFromDb() throws DbException {
        Table table = this.finderColumn.getTable();
        if (table != null) {
            return table.f8836db.findAll(Selector.from(this.finderColumn.getTargetEntityType()).where(this.finderColumn.getTargetColumnName(), "=", this.finderValue));
        }
        return null;
    }

    public T getFirstFromDb() throws DbException {
        Table table = this.finderColumn.getTable();
        if (table != null) {
            return (T) table.f8836db.findFirst(Selector.from(this.finderColumn.getTargetEntityType()).where(this.finderColumn.getTargetColumnName(), "=", this.finderValue));
        }
        return null;
    }
}
