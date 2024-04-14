package com.umeng.commonsdk;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.amap.C2448a;
import com.umeng.commonsdk.amap.C2449b;
import com.umeng.commonsdk.amap.UMAmapConfig;
import com.umeng.commonsdk.framework.C2451b;
import com.umeng.commonsdk.framework.C2452c;
import com.umeng.commonsdk.proguard.C2500d;
import com.umeng.commonsdk.proguard.C2501e;
import com.umeng.commonsdk.proguard.C2504h;
import com.umeng.commonsdk.proguard.C2506j;
import com.umeng.commonsdk.proguard.C2507k;
import com.umeng.commonsdk.proguard.C2508l;
import com.umeng.commonsdk.proguard.C2514r;
import com.umeng.commonsdk.proguard.C2516t;
import com.umeng.commonsdk.stateless.UMSLEnvelopeBuild;
import com.umeng.commonsdk.statistics.common.C2536e;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class UMConfigureImpl {

    /* renamed from: a */
    private static C2449b f9179a;

    /* renamed from: b */
    private static boolean f9180b;

    /* renamed from: a */
    private static synchronized void m10634a(Context context) {
        Context context2;
        Throwable th;
        synchronized (UMConfigureImpl.class) {
            if (context != null) {
                try {
                    context2 = context.getApplicationContext();
                } catch (Throwable th2) {
                    context2 = context;
                    th = th2;
                }
                try {
                    if (new C2448a(context2).m10637a() != null) {
                        String m10647a = C2451b.m10647a(context2);
                        String packageName = context2.getPackageName();
                        if (!TextUtils.isEmpty(m10647a) && !TextUtils.isEmpty(packageName) && m10647a.equals(packageName)) {
                            if (f9179a == null) {
                                f9179a = new C2449b(context2, 1, UMAmapConfig.AMAP_CACHE_WRITE_TIME);
                            }
                            if (!f9179a.isAlive()) {
                                C2536e.m11329a("AmapLBS", "[lbs-build] begin write LBS");
                                f9179a.start();
                                return;
                            }
                            C2536e.m11329a("AmapLBS", "[lbs-build] not write start");
                        }
                        return;
                    }
                    C2536e.m11329a("AmapLBS", "[lbs-send] not get AMAP !!!");
                } catch (Throwable th3) {
                    th = th3;
                    C2536e.m11341c("AmapLBS", "e is " + th.getMessage());
                    C2501e.m10904a(context2, th);
                }
            }
        }
    }

    /* renamed from: b */
    private static void m10635b(final Context context) {
        if (context != null) {
            try {
                String m10647a = C2451b.m10647a(context);
                String packageName = context.getPackageName();
                if (TextUtils.isEmpty(m10647a) || TextUtils.isEmpty(packageName) || !m10647a.equals(packageName)) {
                    return;
                }
                new Thread(new Runnable() { // from class: com.umeng.commonsdk.UMConfigureImpl.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            JSONObject m10915b = C2504h.m10915b(context);
                            if (m10915b == null || m10915b.length() <= 0) {
                                return;
                            }
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("lbs", m10915b);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("tp", jSONObject);
                            UMSLEnvelopeBuild uMSLEnvelopeBuild = new UMSLEnvelopeBuild();
                            uMSLEnvelopeBuild.buildSLEnvelope(context, uMSLEnvelopeBuild.buildSLBaseHeader(context), jSONObject2, UMAmapConfig.AMAP_CACHE_PATH);
                        } catch (Exception e) {
                            C2501e.m10904a(context, e);
                        }
                    }
                }).start();
            } catch (Throwable th) {
                C2501e.m10904a(context, th);
            }
        }
    }

    /* renamed from: c */
    private static synchronized void m10636c(final Context context) {
        synchronized (UMConfigureImpl.class) {
            if (context != null) {
                try {
                    if (!f9180b) {
                        new Thread(new Runnable() { // from class: com.umeng.commonsdk.UMConfigureImpl.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                try {
                                    String m10647a = C2451b.m10647a(context);
                                    String packageName = context.getPackageName();
                                    if (TextUtils.isEmpty(m10647a) || TextUtils.isEmpty(packageName) || !m10647a.equals(packageName)) {
                                        return;
                                    }
                                    try {
                                        C2504h.m10914a(context);
                                    } catch (Throwable th) {
                                        C2536e.m11341c(C2452c.f9206d, "e is " + th);
                                    }
                                    try {
                                        if (!C2508l.m10961a(context).m10963a()) {
                                            C2508l.m10961a(context).m10964b();
                                        }
                                    } catch (Throwable th2) {
                                        C2536e.m11341c(C2452c.f9206d, "e is " + th2);
                                        th2.printStackTrace();
                                    }
                                    try {
                                        C2516t.m11033b(context);
                                    } catch (Exception e) {
                                        C2536e.m11341c(C2452c.f9206d, "e is " + e);
                                    }
                                    try {
                                        C2506j.m10944n(context);
                                    } catch (Exception e2) {
                                        C2536e.m11341c(C2452c.f9206d, "e is " + e2);
                                    }
                                    try {
                                        C2506j.m10929d(context);
                                    } catch (Exception e3) {
                                        C2536e.m11341c(C2452c.f9206d, "e is " + e3);
                                    }
                                    try {
                                        C2514r.m11004b(context);
                                    } catch (Exception e4) {
                                        C2536e.m11341c(C2452c.f9206d, "e is " + e4);
                                    }
                                    try {
                                        C2500d.m10882a(context);
                                    } catch (Exception e5) {
                                        C2536e.m11341c(C2452c.f9206d, "e is " + e5);
                                    }
                                    try {
                                        C2500d.m10886b(context);
                                    } catch (Throwable unused) {
                                    }
                                } catch (Throwable th3) {
                                    C2501e.m10904a(context, th3);
                                }
                            }
                        }).start();
                        String m10647a = C2451b.m10647a(context);
                        String packageName = context.getPackageName();
                        if (!TextUtils.isEmpty(m10647a) && !TextUtils.isEmpty(packageName) && m10647a.equals(packageName)) {
                            try {
                                C2506j.m10948r(context);
                            } catch (Exception e) {
                                C2536e.m11341c(C2452c.f9206d, "e is " + e);
                                C2501e.m10904a(context, e);
                            }
                        }
                        try {
                            if (!C2507k.m10953a(context).m10957a()) {
                                C2507k.m10953a(context).m10958b();
                            }
                        } catch (Throwable th) {
                            C2536e.m11341c(C2452c.f9206d, "e is " + th);
                            C2501e.m10904a(context, th);
                        }
                        f9180b = true;
                    }
                } catch (Throwable th2) {
                    C2536e.m11341c(C2452c.f9206d, "e is " + th2.getMessage());
                    C2501e.m10904a(context, th2);
                }
            }
        }
    }

    public static void init(Context context) {
        if (context == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        m10634a(applicationContext);
        m10635b(applicationContext);
        m10636c(applicationContext);
    }
}
