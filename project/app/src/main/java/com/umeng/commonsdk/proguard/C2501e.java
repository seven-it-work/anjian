package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.analytics.pro.C2427b;
import com.umeng.commonsdk.stateless.C2528f;
import com.umeng.commonsdk.stateless.UMSLEnvelopeBuild;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.umeng.commonsdk.proguard.e */
/* loaded from: classes.dex */
public class C2501e {
    /* renamed from: a */
    public static void m10904a(final Context context, final Throwable th) {
        new Thread(new Runnable() { // from class: com.umeng.commonsdk.proguard.e.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    synchronized (this) {
                        if (context != null && th != null) {
                            String m10905a = C2502f.m10905a(th);
                            if (!TextUtils.isEmpty(m10905a)) {
                                C2528f.m11242a(context, context.getFilesDir() + "/stateless/" + Base64.encodeToString(C2455a.f9241b.getBytes(), 0), 50);
                                UMSLEnvelopeBuild uMSLEnvelopeBuild = new UMSLEnvelopeBuild();
                                JSONObject buildSLBaseHeader = uMSLEnvelopeBuild.buildSLBaseHeader(context);
                                try {
                                    JSONObject jSONObject = new JSONObject();
                                    jSONObject.put(C2427b.f8956W, m10905a);
                                    jSONObject.put("ts", System.currentTimeMillis());
                                    JSONObject jSONObject2 = new JSONObject();
                                    jSONObject2.put("crash", jSONObject);
                                    JSONObject jSONObject3 = new JSONObject();
                                    jSONObject3.put("tp", jSONObject2);
                                    JSONObject buildSLEnvelope = uMSLEnvelopeBuild.buildSLEnvelope(context, buildSLBaseHeader, jSONObject3, C2455a.f9240a);
                                    if (buildSLEnvelope != null) {
                                        buildSLEnvelope.has(C2427b.f8975ao);
                                    }
                                } catch (JSONException unused) {
                                }
                            }
                        }
                    }
                } catch (Throwable unused2) {
                }
            }
        }).start();
    }
}
