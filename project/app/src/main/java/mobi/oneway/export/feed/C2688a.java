package mobi.oneway.export.feed;

import android.view.View;
import android.view.ViewGroup;
import java.util.List;
import mobi.oneway.export.AdListener.feed.OWFeedAdEventListener;
import mobi.oneway.export.AdListener.feed.OWFeedVideoAdListener;
import mobi.oneway.export.p199f.C2673a;
import mobi.oneway.export.p199f.p200a.C2675b;

/* renamed from: mobi.oneway.export.feed.a */
/* loaded from: classes2.dex */
public class C2688a implements IFeedAd {

    /* renamed from: a */
    private IFeedAd f10337a;

    /* renamed from: b */
    private C2673a f10338b;

    public C2688a(IFeedAd iFeedAd, C2673a c2673a) {
        this.f10337a = iFeedAd;
        this.f10338b = c2673a;
    }

    @Override // mobi.oneway.export.feed.IFeedAd
    public String getIconImage() {
        return this.f10337a.getIconImage();
    }

    @Override // mobi.oneway.export.feed.IFeedAd
    public List<String> getImages() {
        return this.f10337a.getImages();
    }

    @Override // mobi.oneway.export.feed.IFeedAd
    public String getTitle() {
        return this.f10337a.getTitle();
    }

    @Override // mobi.oneway.export.feed.IFeedAd
    public int getType() {
        return this.f10337a.getType();
    }

    @Override // mobi.oneway.export.feed.IFeedAd
    public View getVideoView() {
        return this.f10337a.getVideoView();
    }

    @Override // mobi.oneway.export.feed.IFeedAd
    public void handleAdEvent(ViewGroup viewGroup, OWFeedAdEventListener oWFeedAdEventListener) {
        this.f10337a.handleAdEvent(viewGroup, new C2675b(this.f10338b, oWFeedAdEventListener));
    }

    @Override // mobi.oneway.export.feed.IFeedAd
    public void setVideoAdListener(OWFeedVideoAdListener oWFeedVideoAdListener) {
    }
}
