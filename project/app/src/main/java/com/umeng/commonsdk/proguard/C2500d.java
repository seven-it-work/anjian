package com.umeng.commonsdk.proguard;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.wifi.ScanResult;
import android.os.Build;
import android.support.v4.os.EnvironmentCompat;
import android.support.v7.widget.ActivityChooserView;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.inputmethod.InputMethodInfo;
import com.umeng.commonsdk.framework.C2452c;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.proguard.C2506j;
import com.umeng.commonsdk.proguard.C2514r;
import com.umeng.commonsdk.stateless.UMSLEnvelopeBuild;
import com.umeng.commonsdk.statistics.common.C2536e;
import com.umeng.commonsdk.statistics.idtracking.C2543e;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.umeng.commonsdk.proguard.d */
/* loaded from: classes.dex */
public class C2500d {
    /* renamed from: a */
    public static JSONObject m10881a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("f", C2506j.m10924c());
            jSONObject.put("t", C2506j.m10928d());
            jSONObject.put("ts", System.currentTimeMillis());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static void m10882a(Context context) {
        C2536e.m11329a("walle", "[internal] begin by stateful--->>>");
        if (context != null) {
            try {
                if (UMEnvelopeBuild.isReadyBuild(context, UMLogDataProtocol.UMBusinessType.U_INTERNAL)) {
                    UMWorkDispatch.sendEvent(context, C2455a.f9244e, C2482b.m10851a(context).m10852a(), null);
                }
            } catch (Throwable th) {
                C2501e.m10904a(context, th);
            }
        }
    }

    /* renamed from: a */
    private static void m10883a(Context context, JSONObject jSONObject) {
        PackageManager packageManager;
        if (context == null || (packageManager = context.getApplicationContext().getPackageManager()) == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        m10884a(jSONObject, "gp", packageManager.hasSystemFeature("android.hardware.location.gps"));
        m10884a(jSONObject, "to", packageManager.hasSystemFeature("android.hardware.touchscreen"));
        m10884a(jSONObject, "mo", packageManager.hasSystemFeature("android.hardware.telephony"));
        m10884a(jSONObject, "ca", packageManager.hasSystemFeature("android.hardware.camera"));
        m10884a(jSONObject, "fl", packageManager.hasSystemFeature("android.hardware.camera.flash"));
    }

    /* renamed from: a */
    private static void m10884a(JSONObject jSONObject, String str, boolean z) {
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (z) {
                jSONObject.put(str, 1);
            } else {
                jSONObject.put(str, 0);
            }
        } catch (Exception unused) {
        }
    }

