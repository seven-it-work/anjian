package com.umeng.commonsdk.amap;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.commonsdk.proguard.C2501e;
import com.umeng.commonsdk.stateless.C2528f;
import com.umeng.commonsdk.stateless.UMSLEnvelopeBuild;
import com.umeng.commonsdk.statistics.common.C2536e;
import java.util.Iterator;
import java.util.Vector;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.umeng.commonsdk.amap.b */
/* loaded from: classes.dex */
public class C2449b extends Thread {

    /* renamed from: e */
    private static final String f9186e = "info";

    /* renamed from: f */
    private static final String f9187f = "ts";

    /* renamed from: g */
    private static final String f9188g = "amap_lbs";

    /* renamed from: h */
    private static final String f9189h = "tp";

    /* renamed from: a */
    private Context f9190a;

    /* renamed from: b */
    private int f9191b;

    /* renamed from: c */
    private long f9192c;

    /* renamed from: d */
    private Vector<JSONObject> f9193d;

    /* renamed from: i */
    private int f9194i = 1;

    /* renamed from: j */
    private int f9195j = 1;

    public C2449b(Context context, int i, long j) {
        this.f9191b = 0;
        C2536e.m11329a("AmapLBS", "new UMAmapTimer");
        if (context != null) {
            this.f9190a = context.getApplicationContext();
            this.f9191b = i;
            this.f9192c = j;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String str;
        Object[] objArr;
        try {
            if (this.f9190a == null) {
                return;
            }
            while (true) {
                if (this.f9191b == 1) {
                    if (C2536e.f9760a) {
                        C2536e.m11329a("AmapLBS", "[lbs-build] timer begin : index is " + this.f9194i);
                        this.f9194i = this.f9194i + 1;
                    }
                    byte[] m10638b = new C2448a(this.f9190a).m10638b();
                    if (m10638b != null) {
                        String trim = Base64.encodeToString(m10638b, 0).trim();
                        if (TextUtils.isEmpty(trim)) {
                            str = "AmapLBS";
                            objArr = new Object[]{"[lbs-build] amap result is empty"};
                        } else {
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject.put(f9186e, trim);
                                jSONObject.put("ts", System.currentTimeMillis());
                            } catch (Exception unused) {
                            }
                            if (this.f9193d == null) {
                                this.f9193d = new Vector<>();
                            }
                            this.f9193d.add(jSONObject);
                            if (this.f9193d.size() == 30) {
                                C2536e.m11329a("AmapLBS", "[lbs-build] begin build envelope , cache size is " + this.f9193d.size());
                                JSONArray jSONArray = new JSONArray();
                                Iterator<JSONObject> it = this.f9193d.iterator();
                                while (it.hasNext()) {
                                    JSONObject next = it.next();
                                    if (next != null) {
                                        try {
                                            jSONArray.put(next);
                                        } catch (Exception unused2) {
                                        }
                                    }
                                }
                                JSONObject jSONObject2 = new JSONObject();
                                try {
                                    jSONObject2.put(f9188g, jSONArray);
                                } catch (Exception unused3) {
                                }
                                JSONObject jSONObject3 = new JSONObject();
                                try {
                                    jSONObject3.put(f9189h, jSONObject2);
                                } catch (Exception unused4) {
                                }
                                if (this.f9193d != null) {
                                    this.f9193d.clear();
                                    this.f9193d = null;
                                }
                                C2528f.m11242a(this.f9190a, this.f9190a.getFilesDir() + "/stateless/" + Base64.encodeToString(UMAmapConfig.AMAP_CACHE_PATH.getBytes(), 0), 50);
                                StringBuilder sb = new StringBuilder("[lbs-build] begin build envelope is ");
                                sb.append(jSONObject3.toString());
                                C2536e.m11329a("AmapLBS", sb.toString());
                                UMSLEnvelopeBuild uMSLEnvelopeBuild = new UMSLEnvelopeBuild();
                                uMSLEnvelopeBuild.buildSLEnvelope(this.f9190a, uMSLEnvelopeBuild.buildSLBaseHeader(this.f9190a), jSONObject3, UMAmapConfig.AMAP_CACHE_PATH);
                            }
                        }
                    } else {
                        str = "AmapLBS";
                        objArr = new Object[]{"[lbs-build] amap result is null"};
                    }
                    C2536e.m11329a(str, objArr);
                } else if (this.f9191b != 2) {
                    return;
                }
                try {
                    sleep(this.f9192c);
                } catch (Exception e) {
                    C2501e.m10904a(this.f9190a, e);
                }
            }
        } catch (Exception e2) {
            C2501e.m10904a(this.f9190a, e2);
        }
    }
}
