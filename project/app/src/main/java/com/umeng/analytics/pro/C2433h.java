package com.umeng.analytics.pro;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.C2422b;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.pro.C2432g;
import com.umeng.analytics.pro.C2434i;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.umeng.analytics.pro.h */
/* loaded from: classes.dex */
public class C2433h {

    /* renamed from: a */
    public static String f9084a;

    /* renamed from: f */
    private static JSONObject f9085f = new JSONObject();

    /* renamed from: g */
    private Application f9090g;

    /* renamed from: e */
    private final Map<String, Long> f9089e = new HashMap();

    /* renamed from: b */
    boolean f9086b = false;

    /* renamed from: c */
    boolean f9087c = false;

    /* renamed from: d */
    Application.ActivityLifecycleCallbacks f9088d = new Application.ActivityLifecycleCallbacks() { // from class: com.umeng.analytics.pro.h.1
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            C2433h.this.m10517c(activity);
            C2433h.this.f9087c = false;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            if (C2433h.this.f9087c) {
                C2433h.this.f9087c = false;
                if (C2433h.f9084a.equals(activity.getPackageName() + "." + activity.getLocalClassName())) {
                    return;
                }
            }
            C2433h.this.m10514b(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    };

    public C2433h(Activity activity) {
        this.f9090g = null;
        synchronized (this) {
            if (this.f9090g == null && activity != null) {
                this.f9090g = activity.getApplication();
                m10512a(activity);
            }
        }
    }

    /* renamed from: a */
    private void m10512a(Activity activity) {
        if (this.f9086b) {
            return;
        }
        this.f9086b = true;
        this.f9090g.registerActivityLifecycleCallbacks(this.f9088d);
        if (f9084a == null) {
            this.f9087c = true;
            m10514b(activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m10514b(Activity activity) {
        f9084a = activity.getPackageName() + "." + activity.getLocalClassName();
        if (AnalyticsConfig.FLAG_DPLUS) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(C2427b.f8969ai, f9084a);
                jSONObject.put("_$!ts", System.currentTimeMillis());
                JSONObject m10433i = C2422b.m10394a().m10433i();
                if (m10433i.length() > 0) {
                    jSONObject.put(C2427b.f8962ab, m10433i);
                }
                String m10612c = C2440o.m10600a().m10612c();
                if (TextUtils.isEmpty(m10612c)) {
                    m10612c = "-1";
                }
                jSONObject.put("__ii", m10612c);
                if (C2440o.m10600a().m10611b()) {
                    jSONObject.put("__ii", "-1");
                }
                UMWorkDispatch.sendEvent(activity.getApplicationContext(), C2434i.a.f9131k, CoreProtocol.getInstance(activity.getApplicationContext()), jSONObject);
            } catch (JSONException unused) {
            }
        }
        synchronized (this.f9089e) {
            this.f9089e.put(f9084a, Long.valueOf(System.currentTimeMillis()));
        }
    }

    /* renamed from: b */
    public static void m10515b(Context context) {
        try {
            synchronized (f9085f) {
                if (context != null) {
                    try {
                        if (f9085f.length() > 0) {
                            C2432g.m10485a(context).m10502a(C2440o.m10600a().m10614d(), f9085f, C2432g.a.AUTOPAGE);
                            f9085f = new JSONObject();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m10517c(Activity activity) {
        long j = 0;
        try {
            synchronized (this.f9089e) {
                if (this.f9089e.containsKey(f9084a)) {
                    long currentTimeMillis = System.currentTimeMillis() - this.f9089e.get(f9084a).longValue();
                    this.f9089e.remove(f9084a);
                    j = currentTimeMillis;
                }
            }
            synchronized (f9085f) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    f9085f = jSONObject;
                    jSONObject.put(C2427b.f8997u, f9084a);
                    f9085f.put("duration", j);
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
        }
    }

    /* renamed from: a */
    public void m10518a() {
        this.f9086b = false;
        if (this.f9090g != null) {
            this.f9090g.unregisterActivityLifecycleCallbacks(this.f9088d);
            this.f9090g = null;
        }
    }

    /* renamed from: a */
    public void m10519a(Context context) {
        m10517c(null);
        m10518a();
    }
}
