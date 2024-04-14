package mobi.oneway.export.p193b.p194a;

import android.app.Activity;
import java.util.Iterator;
import java.util.List;
import mobi.oneway.export.AdListener.AdMonitor;
import mobi.oneway.export.AdListener.OWInteractiveAdListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.p192a.C2641a;
import mobi.oneway.export.p193b.C2646a;
import mobi.oneway.export.p193b.p195b.AbstractC2651b;
import mobi.oneway.export.p193b.p195b.C2654e;
import mobi.oneway.export.p193b.p195b.C2655f;
import mobi.oneway.export.p193b.p195b.C2656g;
import mobi.oneway.export.p193b.p195b.C2657h;
import mobi.oneway.export.p199f.C2673a;
import mobi.oneway.export.p199f.C2684d;

/* renamed from: mobi.oneway.export.b.a.a */
/* loaded from: classes2.dex */
public class C2647a {

    /* renamed from: a */
    private Object f10192a;

    /* renamed from: b */
    private AdType f10193b;

    /* renamed from: c */
    private List<C2673a> f10194c;

    /* renamed from: d */
    private AbstractC2651b f10195d;

    public C2647a(AdType adType, String str) {
        this.f10193b = adType;
        this.f10194c = C2684d.m12122a(str, adType);
    }

    /* renamed from: a */
    private void m11932a(OnewaySdkError onewaySdkError, String str) {
        if (this.f10192a == null) {
            return;
        }
        switch (this.f10193b) {
            case rewarded:
            case interstitial:
            case interstitialimage:
                ((AdMonitor) this.f10192a).onSdkError(onewaySdkError, str);
                return;
            case interactive:
                ((OWInteractiveAdListener) this.f10192a).onSdkError(onewaySdkError, str);
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* renamed from: d */
    private void m11933d() {
        AbstractC2651b c2657h;
        List<String> m12123a = C2684d.m12123a(this.f10194c);
        long m11931c = C2646a.m11919a().m11931c();
        switch (this.f10193b) {
            case rewarded:
                c2657h = new C2657h(this.f10193b, m12123a, m11931c);
                break;
            case interstitial:
                c2657h = new C2655f(this.f10193b, m12123a, m11931c);
                break;
            case interactive:
                this.f10195d = new C2654e(this.f10193b, m12123a, m11931c);
                return;
            case interstitialimage:
                c2657h = new C2656g(this.f10193b, m12123a, m11931c);
                break;
            default:
                return;
        }
        this.f10195d = c2657h;
    }

    /* renamed from: a */
    public void m11934a() {
        if (this.f10194c == null) {
            m11932a(OnewaySdkError.LOAD_ERROR, this.f10193b.name() + C2641a.f10171m);
            return;
        }
        if (this.f10195d != null) {
            this.f10195d.mo11962c();
        }
        Iterator<C2673a> it = this.f10194c.iterator();
        while (it.hasNext()) {
            it.next().m12082a(this.f10193b);
        }
    }

    /* renamed from: a */
    public void m11935a(Activity activity, Object obj) {
        this.f10192a = obj;
        if (this.f10194c == null) {
            return;
        }
        m11933d();
        if (this.f10195d != null) {
            this.f10195d.m11958a((AbstractC2651b) obj);
        }
        for (C2673a c2673a : this.f10194c) {
            switch (this.f10193b) {
                case rewarded:
                    c2673a.m12076a(activity, (C2657h) this.f10195d);
                    break;
                case interstitial:
                    c2673a.m12074a(activity, (C2655f) this.f10195d);
                    break;
                case interactive:
                    c2673a.m12073a(activity, (C2654e) this.f10195d);
                    break;
                case interstitialimage:
                    c2673a.m12075a(activity, (C2656g) this.f10195d);
                    break;
            }
        }
    }

    /* renamed from: a */
    public void m11936a(Activity activity, String str) {
        if (str == null) {
            str = "";
        }
        if (this.f10194c == null) {
            return;
        }
        for (C2673a c2673a : this.f10194c) {
            if (c2673a.m12086b(this.f10193b)) {
                c2673a.m12083a(this.f10193b, activity, str);
                return;
            }
        }
    }

    /* renamed from: a */
    public void m11937a(Object obj) {
        this.f10192a = obj;
        if (this.f10194c == null) {
            return;
        }
        if (this.f10195d != null) {
            this.f10195d.m11958a((AbstractC2651b) obj);
        }
        for (C2673a c2673a : this.f10194c) {
            switch (this.f10193b) {
                case rewarded:
                    c2673a.m12081a((C2657h) this.f10195d);
                    break;
                case interstitial:
                    c2673a.m12079a((C2655f) this.f10195d);
                    break;
                case interactive:
                    c2673a.m12078a((C2654e) this.f10195d);
                    break;
                case interstitialimage:
                    c2673a.m12080a((C2656g) this.f10195d);
                    break;
            }
        }
    }

    /* renamed from: b */
    public boolean m11938b() {
        if (this.f10194c == null || this.f10195d == null || !this.f10195d.m11961b()) {
            return false;
        }
        Iterator<C2673a> it = this.f10194c.iterator();
        while (it.hasNext()) {
            if (it.next().m12086b(this.f10193b)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public void m11939c() {
        this.f10192a = null;
        if (this.f10195d != null) {
            this.f10195d.m11958a((AbstractC2651b) null);
            this.f10195d = null;
        }
        if (this.f10194c == null) {
            return;
        }
        Iterator<C2673a> it = this.f10194c.iterator();
        while (it.hasNext()) {
            it.next().m12088c(this.f10193b);
        }
    }
}
