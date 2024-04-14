package mobi.oneway.export.p199f;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.util.Map;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.enums.PluginErrorType;
import mobi.oneway.export.p192a.C2641a;
import mobi.oneway.export.p193b.C2646a;
import mobi.oneway.export.p193b.p195b.AbstractC2651b;
import mobi.oneway.export.p193b.p195b.C2652c;
import mobi.oneway.export.p193b.p195b.C2654e;
import mobi.oneway.export.p193b.p195b.C2655f;
import mobi.oneway.export.p193b.p195b.C2656g;
import mobi.oneway.export.p193b.p195b.C2657h;
import mobi.oneway.export.p193b.p195b.C2658i;
import mobi.oneway.export.p193b.p195b.InterfaceC2653d;
import mobi.oneway.export.p198e.C2671c;
import mobi.oneway.export.p199f.p200a.AbstractC2674a;
import mobi.oneway.export.p199f.p200a.C2676c;
import mobi.oneway.export.p199f.p200a.C2677d;
import mobi.oneway.export.p199f.p200a.C2678e;
import mobi.oneway.export.p199f.p200a.C2679f;
import mobi.oneway.export.p199f.p200a.C2680g;
import mobi.oneway.export.p199f.p200a.C2681h;
import mobi.oneway.export.p201g.C2695g;
import mobi.oneway.export.p201g.C2701m;
import mobi.oneway.export.plugin.BaseAd;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: mobi.oneway.export.f.a */
/* loaded from: classes2.dex */
public class C2673a {

    /* renamed from: a */
    private int f10284a;

    /* renamed from: b */
    private BaseAd f10285b;

    /* renamed from: c */
    private Class f10286c;

    /* renamed from: d */
    private long f10287d = -1;

    /* renamed from: e */
    private long f10288e;

    /* renamed from: f */
    private String f10289f;

    /* renamed from: g */
    private ClassLoader f10290g;

    /* renamed from: h */
    private String f10291h;

    /* renamed from: i */
    private String f10292i;

    /* renamed from: j */
    private String f10293j;

    /* renamed from: k */
    private String f10294k;

    /* renamed from: l */
    private AbstractC2674a f10295l;

    public C2673a(C2687g c2687g, String str, String str2) {
        this.f10284a = c2687g.m12139a();
        this.f10286c = c2687g.m12145b();
        this.f10289f = c2687g.m12148d();
        this.f10290g = c2687g.m12147c();
        this.f10288e = c2687g.m12149e();
        this.f10293j = c2687g.m12150f();
        this.f10291h = str2;
        this.f10292i = str;
        if (TextUtils.isEmpty(str2) || str.equals(str2)) {
            this.f10294k = str;
        } else {
            this.f10294k = str + "-" + str2;
        }
        m12068a(this.f10293j, (Map<String, String>) null);
        m12084a(C2701m.m12240a());
    }

    /* renamed from: a */
    private AbstractC2674a m12066a(AdType adType, AbstractC2651b abstractC2651b) {
        AbstractC2674a c2680g;
        switch (adType) {
            case rewarded:
                c2680g = new C2680g(this);
                break;
            case interstitial:
                c2680g = new C2679f(this);
                break;
            case interstitialimage:
                c2680g = new C2678e(this);
                break;
            case interactive:
                c2680g = new C2677d(this);
                break;
            case feed:
                c2680g = new C2676c(this);
                break;
            case splash:
                c2680g = new C2681h(this);
                break;
        }
        this.f10295l = c2680g;
        if (this.f10295l != null) {
            this.f10295l.m12095a(abstractC2651b);
        }
        return this.f10295l;
    }

    /* renamed from: a */
    private void m12067a(Exception exc) {
        C2671c.m12064a(PluginErrorType.shell_error_reflectMethod, C2695g.m12191a((Throwable) exc));
    }

