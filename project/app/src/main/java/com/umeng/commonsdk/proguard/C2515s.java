package com.umeng.commonsdk.proguard;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import com.umeng.commonsdk.utils.UMUtils;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.umeng.commonsdk.proguard.s */
/* loaded from: classes.dex */
public class C2515s {

    /* renamed from: a */
    private static final String f9492a = "um_pri";

    /* renamed from: b */
    private static final String f9493b = "um_common_strength";

    /* renamed from: c */
    private static final String f9494c = "um_common_battery";

    /* renamed from: a */
    public static String m11019a(Context context) {
        if (context == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return Settings.Secure.getString(context.getContentResolver(), "bluetooth_address");
        }
        if (UMUtils.checkPermission(context, "android.permission.BLUETOOTH")) {
            return BluetoothAdapter.getDefaultAdapter().getAddress();
        }
        return null;
    }

    /* renamed from: a */
    public static void m11020a(Context context, String str) {
        SharedPreferences sharedPreferences;
        if (context == null || TextUtils.isEmpty(str) || (sharedPreferences = context.getApplicationContext().getSharedPreferences(f9492a, 0)) == null) {
            return;
        }
        sharedPreferences.edit().putString(f9493b, str).commit();
    }

    /* renamed from: b */
    public static String m11021b(Context context) {
        if (context == null || !UMUtils.checkPermission(context, "android.permission.READ_PHONE_STATE")) {
            return null;
        }
        return ((TelephonyManager) context.getSystemService("phone")).getSimSerialNumber();
    }

    /* renamed from: b */
    public static void m11022b(Context context, String str) {
        SharedPreferences sharedPreferences;
        if (context == null || TextUtils.isEmpty(str) || (sharedPreferences = context.getApplicationContext().getSharedPreferences(f9492a, 0)) == null) {
            return;
        }
        sharedPreferences.edit().putString(f9494c, str).commit();
    }

    /* renamed from: c */
    public static String m11023c(Context context) {
        if (context == null || Build.VERSION.SDK_INT < 23 || !UMUtils.checkPermission(context, "android.permission.READ_PHONE_STATE")) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            Class<?> cls = telephonyManager.getClass();
            if (((Integer) cls.getMethod("getPhoneCount", new Class[0]).invoke(telephonyManager, new Object[0])).intValue() == 2) {
                return (String) cls.getMethod("getDeviceId", Integer.TYPE).invoke(telephonyManager, 2);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.telephony.CellLocation] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v8, types: [org.json.JSONObject] */
    /* renamed from: d */
    public static JSONObject m11024d(Context context) {
        String str;
        long currentTimeMillis;
        if (context == null || !UMUtils.checkPermission(context, "android.permission.ACCESS_COARSE_LOCATION")) {
            return null;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        ?? cellLocation = telephonyManager.getCellLocation();
        int phoneType = telephonyManager.getPhoneType();
        try {
            if (phoneType == 1 && (cellLocation instanceof GsmCellLocation)) {
                GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                int cid = gsmCellLocation.getCid();
                if (cid <= 0 || cid == 65535) {
                    return null;
                }
                int lac = gsmCellLocation.getLac();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("cid", cid);
                jSONObject.put("lacid", lac);
                str = "ts";
                currentTimeMillis = System.currentTimeMillis();
                cellLocation = jSONObject;
            } else {
                if (phoneType != 2 || !(cellLocation instanceof CdmaCellLocation)) {
                    return null;
                }
                CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cellLocation;
                int baseStationId = cdmaCellLocation.getBaseStationId();
                int networkId = cdmaCellLocation.getNetworkId();
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("cid", baseStationId);
                jSONObject2.put("lacid", networkId);
                str = "ts";
                currentTimeMillis = System.currentTimeMillis();
                cellLocation = jSONObject2;
            }
            cellLocation.put(str, currentTimeMillis);
        } catch (Exception unused) {
        }
        return cellLocation;
    }

    /* renamed from: e */
    public static String m11025e(Context context) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(f9492a, 0)) == null) {
            return null;
        }
        return sharedPreferences.getString(f9493b, null);
    }

    /* renamed from: f */
    public static String m11026f(Context context) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(f9492a, 0)) == null) {
            return null;
        }
        return sharedPreferences.getString(f9494c, null);
    }

    /* renamed from: g */
    public static JSONArray m11027g(Context context) {
        JSONArray jSONArray = new JSONArray();
        if (context != null) {
            for (Sensor sensor : ((SensorManager) context.getSystemService(C2518v.f9529W)).getSensorList(-1)) {
                if (sensor != null) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("a_type", sensor.getType());
                        jSONObject.put("a_ven", sensor.getVendor());
                        if (Build.VERSION.SDK_INT >= 24) {
                            jSONObject.put("a_id", sensor.getId());
                        }
                        jSONObject.put("a_na", sensor.getName());
                        jSONObject.put("a_ver", sensor.getVersion());
                        jSONObject.put("a_mar", sensor.getMaximumRange());
                        jSONObject.put("a_ver", sensor.getVersion());
                        jSONObject.put("a_res", sensor.getResolution());
                        jSONObject.put("a_po", sensor.getPower());
                        if (Build.VERSION.SDK_INT >= 9) {
                            jSONObject.put("a_mid", sensor.getMinDelay());
                        }
                        if (Build.VERSION.SDK_INT >= 21) {
                            jSONObject.put("a_mad", sensor.getMaxDelay());
                        }
                        jSONObject.put("ts", System.currentTimeMillis());
                    } catch (Exception unused) {
                    }
                    jSONArray.put(jSONObject);
                }
            }
        }
        return jSONArray;
    }
}
