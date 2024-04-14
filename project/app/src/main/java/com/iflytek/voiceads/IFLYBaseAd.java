package com.iflytek.voiceads;

import android.content.Context;
import com.iflytek.voiceads.config.SDKLogger;
import com.iflytek.voiceads.dex.C2241a;
import com.iflytek.voiceads.listener.IFLYNativeListener;
import com.iflytek.voiceads.listener.IFLYVideoListener;

/* loaded from: classes.dex */
public class IFLYBaseAd {
    private Class<?> cIFLYBaseAdImpl;
    private IFLYBaseAd iFLYBaseAdImpl;
    private boolean isClassLoaded = false;

    public IFLYNativeAd getNativeAd(Context context, String str, IFLYNativeListener iFLYNativeListener) {
        if (this.iFLYBaseAdImpl == null) {
            return null;
        }
        return this.iFLYBaseAdImpl.getNativeAd(context, str, iFLYNativeListener);
    }

    public IFLYVideoAd getVideoAd(Context context, String str, int i, IFLYVideoListener iFLYVideoListener) {
        if (this.iFLYBaseAdImpl == null) {
            return null;
        }
        return this.iFLYBaseAdImpl.getVideoAd(context, str, i, iFLYVideoListener);
    }

    public void initIFLYBaseAdImpl(Context context) {
        StringBuilder sb;
        String message;
        try {
            if (!this.isClassLoaded) {
                this.cIFLYBaseAdImpl = C2241a.m9856a(context, "com.iflytek.voiceads.IFLYBaseAdImpl");
                this.isClassLoaded = true;
            }
            if (this.iFLYBaseAdImpl == null) {
                this.iFLYBaseAdImpl = (IFLYBaseAd) this.cIFLYBaseAdImpl.newInstance();
            }
        } catch (ClassNotFoundException e) {
            sb = new StringBuilder("base:");
            message = e.getMessage();
            sb.append(message);
            SDKLogger.m9849e(sb.toString());
        } catch (IllegalAccessException e2) {
            sb = new StringBuilder("base:");
            message = e2.getMessage();
            sb.append(message);
            SDKLogger.m9849e(sb.toString());
        } catch (InstantiationException e3) {
            sb = new StringBuilder("base:");
            message = e3.getMessage();
            sb.append(message);
            SDKLogger.m9849e(sb.toString());
        } catch (Exception e4) {
            sb = new StringBuilder("base:");
            message = e4.getMessage();
            sb.append(message);
            SDKLogger.m9849e(sb.toString());
        }
    }
}