    /* renamed from: a */
    private void m12068a(String str, Map<String, String> map) {
        try {
            this.f10285b = (BaseAd) this.f10286c.getConstructor(String.class, Map.class).newInstance(str, map);
            this.f10285b.setAdConfig(m12070i());
        } catch (Exception e) {
            e.printStackTrace();
            m12067a(e);
        }
    }

    /* renamed from: h */
    private boolean m12069h() {
        if (!C2646a.m11919a().m11929a(this.f10292i, this.f10291h)) {
            C2646a.m11919a().m11927a(C2646a.a.TYPE_REQUEST, this.f10292i, this.f10291h);
            return false;
        }
        if (this.f10295l == null) {
            return true;
        }
        this.f10295l.m12099b(OnewaySdkError.LOAD_ERROR, C2641a.f10172n);
        return true;
    }

    /* renamed from: i */
    private String m12070i() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("cacheAd", C2646a.m11919a().m11930b());
            jSONObject.put("placements", new JSONArray(C2684d.m12121a()));
            return jSONObject.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    /* renamed from: a */
    public int m12071a() {
        return this.f10284a;
    }

    /* renamed from: a */
    public void m12072a(Activity activity, ViewGroup viewGroup, C2658i c2658i, long j) {
        if (this.f10285b == null) {
            return;
        }
        C2681h c2681h = (C2681h) m12066a(AdType.splash, c2658i);
        if (m12069h()) {
            return;
        }
        this.f10285b.showSplashAd(activity, this.f10294k, viewGroup, c2681h, j);
    }

    /* renamed from: a */
    public void m12073a(Activity activity, C2654e c2654e) {
        if (this.f10285b == null) {
            return;
        }
        this.f10285b.initInteractiveAd(activity, this.f10294k, (C2677d) m12066a(AdType.interactive, c2654e));
    }

    /* renamed from: a */
    public void m12074a(Activity activity, C2655f c2655f) {
        if (this.f10285b == null) {
            return;
        }
        this.f10285b.initInterstitialAd(activity, this.f10294k, (C2679f) m12066a(AdType.interstitial, c2655f));
    }

    /* renamed from: a */
    public void m12075a(Activity activity, C2656g c2656g) {
        if (this.f10285b == null) {
            return;
        }
        this.f10285b.initInterstitialImageAd(activity, this.f10294k, (C2678e) m12066a(AdType.interstitialimage, c2656g));
    }

    /* renamed from: a */
    public void m12076a(Activity activity, C2657h c2657h) {
        if (this.f10285b == null) {
            return;
        }
        this.f10285b.initRewardAd(activity, this.f10294k, (C2680g) m12066a(AdType.rewarded, c2657h));
    }

    /* renamed from: a */
    public void m12077a(Context context, C2652c c2652c) {
        if (this.f10285b == null) {
            return;
        }
        C2676c c2676c = (C2676c) m12066a(AdType.feed, c2652c);
        if (m12069h()) {
            return;
        }
        this.f10285b.loadFeedAd(context, this.f10294k, c2676c);
    }

    /* renamed from: a */
    public void m12078a(C2654e c2654e) {
        if (this.f10285b == null) {
            return;
        }
        this.f10285b.setInteractiveAdListener(this.f10294k, (C2677d) m12066a(AdType.interactive, c2654e));
    }

    /* renamed from: a */
    public void m12079a(C2655f c2655f) {
        if (this.f10285b == null) {
            return;
        }
        this.f10285b.setInterstitialAdListener(this.f10294k, (C2679f) m12066a(AdType.interstitial, c2655f));
    }

    /* renamed from: a */
    public void m12080a(C2656g c2656g) {
        if (this.f10285b == null) {
            return;
        }
        this.f10285b.setInterstitialImageAdListener(this.f10294k, (C2678e) m12066a(AdType.interstitialimage, c2656g));
    }

    /* renamed from: a */
    public void m12081a(C2657h c2657h) {
        if (this.f10285b == null) {
            return;
        }
        this.f10285b.setRewardAdListener(this.f10294k, (C2680g) m12066a(AdType.rewarded, c2657h));
    }

