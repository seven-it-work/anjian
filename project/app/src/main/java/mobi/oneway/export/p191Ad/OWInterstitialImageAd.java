package mobi.oneway.export.p191Ad;

import android.app.Activity;
import mobi.oneway.export.AdListener.OWInterstitialImageAdListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.p193b.p194a.C2647a;
import mobi.oneway.export.p198e.C2670b;

/* loaded from: classes.dex */
public class OWInterstitialImageAd {

    /* renamed from: a */
    private C2647a f10125a;

    /* renamed from: b */
    private final AdType f10126b = AdType.interstitialimage;

    public OWInterstitialImageAd(final Activity activity, final String str, final OWInterstitialImageAdListener oWInterstitialImageAdListener) {
        OnewaySdk.checkSdkConfigured();
        C2670b.m12055a().m12058a(new Runnable() { // from class: mobi.oneway.export.Ad.OWInterstitialImageAd.1
            @Override // java.lang.Runnable
            public void run() {
                OWInterstitialImageAd.this.f10125a = new C2647a(OWInterstitialImageAd.this.f10126b, str);
                OWInterstitialImageAd.this.f10125a.m11935a(activity, oWInterstitialImageAdListener);
            }
        });
    }

    public void destory() {
        if (this.f10125a != null) {
            this.f10125a.m11939c();
            this.f10125a = null;
        }
    }

    public boolean isReady() {
        if (this.f10125a == null) {
            return false;
        }
        return this.f10125a.m11938b();
    }

    public void loadAd() {
        C2670b.m12055a().m12058a(new Runnable() { // from class: mobi.oneway.export.Ad.OWInterstitialImageAd.2
            @Override // java.lang.Runnable
            public void run() {
                if (OWInterstitialImageAd.this.f10125a != null) {
                    OWInterstitialImageAd.this.f10125a.m11934a();
                }
            }
        });
    }

    public void setListener(final OWInterstitialImageAdListener oWInterstitialImageAdListener) {
        C2670b.m12055a().m12058a(new Runnable() { // from class: mobi.oneway.export.Ad.OWInterstitialImageAd.3
            @Override // java.lang.Runnable
            public void run() {
                if (OWInterstitialImageAd.this.f10125a != null) {
                    OWInterstitialImageAd.this.f10125a.m11937a(oWInterstitialImageAdListener);
                }
            }
        });
    }

    public void show(Activity activity) {
        show(activity, null);
    }

    public void show(Activity activity, String str) {
        if (this.f10125a != null) {
            this.f10125a.m11936a(activity, str);
        }
    }
}
