package mobi.oneway.export.p193b.p194a;

import android.app.Activity;
import android.view.ViewGroup;
import java.util.Collections;
import java.util.List;
import mobi.oneway.export.AdListener.OWSplashAdListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.p192a.C2641a;
import mobi.oneway.export.p193b.p195b.C2658i;
import mobi.oneway.export.p199f.C2673a;
import mobi.oneway.export.p199f.C2684d;

/* renamed from: mobi.oneway.export.b.a.c */
/* loaded from: classes2.dex */
public class C2649c {

    /* renamed from: a */
    private final AdType f10200a = AdType.splash;

    /* renamed from: b */
    private String f10201b;

    public C2649c(String str) {
        this.f10201b = str;
    }

    /* renamed from: a */
    public void m11941a(Activity activity, ViewGroup viewGroup, OWSplashAdListener oWSplashAdListener, long j) {
        List<C2673a> m12122a = C2684d.m12122a(this.f10201b, this.f10200a);
        if (m12122a == null) {
            if (oWSplashAdListener != null) {
                oWSplashAdListener.onAdError(OnewaySdkError.INITIALIZE_FAILED, this.f10200a.name() + C2641a.f10171m);
                return;
            }
            return;
        }
        if (m12122a.size() > 0) {
            C2658i c2658i = new C2658i(this.f10200a, Collections.singletonList(m12122a.get(0).m12092f()), j);
            c2658i.m11958a((C2658i) oWSplashAdListener);
            c2658i.mo11962c();
            m12122a.get(0).m12072a(activity, viewGroup, c2658i, j);
        }
    }
}
