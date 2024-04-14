package com.umeng.commonsdk.framework;

import android.content.Context;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class UMEnvelopeBuild {
    public static JSONObject buildEnvelopeWithExtHeader(Context context, JSONObject jSONObject, JSONObject jSONObject2) {
        return C2450a.m10642a(context, jSONObject, jSONObject2);
    }

    public static String imprintProperty(Context context, String str, String str2) {
        return C2450a.m10641a(context, str, str2);
    }

    public static boolean isReadyBuild(Context context, UMLogDataProtocol.UMBusinessType uMBusinessType) {
        return C2450a.m10643a(context, uMBusinessType);
    }

    public static long lastSuccessfulBuildTime(Context context) {
        return C2450a.m10640a(context);
    }

    public static long maxDataSpace(Context context) {
        return C2450a.m10644b(context);
    }
}
