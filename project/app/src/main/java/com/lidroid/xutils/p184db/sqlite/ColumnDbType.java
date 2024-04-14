package com.lidroid.xutils.p184db.sqlite;

/* loaded from: classes.dex */
public enum ColumnDbType {
    INTEGER("INTEGER"),
    REAL("REAL"),
    TEXT("TEXT"),
    BLOB("BLOB");

    private String value;

    ColumnDbType(String str) {
        this.value = str;
    }

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static ColumnDbType[] valuesCustom() {
        ColumnDbType[] valuesCustom = values();
        int length = valuesCustom.length;
        ColumnDbType[] columnDbTypeArr = new ColumnDbType[length];
        System.arraycopy(valuesCustom, 0, columnDbTypeArr, 0, length);
        return columnDbTypeArr;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.value;
    }
}
