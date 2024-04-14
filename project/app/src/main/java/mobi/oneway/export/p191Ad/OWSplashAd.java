package mobi.oneway.export.p191Ad;

import android.app.Activity;
import android.view.ViewGroup;
import mobi.oneway.export.AdListener.OWSplashAdListener;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.p193b.p194a.C2649c;
import mobi.oneway.export.p198e.C2670b;
import mobi.oneway.export.p198e.C2672d;

/* loaded from: classes.dex */
public class OWSplashAd {

    /* renamed from: a */
    private C2649c f10143a;

    public OWSplashAd(String str) {
        this.f10143a = new C2649c(str);
    }

    public void show(Activity activity, ViewGroup viewGroup, OWSplashAdListener oWSplashAdListener) {
        show(activity, viewGroup, oWSplashAdListener, 0L);
    }

    public void show(final Activity activity, final ViewGroup viewGroup, final OWSplashAdListener oWSplashAdListener, final long j) {
        OnewaySdk.checkSdkConfigured();
        final Runnable runnable = new Runnable() { // from class: mobi.oneway.export.Ad.OWSplashAd.1
            @Override // java.lang.Runnable
            public void run() {
                OWSplashAd.this.f10143a.m11941a(activity, viewGroup, oWSplashAdListener, j);
            }
        };
        C2670b.m12055a().m12058a(runnable);
        new C2672d(new C2672d.a() { // from class: mobi.oneway.export.Ad.OWSplashAd.2
            @Override // mobi.oneway.export.p198e.C2672d.a
            public void timeout() {
                oWSplashAdListener.onAdError(OnewaySdkError.SHOW_ERROR, "Show splash ad timeout");
                C2670b.m12055a().m12060b(runnable);
            }
        }, j).start();
    }
}
