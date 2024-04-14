package com.umeng.commonsdk.framework;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.umeng.analytics.pro.C2427b;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.proguard.C2501e;
import com.umeng.commonsdk.statistics.common.C2536e;
import java.util.Iterator;
import org.json.JSONObject;

/* renamed from: com.umeng.commonsdk.framework.e */
/* loaded from: classes.dex */
public class C2454e {

    /* renamed from: a */
    private static HandlerThread f9234a = null;

    /* renamed from: b */
    private static Handler f9235b = null;

    /* renamed from: c */
    private static C2453d f9236c = null;

    /* renamed from: d */
    private static final int f9237d = 768;

    /* renamed from: e */
    private static final int f9238e = 769;

    /* renamed from: f */
    private static final int f9239f = 770;

    private C2454e() {
    }

    /* renamed from: a */
    private static JSONObject m10688a(JSONObject jSONObject, JSONObject jSONObject2, String str) {
        String str2;
        Context m10665a = C2452c.m10665a();
        if (jSONObject != null && jSONObject2 != null) {
            try {
                if (jSONObject.opt(str) != null && (jSONObject.opt(str) instanceof JSONObject)) {
                    JSONObject jSONObject3 = (JSONObject) jSONObject.opt(str);
                    Iterator<String> keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        if (next != null && (next instanceof String) && (str2 = next) != null && jSONObject2.opt(str2) != null) {
                            try {
                                jSONObject3.put(str2, jSONObject2.opt(str2));
                            } catch (Exception e) {
                                C2501e.m10904a(m10665a, e);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                C2501e.m10904a(m10665a, th);
            }
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static void m10689a() {
        if (f9235b != null) {
            Message obtainMessage = f9235b.obtainMessage();
            obtainMessage.what = f9239f;
            f9235b.sendMessage(obtainMessage);
        }
    }

    /* renamed from: a */
    public static void m10690a(Context context, int i, UMLogDataProtocol uMLogDataProtocol, Object obj) {
        if (context == null || uMLogDataProtocol == null) {
            C2536e.m11332b("--->>> Context or UMLogDataProtocol parameter cannot be null!");
            return;
        }
        C2452c.m10668a(context.getApplicationContext());
        if (C2452c.m10669a(i, uMLogDataProtocol)) {
            if (f9234a == null || f9235b == null) {
                m10696e();
            }
            if (f9235b != null) {
                if (f9236c == null) {
                    C2451b.m10658f(context);
                    f9236c = new C2453d(context, f9235b);
                }
                Message obtainMessage = f9235b.obtainMessage();
                obtainMessage.what = f9237d;
                obtainMessage.arg1 = i;
                obtainMessage.obj = obj;
                f9235b.sendMessage(obtainMessage);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m10693b(Message message) {
        int i = message.arg1;
        Object obj = message.obj;
        UMLogDataProtocol m10666a = C2452c.m10666a(C2452c.m10667a(i));
        if (m10666a != null) {
            C2536e.m11332b("--->>> dispatch:handleEvent: call back workEvent with msg type [ 0x" + Integer.toHexString(i) + "]");
            m10666a.workEvent(obj, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static void m10695d() {
        C2536e.m11332b("--->>> autoProcess Enter...");
        Context m10665a = C2452c.m10665a();
        if (m10665a != null) {
            long maxDataSpace = UMEnvelopeBuild.maxDataSpace(m10665a);
            UMLogDataProtocol m10666a = C2452c.m10666a("analytics");
            JSONObject jSONObject = null;
            int i = 0;
            try {
                if (UMEnvelopeBuild.isReadyBuild(m10665a, UMLogDataProtocol.UMBusinessType.U_DPLUS) && m10666a != null && (jSONObject = m10666a.setupReportData(maxDataSpace)) != null) {
                    i = jSONObject.toString().getBytes().length;
                }
                if (jSONObject != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("header", new JSONObject());
                        jSONObject2.put(C2427b.f8956W, new JSONObject());
                    } catch (Throwable th) {
                        C2501e.m10904a(m10665a, th);
                    }
                    if (jSONObject != null && i > 0) {
                        jSONObject2 = m10688a(m10688a(jSONObject2, jSONObject.optJSONObject("header"), "header"), jSONObject.optJSONObject(C2427b.f8956W), C2427b.f8956W);
                    }
                    if (jSONObject2 == null || UMEnvelopeBuild.buildEnvelopeWithExtHeader(m10665a, jSONObject2.optJSONObject("header"), jSONObject2.optJSONObject(C2427b.f8956W)) == null || jSONObject == null) {
                        return;
                    }
                    m10666a.removeCacheData(jSONObject);
                }
            } catch (Throwable th2) {
                C2501e.m10904a(m10665a, th2);
            }
        }
    }

    /* renamed from: e */
    private static void m10696e() {
        C2536e.m11332b("--->>> Dispatch: init Enter...");
        if (f9234a == null) {
            HandlerThread handlerThread = new HandlerThread("work_thread");
            f9234a = handlerThread;
            handlerThread.start();
            if (f9235b == null) {
                f9235b = new Handler(f9234a.getLooper()) { // from class: com.umeng.commonsdk.framework.e.1
                    @Override // android.os.Handler
                    public final void handleMessage(Message message) {
                        switch (message.what) {
                            case C2454e.f9237d /* 768 */:
                                C2454e.m10693b(message);
                                return;
                            case C2454e.f9238e /* 769 */:
                                C2454e.m10695d();
                                return;
                            case C2454e.f9239f /* 770 */:
                                C2454e.m10698g();
                                return;
                            default:
                                return;
                        }
                    }
                };
            }
        }
    }

    /* renamed from: f */
    private static void m10697f() {
        if (f9234a != null) {
            f9234a = null;
        }
        if (f9235b != null) {
            f9235b = null;
        }
        if (f9236c != null) {
            f9236c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public static void m10698g() {
        if (f9236c == null || f9234a == null) {
            return;
        }
        C2453d.m10672a();
        C2536e.m11332b("--->>> handleQuit: Quit dispatch thread.");
        f9234a.quit();
        m10697f();
    }
}
