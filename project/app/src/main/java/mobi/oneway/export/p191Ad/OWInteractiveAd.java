package mobi.oneway.export.p191Ad;

import android.app.Activity;
import mobi.oneway.export.AdListener.OWInteractiveAdListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.p193b.p194a.C2647a;
import mobi.oneway.export.p198e.C2670b;

/* loaded from: classes.dex */
public class OWInteractiveAd {

    /* renamed from: a */
    private C2647a f10107a;

    /* renamed from: b */
    private final AdType f10108b = AdType.interactive;

    public OWInteractiveAd(final Activity activity, final String str, final OWInteractiveAdListener oWInteractiveAdListener) {
        OnewaySdk.checkSdkConfigured();
        C2670b.m12055a().m12058a(new Runnable() { // from class: mobi.oneway.export.Ad.OWInteractiveAd.1
            @Override // java.lang.Runnable
            public void run() {
                OWInteractiveAd.this.f10107a = new C2647a(OWInteractiveAd.this.f10108b, str);
                OWInteractiveAd.this.f10107a.m11935a(activity, oWInteractiveAdListener);
            }
        });
    }

    public void destory() {
        if (this.f10107a != null) {
            this.f10107a.m11939c();
            this.f10107a = null;
        }
    }

    public boolean isReady() {
        if (this.f10107a == null) {
            return false;
        }
        return this.f10107a.m11938b();
    }

    public void loadAd() {
        C2670b.m12055a().m12058a(new Runnable() { // from class: mobi.oneway.export.Ad.OWInteractiveAd.2
            @Override // java.lang.Runnable
            public void run() {
                if (OWInteractiveAd.this.f10107a != null) {
                    OWInteractiveAd.this.f10107a.m11934a();
                }
            }
        });
    }

    public void setListener(final OWInteractiveAdListener oWInteractiveAdListener) {
        C2670b.m12055a().m12058a(new Runnable() { // from class: mobi.oneway.export.Ad.OWInteractiveAd.3
            @Override // java.lang.Runnable
            public void run() {
                if (OWInteractiveAd.this.f10107a != null) {
                    OWInteractiveAd.this.f10107a.m11937a(oWInteractiveAdListener);
                }
            }
        });
    }

    public void show(Activity activity) {
        show(activity, null);
    }

    public void show(Activity activity, String str) {
        if (this.f10107a != null) {
            this.f10107a.m11936a(activity, str);
        }
    }
}
