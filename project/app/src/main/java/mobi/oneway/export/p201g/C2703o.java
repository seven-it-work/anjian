package mobi.oneway.export.p201g;

import android.os.Build;
import com.cyjh.elfin.p073a.C1225b;
import mobi.oneway.export.C2640a;
import mobi.oneway.export.p192a.C2642b;
import org.json.JSONObject;

/* renamed from: mobi.oneway.export.g.o */
/* loaded from: classes2.dex */
public class C2703o {
    /* renamed from: a */
    public static JSONObject m12248a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("publishId", C2642b.m11902b());
            jSONObject.put("bundleId", C2694f.m12180b());
            jSONObject.put("bundleVersion", C2694f.m12181c());
            jSONObject.put("sdkVersion", C2640a.f10158f);
            jSONObject.put("platform", C1225b.f4510b);
            return jSONObject;
        } catch (Exception e) {
            e.printStackTrace();
            return jSONObject;
        }
    }

    /* renamed from: b */
    public static JSONObject m12249b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("apiLevel", Build.VERSION.SDK_INT);
            jSONObject.put("imei", C2694f.m12177a());
            jSONObject.put("androidId", C2694f.m12183e());
            jSONObject.put("deviceMake", Build.BRAND);
            jSONObject.put("deviceModel", Build.MODEL);
            jSONObject.put("osVersion", Build.VERSION.RELEASE);
            return jSONObject;
        } catch (Exception e) {
            e.printStackTrace();
            return jSONObject;
        }
    }
}
