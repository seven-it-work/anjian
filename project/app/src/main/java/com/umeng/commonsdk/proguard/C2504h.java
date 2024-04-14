package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.location.Location;
import android.os.Looper;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.statistics.common.C2536e;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.umeng.commonsdk.proguard.h */
/* loaded from: classes.dex */
public class C2504h {

    /* renamed from: a */
    public static final String f9401a = "umeng_common_config";

    /* renamed from: b */
    public static final String f9402b = "location_json";

    /* renamed from: c */
    public static final String f9403c = "lng";

    /* renamed from: d */
    public static final String f9404d = "lat";

    /* renamed from: e */
    public static final String f9405e = "ts";

    /* renamed from: f */
    private static final String f9406f = "UMSysLocationCache";

    /* renamed from: a */
    public static void m10914a(final Context context) {
        C2536e.m11329a(f9406f, "begin location");
        if (context == null) {
            return;
        }
        try {
            new Thread(new Runnable() { // from class: com.umeng.commonsdk.proguard.h.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        Looper.prepare();
                        final C2503g c2503g = new C2503g(context);
                        c2503g.m10913a(new AbstractC2505i() { // from class: com.umeng.commonsdk.proguard.h.1.1
                            @Override // com.umeng.commonsdk.proguard.AbstractC2505i
                            /* renamed from: a */
                            public void mo10916a(Location location) {
                                if (location != null) {
                                    double longitude = location.getLongitude();
                                    double latitude = location.getLatitude();
                                    C2536e.m11329a(C2504h.f9406f, "lon is " + longitude + ", lat is " + latitude);
                                    if (longitude != 0.0d && latitude != 0.0d) {
                                        long currentTimeMillis = System.currentTimeMillis();
                                        JSONObject jSONObject = new JSONObject();
                                        try {
                                            jSONObject.put("lng", longitude);
                                            jSONObject.put("lat", latitude);
                                            jSONObject.put("ts", currentTimeMillis);
                                        } catch (JSONException e) {
                                            C2536e.m11329a(C2504h.f9406f, "e is " + e);
                                        }
                                        C2536e.m11329a(C2504h.f9406f, "locationJSONObject is " + jSONObject.toString());
                                        UMWorkDispatch.sendEvent(context, C2455a.f9245f, C2482b.m10851a(context).m10852a(), jSONObject.toString());
                                    }
                                }
                                c2503g.m10912a();
                            }
                        });
                        Looper.loop();
                    } catch (Throwable th) {
                        C2501e.m10904a(context, th);
                    }
                }
            }).start();
        } catch (Exception e) {
            C2536e.m11329a(f9406f, "e is " + e);
            C2501e.m10904a(context, e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0054  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static org.json.JSONObject m10915b(android.content.Context r8) {
        /*
            java.lang.String r0 = "umeng_common_config"
            r1 = 0
            android.content.SharedPreferences r0 = r8.getSharedPreferences(r0, r1)
            r2 = 0
            if (r0 != 0) goto Lb
            return r2
        Lb:
            r3 = 1
            java.lang.String r4 = "location_json"
            java.lang.String r5 = ""
            java.lang.String r0 = r0.getString(r4, r5)     // Catch: java.lang.Throwable -> L21 org.json.JSONException -> L37
            boolean r4 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L21 org.json.JSONException -> L37
            if (r4 != 0) goto L52
            org.json.JSONObject r4 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L21 org.json.JSONException -> L37
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L21 org.json.JSONException -> L37
            r2 = r4
            goto L52
        L21:
            r0 = move-exception
            java.lang.String r4 = "UMSysLocationCache"
            java.lang.Object[] r5 = new java.lang.Object[r3]
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r7 = "e is "
            r6.<init>(r7)
            r6.append(r0)
            java.lang.String r6 = r6.toString()
            r5[r1] = r6
            goto L4c
        L37:
            r0 = move-exception
            java.lang.String r4 = "UMSysLocationCache"
            java.lang.Object[] r5 = new java.lang.Object[r3]
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r7 = "e is "
            r6.<init>(r7)
            r6.append(r0)
            java.lang.String r6 = r6.toString()
            r5[r1] = r6
        L4c:
            com.umeng.commonsdk.statistics.common.C2536e.m11329a(r4, r5)
            com.umeng.commonsdk.proguard.C2501e.m10904a(r8, r0)
        L52:
            if (r2 == 0) goto L6f
            java.lang.String r0 = "UMSysLocationCache"
            java.lang.Object[] r3 = new java.lang.Object[r3]
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "json str is "
            r4.<init>(r5)
            java.lang.String r5 = r2.toString()
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            r3[r1] = r4
            com.umeng.commonsdk.statistics.common.C2536e.m11329a(r0, r3)
        L6f:
            m10914a(r8)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.proguard.C2504h.m10915b(android.content.Context):org.json.JSONObject");
    }
}
