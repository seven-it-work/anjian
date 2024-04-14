package mobi.oneway.export.AdListener.feed;

import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.feed.IFeedAd;

/* loaded from: classes.dex */
public interface OWFeedVideoAdListener {
    void onVideoError(OnewaySdkError onewaySdkError, String str);

    void onVideoLoad(IFeedAd iFeedAd);

    void onVideoPlay(IFeedAd iFeedAd);
}
