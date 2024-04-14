package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.umeng.analytics.pro.C2427b;
import com.umeng.commonsdk.framework.C2451b;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.C2465aj;
import com.umeng.commonsdk.proguard.C2501e;
import com.umeng.commonsdk.proguard.C2513q;
import com.umeng.commonsdk.proguard.C2518v;
import com.umeng.commonsdk.statistics.common.C2536e;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.idtracking.C2543e;
import com.umeng.commonsdk.statistics.idtracking.C2545g;
import com.umeng.commonsdk.statistics.idtracking.Envelope;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.noise.ImLatent;
import com.umeng.commonsdk.statistics.proto.C2574d;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Marker;

/* renamed from: com.umeng.commonsdk.statistics.c */
/* loaded from: classes.dex */
public class C2531c {

    /* renamed from: a */
    public static String f9735a = null;

    /* renamed from: b */
    private static final String f9736b = "EnvelopeManager";

    /* renamed from: c */
    private static StatTracer f9737c;

    /* renamed from: d */
    private static ImLatent f9738d;

    /* renamed from: e */
    private static String f9739e;

    /* renamed from: g */
    private static boolean f9740g;

    /* renamed from: f */
    private int f9741f = 0;

    /* renamed from: a */
    private int m11255a(Context context, Envelope envelope, String str, String str2) {
        if (context == null || envelope == null || TextUtils.isEmpty(str)) {
            return 101;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = DeviceConfig.getAppVersionName(context);
        }
        return C2451b.m10645a(context, str + "&&" + str2 + "_" + System.currentTimeMillis() + "_envelope.log", envelope.toBinary());
    }

    /* renamed from: a */
    public static long m11256a(Context context) {
        long j;
        long j2 = DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX - DataHelper.ENVELOPE_EXTRA_LENGTH;
        JSONObject m11261b = m11261b(context);
        if (m11261b == null || m11261b.toString() == null || m11261b.toString().getBytes() == null) {
            j = j2;
        } else {
            long length = m11261b.toString().getBytes().length;
            if (C2536e.f9760a) {
                Log.i(f9736b, "headerLen size is " + length);
            }
            j = j2 - length;
        }
        if (C2536e.f9760a) {
            Log.i(f9736b, "free size is " + j);
        }
        return j;
    }

    /* renamed from: a */
    private Envelope m11257a(Context context, byte[] bArr) {
        String imprintProperty = UMEnvelopeBuild.imprintProperty(context, "codex", null);
        int i = -1;
        try {
            if (!TextUtils.isEmpty(imprintProperty)) {
                i = Integer.valueOf(imprintProperty).intValue();
            }
        } catch (NumberFormatException e) {
            C2501e.m10904a(context, e);
        }
        return (i == 0 || !(i == 1 || f9740g)) ? Envelope.genEnvelope(context, UMUtils.getAppkey(context), bArr) : Envelope.genEncryptEnvelope(context, UMUtils.getAppkey(context), bArr);
    }

