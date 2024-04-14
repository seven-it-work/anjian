package com.iflytek.voiceads;

import android.content.Context;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.config.ErrorCode;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.config.SDKLogger;
import com.iflytek.voiceads.dex.C2241a;
import com.iflytek.voiceads.listener.IFLYAdListener;
import com.iflytek.voiceads.view.AdLayout;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class IFLYInterstitialAd extends AdLayout {
    private static Class<?> cIFLYInterstitialAdImpl;
    private static IFLYInterstitialAd iFLYInterstitialAdImpl;
    private static boolean isClassLoaded;

    /* JADX INFO: Access modifiers changed from: protected */
    public IFLYInterstitialAd(Context context) {
        super(context);
    }

    public static IFLYInterstitialAd createInterstitialAd(Context context, String str) {
        StringBuilder sb;
        String message;
        try {
            if (!isClassLoaded) {
                cIFLYInterstitialAdImpl = C2241a.m9856a(context, "com.iflytek.voiceads.IFLYInterstitialAdImpl");
                isClassLoaded = true;
            }
            IFLYInterstitialAd iFLYInterstitialAd = (IFLYInterstitialAd) cIFLYInterstitialAdImpl.getMethod("createInterstitialAd", Context.class, String.class).invoke(null, context, str);
            iFLYInterstitialAdImpl = iFLYInterstitialAd;
            return iFLYInterstitialAd;
        } catch (ClassNotFoundException e) {
            sb = new StringBuilder("inter:");
            message = e.getMessage();
            sb.append(message);
            SDKLogger.m9849e(sb.toString());
            return new IFLYInterstitialAd(context);
        } catch (IllegalAccessException e2) {
            sb = new StringBuilder("inter:");
            message = e2.getMessage();
            sb.append(message);
            SDKLogger.m9849e(sb.toString());
            return new IFLYInterstitialAd(context);
        } catch (NoSuchMethodException e3) {
            sb = new StringBuilder("inter:");
            message = e3.getMessage();
            sb.append(message);
            SDKLogger.m9849e(sb.toString());
            return new IFLYInterstitialAd(context);
        } catch (InvocationTargetException e4) {
            sb = new StringBuilder("inter:");
            message = e4.getMessage();
            sb.append(message);
            SDKLogger.m9849e(sb.toString());
            return new IFLYInterstitialAd(context);
        }
    }

    public void loadAd(IFLYAdListener iFLYAdListener) {
        if (iFLYInterstitialAdImpl != null) {
            iFLYInterstitialAdImpl.loadAd(iFLYAdListener);
            return;
        }
        SDKLogger.m9847d(SDKConstants.ERROR_INFO_DEX_FILE);
        if (iFLYAdListener != null) {
            iFLYAdListener.onAdFailed(new AdError(ErrorCode.ERROR_INVALID_REQUEST));
        }
    }

    public void setParameter(String str, Object obj) {
        if (iFLYInterstitialAdImpl == null) {
            SDKLogger.m9847d(SDKConstants.ERROR_INFO_DEX_FILE);
        } else {
            iFLYInterstitialAdImpl.setParameter(str, obj);
        }
    }

    public void showAd() {
        if (iFLYInterstitialAdImpl == null) {
            SDKLogger.m9847d(SDKConstants.ERROR_INFO_DEX_FILE);
        } else {
            iFLYInterstitialAdImpl.showAd();
        }
    }
}
