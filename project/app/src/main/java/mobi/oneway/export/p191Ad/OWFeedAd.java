package mobi.oneway.export.p191Ad;

import android.content.Context;
import mobi.oneway.export.AdListener.feed.OWFeedAdListener;
import mobi.oneway.export.p193b.p194a.C2648b;
import mobi.oneway.export.p198e.C2670b;

/* loaded from: classes.dex */
public class OWFeedAd {

    /* renamed from: a */
    private C2648b f10104a;

    public OWFeedAd(Context context, String str) {
        OnewaySdk.checkSdkConfigured();
        this.f10104a = new C2648b(context, str);
    }

    public void load(final OWFeedAdListener oWFeedAdListener) {
        C2670b.m12055a().m12058a(new Runnable() { // from class: mobi.oneway.export.Ad.OWFeedAd.1
            @Override // java.lang.Runnable
            public void run() {
                OWFeedAd.this.f10104a.m11940a(oWFeedAdListener);
            }
        });
    }
}
