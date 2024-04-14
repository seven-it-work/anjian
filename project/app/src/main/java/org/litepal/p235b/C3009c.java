package org.litepal.p235b;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.litepal.C2993b;
import org.litepal.C3033f;
import org.litepal.p235b.p238c.C3010a;
import org.litepal.p239c.C3024e;
import org.litepal.p246g.C3054a;
import org.litepal.p246g.C3058c;

/* renamed from: org.litepal.b.c */
/* loaded from: classes2.dex */
public final class C3009c extends AbstractC3002b {

    /* renamed from: f */
    private List<String> f11010f;

    public C3009c(SQLiteDatabase sQLiteDatabase) {
        this.f11003e = sQLiteDatabase;
    }

    /* renamed from: a */
    private List<String> m13519a() {
        if (this.f11010f == null) {
            this.f11010f = new ArrayList();
        }
        return this.f11010f;
    }

    /* renamed from: a */
    private void m13520a(Class<?> cls, List<Field> list, long... jArr) {
        int i;
        Iterator<Field> it = list.iterator();
        while (it.hasNext()) {
            String m13960b = C3058c.m13960b(cls.getName(), it.next().getName());
            String m13959b = C3058c.m13959b(cls.getName());
            int length = jArr.length;
            int i2 = (length - 1) / 500;
            int i3 = 0;
            while (i3 <= i2) {
                StringBuilder sb = new StringBuilder();
                int i4 = i3 * 500;
                boolean z = false;
                while (true) {
                    i = i3 + 1;
                    if (i4 >= i * 500 || i4 >= length) {
                        break;
                    }
                    long j = jArr[i4];
                    if (z) {
                        sb.append(" or ");
                    }
                    sb.append(m13959b);
                    sb.append(" = ");
                    sb.append(j);
                    i4++;
                    z = true;
                }
                if (!TextUtils.isEmpty(sb.toString())) {
                    this.f11003e.delete(m13960b, sb.toString(), null);
                }
                i3 = i;
            }
        }
    }

    /* renamed from: b */
    private int m13521b(Class<?> cls, long j) {
        int i = 0;
        for (String str : m13519a()) {
            String f = m13693f(m13487b(cls));
            i += this.f11003e.delete(str, f + " = " + j, null);
        }
        return i;
    }

    /* renamed from: b */
    private int m13522b(Class<?> cls, String... strArr) {
        int i = 0;
        for (String str : m13519a()) {
            String b2 = m13487b(cls);
            String f = m13693f(b2);
            StringBuilder sb = new StringBuilder();
            sb.append(f);
            sb.append(" in (select id from ");
            sb.append(b2);
            if (strArr != null && strArr.length > 0) {
                sb.append(" where ");
                sb.append(m13524c(strArr));
            }
            sb.append(")");
            i += this.f11003e.delete(str, C3054a.m13930a(sb.toString()), null);
        }
        return i;
    }

    /* renamed from: b */
    private static void m13523b(C3012e c3012e, Collection<C3010a> collection) {
        C3012e c2;
        try {
            for (C3010a c3010a : collection) {
                if (c3010a.f11016f == 2 && !c3012e.getClassName().equals(c3010a.f11013c)) {
                    Collection<C3012e> d = m13500d(c3012e, c3010a);
                    if (d != null && !d.isEmpty()) {
                        for (C3012e c3012e2 : d) {
                            if (c3012e2 != null) {
                                c3012e2.clearSavedState();
                            }
                        }
                    }
                } else if (c3010a.f11016f == 1 && (c2 = m13494c(c3012e, c3010a)) != null) {
                    c2.clearSavedState();
                }
            }
        } catch (Exception e) {
            throw new C3024e(e.getMessage(), e);
        }
    }

    /* renamed from: c */
    private static String m13524c(String... strArr) {
        int length = strArr.length - 1;
        int i = 0;
        String str = strArr[0];
        while (i < length) {
            StringBuilder sb = new StringBuilder("'");
            i++;
            sb.append(strArr[i]);
            sb.append("'");
            str = str.replaceFirst("\\?", sb.toString());
        }
        return str;
    }

    /* renamed from: c */
    private Collection<C3010a> m13525c(C3012e c3012e) {
        try {
            Collection<C3010a> b2 = m13697b(c3012e.getClassName());
            m13480a(c3012e, b2);
            return b2;
        } catch (Exception e) {
            throw new C3024e(e.getMessage(), e);
        }
    }

