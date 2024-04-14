package com.iflytek.voiceads.bridge;

import android.content.Context;
import android.os.CountDownTimer;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.download.C2257c;
import com.iflytek.voiceads.p170a.C2209a;
import com.iflytek.voiceads.utils.C2313g;
import java.io.File;

/* renamed from: com.iflytek.voiceads.bridge.b */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2221b {

    /* renamed from: a */
    private Context f8333a;

    /* renamed from: b */
    private DSBridgeWebView f8334b;

    /* renamed from: c */
    private C2209a f8335c;

    /* renamed from: d */
    private a f8336d;

    /* renamed from: e */
    private boolean f8337e;

    /* renamed from: f */
    private String f8338f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.iflytek.voiceads.bridge.b$a */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public class a extends CountDownTimer {

        /* renamed from: a */
        final /* synthetic */ C2221b f8339a;

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (this.f8339a.f8337e || this.f8339a.f8334b == null) {
                return;
            }
            this.f8339a.f8334b.m9822a("voiceRecordEnd", (Object[]) null, (InterfaceC2233n) null);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    public C2221b(Context context, DSBridgeWebView dSBridgeWebView) {
        this.f8333a = context;
        this.f8334b = dSBridgeWebView;
        this.f8338f = C2257c.m9908a(context) + File.separator + "voiceRecord.wav";
    }

    /* renamed from: a */
    public void m9828a() {
        try {
            this.f8337e = true;
            if (this.f8336d != null) {
                this.f8336d = null;
            }
            if (this.f8335c != null) {
                this.f8335c.a();
                this.f8335c = null;
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "stopRecordExcept:" + e.getMessage());
        }
    }
}
