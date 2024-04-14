package com.iflytek.voiceads.p181e;

import android.content.Context;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.download.C2276p;
import com.iflytek.voiceads.listener.IFLYVideoListener;
import com.iflytek.voiceads.p171b.C2212a;
import com.iflytek.voiceads.p173d.C2239a;
import com.iflytek.voiceads.p173d.C2240b;
import com.iflytek.voiceads.param.C2290a;
import com.iflytek.voiceads.request.C2298a;
import com.iflytek.voiceads.request.C2303f;
import com.iflytek.voiceads.utils.C2313g;
import com.iflytek.voiceads.videolib.C2336n;
import com.iflytek.voiceads.videolib.JZPlayer;
import com.iflytek.voiceads.videolib.JZVPStandard;

/* renamed from: com.iflytek.voiceads.e.a */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2278a {

    /* renamed from: a */
    public JZVPStandard f8543a;

    /* renamed from: c */
    private C2290a f8545c;

    /* renamed from: d */
    private Context f8546d;

    /* renamed from: e */
    private C2240b f8547e;

    /* renamed from: f */
    private C2239a f8548f;

    /* renamed from: g */
    private IFLYVideoListener f8549g;

    /* renamed from: i */
    private int f8551i;

    /* renamed from: j */
    private C2284g f8552j;

    /* renamed from: k */
    private String f8553k;

    /* renamed from: b */
    C2298a.a f8544b = new C2279b(this);

    /* renamed from: h */
    private HandlerC2283f f8550h = new HandlerC2283f();

    public C2278a(Context context, String str, int i, IFLYVideoListener iFLYVideoListener) {
        this.f8546d = context;
        this.f8549g = iFLYVideoListener;
        this.f8551i = i;
        this.f8545c = new C2290a(str);
        this.f8547e = new C2240b(this.f8546d.getApplicationContext());
        this.f8550h.m10013a(this.f8549g);
        this.f8543a = new JZVPStandard(context);
    }

    /* renamed from: a */
    public synchronized void m9992a() {
        try {
            try {
                C2303f.m10110a(this.f8546d.getApplicationContext(), this.f8545c, this.f8544b);
            } catch (Exception e) {
                C2313g.m10138b(SDKConstants.TAG, e.getMessage());
            }
        } catch (AdError e2) {
            this.f8550h.m10012a(1, e2);
            C2313g.m10136a(SDKConstants.TAG, e2.getErrorDescription());
        }
    }

    /* renamed from: a */
    public void m9993a(String str, Object obj) {
        this.f8545c.m10028a(str, obj);
    }

    /* renamed from: a */
    public void m9994a(boolean z) {
        if (this.f8543a == null) {
            return;
        }
        this.f8543a.m10191b(z);
    }

    /* renamed from: a */
    public void m9995a(Object... objArr) {
        if (this.f8543a == null) {
            return;
        }
        try {
            this.f8543a.m10182a(this.f8552j);
            this.f8543a.m10185a(this.f8545c);
            this.f8543a.m10184a(this.f8549g);
            this.f8543a.m10176a(this.f8551i);
            switch (this.f8551i) {
                case 0:
                    m9998c();
                    this.f8543a.m10187a(this.f8553k, "", 0, new Object[0]);
                    break;
                case 1:
                    C2336n.m10260a(this.f8546d, ((Integer) objArr[0]).intValue());
                    this.f8543a.m10187a(this.f8553k, "", 1, new Object[0]);
                    this.f8543a.f8703m.performClick();
                    break;
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "video show ad" + e.getMessage());
        }
    }

    /* renamed from: b */
    public void m9996b() {
        if (this.f8546d == null || this.f8548f == null) {
            return;
        }
        C2276p.m9980a(this.f8546d, this.f8548f.f8399j, new C2280c(this));
    }

    /* renamed from: b */
    public void m9997b(boolean z) {
        if (this.f8543a == null) {
            return;
        }
        this.f8543a.m10188a(z);
    }

    /* renamed from: c */
    public void m9998c() {
        try {
            new C2212a(this.f8546d.getApplicationContext(), this.f8552j.f8573h.optString("url")).m9786a(new C2281d(this));
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "loadCoverImg:" + e.getMessage());
        }
    }

    /* renamed from: c */
    public void m9999c(boolean z) {
        if (this.f8543a == null) {
            return;
        }
        this.f8543a.m10193c(z);
    }

    /* renamed from: d */
    public void m10000d() {
        if (this.f8543a == null) {
            return;
        }
        this.f8543a.f8703m.performClick();
    }

    /* renamed from: e */
    public void m10001e() {
        if (this.f8543a == null) {
            return;
        }
        this.f8543a.m10197f();
        this.f8543a.m10184a((IFLYVideoListener) null);
        this.f8543a = null;
    }

    /* renamed from: f */
    public void m10002f() {
        if (this.f8543a == null) {
            return;
        }
        this.f8543a.m10199h();
    }

    /* renamed from: g */
    public void m10003g() {
        if (this.f8543a == null) {
            return;
        }
        this.f8543a.m10196e();
    }

    /* renamed from: h */
    public void m10004h() {
        if (this.f8543a == null) {
            return;
        }
        this.f8543a.m10194d();
    }

    /* renamed from: i */
    public boolean m10005i() {
        return this.f8543a != null && this.f8543a.f8697g == 3;
    }

    /* renamed from: j */
    public boolean m10006j() {
        if (this.f8543a == null) {
            return false;
        }
        return JZPlayer.m10161b();
    }

    /* renamed from: k */
    public void m10007k() {
        if (this.f8543a == null) {
            return;
        }
        this.f8543a.m10200i();
    }

    /* renamed from: l */
    public void m10008l() {
        if (this.f8543a == null) {
            return;
        }
        this.f8543a.m10201j();
    }
}