    /* renamed from: c */
    private void m13526c(Class<?> cls) {
        for (C3010a c3010a : m13697b(cls.getName())) {
            String m13951a = C3058c.m13951a(c3010a.f11012b);
            if (c3010a.f11016f == 2 || c3010a.f11016f == 1) {
                if (!cls.getName().equals(c3010a.f11013c)) {
                    m13519a().add(m13951a);
                }
            } else if (c3010a.f11016f == 3) {
                m13519a().add(C3054a.m13930a(C3058c.m13952a(m13487b(cls), m13951a)));
            }
        }
    }

    /* renamed from: d */
    private int m13527d(C3012e c3012e) {
        int i = 0;
        for (String str : c3012e.getAssociatedModelsMapWithFK().keySet()) {
            String f = m13693f(c3012e.getTableName());
            i += this.f11003e.delete(str, f + " = " + c3012e.getBaseObjId(), null);
        }
        return i + m13529f(c3012e);
    }

    /* renamed from: e */
    private int m13528e(C3012e c3012e) {
        int i = 0;
        for (String str : c3012e.getAssociatedModelsMapWithFK().keySet()) {
            String f = m13693f(c3012e.getTableName());
            i += this.f11003e.delete(str, f + " = " + c3012e.getBaseObjId(), null);
        }
        return i;
    }

    /* renamed from: f */
    private int m13529f(C3012e c3012e) {
        Iterator<String> it = c3012e.getAssociatedModelsMapForJoinTable().keySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            String m13952a = C3058c.m13952a(c3012e.getTableName(), it.next());
            String f = m13693f(c3012e.getTableName());
            i += this.f11003e.delete(m13952a, f + " = " + c3012e.getBaseObjId(), null);
        }
        return i;
    }

    /* renamed from: a */
    public final int m13530a(Class<?> cls, long j) {
        int i = 0;
        m13520a(cls, m13699d(cls.getName()), j);
        m13526c(cls);
        for (String str : m13519a()) {
            String f = m13693f(m13487b(cls));
            i += this.f11003e.delete(str, f + " = " + j, null);
        }
        int delete = i + this.f11003e.delete(m13487b(cls), "id = " + j, null);
        m13519a().clear();
        return delete;
    }

    /* renamed from: a */
    public final int m13531a(Class<?> cls, String... strArr) {
        C3054a.m13931a(strArr);
        int i = 0;
        if (strArr != null && strArr.length > 0) {
            strArr[0] = C3058c.m13966e(strArr[0]);
        }
        List<Field> d = m13699d(cls.getName());
        if (!d.isEmpty()) {
            C2993b m13763a = C3033f.m13763a("id");
            m13763a.f10941b = strArr;
            List m13442a = m13763a.m13442a((Class) cls, false);
            if (m13442a.size() > 0) {
                long[] jArr = new long[m13442a.size()];
                for (int i2 = 0; i2 < jArr.length; i2++) {
                    jArr[i2] = ((C3012e) m13442a.get(i2)).getBaseObjId();
                }
                m13520a(cls, d, jArr);
            }
        }
        m13526c(cls);
        for (String str : m13519a()) {
            String b2 = m13487b(cls);
            String f = m13693f(b2);
            StringBuilder sb = new StringBuilder();
            sb.append(f);
            sb.append(" in (select id from ");
            sb.append(b2);
            if (strArr != null && strArr.length > 0) {
                sb.append(" where ");
                sb.append(m13524c(strArr));
            }
            sb.append(")");
            i += this.f11003e.delete(str, C3054a.m13930a(sb.toString()), null);
        }
        int delete = i + this.f11003e.delete(m13487b(cls), m13474a(strArr), m13492b(strArr));
        m13519a().clear();
        return delete;
    }

    /* renamed from: a */
    public final int m13532a(String str, String... strArr) {
        C3054a.m13931a(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = C3058c.m13966e(strArr[0]);
        }
        return this.f11003e.delete(str, m13474a(strArr), m13492b(strArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final int m13533b(C3012e c3012e) {
        int i = 0;
        if (!c3012e.isSaved()) {
            return 0;
        }
        m13520a(c3012e.getClass(), m13699d(c3012e.getClassName()), c3012e.getBaseObjId());
        Collection<C3010a> m13525c = m13525c(c3012e);
        for (String str : c3012e.getAssociatedModelsMapWithFK().keySet()) {
            String f = m13693f(c3012e.getTableName());
            i += this.f11003e.delete(str, f + " = " + c3012e.getBaseObjId(), null);
        }
        int m13529f = i + m13529f(c3012e) + this.f11003e.delete(c3012e.getTableName(), "id = " + c3012e.getBaseObjId(), null);
        m13523b(c3012e, m13525c);
        return m13529f;
    }
}
