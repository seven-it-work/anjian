package com.iflytek.voiceads.p171b;

import android.graphics.Bitmap;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.p171b.C2216e;
import com.iflytek.voiceads.utils.C2313g;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.b.b */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2213b implements C2216e.b {

    /* renamed from: a */
    final /* synthetic */ C2212a f8308a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2213b(C2212a c2212a) {
        this.f8308a = c2212a;
    }

    @Override // com.iflytek.voiceads.p171b.C2216e.b
    /* renamed from: a */
    public void mo9788a(Bitmap bitmap) {
        C2215d c2215d;
        this.f8308a.f8303b.sendMessage(this.f8308a.f8303b.obtainMessage(1, bitmap));
        c2215d = this.f8308a.f8304c;
        c2215d.m9794a(bitmap);
    }

    @Override // com.iflytek.voiceads.p171b.C2216e.b
    /* renamed from: a */
    public void mo9789a(Exception exc) {
        this.f8308a.f8303b.sendMessage(this.f8308a.f8303b.obtainMessage(1, null));
        C2313g.m10138b(SDKConstants.TAG, "get image from network failed!");
    }
}
