package com.iflytek.voiceads.param;

import com.iflytek.voiceads.config.AdKeys;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.utils.C2313g;

/* renamed from: com.iflytek.voiceads.param.a */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2290a {

    /* renamed from: a */
    private String f8612a;

    /* renamed from: b */
    private C2295f f8613b = new C2295f();

    public C2290a(String str) {
        this.f8612a = str;
        m10023d();
    }

    /* renamed from: d */
    private void m10023d() {
        m10028a(AdKeys.DEBUG_MODE, false);
        m10028a(AdKeys.BACK_KEY_ENABLE, true);
        m10028a(AdKeys.DOWNLOAD_ALERT, false);
        m10028a(AdKeys.HTTP_REQUEST_TIMEOUT, 15000);
        m10028a(AdKeys.LOCK_SCREEN_AD, false);
        m10028a(AdKeys.BANNER_RECYCLE, false);
        m10028a(AdKeys.BANNER_INTERVAL, 30);
        m10028a(AdKeys.REQUEST_ID, m10024e());
        m10028a(AdKeys.CURRENCY, "CNY");
        m10036f(this.f8612a);
    }

    /* renamed from: e */
    private String m10024e() {
        return "AD_" + System.currentTimeMillis();
    }

    /* renamed from: a */
    public int m10025a() {
        return ((Integer) this.f8613b.m10088a("adw")).intValue();
    }

    /* renamed from: a */
    public Object m10026a(String str) {
        return this.f8613b.m10088a(str);
    }

    /* renamed from: a */
    public void m10027a(int i) {
        this.f8613b.m10089a("adw", Integer.valueOf(i));
    }

    /* renamed from: a */
    public void m10028a(String str, Object obj) {
        this.f8613b.m10089a(str, obj);
    }

    /* renamed from: b */
    public int m10029b() {
        return ((Integer) this.f8613b.m10088a("adh")).intValue();
    }

    /* renamed from: b */
    public String m10030b(String str) {
        try {
            return (String) this.f8613b.m10088a(str);
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "get str param :" + e.getMessage());
            return "";
        }
    }

    /* renamed from: b */
    public void m10031b(int i) {
        this.f8613b.m10089a("adh", Integer.valueOf(i));
    }

    /* renamed from: c */
    public String m10032c() {
        return (String) this.f8613b.m10088a("adunit_id");
    }

    /* renamed from: c */
    public boolean m10033c(String str) {
        try {
            return ((Boolean) this.f8613b.m10088a(str)).booleanValue();
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "get boolean param :" + e.getMessage());
            return false;
        }
    }

    /* renamed from: d */
    public int m10034d(String str) {
        try {
            return ((Integer) this.f8613b.m10088a(str)).intValue();
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "get int param :" + e.getMessage());
            return 0;
        }
    }

    /* renamed from: e */
    public double m10035e(String str) {
        try {
            if (this.f8613b.m10088a(str) != null) {
                return ((Double) this.f8613b.m10088a(str)).doubleValue();
            }
            return 0.0d;
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "get double param :" + e.getMessage());
            return 0.0d;
        }
    }

    /* renamed from: f */
    public void m10036f(String str) {
        this.f8613b.m10089a("adunit_id", str);
    }
}
