package mobi.oneway.export.p191Ad;

import android.app.Activity;
import mobi.oneway.export.AdListener.OWInterstitialAdListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.p193b.p194a.C2647a;
import mobi.oneway.export.p198e.C2670b;

/* loaded from: classes.dex */
public class OWInterstitialAd {

    /* renamed from: a */
    private C2647a f10116a;

    /* renamed from: b */
    private final AdType f10117b = AdType.interstitial;

    public OWInterstitialAd(final Activity activity, final String str, final OWInterstitialAdListener oWInterstitialAdListener) {
        OnewaySdk.checkSdkConfigured();
        C2670b.m12055a().m12058a(new Runnable() { // from class: mobi.oneway.export.Ad.OWInterstitialAd.1
            @Override // java.lang.Runnable
            public void run() {
                OWInterstitialAd.this.f10116a = new C2647a(OWInterstitialAd.this.f10117b, str);
                OWInterstitialAd.this.f10116a.m11935a(activity, oWInterstitialAdListener);
            }
        });
    }

    public void destory() {
        if (this.f10116a != null) {
            this.f10116a.m11939c();
            this.f10116a = null;
        }
    }

    public boolean isReady() {
        if (this.f10116a == null) {
            return false;
        }
        return this.f10116a.m11938b();
    }

    public void loadAd() {
        C2670b.m12055a().m12058a(new Runnable() { // from class: mobi.oneway.export.Ad.OWInterstitialAd.2
            @Override // java.lang.Runnable
            public void run() {
                if (OWInterstitialAd.this.f10116a != null) {
                    OWInterstitialAd.this.f10116a.m11934a();
                }
            }
        });
    }

    public void setListener(final OWInterstitialAdListener oWInterstitialAdListener) {
        C2670b.m12055a().m12058a(new Runnable() { // from class: mobi.oneway.export.Ad.OWInterstitialAd.3
            @Override // java.lang.Runnable
            public void run() {
                if (OWInterstitialAd.this.f10116a != null) {
                    OWInterstitialAd.this.f10116a.m11937a(oWInterstitialAdListener);
                }
            }
        });
    }

    public void show(Activity activity) {
        show(activity, null);
    }

    public void show(Activity activity, String str) {
        if (this.f10116a != null) {
            this.f10116a.m11936a(activity, str);
        }
    }
}
