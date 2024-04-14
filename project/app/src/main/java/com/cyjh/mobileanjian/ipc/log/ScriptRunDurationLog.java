package com.cyjh.mobileanjian.ipc.log;

import android.content.Context;
import android.os.SystemClock;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ScriptRunDurationLog extends AbstractC1590a {

    /* renamed from: d */
    private static final String f5979d = "SetOperationLog";

    /* renamed from: e */
    private static final int f5980e = 4;

    /* renamed from: f */
    private long f5981f;

    public ScriptRunDurationLog(Context context) {
        super(context);
    }

    @Override // com.cyjh.mobileanjian.ipc.log.AbstractC1590a
    /* renamed from: a */
    protected final void mo7148a() {
        this.f5987c = "http://api4.mobileanjian.com/api" + File.separator + f5979d;
    }

    @Override // com.cyjh.mobileanjian.ipc.log.AbstractC1590a
    /* renamed from: b */
    protected final String mo7149b() {
        C1591b m7151a = C1591b.m7151a();
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("PhoneModel", m7151a.f5991a);
            jSONObject2.put("MACMD5", m7151a.f5993c);
            jSONObject2.put("AndroidVersion", m7151a.f5992b);
            jSONObject2.put("ROM", m7151a.f5994d);
            jSONObject2.put("PackageName", m7151a.f5996f);
            jSONObject2.put("IsNew", m7151a.f6002l ? "1" : "0");
            jSONObject2.put("AppID", m7151a.f5998h);
            jSONObject2.put("AppVersion", m7151a.f6000j);
            jSONObject2.put("Version", m7151a.f6001k);
            jSONObject2.put("IsFree", m7151a.f5999i ? "1" : "0");
            jSONObject2.put("UsedTime", String.valueOf((SystemClock.uptimeMillis() - this.f5981f) / 1000));
            jSONObject.put("LogType", "4");
            jSONObject.put("Data", jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    public ScriptRunDurationLog setScriptStartTime(long j) {
        this.f5981f = j;
        return this;
    }
}
