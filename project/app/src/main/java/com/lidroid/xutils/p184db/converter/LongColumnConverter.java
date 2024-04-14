package com.lidroid.xutils.p184db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.p184db.sqlite.ColumnDbType;

/* loaded from: classes.dex */
public class LongColumnConverter implements ColumnConverter<Long> {
    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public Object fieldValue2ColumnValue(Long l) {
        return l;
    }

    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.INTEGER;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public Long getFieldValue(Cursor cursor, int i) {
        if (cursor.isNull(i)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public Long getFieldValue(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Long.valueOf(str);
    }
}
