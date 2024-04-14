package com.lidroid.xutils.p184db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.p184db.sqlite.ColumnDbType;

/* loaded from: classes.dex */
public class ShortColumnConverter implements ColumnConverter<Short> {
    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public Object fieldValue2ColumnValue(Short sh) {
        return sh;
    }

    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.INTEGER;
    }

    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public Short getFieldValue(Cursor cursor, int i) {
        if (cursor.isNull(i)) {
            return null;
        }
        return Short.valueOf(cursor.getShort(i));
    }

    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public Short getFieldValue(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Short.valueOf(str);
    }
}
