package com.lidroid.xutils.p184db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.p184db.sqlite.ColumnDbType;

/* loaded from: classes.dex */
public class FloatColumnConverter implements ColumnConverter<Float> {
    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public Object fieldValue2ColumnValue(Float f) {
        return f;
    }

    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.REAL;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public Float getFieldValue(Cursor cursor, int i) {
        if (cursor.isNull(i)) {
            return null;
        }
        return Float.valueOf(cursor.getFloat(i));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public Float getFieldValue(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Float.valueOf(str);
    }
}
