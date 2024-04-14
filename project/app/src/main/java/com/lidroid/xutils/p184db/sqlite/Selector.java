package com.lidroid.xutils.p184db.sqlite;

import com.lidroid.xutils.p184db.table.TableUtils;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public class Selector {
    protected Class<?> entityType;
    protected int limit = 0;
    protected int offset = 0;
    protected List<OrderBy> orderByList;
    protected String tableName;
    protected WhereBuilder whereBuilder;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public class OrderBy {
        private String columnName;
        private boolean desc;

        public OrderBy(String str) {
            this.columnName = str;
        }

        public OrderBy(String str, boolean z) {
            this.columnName = str;
            this.desc = z;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(String.valueOf(this.columnName));
            sb.append(this.desc ? " DESC" : " ASC");
            return sb.toString();
        }
    }

    private Selector(Class<?> cls) {
        this.entityType = cls;
        this.tableName = TableUtils.getTableName(cls);
    }

    public static Selector from(Class<?> cls) {
        return new Selector(cls);
    }

    public Selector and(WhereBuilder whereBuilder) {
        this.whereBuilder.expr("AND (" + whereBuilder.toString() + ")");
        return this;
    }

    public Selector and(String str, String str2, Object obj) {
        this.whereBuilder.and(str, str2, obj);
        return this;
    }

    public Selector expr(String str) {
        if (this.whereBuilder == null) {
            this.whereBuilder = WhereBuilder.m10362b();
        }
        this.whereBuilder.expr(str);
        return this;
    }

    public Selector expr(String str, String str2, Object obj) {
        if (this.whereBuilder == null) {
            this.whereBuilder = WhereBuilder.m10362b();
        }
        this.whereBuilder.expr(str, str2, obj);
        return this;
    }

    public Class<?> getEntityType() {
        return this.entityType;
    }

    public DbModelSelector groupBy(String str) {
        return new DbModelSelector(this, str);
    }

    public Selector limit(int i) {
        this.limit = i;
        return this;
    }

    public Selector offset(int i) {
        this.offset = i;
        return this;
    }

    /* renamed from: or */
    public Selector m10360or(WhereBuilder whereBuilder) {
        this.whereBuilder.expr("OR (" + whereBuilder.toString() + ")");
        return this;
    }

    /* renamed from: or */
    public Selector m10361or(String str, String str2, Object obj) {
        this.whereBuilder.m10364or(str, str2, obj);
        return this;
    }

    public Selector orderBy(String str) {
        if (this.orderByList == null) {
            this.orderByList = new ArrayList(2);
        }
        this.orderByList.add(new OrderBy(str));
        return this;
    }

    public Selector orderBy(String str, boolean z) {
        if (this.orderByList == null) {
            this.orderByList = new ArrayList(2);
        }
        this.orderByList.add(new OrderBy(str, z));
        return this;
    }

    public DbModelSelector select(String... strArr) {
        return new DbModelSelector(this, strArr);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT ");
        sb.append(Marker.ANY_MARKER);
        sb.append(" FROM ");
        sb.append(this.tableName);
        if (this.whereBuilder != null && this.whereBuilder.getWhereItemSize() > 0) {
            sb.append(" WHERE ");
            sb.append(this.whereBuilder.toString());
        }
        if (this.orderByList != null) {
            for (int i = 0; i < this.orderByList.size(); i++) {
                sb.append(" ORDER BY ");
                sb.append(this.orderByList.get(i).toString());
            }
        }
        if (this.limit > 0) {
            sb.append(" LIMIT ");
            sb.append(this.limit);
            sb.append(" OFFSET ");
            sb.append(this.offset);
        }
        return sb.toString();
    }

    public Selector where(WhereBuilder whereBuilder) {
        this.whereBuilder = whereBuilder;
        return this;
    }

    public Selector where(String str, String str2, Object obj) {
        this.whereBuilder = WhereBuilder.m10363b(str, str2, obj);
        return this;
    }
}
