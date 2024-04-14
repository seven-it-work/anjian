package com.iflytek.voiceads.p181e;

import android.app.Activity;
import android.content.Context;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.config.ErrorCode;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.listener.IFLYVideoListener;
import com.iflytek.voiceads.p173d.C2239a;
import com.iflytek.voiceads.p173d.C2240b;
import com.iflytek.voiceads.param.C2290a;
import com.iflytek.voiceads.request.C2298a;
import com.iflytek.voiceads.utils.C2313g;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.e.b */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2279b implements C2298a.a {

    /* renamed from: a */
    final /* synthetic */ C2278a f8554a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2279b(C2278a c2278a) {
        this.f8554a = c2278a;
    }

    @Override // com.iflytek.voiceads.request.C2298a.a
    /* renamed from: a */
    public void mo9840a(Exception exc, int i) {
        HandlerC2283f handlerC2283f;
        handlerC2283f = this.f8554a.f8550h;
        handlerC2283f.m10012a(1, new AdError(i));
    }

    @Override // com.iflytek.voiceads.request.C2298a.a
    /* renamed from: a */
    public void mo9841a(byte[] bArr) {
        HandlerC2283f handlerC2283f;
        HandlerC2283f handlerC2283f2;
        Context context;
        C2240b c2240b;
        C2240b c2240b2;
        C2239a c2239a;
        C2240b c2240b3;
        HandlerC2283f handlerC2283f3;
        C2240b c2240b4;
        Context context2;
        C2240b c2240b5;
        C2290a c2290a;
        IFLYVideoListener iFLYVideoListener;
        HandlerC2283f handlerC2283f4;
        Context context3;
        HandlerC2283f handlerC2283f5;
        try {
            context = this.f8554a.f8546d;
            if (context instanceof Activity) {
                context3 = this.f8554a.f8546d;
                if (((Activity) context3).isFinishing()) {
                    handlerC2283f5 = this.f8554a.f8550h;
                    handlerC2283f5.m10012a(1, new AdError(ErrorCode.ERROR_ACTIVITY_FINISH));
                    C2313g.m10136a(SDKConstants.TAG, "activity is finishing");
                }
            }
            String str = new String(bArr, "utf-8");
            c2240b = this.f8554a.f8547e;
            c2240b.m9854a(str);
            C2278a c2278a = this.f8554a;
            c2240b2 = this.f8554a.f8547e;
            c2278a.f8548f = c2240b2.f8421f;
            C2278a c2278a2 = this.f8554a;
            c2239a = this.f8554a.f8548f;
            c2278a2.f8552j = new C2284g(c2239a);
            c2240b3 = this.f8554a.f8547e;
            if (70200 == c2240b3.f8416a) {
                context2 = this.f8554a.f8546d;
                c2240b5 = this.f8554a.f8547e;
                c2290a = this.f8554a.f8545c;
                iFLYVideoListener = this.f8554a.f8549g;
                C2282e c2282e = new C2282e(context2, c2240b5, c2290a, iFLYVideoListener);
                handlerC2283f4 = this.f8554a.f8550h;
                handlerC2283f4.m10012a(0, c2282e);
            } else {
                handlerC2283f3 = this.f8554a.f8550h;
                c2240b4 = this.f8554a.f8547e;
                handlerC2283f3.m10012a(1, new AdError(c2240b4.f8416a));
            }
        } catch (AdError e) {
            handlerC2283f2 = this.f8554a.f8550h;
            handlerC2283f2.m10012a(1, e);
        } catch (Exception e2) {
            handlerC2283f = this.f8554a.f8550h;
            handlerC2283f.m10012a(1, new AdError(ErrorCode.ERROR_NETWORK));
        }
    }
}
