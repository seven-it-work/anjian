package com.lidroid.xutils.p184db.converter;

import android.database.Cursor;
import com.lidroid.xutils.p184db.sqlite.ColumnDbType;

/* loaded from: classes.dex */
public interface ColumnConverter<T> {
    Object fieldValue2ColumnValue(T t);

    ColumnDbType getColumnDbType();

    T getFieldValue(Cursor cursor, int i);

    T getFieldValue(String str);
}
