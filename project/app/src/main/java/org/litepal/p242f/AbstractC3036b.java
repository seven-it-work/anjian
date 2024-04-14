package org.litepal.p242f;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.cyjh.common.util.C1176s;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import net.grandcentrix.tray.provider.TrayContract;
import org.litepal.p241e.C3029a;
import org.litepal.p242f.p244b.C3037a;
import org.litepal.p242f.p244b.C3038b;
import org.litepal.p242f.p244b.C3039c;
import org.litepal.p242f.p244b.C3040d;
import org.litepal.p246g.C3054a;
import org.litepal.p246g.C3058c;
import org.litepal.p246g.C3059d;

/* renamed from: org.litepal.f.b */
/* loaded from: classes2.dex */
public abstract class AbstractC3036b extends C3049d {

    /* renamed from: d */
    public static final String f11161d = "AssociationUpdater";

    /* renamed from: e */
    protected SQLiteDatabase f11162e;

    /* renamed from: h */
    private Collection<C3037a> f11163h;

    /* renamed from: a */
    private static String m13832a(Collection<String> collection, C3040d c3040d) {
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            c3040d.m13888a(it.next());
        }
        return m13899c(c3040d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m13833a(List<String> list, SQLiteDatabase sQLiteDatabase) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(m13825g(list.get(i)));
        }
        m13906b(arrayList, sQLiteDatabase);
    }

    /* renamed from: a */
    private boolean m13834a(String str, String str2) {
        for (C3037a c3037a : this.f11163h) {
            if (c3037a.f11167d == 1) {
                if (!str.equalsIgnoreCase(c3037a.f11166c)) {
                    continue;
                } else if (c3037a.f11164a.equalsIgnoreCase(str)) {
                    if (m13835a(c3037a, str, str2)) {
                        return false;
                    }
                } else if (c3037a.f11165b.equalsIgnoreCase(str) && m13835a(c3037a, str2, str)) {
                    return false;
                }
            } else if (c3037a.f11167d == 2 && m13835a(c3037a, str2, str)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    private static boolean m13835a(C3037a c3037a, String str, String str2) {
        return c3037a.f11164a.equalsIgnoreCase(str) && c3037a.f11165b.equalsIgnoreCase(str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public static String m13836b(C3040d c3040d) {
        String str = c3040d.f11178a;
        List<C3038b> list = c3040d.f11179b;
        if (list.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("insert into ");
        sb.append(str);
        sb.append("(");
        boolean z = false;
        boolean z2 = false;
        for (C3038b c3038b : list) {
            if (z2) {
                sb.append(", ");
            }
            sb.append(c3038b.f11168a);
            z2 = true;
        }
        sb.append(") ");
        sb.append("select ");
        for (C3038b c3038b2 : list) {
            if (z) {
                sb.append(", ");
            }
            sb.append(c3038b2.f11168a);
            z = true;
        }
        sb.append(" from ");
        sb.append(m13847k(str));
        return sb.toString();
    }

    /* renamed from: b */
    private List<String> m13837b(Collection<String> collection, String str) {
        C3040d m13852h = m13852h(str);
        String m13845i = m13845i(str);
        C3059d.m13972a(f11161d, "generateRemoveColumnSQL >> " + m13845i);
        String m13832a = m13832a(collection, m13852h);
        C3059d.m13972a(f11161d, "generateRemoveColumnSQL >> " + m13832a);
        String m13836b = m13836b(m13852h);
        C3059d.m13972a(f11161d, "generateRemoveColumnSQL >> " + m13836b);
        String g = m13825g(m13847k(str));
        C3059d.m13972a(f11161d, "generateRemoveColumnSQL >> " + g);
        ArrayList arrayList = new ArrayList();
        arrayList.add(m13845i);
        arrayList.add(m13832a);
        arrayList.add(m13836b);
        arrayList.add(g);
        return arrayList;
    }

    /* renamed from: c */
    private void m13838c() {
        Iterator<String> it = C3029a.m13714a().m13730d().iterator();
        while (it.hasNext()) {
            C3040d a2 = m13695a(it.next());
            ArrayList arrayList = new ArrayList();
            List<String> m13848a = m13848a(a2);
            String str = a2.f11178a;
            for (String str2 : m13848a) {
                String str3 = null;
                if (!TextUtils.isEmpty(str2) && str2.toLowerCase(Locale.US).endsWith(TrayContract.Preferences.Columns.f10375ID)) {
                    str3 = str2.substring(0, str2.length() - 3);
                }
                if (m13834a(str, str3)) {
                    arrayList.add(str2);
                }
            }
            C3059d.m13972a(f11161d, "findForeignKeyToRemove >> " + a2.f11178a + C1176s.a.f4108a + arrayList);
            m13849a(arrayList, a2.f11178a);
        }
        List<String> m13843g = m13843g();
        m13833a(m13843g, this.f11162e);
        m13850a(m13843g);
        List<String> m13844h = m13844h();
        m13833a(m13844h, this.f11162e);
        m13850a(m13844h);
    }

    /* renamed from: d */
    private List<String> m13839d(C3040d c3040d) {
        ArrayList arrayList = new ArrayList();
        List<String> m13848a = m13848a(c3040d);
        String str = c3040d.f11178a;
        for (String str2 : m13848a) {
            String str3 = null;
            if (!TextUtils.isEmpty(str2) && str2.toLowerCase(Locale.US).endsWith(TrayContract.Preferences.Columns.f10375ID)) {
                str3 = str2.substring(0, str2.length() - 3);
            }
            if (m13834a(str, str3)) {
                arrayList.add(str2);
            }
        }
        C3059d.m13972a(f11161d, "findForeignKeyToRemove >> " + c3040d.f11178a + C1176s.a.f4108a + arrayList);
        return arrayList;
    }

    /* renamed from: d */
    private void m13840d() {
        Iterator<String> it = C3029a.m13714a().m13730d().iterator();
        while (it.hasNext()) {
            C3040d a2 = m13695a(it.next());
            ArrayList arrayList = new ArrayList();
            List<String> m13848a = m13848a(a2);
            String str = a2.f11178a;
            for (String str2 : m13848a) {
                String str3 = null;
                if (!TextUtils.isEmpty(str2) && str2.toLowerCase(Locale.US).endsWith(TrayContract.Preferences.Columns.f10375ID)) {
                    str3 = str2.substring(0, str2.length() - 3);
                }
                if (m13834a(str, str3)) {
                    arrayList.add(str2);
                }
            }
            C3059d.m13972a(f11161d, "findForeignKeyToRemove >> " + a2.f11178a + C1176s.a.f4108a + arrayList);
            m13849a(arrayList, a2.f11178a);
        }
    }

    /* renamed from: e */
    private void m13841e() {
        ArrayList arrayList = new ArrayList();
        for (String str : C3058c.m13954a(this.f11162e)) {
            if (C3058c.m13956a(str, this.f11162e)) {
                boolean z = true;
                for (C3037a c3037a : this.f11163h) {
                    if (c3037a.f11167d == 3 && str.equalsIgnoreCase(C3058c.m13952a(c3037a.f11164a, c3037a.f11165b))) {
                        z = false;
                    }
                }
                if (z) {
                    arrayList.add(str);
                }
            }
        }
        C3059d.m13972a(f11161d, "findIntermediateTablesToDrop >> " + arrayList);
        m13833a(arrayList, this.f11162e);
        m13850a((List<String>) arrayList);
    }

    /* renamed from: f */
    private void m13842f() {
        ArrayList arrayList = new ArrayList();
        for (String str : C3058c.m13954a(this.f11162e)) {
            if (C3058c.m13961b(str, this.f11162e)) {
                boolean z = true;
                Iterator<C3039c> it = this.f11045c.iterator();
                while (it.hasNext()) {
                    if (str.equalsIgnoreCase(it.next().f11173a)) {
                        z = false;
                    }
                }
                if (z) {
                    arrayList.add(str);
                }
            }
        }
        m13833a(arrayList, this.f11162e);
        m13850a((List<String>) arrayList);
    }

    /* renamed from: g */
    private List<String> m13843g() {
        ArrayList arrayList = new ArrayList();
        for (String str : C3058c.m13954a(this.f11162e)) {
            if (C3058c.m13956a(str, this.f11162e)) {
                boolean z = true;
                for (C3037a c3037a : this.f11163h) {
                    if (c3037a.f11167d == 3 && str.equalsIgnoreCase(C3058c.m13952a(c3037a.f11164a, c3037a.f11165b))) {
                        z = false;
                    }
                }
                if (z) {
                    arrayList.add(str);
                }
            }
        }
        C3059d.m13972a(f11161d, "findIntermediateTablesToDrop >> " + arrayList);
        return arrayList;
    }

    /* renamed from: h */
    private List<String> m13844h() {
        ArrayList arrayList = new ArrayList();
        for (String str : C3058c.m13954a(this.f11162e)) {
            if (C3058c.m13961b(str, this.f11162e)) {
                boolean z = true;
                Iterator<C3039c> it = this.f11045c.iterator();
                while (it.hasNext()) {
                    if (str.equalsIgnoreCase(it.next().f11173a)) {
                        z = false;
                    }
                }
                if (z) {
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: i */
    public static String m13845i(String str) {
        return "alter table " + str + " rename to " + m13847k(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: j */
    public static String m13846j(String str) {
        return m13825g(m13847k(str));
    }

    /* renamed from: k */
    private static String m13847k(String str) {
        return str + "_temp";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final List<String> m13848a(C3040d c3040d) {
        ArrayList arrayList = new ArrayList();
        for (C3038b c3038b : m13852h(c3040d.f11178a).f11179b) {
            String str = c3038b.f11168a;
            String str2 = c3038b.f11168a;
            boolean z = false;
            if (!TextUtils.isEmpty(str2) && str2.toLowerCase(Locale.US).endsWith(TrayContract.Preferences.Columns.f10375ID) && !str2.equalsIgnoreCase(TrayContract.Preferences.Columns.f10375ID)) {
                z = true;
            }
            if (z && !c3040d.m13890b(str)) {
                C3059d.m13972a(f11161d, "getForeignKeyColumnNames >> foreign key column is " + str);
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    @Override // org.litepal.p242f.C3049d, org.litepal.p242f.AbstractC3034a, org.litepal.p242f.AbstractC3051f
    /* renamed from: a */
    protected abstract void mo13828a(SQLiteDatabase sQLiteDatabase, boolean z);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m13849a(Collection<String> collection, String str) {
        if (collection == null || collection.isEmpty()) {
            return;
        }
        C3040d m13852h = m13852h(str);
        String m13845i = m13845i(str);
        C3059d.m13972a(f11161d, "generateRemoveColumnSQL >> " + m13845i);
        String m13832a = m13832a(collection, m13852h);
        C3059d.m13972a(f11161d, "generateRemoveColumnSQL >> " + m13832a);
        String m13836b = m13836b(m13852h);
        C3059d.m13972a(f11161d, "generateRemoveColumnSQL >> " + m13836b);
        String g = m13825g(m13847k(str));
        C3059d.m13972a(f11161d, "generateRemoveColumnSQL >> " + g);
        ArrayList arrayList = new ArrayList();
        arrayList.add(m13845i);
        arrayList.add(m13832a);
        arrayList.add(m13836b);
        arrayList.add(g);
        m13906b(arrayList, this.f11162e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m13850a(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder("delete from ");
        sb.append("table_schema where");
        boolean z = false;
        for (String str : list) {
            if (z) {
                sb.append(" or ");
            }
            z = true;
            sb.append(" lower(name) ");
            sb.append("= lower('");
            sb.append(str);
            sb.append("')");
        }
        C3059d.m13972a(f11161d, "clear table schema value sql is " + ((Object) sb));
        ArrayList arrayList = new ArrayList();
        arrayList.add(sb.toString());
        m13906b(arrayList, this.f11162e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final boolean m13851a(C3040d c3040d, String str) {
        return C3054a.m13934a(m13848a(c3040d), str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.litepal.p242f.AbstractC3034a, org.litepal.p242f.AbstractC3051f
    /* renamed from: b */
    public final void mo13829b(SQLiteDatabase sQLiteDatabase, boolean z) {
        this.f11163h = m13914b();
        this.f11162e = sQLiteDatabase;
        Iterator<String> it = C3029a.m13714a().m13730d().iterator();
        while (it.hasNext()) {
            C3040d a2 = m13695a(it.next());
            ArrayList arrayList = new ArrayList();
            List<String> m13848a = m13848a(a2);
            String str = a2.f11178a;
            for (String str2 : m13848a) {
                String str3 = null;
                if (!TextUtils.isEmpty(str2) && str2.toLowerCase(Locale.US).endsWith(TrayContract.Preferences.Columns.f10375ID)) {
                    str3 = str2.substring(0, str2.length() - 3);
                }
                if (m13834a(str, str3)) {
                    arrayList.add(str2);
                }
            }
            C3059d.m13972a(f11161d, "findForeignKeyToRemove >> " + a2.f11178a + C1176s.a.f4108a + arrayList);
            m13849a(arrayList, a2.f11178a);
        }
        List<String> m13843g = m13843g();
        m13833a(m13843g, this.f11162e);
        m13850a(m13843g);
        List<String> m13844h = m13844h();
        m13833a(m13844h, this.f11162e);
        m13850a(m13844h);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final C3040d m13852h(String str) {
        return C3058c.m13965d(str, this.f11162e);
    }
}
