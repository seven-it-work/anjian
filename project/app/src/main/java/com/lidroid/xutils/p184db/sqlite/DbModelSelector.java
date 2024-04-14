package com.lidroid.xutils.p184db.sqlite;

import android.text.TextUtils;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public class DbModelSelector {
    private String[] columnExpressions;
    private String groupByColumnName;
    private WhereBuilder having;
    private Selector selector;

    /* JADX INFO: Access modifiers changed from: protected */
    public DbModelSelector(Selector selector, String str) {
        this.selector = selector;
        this.groupByColumnName = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DbModelSelector(Selector selector, String[] strArr) {
        this.selector = selector;
        this.columnExpressions = strArr;
    }

    private DbModelSelector(Class<?> cls) {
        this.selector = Selector.from(cls);
    }

    public static DbModelSelector from(Class<?> cls) {
        return new DbModelSelector(cls);
    }

    public DbModelSelector and(WhereBuilder whereBuilder) {
        this.selector.and(whereBuilder);
        return this;
    }

    public DbModelSelector and(String str, String str2, Object obj) {
        this.selector.and(str, str2, obj);
        return this;
    }

    public DbModelSelector expr(String str) {
        this.selector.expr(str);
        return this;
    }

    public DbModelSelector expr(String str, String str2, Object obj) {
        this.selector.expr(str, str2, obj);
        return this;
    }

    public Class<?> getEntityType() {
        return this.selector.getEntityType();
    }

    public DbModelSelector groupBy(String str) {
        this.groupByColumnName = str;
        return this;
    }

    public DbModelSelector having(WhereBuilder whereBuilder) {
        this.having = whereBuilder;
        return this;
    }

    public DbModelSelector limit(int i) {
        this.selector.limit(i);
        return this;
    }

    public DbModelSelector offset(int i) {
        this.selector.offset(i);
        return this;
    }

    /* renamed from: or */
    public DbModelSelector m10358or(WhereBuilder whereBuilder) {
        this.selector.m10360or(whereBuilder);
        return this;
    }

    /* renamed from: or */
    public DbModelSelector m10359or(String str, String str2, Object obj) {
        this.selector.m10361or(str, str2, obj);
        return this;
    }

    public DbModelSelector orderBy(String str) {
        this.selector.orderBy(str);
        return this;
    }

    public DbModelSelector orderBy(String str, boolean z) {
        this.selector.orderBy(str, z);
        return this;
    }

    public DbModelSelector select(String... strArr) {
        this.columnExpressions = strArr;
        return this;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("SELECT ");
        if (this.columnExpressions == null || this.columnExpressions.length <= 0) {
            stringBuffer.append(!TextUtils.isEmpty(this.groupByColumnName) ? this.groupByColumnName : Marker.ANY_MARKER);
        } else {
            for (int i = 0; i < this.columnExpressions.length; i++) {
                stringBuffer.append(this.columnExpressions[i]);
                stringBuffer.append(",");
            }
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        stringBuffer.append(" FROM ");
        stringBuffer.append(this.selector.tableName);
        if (this.selector.whereBuilder != null && this.selector.whereBuilder.getWhereItemSize() > 0) {
            stringBuffer.append(" WHERE ");
            stringBuffer.append(this.selector.whereBuilder.toString());
        }
        if (!TextUtils.isEmpty(this.groupByColumnName)) {
            stringBuffer.append(" GROUP BY ");
            stringBuffer.append(this.groupByColumnName);
            if (this.having != null && this.having.getWhereItemSize() > 0) {
                stringBuffer.append(" HAVING ");
                stringBuffer.append(this.having.toString());
            }
        }
        if (this.selector.orderByList != null) {
            for (int i2 = 0; i2 < this.selector.orderByList.size(); i2++) {
                stringBuffer.append(" ORDER BY ");
                stringBuffer.append(this.selector.orderByList.get(i2).toString());
            }
        }
        if (this.selector.limit > 0) {
            stringBuffer.append(" LIMIT ");
            stringBuffer.append(this.selector.limit);
            stringBuffer.append(" OFFSET ");
            stringBuffer.append(this.selector.offset);
        }
        return stringBuffer.toString();
    }

    public DbModelSelector where(WhereBuilder whereBuilder) {
        this.selector.where(whereBuilder);
        return this;
    }

    public DbModelSelector where(String str, String str2, Object obj) {
        this.selector.where(str, str2, obj);
        return this;
    }
}
