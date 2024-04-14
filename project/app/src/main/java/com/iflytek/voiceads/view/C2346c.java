package com.iflytek.voiceads.view;

import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.config.ErrorCode;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.request.C2298a;
import com.iflytek.voiceads.utils.C2313g;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.view.c */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2346c implements C2298a.a {

    /* renamed from: a */
    final /* synthetic */ AdView f8814a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2346c(AdView adView) {
        this.f8814a = adView;
    }

    @Override // com.iflytek.voiceads.request.C2298a.a
    /* renamed from: a */
    public void mo9840a(Exception exc, int i) {
        this.f8814a.f8787l.m10311a(5, i);
    }

    @Override // com.iflytek.voiceads.request.C2298a.a
    /* renamed from: a */
    public void mo9841a(byte[] bArr) {
        try {
            if (bArr != null) {
                this.f8814a.m10272b(new String(bArr, "utf-8"));
            } else {
                C2313g.m10138b(SDKConstants.TAG, "Invalid response data!");
            }
        } catch (AdError e) {
            this.f8814a.f8787l.m10311a(5, e.getErrorCode());
        } catch (Exception e2) {
            this.f8814a.f8787l.m10311a(5, ErrorCode.ERROR_NETWORK);
            C2313g.m10138b(SDKConstants.TAG, "html parse1:" + e2.getMessage());
        }
    }
}
