package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.C2450a;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.C2459ad;
import com.umeng.commonsdk.proguard.C2474as;
import com.umeng.commonsdk.proguard.C2501e;
import com.umeng.commonsdk.proguard.C2513q;
import com.umeng.commonsdk.proguard.C2518v;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.ReportPolicy;
import com.umeng.commonsdk.statistics.idtracking.C2543e;
import com.umeng.commonsdk.statistics.idtracking.C2545g;
import com.umeng.commonsdk.statistics.internal.C2563c;
import com.umeng.commonsdk.statistics.internal.InterfaceC2564d;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.noise.ABTest;
import com.umeng.commonsdk.statistics.noise.Defcon;
import com.umeng.commonsdk.statistics.noise.ImLatent;
import com.umeng.commonsdk.statistics.proto.Response;

/* renamed from: com.umeng.commonsdk.statistics.d */
/* loaded from: classes.dex */
public class C2537d {

    /* renamed from: b */
    private static final int f9768b = 1;

    /* renamed from: c */
    private static final int f9769c = 2;

    /* renamed from: d */
    private static final int f9770d = 3;

    /* renamed from: p */
    private static final String f9771p = "thtstart";

    /* renamed from: q */
    private static final String f9772q = "gkvc";

    /* renamed from: r */
    private static final String f9773r = "ekvc";

    /* renamed from: a */
    String f9774a;

    /* renamed from: f */
    private C2563c f9776f;

    /* renamed from: g */
    private C2545g f9777g;

    /* renamed from: h */
    private C2543e f9778h;

    /* renamed from: i */
    private C2545g.a f9779i;

    /* renamed from: j */
    private ABTest f9780j;

    /* renamed from: k */
    private ImLatent f9781k;

    /* renamed from: l */
    private Defcon f9782l;

    /* renamed from: m */
    private long f9783m;

    /* renamed from: n */
    private int f9784n;

    /* renamed from: o */
    private int f9785o;

    /* renamed from: s */
    private Context f9786s;

    /* renamed from: e */
    private final int f9775e = 1;

    /* renamed from: t */
    private ReportPolicy.ReportStrategy f9787t = null;

    public C2537d(Context context) {
        this.f9779i = null;
        this.f9780j = null;
        this.f9781k = null;
        this.f9782l = null;
        this.f9783m = 0L;
        this.f9784n = 0;
        this.f9785o = 0;
        this.f9774a = null;
        this.f9786s = context;
        this.f9779i = C2545g.m11393a(this.f9786s).m11403b();
        this.f9780j = ABTest.getService(this.f9786s);
        this.f9782l = Defcon.getService(this.f9786s);
        this.f9781k = ImLatent.getService(this.f9786s, StatTracer.getInstance(this.f9786s));
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(this.f9786s);
        this.f9783m = sharedPreferences.getLong(f9771p, 0L);
        this.f9784n = sharedPreferences.getInt(f9772q, 0);
        this.f9785o = sharedPreferences.getInt(f9773r, 0);
        this.f9774a = UMEnvelopeBuild.imprintProperty(this.f9786s, "track_list", null);
        this.f9777g = C2545g.m11393a(this.f9786s);
        this.f9777g.m11401a(new InterfaceC2564d() { // from class: com.umeng.commonsdk.statistics.d.1
            @Override // com.umeng.commonsdk.statistics.internal.InterfaceC2564d
            public void onImprintChanged(C2545g.a aVar) {
                C2537d.this.f9780j.onImprintChanged(aVar);
                C2537d.this.f9782l.onImprintChanged(aVar);
                C2537d.this.f9781k.onImprintChanged(aVar);
                C2537d.this.f9774a = UMEnvelopeBuild.imprintProperty(C2537d.this.f9786s, "track_list", null);
                try {
                    C2513q c2513q = new C2513q(C2537d.this.f9786s);
                    String m10641a = C2450a.m10641a(C2537d.this.f9786s, C2518v.f9558d, (String) null);
                    String m10997g = c2513q.m10997g();
                    if (TextUtils.isEmpty(m10641a)) {
                        return;
                    }
                    if (TextUtils.isEmpty(m10997g) || !m10641a.equals(m10997g)) {
                        c2513q.m10991a(m10641a);
                    }
                } catch (Throwable unused) {
                }
            }
        });
        this.f9778h = C2543e.m11376a(this.f9786s);
        this.f9776f = new C2563c(this.f9786s);
        this.f9776f.m11433a(StatTracer.getInstance(this.f9786s));
    }

