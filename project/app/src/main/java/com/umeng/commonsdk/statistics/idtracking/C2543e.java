package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.proguard.C2459ad;
import com.umeng.commonsdk.proguard.C2465aj;
import com.umeng.commonsdk.statistics.C2530b;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.proto.C2571a;
import com.umeng.commonsdk.statistics.proto.C2573c;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.e */
/* loaded from: classes.dex */
public class C2543e {

    /* renamed from: a */
    public static final long f9801a = 86400000;

    /* renamed from: b */
    public static C2543e f9802b;

    /* renamed from: j */
    private static Object f9803j = new Object();

    /* renamed from: d */
    private File f9805d;

    /* renamed from: f */
    private long f9807f;

    /* renamed from: i */
    private a f9810i;

    /* renamed from: c */
    private final String f9804c = "umeng_it.cache";

    /* renamed from: e */
    private C2573c f9806e = null;

    /* renamed from: h */
    private Set<AbstractC2539a> f9809h = new HashSet();

    /* renamed from: g */
    private long f9808g = 86400000;

    /* renamed from: com.umeng.commonsdk.statistics.idtracking.e$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        private Context f9811a;

        /* renamed from: b */
        private Set<String> f9812b = new HashSet();

        public a(Context context) {
            this.f9811a = context;
        }

        /* renamed from: a */
        public synchronized void m11388a() {
            if (!this.f9812b.isEmpty()) {
                StringBuilder sb = new StringBuilder();
                Iterator<String> it = this.f9812b.iterator();
                while (it.hasNext()) {
                    sb.append(it.next());
                    sb.append(',');
                }
                sb.deleteCharAt(sb.length() - 1);
                PreferenceWrapper.getDefault(this.f9811a).edit().putString("invld_id", sb.toString()).commit();
            }
        }

        /* renamed from: a */
        public synchronized boolean m11389a(String str) {
            return !this.f9812b.contains(str);
        }

        /* renamed from: b */
        public synchronized void m11390b() {
            String[] split;
            String string = PreferenceWrapper.getDefault(this.f9811a).getString("invld_id", null);
            if (!TextUtils.isEmpty(string) && (split = string.split(",")) != null) {
                for (String str : split) {
                    if (!TextUtils.isEmpty(str)) {
                        this.f9812b.add(str);
                    }
                }
            }
        }

        /* renamed from: b */
        public synchronized void m11391b(String str) {
            this.f9812b.add(str);
        }

