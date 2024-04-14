package com.lidroid.xutils.p184db.converter;

import android.database.Cursor;
import com.lidroid.xutils.p184db.sqlite.ColumnDbType;

/* loaded from: classes.dex */
public class ByteArrayColumnConverter implements ColumnConverter<byte[]> {
    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public Object fieldValue2ColumnValue(byte[] bArr) {
        return bArr;
    }

    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.BLOB;
    }

    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public byte[] getFieldValue(Cursor cursor, int i) {
        if (cursor.isNull(i)) {
            return null;
        }
        return cursor.getBlob(i);
    }

    @Override // com.lidroid.xutils.p184db.converter.ColumnConverter
    public byte[] getFieldValue(String str) {
        return null;
    }
}
