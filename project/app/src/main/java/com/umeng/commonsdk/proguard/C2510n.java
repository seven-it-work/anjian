package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.commonsdk.proguard.C2506j;
import com.umeng.commonsdk.statistics.common.C2536e;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.umeng.commonsdk.proguard.n */
/* loaded from: classes.dex */
public class C2510n {

    /* renamed from: a */
    private static final String f9443a = "info";

    /* renamed from: b */
    private static final String f9444b = "a_na";

    /* renamed from: c */
    private static final String f9445c = "a_st";

    /* renamed from: d */
    private static final String f9446d = "a_ad";

    /* renamed from: e */
    private static final String f9447e = "blueinfo";

    /* renamed from: f */
    private static final String f9448f = "a_dc";

    /* renamed from: g */
    private static final String f9449g = "bssid";

    /* renamed from: h */
    private static final String f9450h = "ssid";

    /* renamed from: i */
    private static final String f9451i = "a_fcy";

    /* renamed from: j */
    private static final String f9452j = "a_hssid";

    /* renamed from: k */
    private static final String f9453k = "a_ip";

    /* renamed from: l */
    private static final String f9454l = "a_ls";

    /* renamed from: m */
    private static final String f9455m = "a_mac";

    /* renamed from: n */
    private static final String f9456n = "a_nid";

    /* renamed from: o */
    private static final String f9457o = "rssi";

    /* renamed from: p */
    private static final String f9458p = "sta";

    /* renamed from: q */
    private static final String f9459q = "ts";

    /* renamed from: r */
    private static final String f9460r = "wifiinfo";

    /* renamed from: s */
    private static final String f9461s = "ua";

    /* renamed from: a */
    public static JSONObject m10968a(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f9443a, 0);
        if (sharedPreferences != null) {
            try {
                String string = sharedPreferences.getString(f9447e, null);
                if (string != null) {
                    return new JSONObject(string);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    /* renamed from: a */
    public static void m10969a(Context context, C2506j.b bVar) {
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f9443a, 0);
            String str = null;
            if (sharedPreferences != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(f9444b, bVar.f9414c);
                jSONObject.put(f9445c, bVar.f9413b);
                jSONObject.put(f9446d, bVar.f9412a);
                jSONObject.put("ts", System.currentTimeMillis());
                str = jSONObject.toString();
            }
            if (str != null) {
                sharedPreferences.edit().putString(f9447e, str).commit();
            }
        } catch (Exception e) {
            C2536e.m11350e("saveBluetoothInfo:" + e.getMessage());
        }
    }

    /* renamed from: a */
    public static void m10970a(Context context, C2506j.c cVar) {
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f9443a, 0);
            String str = null;
            if (sharedPreferences != null) {
                String string = sharedPreferences.getString(f9460r, null);
                JSONArray jSONArray = string == null ? new JSONArray() : new JSONArray(string);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(f9448f, cVar.f9415a);
                jSONObject.put(f9449g, cVar.f9416b);
                jSONObject.put(f9450h, cVar.f9417c);
                jSONObject.put(f9451i, cVar.f9418d);
                jSONObject.put(f9452j, cVar.f9419e);
                jSONObject.put(f9453k, cVar.f9420f);
                jSONObject.put(f9454l, cVar.f9421g);
                jSONObject.put(f9455m, cVar.f9422h);
                jSONObject.put(f9456n, cVar.f9423i);
                jSONObject.put(f9457o, cVar.f9424j);
                jSONObject.put(f9458p, cVar.f9425k);
                jSONObject.put("ts", cVar.f9426l);
                jSONArray.put(jSONObject);
                str = jSONArray.toString();
            }
            if (str != null) {
                sharedPreferences.edit().putString(f9460r, str).commit();
            }
        } catch (Exception e) {
            C2536e.m11350e(e.getMessage());
        }
    }

    /* renamed from: a */
    public static void m10971a(Context context, String str) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f9443a, 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString(f9461s, str).commit();
        }
    }

    /* renamed from: b */
    public static JSONArray m10972b(Context context) {
        String string;
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f9443a, 0);
            if (sharedPreferences != null && (string = sharedPreferences.getString(f9460r, null)) != null) {
                return new JSONArray(string);
            }
        } catch (Exception e) {
            C2536e.m11350e(e.getMessage());
        }
        return null;
    }

    /* renamed from: c */
    public static void m10973c(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f9443a, 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().remove(f9460r).commit();
        }
    }

    /* renamed from: d */
    public static String m10974d(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f9443a, 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getString(f9461s, null);
        }
        return null;
    }
}