    /* renamed from: b */
    public static JSONObject m10885b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("a_bl", Build.BOOTLOADER);
            if (Build.VERSION.SDK_INT >= 14) {
                jSONObject.put("a_rv", Build.getRadioVersion());
            }
            jSONObject.put("a_fp", Build.FINGERPRINT);
            jSONObject.put("a_hw", Build.HARDWARE);
            jSONObject.put("a_host", Build.HOST);
            if (Build.VERSION.SDK_INT >= 21) {
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < Build.SUPPORTED_32_BIT_ABIS.length; i++) {
                    jSONArray.put(Build.SUPPORTED_32_BIT_ABIS[i]);
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("a_s32", jSONArray);
                }
            }
            if (Build.VERSION.SDK_INT >= 21) {
                JSONArray jSONArray2 = new JSONArray();
                for (int i2 = 0; i2 < Build.SUPPORTED_64_BIT_ABIS.length; i2++) {
                    jSONArray2.put(Build.SUPPORTED_64_BIT_ABIS[i2]);
                }
                if (jSONArray2.length() > 0) {
                    jSONObject.put("a_s64", jSONArray2);
                }
            }
            if (Build.VERSION.SDK_INT >= 21) {
                JSONArray jSONArray3 = new JSONArray();
                for (int i3 = 0; i3 < Build.SUPPORTED_ABIS.length; i3++) {
                    jSONArray3.put(Build.SUPPORTED_ABIS[i3]);
                }
                if (jSONArray3.length() > 0) {
                    jSONObject.put("a_sa", jSONArray3);
                }
            }
            jSONObject.put("a_ta", Build.TAGS);
            jSONObject.put("a_uk", EnvironmentCompat.MEDIA_UNKNOWN);
            jSONObject.put("a_user", Build.USER);
            jSONObject.put("a_cpu1", Build.CPU_ABI);
            jSONObject.put("a_cpu2", Build.CPU_ABI2);
            jSONObject.put("a_ra", Build.RADIO);
            if (Build.VERSION.SDK_INT >= 23) {
                jSONObject.put("a_bos", Build.VERSION.BASE_OS);
                jSONObject.put("a_pre", Build.VERSION.PREVIEW_SDK_INT);
                jSONObject.put("a_sp", Build.VERSION.SECURITY_PATCH);
            }
            jSONObject.put("a_cn", Build.VERSION.CODENAME);
            jSONObject.put("a_intl", Build.VERSION.INCREMENTAL);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    /* renamed from: b */
    public static void m10886b(Context context) {
        Context context2;
        Throwable th;
        if (context != null) {
            try {
                C2536e.m11329a("walle", "[internal] begin by not stateful--->>>");
                context2 = context.getApplicationContext();
            } catch (Throwable th2) {
                context2 = context;
                th = th2;
            }
            try {
                UMSLEnvelopeBuild uMSLEnvelopeBuild = new UMSLEnvelopeBuild();
                JSONObject buildSLBaseHeader = uMSLEnvelopeBuild.buildSLBaseHeader(context2);
                if (buildSLBaseHeader != null && buildSLBaseHeader.has("header")) {
                    try {
                        JSONObject jSONObject = (JSONObject) buildSLBaseHeader.opt("header");
                        if (jSONObject != null) {
                            jSONObject.put(C2518v.f9550aq, C2455a.f9243d);
                        }
                    } catch (Exception unused) {
                    }
                }
                C2536e.m11329a("walle", "[internal] header is " + buildSLBaseHeader.toString());
                JSONObject m10888c = m10888c(context2);
                C2536e.m11329a("walle", "[internal] body is " + m10888c.toString());
                C2536e.m11329a("walle", uMSLEnvelopeBuild.buildSLEnvelope(context2, buildSLBaseHeader, m10888c, C2455a.f9240a).toString());
            } catch (Throwable th3) {
                th = th3;
                C2501e.m10904a(context2, th);
            }
        }
    }

    /* renamed from: b */
    private static void m10887b(Context context, JSONObject jSONObject) {
        if (context != null) {
            String m11029a = C2516t.m11029a(context);
            if (TextUtils.isEmpty(m11029a)) {
                return;
            }
            try {
                JSONObject jSONObject2 = new JSONObject(m11029a);
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                if (jSONObject2.has(C2516t.f9498d)) {
                    jSONObject.put(C2516t.f9498d, jSONObject2.opt(C2516t.f9498d));
                }
                if (jSONObject2.has(C2516t.f9497c)) {
                    jSONObject.put(C2516t.f9497c, jSONObject2.opt(C2516t.f9497c));
                }
                if (jSONObject2.has(C2516t.f9496b)) {
                    jSONObject.put(C2516t.f9496b, jSONObject2.opt(C2516t.f9496b));
                }
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: c */
    public static JSONObject m10888c(Context context) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            try {
                try {
                    JSONArray m10900o = m10900o(applicationContext);
                    if (m10900o != null && m10900o.length() > 0) {
                        jSONObject2.put("run_server", m10900o);
                    }
                } catch (Exception e) {
                    C2501e.m10904a(applicationContext, e);
                }
                try {
                    String m10941k = C2506j.m10941k(applicationContext);
                    if (!TextUtils.isEmpty(m10941k)) {
                        jSONObject2.put("imsi", m10941k);
                    }
                } catch (Exception e2) {
                    C2501e.m10904a(applicationContext, e2);
                }
                try {
                    String m10942l = C2506j.m10942l(applicationContext);
                    if (!TextUtils.isEmpty(m10942l)) {
                        jSONObject2.put("meid", m10942l);
                    }
                } catch (Exception e3) {
                    C2501e.m10904a(applicationContext, e3);
                }
                try {
                    jSONObject.put(C2452c.f9206d, jSONObject2);
                    return jSONObject;
                } catch (JSONException e4) {
                    C2501e.m10904a(applicationContext, e4);
                }
            } catch (Exception unused) {
            }
        }
        return jSONObject;
    }

    /* renamed from: d */
    public static JSONObject m10889d(Context context) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            try {
                JSONArray m10900o = m10900o(applicationContext);
                if (m10900o != null && m10900o.length() > 0) {
                    jSONObject2.put("rs", m10900o);
                }
            } catch (Exception e) {
                C2501e.m10904a(applicationContext, e);
            }
            try {
                JSONArray m10901p = m10901p(applicationContext);
                if (m10901p != null && m10901p.length() > 0) {
                    jSONObject2.put("bstn", m10901p);
                }
            } catch (Exception e2) {
                C2501e.m10904a(applicationContext, e2);
            }
            try {
                JSONArray m10902q = m10902q(applicationContext);
                if (m10902q != null && m10902q.length() > 0) {
                    jSONObject2.put("by", m10902q);
                }
            } catch (Exception e3) {
                C2501e.m10904a(applicationContext, e3);
            }
            try {
                m10883a(applicationContext, jSONObject2);
            } catch (Exception e4) {
                C2501e.m10904a(applicationContext, e4);
            }
            try {
                m10887b(applicationContext, jSONObject2);
            } catch (Exception e5) {
                C2501e.m10904a(applicationContext, e5);
            }
            try {
                JSONObject m10881a = m10881a();
                if (m10881a != null && m10881a.length() > 0) {
                    jSONObject2.put("sd", m10881a);
                }
            } catch (Exception e6) {
                C2501e.m10904a(applicationContext, e6);
            }
            try {
                JSONObject m10885b = m10885b();
                if (m10885b != null && m10885b.length() > 0) {
                    jSONObject2.put("build", m10885b);
                }
            } catch (Exception e7) {
                C2501e.m10904a(applicationContext, e7);
            }
            try {
                JSONObject jSONObject3 = new JSONObject();
                JSONArray m10891f = m10891f(applicationContext);
                if (m10891f != null && m10891f.length() > 0) {
                    try {
                        jSONObject3.put("a_sr", m10891f);
                    } catch (JSONException unused) {
                    }
                }
                JSONArray m11006c = C2514r.m11006c(applicationContext);
                if (m11006c != null && m11006c.length() > 0) {
                    try {
                        jSONObject3.put("stat", m11006c);
                    } catch (JSONException unused2) {
                    }
                }
                jSONObject2.put("sr", jSONObject3);
            } catch (Exception e8) {
                C2501e.m10904a(applicationContext, e8);
            }
            try {
                JSONObject m10892g = m10892g(applicationContext);
                if (m10892g != null && m10892g.length() > 0) {
                    jSONObject2.put("scr", m10892g);
                }
            } catch (Exception e9) {
                C2501e.m10904a(applicationContext, e9);
            }
            try {
                JSONObject m10893h = m10893h(applicationContext);
                if (m10893h != null && m10893h.length() > 0) {
                    jSONObject2.put("sinfo", m10893h);
                }
            } catch (Exception e10) {
                C2501e.m10904a(applicationContext, e10);
            }
            try {
                JSONObject jSONObject4 = new JSONObject();
                JSONArray m10932e = C2506j.m10932e(applicationContext);
                if (m10932e != null && m10932e.length() > 0) {
                    try {
                        jSONObject4.put("wl", m10932e);
                    } catch (JSONException unused3) {
                    }
                }
                JSONArray m10894i = m10894i(applicationContext);
                if (m10894i != null && m10894i.length() > 0) {
                    try {
                        jSONObject4.put("a_wls", m10894i);
                    } catch (JSONException unused4) {
                    }
                }
                jSONObject2.put("winfo", jSONObject4);
            } catch (Exception e11) {
                C2501e.m10904a(applicationContext, e11);
            }
            try {
                JSONArray m10895j = m10895j(applicationContext);
                if (m10895j != null && m10895j.length() > 0) {
                    jSONObject2.put("input", m10895j);
                }
            } catch (Exception e12) {
                C2501e.m10904a(applicationContext, e12);
            }
            try {
                JSONObject m10945o = C2506j.m10945o(applicationContext);
                if (m10945o != null && m10945o.length() > 0) {
                    jSONObject2.put("bt", m10945o);
                }
            } catch (Exception e13) {
                C2501e.m10904a(applicationContext, e13);
            }
            try {
                JSONArray m10896k = m10896k(applicationContext);
                if (m10896k != null && m10896k.length() > 0) {
                    jSONObject2.put("cam", m10896k);
                }
            } catch (Exception e14) {
                C2501e.m10904a(applicationContext, e14);
            }
            try {
                JSONArray m10897l = m10897l(applicationContext);
                if (m10897l != null && m10897l.length() > 0) {
                    jSONObject2.put("appls", m10897l);
                }
            } catch (Exception e15) {
                C2501e.m10904a(applicationContext, e15);
            }
            try {
                JSONObject m10898m = m10898m(applicationContext);
                if (m10898m != null && m10898m.length() > 0) {
                    jSONObject2.put("mem", m10898m);
                }
            } catch (Exception e16) {
                C2501e.m10904a(applicationContext, e16);
            }
            try {
                JSONObject m10899n = m10899n(applicationContext);
                if (m10899n != null && m10899n.length() > 0) {
                    jSONObject2.put("lbs", m10899n);
                }
            } catch (Exception e17) {
                C2501e.m10904a(applicationContext, e17);
            }
            try {
                jSONObject.put(C2518v.f9540ag, jSONObject2);
                return jSONObject;
            } catch (JSONException e18) {
                C2501e.m10904a(applicationContext, e18);
            }
        }
        return jSONObject;
    }

    /* renamed from: e */
    public static String m10890e(Context context) {
        try {
            C2543e m11376a = C2543e.m11376a(context);
            if (m11376a != null) {
                m11376a.m11381a();
                String encodeToString = Base64.encodeToString(new C2465aj().m10741a(m11376a.m11383b()), 0);
                if (!TextUtils.isEmpty(encodeToString)) {
                    return encodeToString;
                }
            }
        } catch (Exception e) {
            C2501e.m10904a(context, e);
        }
        return null;
    }

    /* renamed from: f */
    public static JSONArray m10891f(Context context) {
        if (context != null) {
            return C2515s.m11027g(context.getApplicationContext());
        }
        return null;
    }

    /* renamed from: g */
    public static JSONObject m10892g(Context context) {
        DisplayMetrics displayMetrics;
        JSONObject jSONObject = new JSONObject();
        if (context != null) {
            try {
                jSONObject.put("a_st_h", C2506j.m10937h(context));
                jSONObject.put("a_nav_h", C2506j.m10939i(context));
                if (context.getResources() != null && (displayMetrics = context.getResources().getDisplayMetrics()) != null) {
                    jSONObject.put("a_den", displayMetrics.density);
                    jSONObject.put("a_dpi", displayMetrics.densityDpi);
                    return jSONObject;
                }
            } catch (Exception e) {
                C2501e.m10904a(context, e);
            }
        }
        return jSONObject;
    }

    /* renamed from: h */
    public static JSONObject m10893h(Context context) {
        JSONObject jSONObject = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            String packageName = applicationContext.getPackageName();
            try {
                jSONObject.put("a_fit", C2506j.m10918a(applicationContext, packageName));
                jSONObject.put("a_alut", C2506j.m10921b(applicationContext, packageName));
                jSONObject.put("a_c", C2506j.m10926c(applicationContext, packageName));
                jSONObject.put("a_uid", C2506j.m10927d(applicationContext, packageName));
                if (C2506j.m10920a()) {
                    jSONObject.put("a_root", 1);
                } else {
                    jSONObject.put("a_root", 0);
                }
                jSONObject.put("a_ua", C2506j.m10949s(applicationContext));
                jSONObject.put("tf", C2506j.m10922b());
                jSONObject.put("s_fs", C2506j.m10917a(applicationContext));
                jSONObject.put("a_meid", C2506j.m10942l(applicationContext));
                jSONObject.put("a_imsi", C2506j.m10941k(applicationContext));
                jSONObject.put("st", C2506j.m10933f());
                String m11021b = C2515s.m11021b(applicationContext);
                if (!TextUtils.isEmpty(m11021b)) {
                    try {
                        jSONObject.put("a_iccid", m11021b);
                    } catch (Exception unused) {
                    }
                }
                String m11023c = C2515s.m11023c(applicationContext);
                if (!TextUtils.isEmpty(m11023c)) {
                    try {
                        jSONObject.put("a_simei", m11023c);
                    } catch (Exception unused2) {
                    }
                }
                jSONObject.put("hn", C2506j.m10936g());
                jSONObject.put("ts", System.currentTimeMillis());
                return jSONObject;
            } catch (Exception e) {
                C2501e.m10904a(applicationContext, e);
            }
        }
        return jSONObject;
    }

    /* renamed from: i */
    public static JSONArray m10894i(Context context) {
        Context applicationContext;
        List<ScanResult> m10923b;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (m10923b = C2506j.m10923b((applicationContext = context.getApplicationContext()))) != null && m10923b.size() > 0) {
            for (ScanResult scanResult : m10923b) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("a_bssid", scanResult.BSSID);
                    jSONObject.put("a_ssid", scanResult.BSSID);
                    jSONObject.put("a_cap", scanResult.capabilities);
                    jSONObject.put("a_fcy", scanResult.frequency);
                    jSONObject.put("ts", System.currentTimeMillis());
                    if (Build.VERSION.SDK_INT >= 23) {
                        jSONObject.put("a_c0", scanResult.centerFreq0);
                        jSONObject.put("a_c1", scanResult.centerFreq1);
                        jSONObject.put("a_cw", scanResult.channelWidth);
                        if (scanResult.is80211mcResponder()) {
                            jSONObject.put("a_is80211", 1);
                        } else {
                            jSONObject.put("a_is80211", 0);
                        }
                        if (scanResult.isPasspointNetwork()) {
                            jSONObject.put("a_isppn", 1);
                        } else {
                            jSONObject.put("a_isppn", 0);
                        }
                        jSONObject.put("a_ofn", scanResult.operatorFriendlyName);
                        jSONObject.put("a_vn", scanResult.venueName);
                    }
                    jSONObject.put("a_dc", scanResult.describeContents());
                    jSONArray.put(jSONObject);
                } catch (Exception e) {
                    C2501e.m10904a(applicationContext, e);
                }
            }
        }
        return jSONArray;
    }

    /* renamed from: j */
    public static JSONArray m10895j(Context context) {
        Context applicationContext;
        List<InputMethodInfo> m10943m;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (m10943m = C2506j.m10943m((applicationContext = context.getApplicationContext()))) != null) {
            for (InputMethodInfo inputMethodInfo : m10943m) {
                try {
                    CharSequence loadLabel = inputMethodInfo.loadLabel(applicationContext.getPackageManager());
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("a_la", loadLabel);
                    jSONObject.put("a_pn", inputMethodInfo.getPackageName());
                    jSONObject.put("ts", System.currentTimeMillis());
                    jSONArray.put(jSONObject);
                } catch (Exception e) {
                    C2501e.m10904a(applicationContext, e);
                }
            }
        }
        return jSONArray;
    }

    /* renamed from: k */
    public static JSONArray m10896k(Context context) {
        Context applicationContext;
        List<C2514r.a> m11010e;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (m11010e = C2514r.m11010e((applicationContext = context.getApplicationContext()))) != null && !m11010e.isEmpty()) {
            for (C2514r.a aVar : m11010e) {
                if (aVar != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("a_w", aVar.f9489a);
                        jSONObject.put("a_h", aVar.f9490b);
                        jSONObject.put("ts", System.currentTimeMillis());
                        jSONArray.put(jSONObject);
                    } catch (Exception e) {
                        C2501e.m10904a(applicationContext, e);
                    }
                }
            }
        }
        return jSONArray;
    }

    /* renamed from: l */
    public static JSONArray m10897l(Context context) {
        Context applicationContext;
        List<C2506j.a> m10946p;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (m10946p = C2506j.m10946p((applicationContext = context.getApplicationContext()))) != null && !m10946p.isEmpty()) {
            for (C2506j.a aVar : m10946p) {
                if (aVar != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("a_pn", aVar.f9410a);
                        jSONObject.put("a_la", aVar.f9411b);
                        jSONObject.put("ts", System.currentTimeMillis());
                        jSONArray.put(jSONObject);
                    } catch (Exception e) {
                        C2501e.m10904a(applicationContext, e);
                    }
                }
            }
        }
        return jSONArray;
    }

    /* renamed from: m */
    public static JSONObject m10898m(Context context) {
        Context applicationContext;
        ActivityManager.MemoryInfo m10947q;
        JSONObject jSONObject = new JSONObject();
        if (context != null && (m10947q = C2506j.m10947q((applicationContext = context.getApplicationContext()))) != null) {
            try {
                if (Build.VERSION.SDK_INT >= 16) {
                    jSONObject.put("t", m10947q.totalMem);
                }
                jSONObject.put("f", m10947q.availMem);
                jSONObject.put("ts", System.currentTimeMillis());
                return jSONObject;
            } catch (Exception e) {
                C2501e.m10904a(applicationContext, e);
            }
        }
        return jSONObject;
    }

    /* renamed from: n */
    private static JSONObject m10899n(Context context) {
        if (context != null) {
            return C2504h.m10915b(context.getApplicationContext());
        }
        return null;
    }

    /* renamed from: o */
    private static JSONArray m10900o(Context context) {
        List<ActivityManager.RunningServiceInfo> runningServices;
        JSONArray jSONArray = null;
        if (context != null) {
            try {
                ActivityManager activityManager = (ActivityManager) context.getApplicationContext().getSystemService("activity");
                if (activityManager != null && (runningServices = activityManager.getRunningServices(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) != null && !runningServices.isEmpty()) {
                    for (int i = 0; i < runningServices.size(); i++) {
                        if (runningServices.get(i) != null && runningServices.get(i).service != null && runningServices.get(i).service.getClassName() != null && runningServices.get(i).service.getPackageName() != null) {
                            try {
                                JSONObject jSONObject = new JSONObject();
                                jSONObject.put("sn", runningServices.get(i).service.getClassName().toString());
                                jSONObject.put("pn", runningServices.get(i).service.getPackageName().toString());
                                if (jSONArray == null) {
                                    jSONArray = new JSONArray();
                                }
                                jSONArray.put(jSONObject);
                            } catch (JSONException unused) {
                            }
                        }
                    }
                    if (jSONArray != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        try {
                            jSONObject2.put("ts", System.currentTimeMillis());
                            jSONObject2.put("ls", jSONArray);
                        } catch (JSONException unused2) {
                        }
                        JSONObject jSONObject3 = new JSONObject();
                        try {
                            jSONObject3.put("sers", jSONObject2);
                        } catch (JSONException unused3) {
                        }
                        JSONArray jSONArray2 = new JSONArray();
                        try {
                            jSONArray2.put(jSONObject3);
                            return jSONArray2;
                        } catch (Throwable th) {
                            th = th;
                            jSONArray = jSONArray2;
                            C2501e.m10904a(context, th);
                            return jSONArray;
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return jSONArray;
    }

    /* renamed from: p */
    private static JSONArray m10901p(Context context) {
        JSONArray jSONArray = new JSONArray();
        JSONObject m11024d = C2515s.m11024d(context);
        if (m11024d != null) {
            try {
                String m11025e = C2515s.m11025e(context);
                if (!TextUtils.isEmpty(m11025e)) {
                    m11024d.put("sig", m11025e);
                }
                jSONArray.put(m11024d);
            } catch (Exception unused) {
            }
        }
        return jSONArray;
    }

    /* renamed from: q */
    private static JSONArray m10902q(Context context) {
        JSONArray jSONArray = new JSONArray();
        String m11026f = C2515s.m11026f(context);
        if (!TextUtils.isEmpty(m11026f)) {
            try {
                jSONArray.put(new JSONObject(m11026f));
            } catch (Exception unused) {
            }
        }
        return jSONArray;
    }

    /* renamed from: r */
    private static JSONArray m10903r(Context context) {
        JSONArray jSONArray = new JSONArray();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            String m11019a = C2515s.m11019a(applicationContext);
            JSONObject jSONObject = null;
            if (!TextUtils.isEmpty(m11019a)) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put(C2518v.f9526T, m11019a);
                    } catch (Exception unused) {
                    }
                    jSONObject = jSONObject2;
                } catch (Exception unused2) {
                }
            }
            String m11021b = C2515s.m11021b(applicationContext);
            if (!TextUtils.isEmpty(m11021b)) {
                if (jSONObject == null) {
                    try {
                        jSONObject = new JSONObject();
                    } catch (Exception unused3) {
                    }
                }
                jSONObject.put(C2518v.f9527U, m11021b);
            }
            String m11023c = C2515s.m11023c(applicationContext);
            if (!TextUtils.isEmpty(m11023c)) {
                if (jSONObject == null) {
                    try {
                        jSONObject = new JSONObject();
                    } catch (Exception unused4) {
                    }
                }
                jSONObject.put(C2518v.f9528V, m11023c);
            }
            JSONObject m11024d = C2515s.m11024d(applicationContext);
            if (m11024d != null) {
                try {
                    String m11025e = C2515s.m11025e(applicationContext);
                    if (!TextUtils.isEmpty(m11025e)) {
                        m11024d.put("signalscale", m11025e);
                    }
                    if (jSONObject == null) {
                        jSONObject = new JSONObject();
                    }
                    jSONObject.put(C2518v.f9530X, m11024d);
                } catch (Exception unused5) {
                }
            }
            String m11026f = C2515s.m11026f(applicationContext);
            if (!TextUtils.isEmpty(m11026f)) {
                if (jSONObject == null) {
                    try {
                        jSONObject = new JSONObject();
                    } catch (Exception unused6) {
                    }
                }
                jSONObject.put(C2518v.f9525S, new JSONObject(m11026f));
            }
            if (jSONObject != null) {
                jSONArray.put(jSONObject);
            }
        }
        return jSONArray;
    }
}
