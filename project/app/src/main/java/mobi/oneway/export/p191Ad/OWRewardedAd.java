package mobi.oneway.export.p191Ad;

import android.app.Activity;
import mobi.oneway.export.AdListener.OWRewardedAdListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.p193b.p194a.C2647a;
import mobi.oneway.export.p198e.C2670b;

/* loaded from: classes.dex */
public class OWRewardedAd {

    /* renamed from: a */
    private C2647a f10134a;

    /* renamed from: b */
    private final AdType f10135b = AdType.rewarded;

    public OWRewardedAd(final Activity activity, final String str, final OWRewardedAdListener oWRewardedAdListener) {
        OnewaySdk.checkSdkConfigured();
        C2670b.m12055a().m12058a(new Runnable() { // from class: mobi.oneway.export.Ad.OWRewardedAd.1
            @Override // java.lang.Runnable
            public void run() {
                OWRewardedAd.this.f10134a = new C2647a(OWRewardedAd.this.f10135b, str);
                OWRewardedAd.this.f10134a.m11935a(activity, oWRewardedAdListener);
            }
        });
    }

    public void destory() {
        if (this.f10134a != null) {
            this.f10134a.m11939c();
            this.f10134a = null;
        }
    }

    public boolean isReady() {
        if (this.f10134a == null) {
            return false;
        }
        return this.f10134a.m11938b();
    }

    public void loadAd() {
        C2670b.m12055a().m12058a(new Runnable() { // from class: mobi.oneway.export.Ad.OWRewardedAd.2
            @Override // java.lang.Runnable
            public void run() {
                if (OWRewardedAd.this.f10134a != null) {
                    OWRewardedAd.this.f10134a.m11934a();
                }
            }
        });
    }

    public void setListener(final OWRewardedAdListener oWRewardedAdListener) {
        C2670b.m12055a().m12058a(new Runnable() { // from class: mobi.oneway.export.Ad.OWRewardedAd.3
            @Override // java.lang.Runnable
            public void run() {
                if (OWRewardedAd.this.f10134a != null) {
                    OWRewardedAd.this.f10134a.m11937a(oWRewardedAdListener);
                }
            }
        });
    }

    public void show(Activity activity) {
        show(activity, null);
    }

    public void show(Activity activity, String str) {
        if (this.f10134a != null) {
            this.f10134a.m11936a(activity, str);
        }
    }
}
