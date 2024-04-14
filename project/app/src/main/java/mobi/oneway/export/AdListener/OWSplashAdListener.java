package mobi.oneway.export.AdListener;

import mobi.oneway.export.enums.OnewaySdkError;

/* loaded from: classes.dex */
public interface OWSplashAdListener {
    void onAdClick();

    void onAdError(OnewaySdkError onewaySdkError, String str);

    void onAdFinish();

    void onAdShow();
}
