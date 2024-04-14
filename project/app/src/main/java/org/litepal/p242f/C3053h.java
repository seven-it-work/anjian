package org.litepal.p242f;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.litepal.p235b.p238c.C3010a;
import org.litepal.p242f.p244b.C3038b;
import org.litepal.p242f.p244b.C3040d;
import org.litepal.p246g.C3058c;
import org.litepal.p246g.C3059d;

/* renamed from: org.litepal.f.h */
/* loaded from: classes2.dex */
public final class C3053h extends AbstractC3036b {

    /* renamed from: h */
    protected C3040d f11188h;

    /* renamed from: i */
    protected C3040d f11189i;

    /* renamed from: j */
    private boolean f11190j;

    /* renamed from: a */
    private String m13915a(C3038b c3038b) {
        return m13816a(this.f11188h.f11178a, c3038b);
    }

    /* renamed from: b */
    private List<String> m13916b(List<C3038b> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<C3038b> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(m13816a(this.f11188h.f11178a, it.next()));
        }
        return arrayList;
    }

    /* renamed from: c */
    private void m13917c() {
        boolean z;
        C3038b c3038b;
        for (C3038b c3038b2 : this.f11188h.f11179b) {
            C3040d c3040d = this.f11189i;
            String str = c3038b2.f11168a;
            Iterator<C3038b> it = c3040d.f11179b.iterator();
            while (true) {
                if (it.hasNext()) {
                    c3038b = it.next();
                    if (c3038b.f11168a.equalsIgnoreCase(str)) {
                        break;
                    }
                } else {
                    c3038b = null;
                    break;
                }
            }
            if ((c3038b2.f11171d && (c3038b == null || !c3038b.f11171d)) || (c3038b != null && !c3038b2.f11170c && c3038b.f11170c)) {
                z = true;
                break;
            }
        }
        z = false;
        if (z) {
            m13897a(this.f11188h, this.f11162e, true);
            for (C3010a c3010a : m13697b(this.f11188h.f11180c)) {
                if (c3010a.f11016f == 2 || c3010a.f11016f == 1) {
                    if (c3010a.f11013c.equalsIgnoreCase(this.f11188h.f11180c)) {
                        m13819a(this.f11188h.f11178a, C3058c.m13951a(c3010a.f11012b), this.f11188h.f11178a, this.f11162e);
                    }
                }
            }
            return;
        }
        this.f11190j = false;
        String str2 = this.f11188h.f11178a;
        ArrayList arrayList = new ArrayList();
        Iterator<C3038b> it2 = this.f11189i.f11179b.iterator();
        while (it2.hasNext()) {
            String str3 = it2.next().f11168a;
            if ((!(this.f11188h.m13890b(str3) ^ true) || m13692e(str3) || m13851a(this.f11188h, str3)) ? false : true) {
                arrayList.add(str3);
            }
        }
        C3059d.m13972a(AbstractC3036b.f11161d, "remove columns from " + str2 + " >> " + arrayList);
        m13918c(arrayList);
        m13919d(m13921e());
        m13922e(m13924g());
        if (this.f11190j) {
            C3059d.m13972a(AbstractC3036b.f11161d, "do changeColumnsConstraints");
            m13906b(m13926i(), this.f11162e);
        }
    }

    /* renamed from: c */
    private void m13918c(List<String> list) {
        C3059d.m13972a(AbstractC3036b.f11161d, "do removeColumns " + list);
        m13849a(list, this.f11188h.f11178a);
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            this.f11189i.m13888a(it.next());
        }
    }

    /* renamed from: d */
    private void m13919d(List<C3038b> list) {
        C3059d.m13972a(AbstractC3036b.f11161d, "do addColumn");
        ArrayList arrayList = new ArrayList();
        Iterator<C3038b> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(m13816a(this.f11188h.f11178a, it.next()));
        }
        m13906b(arrayList, this.f11162e);
        Iterator<C3038b> it2 = list.iterator();
        while (it2.hasNext()) {
            this.f11189i.m13889a(it2.next());
        }
    }

    /* renamed from: d */
    private boolean m13920d() {
        C3038b c3038b;
        for (C3038b c3038b2 : this.f11188h.f11179b) {
            C3040d c3040d = this.f11189i;
            String str = c3038b2.f11168a;
            Iterator<C3038b> it = c3040d.f11179b.iterator();
            while (true) {
                if (!it.hasNext()) {
                    c3038b = null;
                    break;
                }
                c3038b = it.next();
                if (c3038b.f11168a.equalsIgnoreCase(str)) {
                    break;
                }
            }
            if (c3038b2.f11171d && (c3038b == null || !c3038b.f11171d)) {
                return true;
            }
            if (c3038b != null && !c3038b2.f11170c && c3038b.f11170c) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    private List<C3038b> m13921e() {
        ArrayList arrayList = new ArrayList();
        for (C3038b c3038b : this.f11188h.f11179b) {
            if (!this.f11189i.m13890b(c3038b.f11168a)) {
                arrayList.add(c3038b);
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    private void m13922e(List<C3038b> list) {
        C3059d.m13972a(AbstractC3036b.f11161d, "do changeColumnsType");
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            Iterator<C3038b> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().f11168a);
            }
        }
        m13918c(arrayList);
        m13919d(list);
    }

    /* renamed from: f */
    private List<String> m13923f() {
        String str = this.f11188h.f11178a;
        ArrayList arrayList = new ArrayList();
        Iterator<C3038b> it = this.f11189i.f11179b.iterator();
        while (it.hasNext()) {
            String str2 = it.next().f11168a;
            if ((!(this.f11188h.m13890b(str2) ^ true) || m13692e(str2) || m13851a(this.f11188h, str2)) ? false : true) {
                arrayList.add(str2);
            }
        }
        C3059d.m13972a(AbstractC3036b.f11161d, "remove columns from " + str + " >> " + arrayList);
        return arrayList;
    }

    /* renamed from: g */
    private List<C3038b> m13924g() {
        ArrayList arrayList = new ArrayList();
        for (C3038b c3038b : this.f11189i.f11179b) {
            for (C3038b c3038b2 : this.f11188h.f11179b) {
                if (c3038b.f11168a.equalsIgnoreCase(c3038b2.f11168a)) {
                    if (!c3038b.f11169b.equalsIgnoreCase(c3038b2.f11169b) && (!c3038b2.f11169b.equalsIgnoreCase("blob") || !TextUtils.isEmpty(c3038b.f11169b))) {
                        arrayList.add(c3038b2);
                    }
                    if (!this.f11190j) {
                        C3059d.m13972a(AbstractC3036b.f11161d, "default value db is:" + c3038b.f11172e + ", default value is:" + c3038b2.f11172e);
                        if (c3038b.f11170c != c3038b2.f11170c || !c3038b.f11172e.equalsIgnoreCase(c3038b2.f11172e) || (c3038b.f11171d && !c3038b2.f11171d)) {
                            this.f11190j = true;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: h */
    private void m13925h() {
        if (this.f11190j) {
            C3059d.m13972a(AbstractC3036b.f11161d, "do changeColumnsConstraints");
            String i = m13845i(this.f11188h.f11178a);
            String c2 = m13899c(this.f11188h);
            ArrayList arrayList = new ArrayList();
            for (String str : m13848a(this.f11188h)) {
                if (!this.f11188h.m13890b(str)) {
                    C3038b c3038b = new C3038b();
                    c3038b.f11168a = str;
                    c3038b.f11169b = "integer";
                    arrayList.add(m13816a(this.f11188h.f11178a, c3038b));
                }
            }
            String b2 = m13836b(this.f11189i);
            String j = m13846j(this.f11188h.f11178a);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(i);
            arrayList2.add(c2);
            arrayList2.addAll(arrayList);
            arrayList2.add(b2);
            arrayList2.add(j);
            C3059d.m13972a(AbstractC3036b.f11161d, "generateChangeConstraintSQL >> ");
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                C3059d.m13972a(AbstractC3036b.f11161d, (String) it.next());
            }
            C3059d.m13972a(AbstractC3036b.f11161d, "<< generateChangeConstraintSQL");
            m13906b(arrayList2, this.f11162e);
        }
    }

    /* renamed from: i */
    private List<String> m13926i() {
        String i = m13845i(this.f11188h.f11178a);
        String c2 = m13899c(this.f11188h);
        ArrayList arrayList = new ArrayList();
        for (String str : m13848a(this.f11188h)) {
            if (!this.f11188h.m13890b(str)) {
                C3038b c3038b = new C3038b();
                c3038b.f11168a = str;
                c3038b.f11169b = "integer";
                arrayList.add(m13816a(this.f11188h.f11178a, c3038b));
            }
        }
        String b2 = m13836b(this.f11189i);
        String j = m13846j(this.f11188h.f11178a);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(i);
        arrayList2.add(c2);
        arrayList2.addAll(arrayList);
        arrayList2.add(b2);
        arrayList2.add(j);
        C3059d.m13972a(AbstractC3036b.f11161d, "generateChangeConstraintSQL >> ");
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            C3059d.m13972a(AbstractC3036b.f11161d, (String) it.next());
        }
        C3059d.m13972a(AbstractC3036b.f11161d, "<< generateChangeConstraintSQL");
        return arrayList2;
    }

    /* renamed from: j */
    private List<String> m13927j() {
        ArrayList arrayList = new ArrayList();
        for (String str : m13848a(this.f11188h)) {
            if (!this.f11188h.m13890b(str)) {
                C3038b c3038b = new C3038b();
                c3038b.f11168a = str;
                c3038b.f11169b = "integer";
                arrayList.add(m13816a(this.f11188h.f11178a, c3038b));
            }
        }
        return arrayList;
    }

    /* renamed from: k */
    private boolean m13928k(String str) {
        return (!(this.f11188h.m13890b(str) ^ true) || m13692e(str) || m13851a(this.f11188h, str)) ? false : true;
    }

    /* renamed from: l */
    private boolean m13929l(String str) {
        return !this.f11188h.m13890b(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.litepal.p242f.AbstractC3036b, org.litepal.p242f.C3049d, org.litepal.p242f.AbstractC3034a, org.litepal.p242f.AbstractC3051f
    /* renamed from: a */
    public final void mo13828a(SQLiteDatabase sQLiteDatabase, boolean z) {
        this.f11162e = sQLiteDatabase;
        for (C3040d c3040d : m13913a()) {
            this.f11188h = c3040d;
            this.f11189i = m13852h(c3040d.f11178a);
            C3059d.m13972a(AbstractC3036b.f11161d, "createOrUpgradeTable: model is " + this.f11188h.f11178a);
            m13917c();
        }
    }
}
