package com.cyjh.mobileanjian.ipc.log;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.cyjh.mobileanjian.ipc.stuff.MqmCode;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ScriptUnexpectedStopLog extends AbstractC1590a {

    /* renamed from: d */
    private static final String f5982d = "SetErrorLog";

    /* renamed from: e */
    private int f5983e;

    /* renamed from: f */
    private String f5984f;

    public ScriptUnexpectedStopLog(Context context) {
        super(context);
    }

    /* renamed from: a */
    private static String m7150a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return "No Network";
        }
        switch (activeNetworkInfo.getType()) {
            case 0:
                return "MOBILE";
            case 1:
                return "WIFI";
            default:
                return "UNKNOWN";
        }
    }

    @Override // com.cyjh.mobileanjian.ipc.log.AbstractC1590a
    /* renamed from: a */
    protected final void mo7148a() {
        this.f5987c = "http://api4.mobileanjian.com/api" + File.separator + f5982d;
    }

    @Override // com.cyjh.mobileanjian.ipc.log.AbstractC1590a
    /* renamed from: b */
    protected final String mo7149b() {
        JSONObject jSONObject;
        NetworkInfo activeNetworkInfo;
        String str;
        C1591b m7151a = C1591b.m7151a();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject = new JSONObject();
            jSONObject.put("PhoneModel", m7151a.f5991a);
            jSONObject.put("MACMD5", m7151a.f5993c);
            jSONObject.put("AndroidVersion", m7151a.f5992b);
            jSONObject.put("ROM", m7151a.f5994d);
            jSONObject.put("PackageName", m7151a.f5996f);
            jSONObject.put("AppID", m7151a.f5998h);
            jSONObject.put("AppVersion", m7151a.f6000j);
            jSONObject.put("Version", m7151a.f6001k);
            jSONObject.put("IsFree", m7151a.f5999i ? "1" : "0");
            activeNetworkInfo = ((ConnectivityManager) this.f5986b.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (JSONException e) {
            e.printStackTrace();
        }
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            switch (activeNetworkInfo.getType()) {
                case 0:
                    str = "MOBILE";
                    break;
                case 1:
                    str = "WIFI";
                    break;
                default:
                    str = "UNKNOWN";
                    break;
            }
            jSONObject.put("NetworkType", str);
            jSONObject.put("MqmCode", String.valueOf(this.f5983e));
            jSONObject.put("MqmMessage", MqmCode.getMessageFromCode(this.f5983e));
            jSONObject.put("ExtraMessage", this.f5984f);
            jSONObject2.put("Data", jSONObject);
            return jSONObject2.toString();
        }
        str = "No Network";
        jSONObject.put("NetworkType", str);
        jSONObject.put("MqmCode", String.valueOf(this.f5983e));
        jSONObject.put("MqmMessage", MqmCode.getMessageFromCode(this.f5983e));
        jSONObject.put("ExtraMessage", this.f5984f);
        jSONObject2.put("Data", jSONObject);
        return jSONObject2.toString();
    }

    public ScriptUnexpectedStopLog setExtraLog(String str) {
        this.f5984f = str;
        return this;
    }

    public ScriptUnexpectedStopLog setMqmCode(int i) {
        this.f5983e = i;
        return this;
    }
}
