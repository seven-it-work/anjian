package com.lidroid.xutils.p184db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.p184db.sqlite.ColumnDbType;

/* loaded from: classes.dex */
public class DoubleColumnConverter implements ColumnConverter<Double> {
    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public Object fieldValue2ColumnValue(Double d) {
        return d;
    }

    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.REAL;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public Double getFieldValue(Cursor cursor, int i) {
        if (cursor.isNull(i)) {
            return null;
        }
        return Double.valueOf(cursor.getDouble(i));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public Double getFieldValue(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Double.valueOf(str);
    }
}
