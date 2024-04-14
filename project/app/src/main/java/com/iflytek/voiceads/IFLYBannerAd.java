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
public class IFLYBannerAd extends AdLayout {
    private static Class<?> cIFLYBannerAdImpl;
    private static IFLYBannerAd iFLYBannerAdImpl;
    private static boolean isClassLoaded;

    /* JADX INFO: Access modifiers changed from: protected */
    public IFLYBannerAd(Context context) {
        super(context);
    }

    public static IFLYBannerAd createBannerAd(Context context, String str) {
        StringBuilder sb;
        String message;
        try {
            if (!isClassLoaded) {
                cIFLYBannerAdImpl = C2241a.m9856a(context, "com.iflytek.voiceads.IFLYBannerAdImpl");
                isClassLoaded = true;
            }
            IFLYBannerAd iFLYBannerAd = (IFLYBannerAd) cIFLYBannerAdImpl.getMethod("createBannerAd", Context.class, String.class).invoke(null, context, str);
            iFLYBannerAdImpl = iFLYBannerAd;
            return iFLYBannerAd;
        } catch (ClassNotFoundException e) {
            sb = new StringBuilder("banner:");
            message = e.getMessage();
            sb.append(message);
            SDKLogger.m9849e(sb.toString());
            return new IFLYBannerAd(context);
        } catch (IllegalAccessException e2) {
            sb = new StringBuilder("banner:");
            message = e2.getMessage();
            sb.append(message);
            SDKLogger.m9849e(sb.toString());
            return new IFLYBannerAd(context);
        } catch (NoSuchMethodException e3) {
            sb = new StringBuilder("banner:");
            message = e3.getMessage();
            sb.append(message);
            SDKLogger.m9849e(sb.toString());
            return new IFLYBannerAd(context);
        } catch (InvocationTargetException e4) {
            sb = new StringBuilder("banner:");
            message = e4.getMessage();
            sb.append(message);
            SDKLogger.m9849e(sb.toString());
            return new IFLYBannerAd(context);
        }
    }

    public void loadAd(IFLYAdListener iFLYAdListener) {
        if (iFLYBannerAdImpl != null) {
            iFLYBannerAdImpl.loadAd(iFLYAdListener);
            return;
        }
        SDKLogger.m9847d(SDKConstants.ERROR_INFO_DEX_FILE);
        if (iFLYAdListener != null) {
            iFLYAdListener.onAdFailed(new AdError(ErrorCode.ERROR_INVALID_REQUEST));
        }
    }

    public void setParameter(String str, Object obj) {
        if (iFLYBannerAdImpl == null) {
            SDKLogger.m9847d(SDKConstants.ERROR_INFO_DEX_FILE);
        } else {
            iFLYBannerAdImpl.setParameter(str, obj);
        }
    }

    public void showAd() {
        if (iFLYBannerAdImpl == null) {
            SDKLogger.m9847d(SDKConstants.ERROR_INFO_DEX_FILE);
        } else {
            iFLYBannerAdImpl.showAd();
        }
    }
}
