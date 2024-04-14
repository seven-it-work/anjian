package com.iflytek.voiceads.p172c;

import android.app.Activity;
import android.content.Context;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.config.ErrorCode;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.listener.IFLYNativeListener;
import com.iflytek.voiceads.p173d.C2240b;
import com.iflytek.voiceads.param.C2290a;
import com.iflytek.voiceads.request.C2298a;
import com.iflytek.voiceads.utils.C2313g;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.c.b */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2236b implements C2298a.a {

    /* renamed from: a */
    final /* synthetic */ C2235a f8366a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2236b(C2235a c2235a) {
        this.f8366a = c2235a;
    }

    @Override // com.iflytek.voiceads.request.C2298a.a
    /* renamed from: a */
    public void mo9840a(Exception exc, int i) {
        HandlerC2238d handlerC2238d;
        handlerC2238d = this.f8366a.f8365f;
        handlerC2238d.m9845a(1, new AdError(i));
    }

    @Override // com.iflytek.voiceads.request.C2298a.a
    /* renamed from: a */
    public void mo9841a(byte[] bArr) {
        HandlerC2238d handlerC2238d;
        HandlerC2238d handlerC2238d2;
        Context context;
        C2240b c2240b;
        C2240b c2240b2;
        HandlerC2238d handlerC2238d3;
        C2240b c2240b3;
        Context context2;
        C2240b c2240b4;
        C2290a c2290a;
        IFLYNativeListener iFLYNativeListener;
        HandlerC2238d handlerC2238d4;
        Context context3;
        HandlerC2238d handlerC2238d5;
        try {
            context = this.f8366a.f8362c;
            if (context instanceof Activity) {
                context3 = this.f8366a.f8362c;
                if (((Activity) context3).isFinishing()) {
                    handlerC2238d5 = this.f8366a.f8365f;
                    handlerC2238d5.m9845a(1, new AdError(ErrorCode.ERROR_ACTIVITY_FINISH));
                    C2313g.m10136a(SDKConstants.TAG, "activity is finishing");
                }
            }
            String str = new String(bArr, "utf-8");
            c2240b = this.f8366a.f8363d;
            c2240b.m9854a(str);
            c2240b2 = this.f8366a.f8363d;
            if (70200 == c2240b2.f8416a) {
                context2 = this.f8366a.f8362c;
                c2240b4 = this.f8366a.f8363d;
                c2290a = this.f8366a.f8361b;
                iFLYNativeListener = this.f8366a.f8364e;
                C2237c c2237c = new C2237c(context2, c2240b4, c2290a, iFLYNativeListener);
                handlerC2238d4 = this.f8366a.f8365f;
                handlerC2238d4.m9845a(0, c2237c);
            } else {
                handlerC2238d3 = this.f8366a.f8365f;
                c2240b3 = this.f8366a.f8363d;
                handlerC2238d3.m9845a(1, new AdError(c2240b3.f8416a));
            }
        } catch (AdError e) {
            handlerC2238d2 = this.f8366a.f8365f;
            handlerC2238d2.m9845a(1, e);
        } catch (Exception e2) {
            handlerC2238d = this.f8366a.f8365f;
            handlerC2238d.m9845a(1, new AdError(ErrorCode.ERROR_NETWORK));
            C2313g.m10138b(SDKConstants.TAG, e2.getMessage());
        }
    }
}
