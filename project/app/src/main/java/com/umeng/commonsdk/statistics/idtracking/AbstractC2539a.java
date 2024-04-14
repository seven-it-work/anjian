package com.umeng.commonsdk.statistics.idtracking;

import android.support.v4.os.EnvironmentCompat;
import com.umeng.commonsdk.statistics.proto.C2571a;
import com.umeng.commonsdk.statistics.proto.C2572b;
import com.umeng.commonsdk.statistics.proto.C2573c;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.a */
/* loaded from: classes.dex */
public abstract class AbstractC2539a {

    /* renamed from: a */
    private final int f9790a = 10;

    /* renamed from: b */
    private final int f9791b = 20;

    /* renamed from: c */
    private final String f9792c;

    /* renamed from: d */
    private List<C2571a> f9793d;

    /* renamed from: e */
    private C2572b f9794e;

    public AbstractC2539a(String str) {
        this.f9792c = str;
    }

    /* renamed from: g */
    private boolean m11365g() {
        C2572b c2572b = this.f9794e;
        String m11496b = c2572b == null ? null : c2572b.m11496b();
        int m11504h = c2572b == null ? 0 : c2572b.m11504h();
        String m11366a = m11366a(mo11375f());
        if (m11366a == null || m11366a.equals(m11496b)) {
            return false;
        }
        if (c2572b == null) {
            c2572b = new C2572b();
        }
        c2572b.m11493a(m11366a);
        c2572b.m11492a(System.currentTimeMillis());
        c2572b.m11491a(m11504h + 1);
        C2571a c2571a = new C2571a();
        c2571a.m11455a(this.f9792c);
        c2571a.m11460c(m11366a);
        c2571a.m11457b(m11496b);
        c2571a.m11454a(c2572b.m11501e());
        if (this.f9793d == null) {
            this.f9793d = new ArrayList(2);
        }
        this.f9793d.add(c2571a);
        if (this.f9793d.size() > 10) {
            this.f9793d.remove(0);
        }
        this.f9794e = c2572b;
        return true;
    }

    /* renamed from: a */
    public String m11366a(String str) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (trim.length() == 0 || "0".equals(trim) || EnvironmentCompat.MEDIA_UNKNOWN.equals(trim.toLowerCase(Locale.US))) {
            return null;
        }
        return trim;
    }

    /* renamed from: a */
    public void m11367a(C2572b c2572b) {
        this.f9794e = c2572b;
    }

    /* renamed from: a */
    public void m11368a(C2573c c2573c) {
        this.f9794e = c2573c.m11533c().get(this.f9792c);
        List<C2571a> m11539h = c2573c.m11539h();
        if (m11539h == null || m11539h.size() <= 0) {
            return;
        }
        if (this.f9793d == null) {
            this.f9793d = new ArrayList();
        }
        for (C2571a c2571a : m11539h) {
            if (this.f9792c.equals(c2571a.f9887a)) {
                this.f9793d.add(c2571a);
            }
        }
    }

    /* renamed from: a */
    public void m11369a(List<C2571a> list) {
        this.f9793d = list;
    }

    /* renamed from: a */
    public boolean m11370a() {
        return m11365g();
    }

    /* renamed from: b */
    public String m11371b() {
        return this.f9792c;
    }

    /* renamed from: c */
    public boolean m11372c() {
        return this.f9794e == null || this.f9794e.m11504h() <= 20;
    }

    /* renamed from: d */
    public C2572b m11373d() {
        return this.f9794e;
    }

    /* renamed from: e */
    public List<C2571a> m11374e() {
        return this.f9793d;
    }

    /* renamed from: f */
    public abstract String mo11375f();
}
