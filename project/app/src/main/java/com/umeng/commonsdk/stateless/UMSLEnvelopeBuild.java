package com.umeng.commonsdk.stateless;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.analytics.pro.C2427b;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.C2465aj;
import com.umeng.commonsdk.proguard.C2501e;
import com.umeng.commonsdk.proguard.C2513q;
import com.umeng.commonsdk.proguard.C2518v;
import com.umeng.commonsdk.statistics.C2538e;
import com.umeng.commonsdk.statistics.common.C2536e;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.idtracking.C2543e;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.Iterator;
import org.json.JSONObject;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public class UMSLEnvelopeBuild {
    private static final String TAG = "UMSLEnvelopeBuild";
    private static String cacheSystemheader;
    private static boolean isEncryptEnabled;
    public static Context mContext;
    public static String module;

    private synchronized C2525c constructEnvelope(Context context, byte[] bArr) {
        String appkey;
        String appkey2;
        C2525c m11222b;
        int i = -1;
        String imprintProperty = UMEnvelopeBuild.imprintProperty(context, "slcodex", null);
        C2536e.m11329a("walle", "[stateless] build envelope, codexStr is " + imprintProperty);
        try {
            if (!TextUtils.isEmpty(imprintProperty)) {
                i = Integer.valueOf(imprintProperty).intValue();
            }
        } catch (NumberFormatException e) {
            C2501e.m10904a(context, e);
        }
        if (i == 0) {
            C2536e.m11329a("walle", "[stateless] build envelope, codexValue is 0");
            appkey = UMUtils.getAppkey(context);
        } else {
            if (i == 1) {
                C2536e.m11329a("walle", "[stateless] build envelope, codexValue is 1");
                appkey2 = UMUtils.getAppkey(context);
            } else if (isEncryptEnabled) {
                C2536e.m11329a("walle", "[stateless] build envelope, isEncryptEnabled is true");
                appkey2 = UMUtils.getAppkey(context);
            } else {
                C2536e.m11329a("walle", "[stateless] build envelope, isEncryptEnabled is false");
                appkey = UMUtils.getAppkey(context);
            }
            m11222b = C2525c.m11222b(context, appkey2, bArr);
        }
        m11222b = C2525c.m11220a(context, appkey, bArr);
        return m11222b;
    }

    private synchronized JSONObject makeErrorResult(int i, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                jSONObject.put(C2427b.f8975ao, i);
            } catch (Exception unused) {
            }
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put(C2427b.f8975ao, i);
        } catch (Exception unused2) {
        }
        return jSONObject2;
    }

    public static void setEncryptEnabled(boolean z) {
        isEncryptEnabled = z;
    }

    public synchronized JSONObject buildSLBaseHeader(Context context) {
        JSONObject jSONObject;
        String str;
        String str2;
        C2536e.m11329a("walle", "[stateless] begin build hader, thread is " + Thread.currentThread());
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        try {
            if (TextUtils.isEmpty(cacheSystemheader)) {
                jSONObject = new JSONObject();
                jSONObject.put(C2518v.f9565k, DeviceConfig.getAppMD5Signature(applicationContext));
                jSONObject.put(C2518v.f9566l, DeviceConfig.getAppSHA1Key(applicationContext));
                jSONObject.put(C2518v.f9567m, DeviceConfig.getAppHashKey(applicationContext));
                jSONObject.put("app_version", DeviceConfig.getAppVersionName(applicationContext));
                jSONObject.put("version_code", Integer.parseInt(DeviceConfig.getAppVersionCode(applicationContext)));
                jSONObject.put(C2518v.f9571q, DeviceConfig.getDeviceIdUmengMD5(applicationContext));
                jSONObject.put(C2518v.f9572r, DeviceConfig.getCPU());
                String mccmnc = DeviceConfig.getMCCMNC(applicationContext);
                if (TextUtils.isEmpty(mccmnc)) {
                    jSONObject.put(C2518v.f9577w, "");
                } else {
                    jSONObject.put(C2518v.f9577w, mccmnc);
                }
                String subOSName = DeviceConfig.getSubOSName(applicationContext);
                if (!TextUtils.isEmpty(subOSName)) {
                    jSONObject.put(C2518v.f9512F, subOSName);
                }
                String subOSVersion = DeviceConfig.getSubOSVersion(applicationContext);
                if (!TextUtils.isEmpty(subOSVersion)) {
                    jSONObject.put(C2518v.f9513G, subOSVersion);
                }
                String deviceType = DeviceConfig.getDeviceType(applicationContext);
                if (!TextUtils.isEmpty(deviceType)) {
                    jSONObject.put(C2518v.f9535ab, deviceType);
                }
                jSONObject.put(C2518v.f9564j, DeviceConfig.getPackageName(applicationContext));
                jSONObject.put(C2518v.f9570p, "Android");
                jSONObject.put("device_id", DeviceConfig.getDeviceId(applicationContext));
                jSONObject.put("device_model", Build.MODEL);
                jSONObject.put(C2518v.f9580z, Build.BOARD);
                jSONObject.put(C2518v.f9507A, Build.BRAND);
                jSONObject.put(C2518v.f9508B, Build.TIME);
                jSONObject.put(C2518v.f9509C, Build.MANUFACTURER);
                jSONObject.put(C2518v.f9510D, Build.ID);
                jSONObject.put("device_name", Build.DEVICE);
                jSONObject.put(C2518v.f9573s, "Android");
                jSONObject.put(C2518v.f9574t, Build.VERSION.RELEASE);
                int[] resolutionArray = DeviceConfig.getResolutionArray(applicationContext);
                if (resolutionArray != null) {
                    jSONObject.put(C2518v.f9575u, resolutionArray[1] + Marker.ANY_MARKER + resolutionArray[0]);
                }
                jSONObject.put(C2518v.f9576v, DeviceConfig.getMac(applicationContext));
                jSONObject.put(C2518v.f9514H, DeviceConfig.getTimeZone(applicationContext));
                String[] localeInfo = DeviceConfig.getLocaleInfo(applicationContext);
                jSONObject.put(C2518v.f9516J, localeInfo[0]);
                jSONObject.put(C2518v.f9515I, localeInfo[1]);
                jSONObject.put(C2518v.f9517K, DeviceConfig.getNetworkOperatorName(applicationContext));
                jSONObject.put(C2518v.f9568n, DeviceConfig.getAppName(applicationContext));
                String[] networkAccessMode = DeviceConfig.getNetworkAccessMode(applicationContext);
                if ("Wi-Fi".equals(networkAccessMode[0])) {
                    str = C2518v.f9518L;
                    str2 = "wifi";
                } else if ("2G/3G".equals(networkAccessMode[0])) {
                    str = C2518v.f9518L;
                    str2 = "2G/3G";
                } else {
                    str = C2518v.f9518L;
                    str2 = "unknow";
                }
                jSONObject.put(str, str2);
                if (!"".equals(networkAccessMode[1])) {
                    jSONObject.put(C2518v.f9519M, networkAccessMode[1]);
                }
                jSONObject.put(C2518v.f9556b, C2538e.f9789a);
                if (!TextUtils.isEmpty(module)) {
                    jSONObject.put(C2518v.f9557c, module);
                }
                cacheSystemheader = jSONObject.toString();
            } else {
                try {
                    jSONObject = new JSONObject(cacheSystemheader);
                } catch (Exception unused) {
                    jSONObject = null;
                }
            }
        } catch (Throwable th) {
            C2501e.m10904a(applicationContext, th);
        }
        if (jSONObject == null) {
            return null;
        }
        jSONObject.put("channel", UMUtils.getChannel(applicationContext));
        jSONObject.put("appkey", UMUtils.getAppkey(applicationContext));
        try {
            C2513q c2513q = new C2513q(applicationContext);
            if (!TextUtils.isEmpty(c2513q.m10990a())) {
                jSONObject.put(C2518v.f9558d, c2513q.m10990a());
            }
        } catch (Exception unused2) {
        }
        try {
            String imprintProperty = UMEnvelopeBuild.imprintProperty(applicationContext, C2518v.f9559e, null);
            if (!TextUtils.isEmpty(imprintProperty)) {
                jSONObject.put(C2518v.f9559e, imprintProperty);
            }
        } catch (Exception unused3) {
        }
        if (jSONObject.length() > 0) {
            JSONObject jSONObject2 = new JSONObject();
            C2536e.m11329a("walle", "[stateless] build header end , header is " + jSONObject.toString() + ", thread is " + Thread.currentThread());
            return jSONObject2.put("header", jSONObject);
        }
        C2536e.m11329a("walle", "[stateless] build header end , header is null !!! thread is " + Thread.currentThread());
        return null;
    }

    public synchronized JSONObject buildSLEnvelope(Context context, JSONObject jSONObject, JSONObject jSONObject2, String str) {
        Context context2;
        Throwable th;
        C2525c c2525c;
        String str2;
        C2536e.m11329a("walle", "[stateless] build envelope, heade is " + jSONObject.toString());
        C2536e.m11329a("walle", "[stateless] build envelope, body is " + jSONObject2.toString());
        C2536e.m11329a("walle", "[stateless] build envelope, thread is " + Thread.currentThread());
        if (context == null || jSONObject == null || jSONObject2 == null || str == null) {
            C2536e.m11329a("walle", "[stateless] build envelope, context is null or header is null or body is null");
            return makeErrorResult(110, null);
        }
        try {
            context2 = context.getApplicationContext();
            if (jSONObject != null && jSONObject2 != null) {
                try {
                    Iterator<String> keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        if (next != null && (next instanceof String) && (str2 = next) != null && jSONObject2.opt(str2) != null) {
                            try {
                                jSONObject.put(str2, jSONObject2.opt(str2));
                            } catch (Exception unused) {
                            }
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    C2501e.m10904a(context2, th);
                    C2536e.m11329a("walle", "build envelope end, thread is " + Thread.currentThread());
                    return makeErrorResult(110, null);
                }
            }
            if (jSONObject != null) {
                try {
                    C2543e m11376a = C2543e.m11376a(context2);
                    if (m11376a != null) {
                        m11376a.m11381a();
                        String encodeToString = Base64.encodeToString(new C2465aj().m10741a(m11376a.m11383b()), 0);
                        if (!TextUtils.isEmpty(encodeToString)) {
                            JSONObject jSONObject3 = jSONObject.getJSONObject("header");
                            jSONObject3.put(C2518v.f9524R, encodeToString);
                            jSONObject.put("header", jSONObject3);
                        }
                    }
                } catch (Exception unused2) {
                }
            }
            if (jSONObject != null && C2528f.m11243a(jSONObject.toString().getBytes().length, C2523a.f9640a)) {
                C2536e.m11329a("walle", "[stateless] build envelope, json overstep!!!! size is " + jSONObject.toString().getBytes().length);
                return makeErrorResult(113, jSONObject);
            }
            C2536e.m11329a("walle", "[stateless] build envelope, json size is " + jSONObject.toString().getBytes().length);
            if (jSONObject != null) {
                c2525c = constructEnvelope(context2, jSONObject.toString().getBytes());
                if (c2525c == null) {
                    C2536e.m11329a("walle", "[stateless] build envelope, envelope is null !!!!");
                    return makeErrorResult(111, jSONObject);
                }
            } else {
                c2525c = null;
            }
            if (c2525c != null && C2528f.m11243a(c2525c.m11227b().length, C2523a.f9641b)) {
                C2536e.m11329a("walle", "[stateless] build envelope, envelope overstep!!!! size is " + c2525c.m11227b().length);
                return makeErrorResult(114, jSONObject);
            }
            if (!C2528f.m11244a(context2, Base64.encodeToString(str.getBytes(), 0), Base64.encodeToString((str + "_" + System.currentTimeMillis()).getBytes(), 0), c2525c.m11227b())) {
                C2536e.m11329a("walle", "[stateless] build envelope, save fail ----->>>>>");
                return makeErrorResult(101, jSONObject);
            }
            C2536e.m11329a("walle", "[stateless] build envelope, save ok ----->>>>>");
            C2536e.m11329a("walle", "[stateless] envelope file size is " + jSONObject.toString().getBytes().length);
            new C2526d(context2);
            C2526d.m11233b(273);
            C2536e.m11329a("walle", "[stateless] build envelope end, thread is " + Thread.currentThread());
            return jSONObject;
        } catch (Throwable th3) {
            context2 = context;
            th = th3;
        }
    }
}