    /* renamed from: a */
    private JSONObject m11258a(int i, JSONObject jSONObject) {
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

    /* renamed from: a */
    private JSONObject m11259a(JSONObject jSONObject, JSONObject jSONObject2) {
        String str;
        if (jSONObject != null && jSONObject2 != null && jSONObject.opt("header") != null && (jSONObject.opt("header") instanceof JSONObject)) {
            JSONObject jSONObject3 = (JSONObject) jSONObject.opt("header");
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next != null && (next instanceof String) && (str = next) != null && jSONObject2.opt(str) != null) {
                    try {
                        jSONObject3.put(str, jSONObject2.opt(str));
                        if (str.equals(C2427b.f8985i) && (jSONObject2.opt(str) instanceof Integer)) {
                            this.f9741f = ((Integer) jSONObject2.opt(str)).intValue();
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static void m11260a(boolean z) {
        f9740g = z;
    }

    /* renamed from: b */
    private static JSONObject m11261b(Context context) {
        SharedPreferences sharedPreferences;
        JSONObject jSONObject;
        String str;
        String str2;
        try {
            sharedPreferences = PreferenceWrapper.getDefault(context);
            if (TextUtils.isEmpty(f9739e)) {
                jSONObject = new JSONObject();
                jSONObject.put(C2518v.f9565k, DeviceConfig.getAppMD5Signature(context));
                jSONObject.put(C2518v.f9566l, DeviceConfig.getAppSHA1Key(context));
                jSONObject.put(C2518v.f9567m, DeviceConfig.getAppHashKey(context));
                jSONObject.put("app_version", DeviceConfig.getAppVersionName(context));
                jSONObject.put("version_code", Integer.parseInt(DeviceConfig.getAppVersionCode(context)));
                jSONObject.put(C2518v.f9571q, DeviceConfig.getDeviceIdUmengMD5(context));
                jSONObject.put(C2518v.f9572r, DeviceConfig.getCPU());
                String mccmnc = DeviceConfig.getMCCMNC(context);
                if (TextUtils.isEmpty(mccmnc)) {
                    jSONObject.put(C2518v.f9577w, "");
                } else {
                    jSONObject.put(C2518v.f9577w, mccmnc);
                }
                String subOSName = DeviceConfig.getSubOSName(context);
                if (!TextUtils.isEmpty(subOSName)) {
                    jSONObject.put(C2518v.f9512F, subOSName);
                }
                String subOSVersion = DeviceConfig.getSubOSVersion(context);
                if (!TextUtils.isEmpty(subOSVersion)) {
                    jSONObject.put(C2518v.f9513G, subOSVersion);
                }
                String deviceType = DeviceConfig.getDeviceType(context);
                if (!TextUtils.isEmpty(deviceType)) {
                    jSONObject.put(C2518v.f9535ab, deviceType);
                }
                jSONObject.put(C2518v.f9564j, DeviceConfig.getPackageName(context));
                jSONObject.put(C2518v.f9570p, "Android");
                jSONObject.put("device_id", DeviceConfig.getDeviceId(context));
                jSONObject.put("device_model", Build.MODEL);
                jSONObject.put(C2518v.f9580z, Build.BOARD);
                jSONObject.put(C2518v.f9507A, Build.BRAND);
                jSONObject.put(C2518v.f9508B, Build.TIME);
                jSONObject.put(C2518v.f9509C, Build.MANUFACTURER);
                jSONObject.put(C2518v.f9510D, Build.ID);
                jSONObject.put("device_name", Build.DEVICE);
                jSONObject.put(C2518v.f9573s, "Android");
                jSONObject.put(C2518v.f9574t, Build.VERSION.RELEASE);
                int[] resolutionArray = DeviceConfig.getResolutionArray(context);
                if (resolutionArray != null) {
                    jSONObject.put(C2518v.f9575u, resolutionArray[1] + Marker.ANY_MARKER + resolutionArray[0]);
                }
                jSONObject.put(C2518v.f9576v, DeviceConfig.getMac(context));
                jSONObject.put(C2518v.f9514H, DeviceConfig.getTimeZone(context));
                String[] localeInfo = DeviceConfig.getLocaleInfo(context);
                jSONObject.put(C2518v.f9516J, localeInfo[0]);
                jSONObject.put(C2518v.f9515I, localeInfo[1]);
                jSONObject.put(C2518v.f9517K, DeviceConfig.getNetworkOperatorName(context));
                jSONObject.put(C2518v.f9568n, DeviceConfig.getAppName(context));
                String[] networkAccessMode = DeviceConfig.getNetworkAccessMode(context);
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
                if (!TextUtils.isEmpty(f9735a)) {
                    jSONObject.put(C2518v.f9557c, f9735a);
                }
                f9739e = jSONObject.toString();
            } else {
                try {
                    jSONObject = new JSONObject(f9739e);
                } catch (Exception unused) {
                    jSONObject = null;
                }
            }
        } catch (Throwable th) {
            C2501e.m10904a(context, th);
        }
        if (jSONObject == null) {
            return null;
        }
        try {
            jSONObject.put(C2518v.f9520N, sharedPreferences.getInt("successful_request", 0));
            jSONObject.put(C2518v.f9521O, sharedPreferences.getInt(C2518v.f9521O, 0));
            jSONObject.put(C2518v.f9522P, sharedPreferences.getInt("last_request_spent_ms", 0));
        } catch (Exception unused2) {
        }
        jSONObject.put("channel", UMUtils.getChannel(context));
        jSONObject.put("appkey", UMUtils.getAppkey(context));
        try {
            String deviceToken = UMUtils.getDeviceToken(context);
            if (!TextUtils.isEmpty(deviceToken)) {
                jSONObject.put(C2518v.f9533a, deviceToken);
            }
        } catch (Exception e) {
            C2501e.m10904a(context, e);
        }
        try {
            C2513q c2513q = new C2513q(context);
            if (!TextUtils.isEmpty(c2513q.m10990a())) {
                jSONObject.put(C2518v.f9558d, c2513q.m10990a());
            }
        } catch (Exception e2) {
            C2501e.m10904a(context, e2);
        }
        try {
            String imprintProperty = UMEnvelopeBuild.imprintProperty(context, C2518v.f9559e, null);
            if (!TextUtils.isEmpty(imprintProperty)) {
                jSONObject.put(C2518v.f9559e, imprintProperty);
            }
        } catch (Exception e3) {
            C2501e.m10904a(context, e3);
        }
        try {
            C2574d m11399a = C2545g.m11393a(context).m11399a();
            if (m11399a != null) {
                jSONObject.put(C2518v.f9523Q, Base64.encodeToString(new C2465aj().m10741a(m11399a), 0));
            }
        } catch (Exception e4) {
            C2501e.m10904a(context, e4);
        }
        if (jSONObject.length() > 0) {
            return new JSONObject().put("header", jSONObject);
        }
        return null;
    }

    /* renamed from: a */
    public JSONObject m11262a(Context context, JSONObject jSONObject, JSONObject jSONObject2) {
        Exception exc;
        String str;
        String str2;
        Envelope envelope;
        String str3;
        String str4;
        if (C2536e.f9760a && jSONObject != null && jSONObject2 != null) {
            Log.i(f9736b, "headerJSONObject size is " + jSONObject.toString().getBytes().length);
            Log.i(f9736b, "bodyJSONObject size is " + jSONObject2.toString().getBytes().length);
        }
        JSONObject jSONObject3 = null;
        if (context == null || jSONObject2 == null) {
            return m11258a(110, (JSONObject) null);
        }
        try {
            JSONObject m11261b = m11261b(context);
            if (m11261b != null && jSONObject != null) {
                m11261b = m11259a(m11261b, jSONObject);
            }
            if (m11261b != null && jSONObject2 != null) {
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (next != null && (next instanceof String) && (str4 = next) != null && jSONObject2.opt(str4) != null) {
                        try {
                            m11261b.put(str4, jSONObject2.opt(str4));
                        } catch (Exception unused) {
                        }
                    }
                }
            }
            if (m11261b != null) {
                StringBuilder sb = new StringBuilder();
                if (m11261b.length() > 0) {
                    if (m11261b.has("push")) {
                        String optString = m11261b.optJSONObject("header").optString(C2518v.f9548ao);
                        if (!TextUtils.isEmpty(C2518v.f9544ak) && !TextUtils.isEmpty(optString)) {
                            sb.append(C2518v.f9544ak);
                            sb.append("==");
                            sb.append(optString);
                            sb.append("&=");
                        }
                    }
                    if (m11261b.has("share")) {
                        String optString2 = m11261b.optJSONObject("header").optString(C2518v.f9549ap);
                        if (!TextUtils.isEmpty(C2518v.f9545al) && !TextUtils.isEmpty(optString2)) {
                            sb.append(C2518v.f9545al);
                            sb.append("==");
                            sb.append(optString2);
                            sb.append("&=");
                        }
                    }
                    if (m11261b.has("analytics")) {
                        String str5 = m11261b.has("dplus") ? C2518v.f9543aj : "a";
                        String optString3 = m11261b.optJSONObject("header").optString("sdk_version");
                        if (!TextUtils.isEmpty(str5) && !TextUtils.isEmpty(optString3)) {
                            sb.append(str5);
                            sb.append("==");
                            sb.append(optString3);
                            sb.append("&=");
                        }
                    }
                    if (m11261b.has("dplus")) {
                        String optString4 = m11261b.optJSONObject("header").optString("sdk_version");
                        if (m11261b.has("analytics")) {
                            if (!sb.toString().contains(C2518v.f9543aj) && !TextUtils.isEmpty(C2518v.f9543aj) && !TextUtils.isEmpty(optString4)) {
                                sb.append(C2518v.f9543aj);
                                sb.append("==");
                                sb.append(optString4);
                                str3 = "&=";
                                sb.append(str3);
                            }
                        } else if (!TextUtils.isEmpty("d") && !TextUtils.isEmpty(optString4)) {
                            sb.append("d");
                            sb.append("==");
                            sb.append(optString4);
                            str3 = "&=";
                            sb.append(str3);
                        }
                    }
                    if (m11261b.has(C2518v.f9540ag)) {
                        String optString5 = m11261b.optJSONObject("header").optString(C2518v.f9550aq);
                        if (!TextUtils.isEmpty(C2518v.f9546am) && !TextUtils.isEmpty(optString5)) {
                            sb.append(C2518v.f9546am);
                            sb.append("==");
                            sb.append(optString5);
                            sb.append("&=");
                        }
                    }
                }
                str2 = sb.toString();
                if (TextUtils.isEmpty(str2)) {
                    return m11258a(101, m11261b);
                }
                if (str2.endsWith("&=")) {
                    str2 = str2.substring(0, str2.length() - 2);
                }
            } else {
                str2 = null;
            }
            if (m11261b != null) {
                try {
                    C2543e m11376a = C2543e.m11376a(context);
                    if (m11376a != null) {
                        m11376a.m11381a();
                        String encodeToString = Base64.encodeToString(new C2465aj().m10741a(m11376a.m11383b()), 0);
                        if (!TextUtils.isEmpty(encodeToString)) {
                            JSONObject jSONObject4 = m11261b.getJSONObject("header");
                            jSONObject4.put(C2518v.f9524R, encodeToString);
                            m11261b.put("header", jSONObject4);
                        }
                    }
                } catch (Exception unused2) {
                }
            }
            if (f9737c == null) {
                f9737c = StatTracer.getInstance(context);
                f9738d = ImLatent.getService(context, f9737c);
            }
            if (f9738d != null && f9738d.shouldStartLatency()) {
                long delayTime = f9738d.getDelayTime();
                long elapsedTime = f9738d.getElapsedTime();
                if (m11261b != null) {
                    try {
                        JSONObject jSONObject5 = new JSONObject();
                        JSONObject jSONObject6 = new JSONObject();
                        jSONObject6.put(C2518v.f9555av, elapsedTime / 1000);
                        jSONObject6.put(C2518v.f9554au, delayTime);
                        jSONObject5.put(C2518v.f9553at, jSONObject6);
                        JSONObject jSONObject7 = m11261b.getJSONObject("header");
                        jSONObject7.put(C2518v.f9552as, jSONObject5);
                        m11261b.put("header", jSONObject7);
                    } catch (Exception unused3) {
                    }
                }
            }
            if (m11261b != null && DataHelper.largeThanMaxSize(m11261b.toString().getBytes().length, DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX)) {
                SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putInt("serial", sharedPreferences.getInt("serial", 1) + 1).commit();
                }
                return m11258a(113, m11261b);
            }
            if (m11261b != null) {
                envelope = m11257a(context, m11261b.toString().getBytes());
                if (envelope == null) {
                    return m11258a(111, m11261b);
                }
            } else {
                envelope = null;
            }
            if (envelope != null && DataHelper.largeThanMaxSize(envelope.toBinary().length, DataHelper.ENVELOPE_LENGTH_MAX)) {
                return m11258a(114, m11261b);
            }
            int m11255a = m11255a(context, envelope, str2, m11261b != null ? m11261b.optJSONObject("header").optString("app_version") : null);
            if (m11255a != 0) {
                return m11258a(m11255a, m11261b);
            }
            if (C2536e.f9760a) {
                Log.i(f9736b, "constructHeader size is " + m11261b.toString().getBytes().length);
            }
            return m11261b;
        } catch (Throwable th) {
            C2501e.m10904a(context, th);
            if (jSONObject != null) {
                try {
                    JSONObject jSONObject8 = new JSONObject();
                    try {
                        jSONObject8.put("header", jSONObject);
                    } catch (JSONException unused4) {
                    } catch (Exception e) {
                        exc = e;
                        jSONObject3 = jSONObject8;
                        C2501e.m10904a(context, exc);
                        return m11258a(110, jSONObject3);
                    }
                    jSONObject3 = jSONObject8;
                } catch (Exception e2) {
                    exc = e2;
                }
            }
            if (jSONObject2 != null) {
                if (jSONObject3 == null) {
                    jSONObject3 = new JSONObject();
                }
                if (jSONObject2 != null) {
                    Iterator<String> keys2 = jSONObject2.keys();
                    while (keys2.hasNext()) {
                        String next2 = keys2.next();
                        if (next2 != null && (next2 instanceof String) && (str = next2) != null && jSONObject2.opt(str) != null) {
                            try {
                                jSONObject3.put(str, jSONObject2.opt(str));
                            } catch (Exception unused5) {
                            }
                        }
                    }
                }
            }
            return m11258a(110, jSONObject3);
        }
    }
}
