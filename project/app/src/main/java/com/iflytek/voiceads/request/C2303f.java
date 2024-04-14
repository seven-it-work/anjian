package com.iflytek.voiceads.request;

import android.content.Context;
import android.text.TextUtils;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.config.AdKeys;
import com.iflytek.voiceads.config.ErrorCode;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.param.C2290a;
import com.iflytek.voiceads.param.C2292c;
import com.iflytek.voiceads.param.UploadData;
import com.iflytek.voiceads.request.C2298a;
import com.iflytek.voiceads.utils.C2309c;
import com.iflytek.voiceads.utils.C2312f;
import com.iflytek.voiceads.utils.C2313g;
import com.iflytek.voiceads.utils.C2317k;
import com.iflytek.voiceads.utils.Encoder;

/* renamed from: com.iflytek.voiceads.request.f */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2303f {
    /* renamed from: a */
    public static void m10110a(Context context, C2290a c2290a, C2298a.a aVar) throws Exception {
        if (c2290a.m10033c(AdKeys.DEBUG_MODE)) {
            C2313g.m10137a(true);
            C2312f.m10132a(context);
        }
        if (!C2317k.m10154a(context)) {
            throw new AdError(ErrorCode.ERROR_NETWORK);
        }
        C2313g.m10136a(SDKConstants.TAG, "requestAd:" + c2290a.m10032c());
        if (TextUtils.isEmpty(c2290a.m10032c())) {
            throw new AdError(ErrorCode.ERROR_EMPTY_ADUNITID);
        }
        try {
            UploadData.initParam(context, c2290a);
            byte[] packageData = Encoder.packageData();
            C2298a c2298a = new C2298a();
            c2298a.m10103a(context);
            c2298a.m10102a(0);
            c2298a.m10107b(1);
            c2298a.m10108c(c2290a.m10034d(AdKeys.HTTP_REQUEST_TIMEOUT));
            c2298a.m10105a(C2292c.f8614a, null, packageData);
            c2298a.m10104a(aVar);
            C2309c.m10123a(context, "adUnitID", c2290a.m10032c());
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "requestAd:" + e.getMessage());
        }
    }
}
