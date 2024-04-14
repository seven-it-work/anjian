package com.lidroid.xutils.p184db.table;

import com.lidroid.xutils.p184db.converter.ColumnConverter;
import com.lidroid.xutils.p184db.converter.ColumnConverterFactory;
import com.lidroid.xutils.p184db.sqlite.ColumnDbType;
import com.lidroid.xutils.p184db.sqlite.ForeignLazyLoader;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.util.List;

/* loaded from: classes.dex */
public class Foreign extends Column {
    private final ColumnConverter foreignColumnConverter;
    private final String foreignColumnName;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Foreign(Class<?> cls, Field field) {
        super(cls, field);
        this.foreignColumnName = ColumnUtils.getForeignColumnNameByField(field);
        this.foreignColumnConverter = ColumnConverterFactory.getColumnConverter(TableUtils.getColumnOrId(getForeignEntityType(), this.foreignColumnName).columnField.getType());
    }

    @Override // com.lidroid.xutils.p184db.table.Column
    public ColumnDbType getColumnDbType() {
        return this.foreignColumnConverter.getColumnDbType();
    }

    @Override // com.lidroid.xutils.p184db.table.Column
    public Object getColumnValue(Object obj) {
        Object fieldValue = getFieldValue(obj);
        Object obj2 = null;
        if (fieldValue != null) {
            Class<?> type = this.columnField.getType();
            if (type.equals(ForeignLazyLoader.class)) {
                return ((ForeignLazyLoader) fieldValue).getColumnValue();
            }
            try {
                if (type.equals(List.class)) {
                    List list = (List) fieldValue;
                    if (list.size() > 0) {
                        Column columnOrId = TableUtils.getColumnOrId(ColumnUtils.getForeignEntityType(this), this.foreignColumnName);
                        Object columnValue = columnOrId.getColumnValue(list.get(0));
                        try {
                            Table table = getTable();
                            if (table != null && (columnOrId instanceof C2369Id)) {
                                for (Object obj3 : list) {
                                    if (columnOrId.getColumnValue(obj3) == null) {
                                        table.f8836db.saveOrUpdate(obj3);
                                    }
                                }
                            }
                            return columnOrId.getColumnValue(list.get(0));
                        } catch (Throwable th) {
                            th = th;
                            obj2 = columnValue;
                        }
                    }
                } else {
                    Column columnOrId2 = TableUtils.getColumnOrId(type, this.foreignColumnName);
                    Object columnValue2 = columnOrId2.getColumnValue(fieldValue);
                    try {
                        Table table2 = getTable();
                        if (table2 != null && columnValue2 == null && (columnOrId2 instanceof C2369Id)) {
                            table2.f8836db.saveOrUpdate(fieldValue);
                        }
                        return columnOrId2.getColumnValue(fieldValue);
                    } catch (Throwable th2) {
                        th = th2;
                        obj2 = columnValue2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
            LogUtils.m10369e(th.getMessage(), th);
            return obj2;
        }
        return null;
    }

    @Override // com.lidroid.xutils.p184db.table.Column
    public Object getDefaultValue() {
        return null;
    }

    public String getForeignColumnName() {
        return this.foreignColumnName;
    }

    public Class<?> getForeignEntityType() {
        return ColumnUtils.getForeignEntityType(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0048 A[Catch: Throwable -> 0x0053, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Throwable -> 0x0053, blocks: (B:12:0x0048, B:14:0x005c), top: B:10:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005c A[Catch: Throwable -> 0x0053, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Throwable -> 0x0053, blocks: (B:12:0x0048, B:14:0x005c), top: B:10:0x0046 }] */
    @Override // com.lidroid.xutils.p184db.table.Column
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setValue2Entity(java.lang.Object r3, android.database.Cursor r4, int r5) {
        /*
            r2 = this;
            com.lidroid.xutils.db.converter.ColumnConverter r0 = r2.foreignColumnConverter
            java.lang.Object r4 = r0.getFieldValue(r4, r5)
            if (r4 != 0) goto L9
            return
        L9:
            r5 = 0
            java.lang.reflect.Field r0 = r2.columnField
            java.lang.Class r0 = r0.getType()
            java.lang.Class<com.lidroid.xutils.db.sqlite.ForeignLazyLoader> r1 = com.lidroid.xutils.p184db.sqlite.ForeignLazyLoader.class
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L1f
            com.lidroid.xutils.db.sqlite.ForeignLazyLoader r5 = new com.lidroid.xutils.db.sqlite.ForeignLazyLoader
            r5.<init>(r2, r4)
        L1d:
            r4 = r5
            goto L43
        L1f:
            java.lang.Class<java.util.List> r1 = java.util.List.class
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L3a
            com.lidroid.xutils.db.sqlite.ForeignLazyLoader r0 = new com.lidroid.xutils.db.sqlite.ForeignLazyLoader     // Catch: com.lidroid.xutils.exception.DbException -> L31
            r0.<init>(r2, r4)     // Catch: com.lidroid.xutils.exception.DbException -> L31
            java.util.List r4 = r0.getAllFromDb()     // Catch: com.lidroid.xutils.exception.DbException -> L31
            goto L43
        L31:
            r4 = move-exception
            java.lang.String r0 = r4.getMessage()
            com.lidroid.xutils.util.LogUtils.m10369e(r0, r4)
            goto L1d
        L3a:
            com.lidroid.xutils.db.sqlite.ForeignLazyLoader r0 = new com.lidroid.xutils.db.sqlite.ForeignLazyLoader     // Catch: com.lidroid.xutils.exception.DbException -> L31
            r0.<init>(r2, r4)     // Catch: com.lidroid.xutils.exception.DbException -> L31
            java.lang.Object r4 = r0.getFirstFromDb()     // Catch: com.lidroid.xutils.exception.DbException -> L31
        L43:
            java.lang.reflect.Method r5 = r2.setMethod
            r0 = 1
            if (r5 == 0) goto L5c
            java.lang.reflect.Method r5 = r2.setMethod     // Catch: java.lang.Throwable -> L53
            java.lang.Object[] r0 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L53
            r1 = 0
            r0[r1] = r4     // Catch: java.lang.Throwable -> L53
            r5.invoke(r3, r0)     // Catch: java.lang.Throwable -> L53
            return
        L53:
            r3 = move-exception
            java.lang.String r4 = r3.getMessage()
            com.lidroid.xutils.util.LogUtils.m10369e(r4, r3)
            return
        L5c:
            java.lang.reflect.Field r5 = r2.columnField     // Catch: java.lang.Throwable -> L53
            r5.setAccessible(r0)     // Catch: java.lang.Throwable -> L53
            java.lang.reflect.Field r5 = r2.columnField     // Catch: java.lang.Throwable -> L53
            r5.set(r3, r4)     // Catch: java.lang.Throwable -> L53
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lidroid.xutils.p184db.table.Foreign.setValue2Entity(java.lang.Object, android.database.Cursor, int):void");
    }
}
