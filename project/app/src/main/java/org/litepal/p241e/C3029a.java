package org.litepal.p241e;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.List;
import org.litepal.LitePalApplication;
import org.litepal.p239c.C3023d;
import org.litepal.p246g.C3054a;
import org.litepal.p246g.InterfaceC3057b;

/* renamed from: org.litepal.e.a */
/* loaded from: classes2.dex */
public final class C3029a {

    /* renamed from: g */
    private static C3029a f11057g;

    /* renamed from: a */
    public int f11058a;

    /* renamed from: b */
    public String f11059b;

    /* renamed from: c */
    public String f11060c;

    /* renamed from: d */
    public String f11061d;

    /* renamed from: e */
    public List<String> f11062e;

    /* renamed from: f */
    public String f11063f;

    private C3029a() {
    }

    /* renamed from: a */
    public static C3029a m13714a() {
        if (f11057g == null) {
            synchronized (C3029a.class) {
                if (f11057g == null) {
                    f11057g = new C3029a();
                    m13718b();
                }
            }
        }
        return f11057g;
    }

    /* renamed from: a */
    private void m13715a(int i) {
        this.f11058a = i;
    }

    /* renamed from: a */
    private void m13716a(String str) {
        this.f11059b = str;
    }

    /* renamed from: a */
    private void m13717a(List<String> list) {
        this.f11062e = list;
    }

    /* renamed from: b */
    public static void m13718b() {
        if (C3054a.m13932a()) {
            C3030b m13742a = C3032d.m13742a();
            f11057g.f11059b = m13742a.f11065b;
            f11057g.f11058a = m13742a.f11064a;
            f11057g.f11062e = m13742a.m13741a();
            f11057g.f11060c = m13742a.f11066c;
            f11057g.f11061d = m13742a.f11067d;
        }
    }

    /* renamed from: b */
    private void m13719b(String str) {
        this.f11061d = str;
    }

    /* renamed from: c */
    public static void m13720c() {
        f11057g = null;
    }

    /* renamed from: c */
    private void m13721c(String str) {
        this.f11063f = str;
    }

    /* renamed from: d */
    private void m13722d(String str) {
        m13730d().add(str);
    }

    /* renamed from: e */
    private int m13723e() {
        return this.f11058a;
    }

    /* renamed from: e */
    private void m13724e(String str) {
        this.f11060c = str;
    }

    /* renamed from: f */
    private String m13725f() {
        return this.f11059b;
    }

    /* renamed from: g */
    private String m13726g() {
        return this.f11061d;
    }

    /* renamed from: h */
    private String m13727h() {
        return this.f11063f;
    }

    /* renamed from: i */
    private String m13728i() {
        return this.f11060c;
    }

    /* renamed from: j */
    private void m13729j() {
        String str;
        if (TextUtils.isEmpty(this.f11059b)) {
            m13718b();
            if (TextUtils.isEmpty(this.f11059b)) {
                throw new C3023d(C3023d.DBNAME_IS_EMPTY_OR_NOT_DEFINED);
            }
        }
        if (!this.f11059b.endsWith(InterfaceC3057b.a.f11199a)) {
            this.f11059b += InterfaceC3057b.a.f11199a;
        }
        if (this.f11058a <= 0) {
            throw new C3023d(C3023d.VERSION_OF_DATABASE_LESS_THAN_ONE);
        }
        int i = this.f11058a;
        String str2 = this.f11063f;
        SharedPreferences sharedPreferences = LitePalApplication.m13404a().getSharedPreferences("litepal_prefs", 0);
        if (TextUtils.isEmpty(str2)) {
            str = "litepal_version";
        } else {
            if (str2.endsWith(InterfaceC3057b.a.f11199a)) {
                str2 = str2.replace(InterfaceC3057b.a.f11199a, "");
            }
            str = "litepal_version_" + str2;
        }
        if (i < sharedPreferences.getInt(str, 0)) {
            throw new C3023d(C3023d.VERSION_IS_EARLIER_THAN_CURRENT);
        }
        if (TextUtils.isEmpty(this.f11060c)) {
            this.f11060c = InterfaceC3057b.a.f11201c;
            return;
        }
        if (this.f11060c.equals(InterfaceC3057b.a.f11200b) || this.f11060c.equals(InterfaceC3057b.a.f11201c) || this.f11060c.equals(InterfaceC3057b.a.f11202d)) {
            return;
        }
        throw new C3023d(this.f11060c + C3023d.CASES_VALUE_IS_INVALID);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
    
        if (r2.f11062e.isEmpty() != false) goto L5;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<java.lang.String> m13730d() {
        /*
            r2 = this;
            java.util.List<java.lang.String> r0 = r2.f11062e
            if (r0 != 0) goto L13
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r2.f11062e = r0
        Lb:
            java.util.List<java.lang.String> r0 = r2.f11062e
            java.lang.String r1 = "org.litepal.model.Table_Schema"
            r0.add(r1)
            goto L1c
        L13:
            java.util.List<java.lang.String> r0 = r2.f11062e
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L1c
            goto Lb
        L1c:
            java.util.List<java.lang.String> r0 = r2.f11062e
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.p241e.C3029a.m13730d():java.util.List");
    }
}