    /* renamed from: a */
    private int m11357a(byte[] bArr) {
        Response response = new Response();
        try {
            new C2459ad(new C2474as.a()).m10727a(response, bArr);
            if (response.resp_code == 1) {
                this.f9777g.m11404b(response.getImprint());
                this.f9777g.m11405c();
            }
            MLog.m11275i("send log:" + response.getMsg());
        } catch (Throwable th) {
            C2501e.m10904a(this.f9786s, th);
        }
        return response.resp_code == 1 ? 2 : 3;
    }

    /* renamed from: a */
    public boolean m11362a() {
        if (!this.f9782l.isOpen()) {
            if (!((this.f9787t instanceof ReportPolicy.LatentPolicy) && this.f9787t.isValid()) && this.f9781k.shouldStartLatency()) {
                this.f9787t = new ReportPolicy.LatentPolicy((int) this.f9781k.getDelayTime());
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0039. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004f A[RETURN] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean m11363a(java.io.File r5) {
        /*
            r4 = this;
            r0 = 0
            if (r5 != 0) goto L4
            return r0
        L4:
            java.lang.String r1 = r5.getPath()     // Catch: java.lang.Throwable -> L50
            byte[] r1 = com.umeng.commonsdk.framework.C2451b.m10651a(r1)     // Catch: java.lang.Throwable -> L50
            if (r1 != 0) goto Lf
            return r0
        Lf:
            android.content.Context r2 = r4.f9786s     // Catch: java.lang.Throwable -> L50
            com.umeng.commonsdk.statistics.internal.a r2 = com.umeng.commonsdk.statistics.internal.C2561a.m11423a(r2)     // Catch: java.lang.Throwable -> L50
            java.lang.String r3 = r5.getName()     // Catch: java.lang.Throwable -> L50
            r2.m11429b(r3)     // Catch: java.lang.Throwable -> L50
            android.content.Context r2 = r4.f9786s     // Catch: java.lang.Throwable -> L50
            com.umeng.commonsdk.statistics.internal.a r2 = com.umeng.commonsdk.statistics.internal.C2561a.m11423a(r2)     // Catch: java.lang.Throwable -> L50
            java.lang.String r5 = r5.getName()     // Catch: java.lang.Throwable -> L50
            boolean r5 = r2.m11427a(r5)     // Catch: java.lang.Throwable -> L50
            com.umeng.commonsdk.statistics.internal.c r2 = r4.f9776f     // Catch: java.lang.Throwable -> L50
            byte[] r5 = r2.m11435a(r1, r5)     // Catch: java.lang.Throwable -> L50
            r1 = 1
            if (r5 != 0) goto L35
            r5 = 1
            goto L39
        L35:
            int r5 = r4.m11357a(r5)     // Catch: java.lang.Throwable -> L50
        L39:
            switch(r5) {
                case 2: goto L3d;
                case 3: goto L42;
                default: goto L3c;
            }     // Catch: java.lang.Throwable -> L50
        L3c:
            goto L4b
        L3d:
            com.umeng.commonsdk.statistics.idtracking.e r2 = r4.f9778h     // Catch: java.lang.Throwable -> L50
            r2.m11385d()     // Catch: java.lang.Throwable -> L50
        L42:
            android.content.Context r2 = r4.f9786s     // Catch: java.lang.Throwable -> L50
            com.umeng.commonsdk.statistics.internal.StatTracer r2 = com.umeng.commonsdk.statistics.internal.StatTracer.getInstance(r2)     // Catch: java.lang.Throwable -> L50
            r2.saveSate()     // Catch: java.lang.Throwable -> L50
        L4b:
            r2 = 2
            if (r5 != r2) goto L4f
            return r1
        L4f:
            return r0
        L50:
            r5 = move-exception
            android.content.Context r1 = r4.f9786s
            com.umeng.commonsdk.proguard.C2501e.m10904a(r1, r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.C2537d.m11363a(java.io.File):boolean");
    }

    /* renamed from: b */
    public int m11364b() {
        this.f9781k.getDelayTime();
        return (int) (System.currentTimeMillis() - StatTracer.getInstance(this.f9786s).getLastReqTime());
    }
}
