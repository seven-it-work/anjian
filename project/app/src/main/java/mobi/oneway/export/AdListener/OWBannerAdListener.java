package mobi.oneway.export.AdListener;

import mobi.oneway.export.enums.OnewaySdkError;

/* loaded from: classes.dex */
public interface OWBannerAdListener {
    void onADClicked();

    void onADCloseOverlay();

    void onADClosed();

    void onADExposure();

    void onADLeftApplication();

    void onADOpenOverlay();

    void onADReceiv();

    void onNoAD(OnewaySdkError onewaySdkError);
}
