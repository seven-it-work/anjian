package mobi.oneway.export.p193b.p194a;

import android.content.Context;
import java.util.Iterator;
import java.util.List;
import mobi.oneway.export.AdListener.feed.OWFeedAdListener;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.p192a.C2641a;
import mobi.oneway.export.p193b.C2646a;
import mobi.oneway.export.p193b.p195b.C2652c;
import mobi.oneway.export.p199f.C2673a;
import mobi.oneway.export.p199f.C2684d;

/* renamed from: mobi.oneway.export.b.a.b */
/* loaded from: classes2.dex */
public class C2648b {

    /* renamed from: a */
    private final AdType f10197a = AdType.feed;

    /* renamed from: b */
    private String f10198b;

    /* renamed from: c */
    private Context f10199c;

    public C2648b(Context context, String str) {
        this.f10198b = str;
        this.f10199c = context;
    }

    /* renamed from: a */
    public void m11940a(OWFeedAdListener oWFeedAdListener) {
        List<C2673a> m12122a = C2684d.m12122a(this.f10198b, this.f10197a);
        if (m12122a == null) {
            if (oWFeedAdListener != null) {
                oWFeedAdListener.onError(OnewaySdkError.INITIALIZE_FAILED, this.f10197a.name() + C2641a.f10171m);
                return;
            }
            return;
        }
        C2652c c2652c = new C2652c(this.f10197a, m12122a, C2684d.m12123a(m12122a), C2646a.m11919a().m11931c());
        c2652c.m11958a((C2652c) oWFeedAdListener);
        c2652c.mo11962c();
        Iterator<C2673a> it = m12122a.iterator();
        while (it.hasNext()) {
            it.next().m12077a(this.f10199c, c2652c);
        }
    }
}
