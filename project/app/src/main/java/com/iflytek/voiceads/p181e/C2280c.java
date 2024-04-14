package com.iflytek.voiceads.p181e;

import android.os.Looper;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.config.ErrorCode;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.download.C2276p;
import com.iflytek.voiceads.listener.IFLYVideoListener;
import com.iflytek.voiceads.utils.C2313g;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.e.c */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2280c implements C2276p.a {

    /* renamed from: a */
    final /* synthetic */ C2278a f8555a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2280c(C2278a c2278a) {
        this.f8555a = c2278a;
    }

    @Override // com.iflytek.voiceads.download.C2276p.a
    /* renamed from: a */
    public void mo9981a() {
        IFLYVideoListener iFLYVideoListener;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Looper.prepare();
            C2313g.m10136a(SDKConstants.TAG, "not main thread");
        }
        iFLYVideoListener = this.f8555a.f8549g;
        iFLYVideoListener.onAdFailed(new AdError(ErrorCode.ERROR_VIDEO_CACHE));
    }

    @Override // com.iflytek.voiceads.download.C2276p.a
    /* renamed from: a */
    public void mo9982a(String str) {
        IFLYVideoListener iFLYVideoListener;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Looper.prepare();
            C2313g.m10136a(SDKConstants.TAG, "not main thread");
        }
        this.f8555a.f8553k = str;
        iFLYVideoListener = this.f8555a.f8549g;
        iFLYVideoListener.onVideoCached();
    }
}
