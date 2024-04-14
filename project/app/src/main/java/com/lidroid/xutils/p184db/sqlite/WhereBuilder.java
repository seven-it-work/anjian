package com.lidroid.xutils.p184db.sqlite;

import android.text.TextUtils;
import com.cyjh.common.util.C1176s;
import com.lidroid.xutils.p184db.converter.ColumnConverterFactory;
import com.lidroid.xutils.p184db.table.ColumnUtils;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class WhereBuilder {
    private final List<String> whereItems = new ArrayList();

    private WhereBuilder() {
    }

    private void appendCondition(String str, String str2, String str3, Object obj) {
        Object convert2DbColumnValueIfNeeded;
        String obj2;
        StringBuilder sb;
        String sb2;
        StringBuilder sb3 = new StringBuilder();
        if (this.whereItems.size() > 0) {
            sb3.append(C1176s.a.f4108a);
        }
        if (!TextUtils.isEmpty(str)) {
            sb3.append(String.valueOf(str) + C1176s.a.f4108a);
        }
        sb3.append(str2);
        if ("!=".equals(str3)) {
            str3 = "<>";
        } else if ("==".equals(str3)) {
            str3 = "=";
        }
        if (obj != null) {
            sb3.append(C1176s.a.f4108a + str3 + C1176s.a.f4108a);
            int i = 0;
            Iterable iterable = null;
            if ("IN".equalsIgnoreCase(str3)) {
                if (obj instanceof Iterable) {
                    iterable = (Iterable) obj;
                } else if (obj.getClass().isArray()) {
                    ArrayList arrayList = new ArrayList();
                    int length = Array.getLength(obj);
                    while (i < length) {
                        arrayList.add(Array.get(obj, i));
                        i++;
                    }
                    iterable = arrayList;
                }
                if (iterable == null) {
                    throw new IllegalArgumentException("value must be an Array or an Iterable.");
                }
                StringBuffer stringBuffer = new StringBuffer("(");
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    Object convert2DbColumnValueIfNeeded2 = ColumnUtils.convert2DbColumnValueIfNeeded(it.next());
                    if (ColumnDbType.TEXT.equals(ColumnConverterFactory.getDbColumnType(convert2DbColumnValueIfNeeded2.getClass()))) {
                        String obj3 = convert2DbColumnValueIfNeeded2.toString();
                        if (obj3.indexOf(39) != -1) {
                            obj3 = obj3.replace("'", "''");
                        }
                        stringBuffer.append("'" + obj3 + "'");
                    } else {
                        stringBuffer.append(convert2DbColumnValueIfNeeded2);
                    }
                    stringBuffer.append(",");
                }
                stringBuffer.deleteCharAt(stringBuffer.length() - 1);
                stringBuffer.append(")");
                sb2 = stringBuffer.toString();
            } else {
                if (!"BETWEEN".equalsIgnoreCase(str3)) {
                    convert2DbColumnValueIfNeeded = ColumnUtils.convert2DbColumnValueIfNeeded(obj);
                    if (ColumnDbType.TEXT.equals(ColumnConverterFactory.getDbColumnType(convert2DbColumnValueIfNeeded.getClass()))) {
                        obj2 = convert2DbColumnValueIfNeeded.toString();
                        if (obj2.indexOf(39) != -1) {
                            obj2 = obj2.replace("'", "''");
                        }
                        sb = new StringBuilder("'");
                        sb.append(obj2);
                        sb.append("'");
                        sb2 = sb.toString();
                    }
                    sb3.append(convert2DbColumnValueIfNeeded);
                    this.whereItems.add(sb3.toString());
                }
                if (obj instanceof Iterable) {
                    iterable = (Iterable) obj;
                } else if (obj.getClass().isArray()) {
                    ArrayList arrayList2 = new ArrayList();
                    int length2 = Array.getLength(obj);
                    while (i < length2) {
                        arrayList2.add(Array.get(obj, i));
                        i++;
                    }
                    iterable = arrayList2;
                }
                if (iterable == null) {
                    throw new IllegalArgumentException("value must be an Array or an Iterable.");
                }
                Iterator it2 = iterable.iterator();
                if (!it2.hasNext()) {
                    throw new IllegalArgumentException("value must have tow items.");
                }
                Object next = it2.next();
                if (!it2.hasNext()) {
                    throw new IllegalArgumentException("value must have tow items.");
                }
                Object next2 = it2.next();
                Object convert2DbColumnValueIfNeeded3 = ColumnUtils.convert2DbColumnValueIfNeeded(next);
                convert2DbColumnValueIfNeeded = ColumnUtils.convert2DbColumnValueIfNeeded(next2);
                if (!ColumnDbType.TEXT.equals(ColumnConverterFactory.getDbColumnType(convert2DbColumnValueIfNeeded3.getClass()))) {
                    sb3.append(convert2DbColumnValueIfNeeded3);
                    sb3.append(" AND ");
                    sb3.append(convert2DbColumnValueIfNeeded);
                    this.whereItems.add(sb3.toString());
                }
                String obj4 = convert2DbColumnValueIfNeeded3.toString();
                if (obj4.indexOf(39) != -1) {
                    obj4 = obj4.replace("'", "''");
                }
                obj2 = convert2DbColumnValueIfNeeded.toString();
                if (obj2.indexOf(39) != -1) {
                    obj2 = obj2.replace("'", "''");
                }
                sb3.append("'" + obj4 + "'");
                sb3.append(" AND ");
                sb = new StringBuilder("'");
                sb.append(obj2);
                sb.append("'");
                sb2 = sb.toString();
            }
        } else if ("=".equals(str3)) {
            sb2 = " IS NULL";
        } else if ("<>".equals(str3)) {
            sb2 = " IS NOT NULL";
        } else {
            sb2 = C1176s.a.f4108a + str3 + " NULL";
        }
        sb3.append(sb2);
        this.whereItems.add(sb3.toString());
    }

    /* renamed from: b */
    public static WhereBuilder m10362b() {
        return new WhereBuilder();
    }

    /* renamed from: b */
    public static WhereBuilder m10363b(String str, String str2, Object obj) {
        WhereBuilder whereBuilder = new WhereBuilder();
        whereBuilder.appendCondition(null, str, str2, obj);
        return whereBuilder;
    }

    public WhereBuilder and(String str, String str2, Object obj) {
        appendCondition(this.whereItems.size() == 0 ? null : "AND", str, str2, obj);
        return this;
    }

    public WhereBuilder expr(String str) {
        this.whereItems.add(C1176s.a.f4108a + str);
        return this;
    }

    public WhereBuilder expr(String str, String str2, Object obj) {
        appendCondition(null, str, str2, obj);
        return this;
    }

    public int getWhereItemSize() {
        return this.whereItems.size();
    }

    /* renamed from: or */
    public WhereBuilder m10364or(String str, String str2, Object obj) {
        appendCondition(this.whereItems.size() == 0 ? null : "OR", str, str2, obj);
        return this;
    }

    public String toString() {
        if (this.whereItems.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.whereItems.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
        }
        return sb.toString();
    }
}
