package com.iflytek.voiceads.param;

import android.content.Context;
import com.iflytek.voiceads.config.AdKeys;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.utils.C2309c;
import com.iflytek.voiceads.utils.C2313g;
import com.umeng.commonsdk.proguard.C2518v;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: assets/AdDex.4.0.1.dex */
public class UploadData {
    public static final String API_VERSION = "3.0.2";
    public static final String SDK_VERSION = "4.0.1";
    public static C2290a mAdParam;
    public static Context mContext;
    private static JSONObject mCurDeviceInfo;
    private static JSONObject mCurExtraInfo;

    public static String getAdStatis() {
        try {
            boolean m10126c = C2309c.m10126c(mContext, "dataToggle");
            if (mContext == null || !m10126c) {
                return "";
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("last_session_id", C2309c.m10125b(mContext, "sessionID"));
            jSONObject.put("last_adunit_id", C2309c.m10125b(mContext, "adUnitID"));
            jSONObject.put("last_req_duration", C2309c.m10120a(mContext, "reqDuration"));
            jSONObject.put("last_imp_duration", C2309c.m10120a(mContext, "impFailCnt"));
            jSONObject.put("last_clk_duration", C2309c.m10120a(mContext, "clkFailCnt"));
            jSONObject.put("req_fail_cnt", C2309c.m10120a(mContext, "reqFailCnt"));
            jSONObject.put("imp_fail_cnt", C2309c.m10120a(mContext, "impFailCnt"));
            jSONObject.put("clk_fail_cnt", C2309c.m10120a(mContext, "clkFailCnt"));
            return jSONObject.toString();
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "getAdStatis error " + e.getMessage());
            return "";
        }
    }

    public static String getApiVer() {
        return API_VERSION;
    }

    public static String getAppInfo() {
        return (mAdParam == null || mAdParam.m10026a(AdKeys.APP_VER) == null) ? "" : C2291b.m10037a(mAdParam);
    }

    public static String getCurrency() {
        if (mAdParam == null || mAdParam.m10026a(AdKeys.CURRENCY) == null) {
            return "";
        }
        try {
            JSONArray jSONArray = new JSONArray();
            for (String str : mAdParam.m10030b(AdKeys.CURRENCY).split(",")) {
                jSONArray.put(str);
            }
            return jSONArray.toString();
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "getCurrency error " + e.getMessage());
            return "CNY";
        }
    }

    public static String getDevice() {
        if (mContext == null) {
            return "";
        }
        try {
            if (mCurDeviceInfo == null) {
                mCurDeviceInfo = C2293d.m10039a(mContext);
            }
            mCurDeviceInfo.put("ts", C2293d.m10038a());
            return mCurDeviceInfo.toString();
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "getDevice error " + e.getMessage());
            return "";
        }
    }

    public static String getExt() {
        return (mAdParam == null || mAdParam.m10026a(AdKeys.EXT) == null) ? "" : mAdParam.m10026a(AdKeys.EXT).toString();
    }

    public static String getExtraInfo() {
        if (mContext == null) {
            return "";
        }
        try {
            if (mCurExtraInfo == null) {
                mCurExtraInfo = C2294e.m10063a(mContext);
            }
            mCurExtraInfo.put(C2518v.f9525S, C2294e.m10064b(mContext));
            return mCurExtraInfo.toString().replaceAll("\"", "\\\\\"");
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "getDevice error " + e.getMessage());
            return "";
        }
    }

    public static String getImps() {
        return mAdParam == null ? "" : C2296g.m10091a(mAdParam);
    }

    public static String getRequestID() {
        return mAdParam == null ? "" : mAdParam.m10030b(AdKeys.REQUEST_ID);
    }

    public static String getSdkVer() {
        return SDK_VERSION;
    }

    public static void initParam(Context context, C2290a c2290a) {
        mContext = context;
        mAdParam = c2290a;
    }
}
