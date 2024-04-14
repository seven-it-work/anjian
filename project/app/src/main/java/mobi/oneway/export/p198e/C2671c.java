package mobi.oneway.export.p198e;

import java.io.IOException;
import mobi.oneway.export.enums.PluginErrorType;
import mobi.oneway.export.p192a.C2641a;
import mobi.oneway.export.p197d.C2668f;
import mobi.oneway.export.p201g.C2703o;
import org.json.JSONException;
import org.json.JSONObject;
import org.litepal.p246g.InterfaceC3057b;

/* renamed from: mobi.oneway.export.e.c */
/* loaded from: classes2.dex */
public class C2671c extends Thread {

    /* renamed from: a */
    private JSONObject f10278a;

    public C2671c(JSONObject jSONObject) {
        this.f10278a = jSONObject;
    }

    /* renamed from: a */
    public static void m12064a(PluginErrorType pluginErrorType, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(InterfaceC3057b.c.f11209c, pluginErrorType);
            jSONObject.put(InterfaceC3057b.c.f11208b, "Error");
            jSONObject.put("stack", str);
            jSONObject.put("zc", C2703o.m12248a());
            jSONObject.put("zm", C2703o.m12249b());
            new C2671c(jSONObject).start();
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        super.run();
        try {
            new C2668f(C2641a.f10164f, C2641a.f10160b).m12019a(this.f10278a).m12028c("POST").m12040n();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