        /* renamed from: c */
        public void m11392c(String str) {
            this.f9812b.remove(str);
        }
    }

    C2543e(Context context) {
        this.f9810i = null;
        this.f9805d = new File(context.getFilesDir(), "umeng_it.cache");
        this.f9810i = new a(context);
        this.f9810i.m11390b();
    }

    /* renamed from: a */
    public static synchronized C2543e m11376a(Context context) {
        C2543e c2543e;
        synchronized (C2543e.class) {
            if (f9802b == null) {
                C2543e c2543e2 = new C2543e(context);
                f9802b = c2543e2;
                c2543e2.m11378a(new C2544f(context));
                f9802b.m11378a(new C2540b(context));
                f9802b.m11378a(new C2557s(context));
                f9802b.m11378a(new C2542d(context));
                f9802b.m11378a(new C2541c(context));
                f9802b.m11378a(new C2546h(context));
                f9802b.m11378a(new C2549k());
                f9802b.m11378a(new C2558t(context));
                C2556r c2556r = new C2556r(context);
                if (!TextUtils.isEmpty(c2556r.mo11375f())) {
                    f9802b.m11378a(c2556r);
                }
                C2548j c2548j = new C2548j(context);
                if (c2548j.m11415g()) {
                    f9802b.m11378a(c2548j);
                    f9802b.m11378a(new C2547i(context));
                    c2548j.m11417i();
                }
                f9802b.m11378a(new C2555q(context));
                f9802b.m11378a(new C2552n(context));
                f9802b.m11378a(new C2554p(context));
                f9802b.m11378a(new C2553o(context));
                f9802b.m11378a(new C2551m(context));
                f9802b.m11378a(new C2550l(context));
                f9802b.m11386e();
            }
            c2543e = f9802b;
        }
        return c2543e;
    }

    /* renamed from: a */
    private void m11377a(C2573c c2573c) {
        byte[] m10741a;
        synchronized (f9803j) {
            if (c2573c != null) {
                try {
                    synchronized (this) {
                        m10741a = new C2465aj().m10741a(c2573c);
                    }
                    if (m10741a != null) {
                        HelperUtils.writeFile(this.f9805d, m10741a);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: a */
    private boolean m11378a(AbstractC2539a abstractC2539a) {
        if (this.f9810i.m11389a(abstractC2539a.m11371b())) {
            return this.f9809h.add(abstractC2539a);
        }
        if (!C2530b.f9733f) {
            return false;
        }
        MLog.m11287w("invalid domain: " + abstractC2539a.m11371b());
        return false;
    }

    /* renamed from: g */
    private synchronized void m11379g() {
        C2573c c2573c = new C2573c();
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (AbstractC2539a abstractC2539a : this.f9809h) {
            if (abstractC2539a.m11372c()) {
                if (abstractC2539a.m11373d() != null) {
                    hashMap.put(abstractC2539a.m11371b(), abstractC2539a.m11373d());
                }
                if (abstractC2539a.m11374e() != null && !abstractC2539a.m11374e().isEmpty()) {
                    arrayList.addAll(abstractC2539a.m11374e());
                }
            }
        }
        c2573c.m11526a(arrayList);
        c2573c.m11527a(hashMap);
        synchronized (this) {
            this.f9806e = c2573c;
        }
    }

    /* renamed from: h */
    private C2573c m11380h() {
        Throwable th;
        FileInputStream fileInputStream;
        synchronized (f9803j) {
            if (!this.f9805d.exists()) {
                return null;
            }
            try {
                fileInputStream = new FileInputStream(this.f9805d);
            } catch (Exception e) {
                e = e;
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = null;
                HelperUtils.safeClose(fileInputStream);
                throw th;
            }
            try {
                try {
                    byte[] readStreamToByteArray = HelperUtils.readStreamToByteArray(fileInputStream);
                    C2573c c2573c = new C2573c();
                    new C2459ad().m10727a(c2573c, readStreamToByteArray);
                    HelperUtils.safeClose(fileInputStream);
                    return c2573c;
                } catch (Throwable th3) {
                    th = th3;
                    HelperUtils.safeClose(fileInputStream);
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                HelperUtils.safeClose(fileInputStream);
                return null;
            }
        }
    }

    /* renamed from: a */
    public synchronized void m11381a() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f9807f >= this.f9808g) {
            boolean z = false;
            for (AbstractC2539a abstractC2539a : this.f9809h) {
                if (abstractC2539a.m11372c() && abstractC2539a.m11370a()) {
                    z = true;
                    if (!abstractC2539a.m11372c()) {
                        this.f9810i.m11391b(abstractC2539a.m11371b());
                    }
                }
            }
            if (z) {
                m11379g();
                this.f9810i.m11388a();
                m11387f();
            }
            this.f9807f = currentTimeMillis;
        }
    }

    /* renamed from: a */
    public void m11382a(long j) {
        this.f9808g = j;
    }

    /* renamed from: b */
    public synchronized C2573c m11383b() {
        return this.f9806e;
    }

    /* renamed from: c */
    public String m11384c() {
        return null;
    }

    /* renamed from: d */
    public synchronized void m11385d() {
        boolean z = false;
        for (AbstractC2539a abstractC2539a : this.f9809h) {
            if (abstractC2539a.m11372c() && abstractC2539a.m11374e() != null && !abstractC2539a.m11374e().isEmpty()) {
                abstractC2539a.m11369a((List<C2571a>) null);
                z = true;
            }
        }
        if (z) {
            this.f9806e.m11532b(false);
            m11387f();
        }
    }

    /* renamed from: e */
    public synchronized void m11386e() {
        C2573c m11380h = m11380h();
        if (m11380h == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.f9809h.size());
        synchronized (this) {
            this.f9806e = m11380h;
            for (AbstractC2539a abstractC2539a : this.f9809h) {
                abstractC2539a.m11368a(this.f9806e);
                if (!abstractC2539a.m11372c()) {
                    arrayList.add(abstractC2539a);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.f9809h.remove((AbstractC2539a) it.next());
            }
            m11379g();
        }
    }

    /* renamed from: f */
    public synchronized void m11387f() {
        if (this.f9806e != null) {
            m11377a(this.f9806e);
        }
    }
}