    /* renamed from: a */
    public void m12082a(AdType adType) {
        if (this.f10285b == null || m12069h()) {
            return;
        }
        switch (adType) {
            case rewarded:
                this.f10285b.loadRewardAd(this.f10294k);
                return;
            case interstitial:
                this.f10285b.loadInterstitialAd(this.f10294k);
                return;
            case interstitialimage:
                this.f10285b.loadInterstitialImageAd(this.f10294k);
                return;
            case interactive:
                this.f10285b.loadInteractiveAd(this.f10294k);
                return;
            default:
                return;
        }
    }

    /* renamed from: a */
    public void m12083a(AdType adType, Activity activity, String str) {
        if (this.f10285b == null) {
            return;
        }
        switch (adType) {
            case rewarded:
                this.f10285b.showRewardAd(activity, this.f10294k, str);
                return;
            case interstitial:
                this.f10285b.showInterstitialAd(activity, this.f10294k, str);
                return;
            case interstitialimage:
                this.f10285b.showInterstitialImageAd(activity, this.f10294k, str);
                return;
            case interactive:
                this.f10285b.showInteractiveAd(activity, this.f10294k, str);
                return;
            default:
                return;
        }
    }

    /* renamed from: a */
    public void m12084a(boolean z) {
        if (this.f10285b == null) {
            return;
        }
        this.f10285b.setDebugMode(z);
    }

    /* renamed from: b */
    public long m12085b() {
        if (this.f10287d != -1 || this.f10285b == null) {
            return 0L;
        }
        return this.f10285b.getCrc();
    }

    /* renamed from: b */
    public boolean m12086b(AdType adType) {
        if (this.f10285b == null) {
            return false;
        }
        switch (adType) {
            case rewarded:
                return this.f10285b.isRewardAdReady(this.f10294k);
            case interstitial:
                return this.f10285b.isInterstitialAdReady(this.f10294k);
            case interstitialimage:
                return this.f10285b.isInterstitialImageAdReady(this.f10294k);
            case interactive:
                return this.f10285b.isInteractiveAdReady(this.f10294k);
            default:
                return false;
        }
    }

    /* renamed from: c */
    public long m12087c() {
        return this.f10288e;
    }

    /* renamed from: c */
    public void m12088c(AdType adType) {
        if (this.f10285b == null) {
            return;
        }
        this.f10285b.destoryAd(adType, this.f10294k);
        if (this.f10295l != null) {
            this.f10295l.m12095a((InterfaceC2653d) null);
            this.f10295l = null;
        }
    }

    /* renamed from: d */
    public String m12089d() {
        return this.f10289f;
    }

    /* renamed from: d */
    public boolean m12090d(AdType adType) {
        if (adType == AdType.splash) {
            return true;
        }
        String str = "";
        switch (adType) {
            case rewarded:
                str = "hasRewardAd";
                break;
            case interstitial:
                str = "hasInterstitialAd";
                break;
            case interstitialimage:
                str = "hasInterstitialImageAd";
                break;
            case interactive:
                str = "hasInteractiveAd";
                break;
            case feed:
                str = "hasFeedAd";
                break;
        }
        try {
            if (this.f10285b != null) {
                Field declaredField = this.f10285b.getClass().getSuperclass().getDeclaredField(str);
                declaredField.setAccessible(true);
                return ((Boolean) declaredField.get(this.f10285b)).booleanValue();
            }
        } catch (Exception e) {
            e.printStackTrace();
            m12067a(e);
        }
        return false;
    }

    /* renamed from: e */
    public ClassLoader m12091e() {
        return this.f10290g;
    }

    /* renamed from: f */
    public String m12092f() {
        return this.f10291h;
    }

    /* renamed from: g */
    public String m12093g() {
        return this.f10292i;
    }
}
