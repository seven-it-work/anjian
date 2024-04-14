package com.iflytek.voiceads.param;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.utils.C2310d;
import com.iflytek.voiceads.utils.C2313g;
import com.iflytek.voiceads.utils.C2314h;
import com.iflytek.voiceads.utils.C2315i;
import com.iflytek.voiceads.utils.C2317k;
import com.umeng.commonsdk.proguard.C2518v;
import java.util.Locale;
import org.json.JSONObject;

/* renamed from: com.iflytek.voiceads.param.d */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2293d {

    /* renamed from: a */
    private static String f8616a;

    /* renamed from: a */
    public static long m10038a() {
        return System.currentTimeMillis() / 1000;
    }

    /* renamed from: a */
    public static JSONObject m10039a(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(C2518v.f9535ab, m10046e(context));
            jSONObject.put(C2518v.f9573s, m10040b());
            jSONObject.put("osv", m10043c());
            jSONObject.put("adid", m10050g(context));
            jSONObject.put("adid_md5", C2310d.m10127a(m10050g(context)));
            jSONObject.put("imei", m10051h(context));
            jSONObject.put("imei_md5", C2310d.m10127a(m10051h(context)));
            jSONObject.put("mac", C2314h.m10140a(context));
            jSONObject.put("mac_md5", C2310d.m10127a(C2314h.m10140a(context)));
            jSONObject.put("density", m10053j(context));
            jSONObject.put(C2518v.f9517K, m10054k(context));
            jSONObject.put("net", m10055l(context));
            jSONObject.put("ip", m10045d());
            jSONObject.put("ua", m10041b(context));
            jSONObject.put("dvw", m10042c(context));
            jSONObject.put("dvh", m10044d(context));
            jSONObject.put("orientation", m10057n(context));
            jSONObject.put("make", m10047e());
            jSONObject.put("model", m10048f());
            jSONObject.put("lan", m10058o(context));
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "get device:" + e.getMessage());
        }
        return jSONObject;
    }

    /* renamed from: b */
    private static int m10040b() {
        return 0;
    }

    /* renamed from: b */
    public static String m10041b(Context context) {
        if (TextUtils.isEmpty(f8616a)) {
            try {
                if (Build.VERSION.SDK_INT >= 19) {
                    f8616a = WebSettings.getDefaultUserAgent(context);
                } else {
                    f8616a = new WebView(context).getSettings().getUserAgentString();
                }
            } catch (Exception e) {
                f8616a = "";
            }
        }
        return f8616a;
    }

    /* renamed from: c */
    public static int m10042c(Context context) {
        return m10056m(context).widthPixels;
    }

    /* renamed from: c */
    private static String m10043c() {
        return Build.VERSION.RELEASE;
    }

    /* renamed from: d */
    public static int m10044d(Context context) {
        return m10056m(context).heightPixels;
    }

    /* renamed from: d */
    private static String m10045d() {
        return C2317k.m10153a();
    }

    /* renamed from: e */
    private static int m10046e(Context context) {
        String m10041b = m10041b(context);
        if (TextUtils.isEmpty(m10041b)) {
            return -1;
        }
        return (!(m10041b.contains("Mobile") && m10041b.contains("Android")) && m10041b.contains("Android") && m10049f(context)) ? 1 : 0;
    }

    /* renamed from: e */
    private static String m10047e() {
        return Build.MANUFACTURER;
    }

    /* renamed from: f */
    private static String m10048f() {
        return Build.MODEL;
    }

    /* renamed from: f */
    private static boolean m10049f(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    /* renamed from: g */
    private static String m10050g(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), InterfaceC1133a.f3938aM);
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "getAndroidID:" + e.getMessage());
            return "";
        }
    }

    /* renamed from: h */
    private static String m10051h(Context context) {
        String str;
        Exception e;
        if (!C2315i.m10149b(context, "android.permission.READ_PHONE_STATE")) {
            return "";
        }
        String str2 = "";
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            str2 = telephonyManager.getDeviceId();
            if (!TextUtils.isEmpty(str2)) {
                return str2;
            }
            str = Build.VERSION.SDK_INT >= 23 ? telephonyManager.getDeviceId(0) : str2;
            try {
                return TextUtils.isEmpty(str) ? m10052i(context) : str;
            } catch (Exception e2) {
                e = e2;
                C2313g.m10138b(SDKConstants.TAG, "get IMEI:" + e.getMessage());
                return str;
            }
        } catch (Exception e3) {
            str = str2;
            e = e3;
        }
    }

    /* renamed from: i */
    private static String m10052i(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        try {
            return telephonyManager.getClass().getDeclaredMethod("getImei", Integer.TYPE).invoke(telephonyManager, 1).toString();
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "Get invoke imei:" + e.getMessage());
            return "";
        }
    }

    /* renamed from: j */
    private static int m10053j(Context context) {
        return context.getResources().getDisplayMetrics().densityDpi;
    }

    /* renamed from: k */
    private static int m10054k(Context context) {
        try {
            String networkOperatorName = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
            if (!TextUtils.isEmpty(networkOperatorName)) {
                if (networkOperatorName.contains("46000") || networkOperatorName.contains("46002") || networkOperatorName.contains("46004") || networkOperatorName.contains("46007")) {
                    return 1;
                }
                if (networkOperatorName.contains("46001") || networkOperatorName.contains("46006") || networkOperatorName.contains("46009")) {
                    return 2;
                }
                if (!networkOperatorName.contains("46003") && !networkOperatorName.contains("46005")) {
                    if (!networkOperatorName.contains("46011")) {
                        return 0;
                    }
                }
                return 3;
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "Get carrier failed:" + e.getMessage());
        }
        return 0;
    }

    /* renamed from: l */
    private static int m10055l(Context context) {
        if (!C2315i.m10147a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return 0;
        }
        String m10157c = C2317k.m10157c(context);
        if (m10157c.contains("wifi")) {
            return 2;
        }
        if (m10157c.contains("2g")) {
            return 4;
        }
        if (m10157c.contains("3g")) {
            return 5;
        }
        return m10157c.contains("4g") ? 6 : 0;
    }

    /* renamed from: m */
    private static DisplayMetrics m10056m(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if ((context instanceof Activity) && Build.VERSION.SDK_INT >= 17) {
            ((Activity) context).getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        }
        return displayMetrics;
    }

    /* renamed from: n */
    private static int m10057n(Context context) {
        return 0;
    }

    /* renamed from: o */
    private static String m10058o(Context context) {
        Locale locale = context.getResources().getConfiguration().locale;
        return locale != null ? locale.getLanguage() + "-" + locale.getCountry() : "";
    }
}
