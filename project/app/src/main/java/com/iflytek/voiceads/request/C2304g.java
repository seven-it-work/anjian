package com.iflytek.voiceads.request;

import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.utils.C2313g;
import java.security.SecureRandom;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

/* renamed from: com.iflytek.voiceads.request.g */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2304g {

    /* renamed from: a */
    public static HostnameVerifier f8642a = new C2306i();

    /* renamed from: a */
    public static SSLContext m10111a() {
        SSLContext sSLContext;
        Exception e;
        try {
            sSLContext = SSLContext.getInstance("TLS");
        } catch (Exception e2) {
            sSLContext = null;
            e = e2;
        }
        try {
            sSLContext.init(null, new TrustManager[]{new C2305h()}, new SecureRandom());
        } catch (Exception e3) {
            e = e3;
            C2313g.m10138b(SDKConstants.TAG, "getSLLContext:" + e.getMessage());
            return sSLContext;
        }
        return sSLContext;
    }
}
