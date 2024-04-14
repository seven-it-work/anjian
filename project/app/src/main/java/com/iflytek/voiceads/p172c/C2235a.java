package com.iflytek.voiceads.p172c;

import android.content.Context;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.listener.IFLYNativeListener;
import com.iflytek.voiceads.p173d.C2240b;
import com.iflytek.voiceads.param.C2290a;
import com.iflytek.voiceads.request.C2298a;
import com.iflytek.voiceads.request.C2303f;
import com.iflytek.voiceads.utils.C2313g;

/* renamed from: com.iflytek.voiceads.c.a */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2235a {

    /* renamed from: b */
    private C2290a f8361b;

    /* renamed from: c */
    private Context f8362c;

    /* renamed from: d */
    private C2240b f8363d;

    /* renamed from: e */
    private IFLYNativeListener f8364e;

    /* renamed from: a */
    C2298a.a f8360a = new C2236b(this);

    /* renamed from: f */
    private HandlerC2238d f8365f = new HandlerC2238d();

    public C2235a(Context context, String str, IFLYNativeListener iFLYNativeListener) {
        this.f8362c = context;
        this.f8364e = iFLYNativeListener;
        this.f8361b = new C2290a(str);
        this.f8363d = new C2240b(this.f8362c.getApplicationContext());
        this.f8365f.m9846a(this.f8364e);
    }

    /* renamed from: a */
    public synchronized void m9838a() {
        try {
            try {
                C2303f.m10110a(this.f8362c.getApplicationContext(), this.f8361b, this.f8360a);
            } catch (Exception e) {
                C2313g.m10138b(SDKConstants.TAG, e.getMessage());
            }
        } catch (AdError e2) {
            this.f8365f.m9845a(1, e2);
            C2313g.m10136a(SDKConstants.TAG, e2.getErrorDescription());
        }
    }

    /* renamed from: a */
    public void m9839a(String str, Object obj) {
        this.f8361b.m10028a(str, obj);
    }
}
