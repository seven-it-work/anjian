package com.umeng.analytics;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.pro.C2427b;
import com.umeng.analytics.pro.C2432g;
import com.umeng.analytics.pro.C2433h;
import com.umeng.analytics.pro.C2434i;
import com.umeng.analytics.pro.C2435j;
import com.umeng.analytics.pro.C2438m;
import com.umeng.analytics.pro.C2440o;
import com.umeng.analytics.pro.C2441p;
import com.umeng.analytics.pro.InterfaceC2439n;
import com.umeng.analytics.pro.InterfaceC2443r;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.microedition.khronos.opengles.GL10;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.umeng.analytics.b */
/* loaded from: classes.dex */
public class C2422b implements InterfaceC2439n {

    /* renamed from: g */
    private static final String f8875g = "sp";

    /* renamed from: a */
    private Context f8876a;

    /* renamed from: b */
    private InterfaceC2443r f8877b;

    /* renamed from: c */
    private C2435j f8878c;

    /* renamed from: d */
    private C2441p f8879d;

    /* renamed from: e */
    private C2440o f8880e;

    /* renamed from: f */
    private C2433h f8881f;

    /* renamed from: h */
    private boolean f8882h;

    /* renamed from: i */
    private volatile JSONObject f8883i;

    /* renamed from: j */
    private volatile JSONObject f8884j;

    /* renamed from: k */
    private boolean f8885k;

    /* renamed from: com.umeng.analytics.b$a */
    /* loaded from: classes.dex */
    private static class a {

        /* renamed from: a */
        private static final C2422b f8886a = new C2422b();

        private a() {
        }
    }

    private C2422b() {
        this.f8876a = null;
        this.f8878c = new C2435j();
        this.f8879d = new C2441p();
        this.f8880e = C2440o.m10600a();
        this.f8881f = null;
        this.f8882h = false;
        this.f8883i = null;
        this.f8884j = null;
        this.f8885k = false;
        this.f8878c.m10570a(this);
    }

    /* renamed from: a */
    public static C2422b m10394a() {
        return a.f8886a;
    }

    /* renamed from: a */
    private void m10395a(String str, Object obj) {
        try {
            if (this.f8883i == null) {
                this.f8883i = new JSONObject();
            }
            new JSONObject();
            int i = 0;
            if (!obj.getClass().isArray()) {
                if (!(obj instanceof List)) {
                    if ((obj instanceof String) || (obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Short)) {
                        this.f8883i.put(str, obj);
                        return;
                    }
                    return;
                }
                List list = (List) obj;
                JSONArray jSONArray = new JSONArray();
                while (i < list.size()) {
                    Object obj2 = list.get(i);
                    if ((obj2 instanceof String) || (obj2 instanceof Long) || (obj2 instanceof Integer) || (obj2 instanceof Float) || (obj2 instanceof Double) || (obj2 instanceof Short)) {
                        jSONArray.put(list.get(i));
                    }
                    i++;
                }
                this.f8883i.put(str, jSONArray);
                return;
            }
            if (obj instanceof String[]) {
                String[] strArr = (String[]) obj;
                JSONArray jSONArray2 = new JSONArray();
                while (i < strArr.length) {
                    jSONArray2.put(strArr[i]);
                    i++;
                }
                this.f8883i.put(str, jSONArray2);
                return;
            }
            if (obj instanceof long[]) {
                long[] jArr = (long[]) obj;
                JSONArray jSONArray3 = new JSONArray();
                while (i < jArr.length) {
                    jSONArray3.put(jArr[i]);
                    i++;
                }
                this.f8883i.put(str, jSONArray3);
                return;
            }
            if (obj instanceof int[]) {
                int[] iArr = (int[]) obj;
                JSONArray jSONArray4 = new JSONArray();
                while (i < iArr.length) {
                    jSONArray4.put(iArr[i]);
                    i++;
                }
                this.f8883i.put(str, jSONArray4);
                return;
            }
            if (obj instanceof float[]) {
                float[] fArr = (float[]) obj;
                JSONArray jSONArray5 = new JSONArray();
                while (i < fArr.length) {
                    jSONArray5.put(fArr[i]);
                    i++;
                }
                this.f8883i.put(str, jSONArray5);
                return;
            }
            if (obj instanceof double[]) {
                double[] dArr = (double[]) obj;
                JSONArray jSONArray6 = new JSONArray();
                while (i < dArr.length) {
                    jSONArray6.put(dArr[i]);
                    i++;
                }
                this.f8883i.put(str, jSONArray6);
                return;
            }
            if (obj instanceof short[]) {
                short[] sArr = (short[]) obj;
                JSONArray jSONArray7 = new JSONArray();
                while (i < sArr.length) {
                    jSONArray7.put((int) sArr[i]);
                    i++;
                }
                this.f8883i.put(str, jSONArray7);
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: f */
    private JSONObject m10396f(Context context) {
        if (context == null) {
            MLog.m11269e("unexpected null context in getNativeSuperProperties");
            return null;
        }
        if (this.f8876a == null) {
            this.f8876a = context;
        }
        String string = PreferenceWrapper.getDefault(context).getString(f8875g, null);
        if (!TextUtils.isEmpty(string)) {
            return new JSONObject(string);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10397a(double d, double d2) {
        if (AnalyticsConfig.f8858a == null) {
            AnalyticsConfig.f8858a = new double[2];
        }
        AnalyticsConfig.f8858a[0] = d;
        AnalyticsConfig.f8858a[1] = d2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10398a(long j) {
        AnalyticsConfig.kContinueSessionMillis = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10399a(Context context) {
        if (context == null) {
            MLog.m11269e("unexpected null context in onResume");
            return;
        }
        if (this.f8876a == null) {
            this.f8876a = context;
        }
        try {
            if (!this.f8882h || !this.f8885k) {
                m10417b();
            }
            if (AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
                this.f8879d.m10618a(context.getClass().getName());
            }
            m10428e();
        } catch (Throwable th) {
            MLog.m11271e("Exception occurred in Mobclick.onResume(). ", th);
        }
    }

    /* renamed from: a */
    public void m10400a(Context context, int i) {
        if (context == null) {
            MLog.m11269e("unexpected null context in setVerticalType");
            return;
        }
        if (this.f8876a == null) {
            this.f8876a = context;
        }
        if (!this.f8882h || !this.f8885k) {
            m10417b();
        }
        AnalyticsConfig.m10390a(this.f8876a, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10401a(Context context, MobclickAgent.EScenarioType eScenarioType) {
        if (context == null) {
            MLog.m11269e("unexpected null context in setScenarioType");
            return;
        }
        if (this.f8876a == null) {
            this.f8876a = context;
        }
        if (eScenarioType != null) {
            int value = eScenarioType.toValue();
            if (value == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || value == MobclickAgent.EScenarioType.E_DUM_GAME.toValue()) {
                AnalyticsConfig.FLAG_DPLUS = true;
            } else {
                AnalyticsConfig.FLAG_DPLUS = false;
            }
            m10400a(this.f8876a, value);
        }
        if (this.f8882h && this.f8885k) {
            return;
        }
        m10417b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10402a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (context == null) {
            MLog.m11269e("unexpected null context in reportError");
            return;
        }
        if (this.f8876a == null) {
            this.f8876a = context;
        }
        try {
            if (!this.f8882h || !this.f8885k) {
                m10417b();
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ts", System.currentTimeMillis());
            jSONObject.put(C2427b.f8945L, 2);
            jSONObject.put(C2427b.f8946M, str);
            jSONObject.put("__ii", this.f8880e.m10614d());
            UMWorkDispatch.sendEvent(this.f8876a, C2434i.a.f9130j, CoreProtocol.getInstance(this.f8876a), jSONObject);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.m11273e(th);
            }
        }
    }

    /* renamed from: a */
    public void m10403a(Context context, String str, Object obj) {
        try {
            if (context == null) {
                MLog.m11269e("unexpected null context in registerSuperProperty");
                return;
            }
            if (this.f8876a == null) {
                this.f8876a = context;
            }
            if (!this.f8882h || !this.f8885k) {
                m10417b();
            }
            if (!TextUtils.isEmpty(str) && obj != null) {
                String subStr = HelperUtils.subStr(str, 128);
                if (Arrays.asList(C2427b.f8977aq).contains(subStr)) {
                    MLog.m11269e("SuperProperty  key is invalid.  ");
                    return;
                }
                if (obj instanceof String) {
                    obj = HelperUtils.subStr(obj.toString(), 256);
                }
                m10395a(subStr, obj);
                UMWorkDispatch.sendEvent(this.f8876a, C2434i.a.f9133m, CoreProtocol.getInstance(this.f8876a), this.f8883i.toString());
                return;
            }
            MLog.m11269e("please check key or value, must not NULL!");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: a */
    public void m10404a(Context context, String str, String str2, long j, int i) {
        if (context != null) {
            try {
                this.f8876a = context;
            } catch (Throwable th) {
                if (MLog.DEBUG) {
                    MLog.m11273e(th);
                    return;
                }
                return;
            }
        }
        if (!this.f8882h || !this.f8885k) {
            m10417b();
        }
        C2438m.m10584a(this.f8876a).m10595a(str, str2, j, i);
    }

    /* renamed from: a */
    public void m10405a(Context context, String str, HashMap<String, Object> hashMap) {
        if (context != null) {
            try {
                if (this.f8876a == null) {
                    this.f8876a = context;
                }
            } catch (Throwable th) {
                if (MLog.DEBUG) {
                    MLog.m11273e(th);
                    return;
                }
                return;
            }
        }
        if (!this.f8882h || !this.f8885k) {
            m10417b();
        }
        C2438m.m10584a(this.f8876a).m10596a(str, hashMap);
    }

    /* renamed from: a */
    public void m10406a(Context context, String str, Map<String, Object> map) {
        if (context != null) {
            try {
                if (this.f8876a == null) {
                    this.f8876a = context;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        if (!this.f8882h || !this.f8885k) {
            m10417b();
        }
        if (TextUtils.isEmpty(str)) {
            MLog.m11269e("the eventName is empty! please check~");
            return;
        }
        String str2 = "";
        if (this.f8883i == null) {
            this.f8883i = new JSONObject();
        } else {
            str2 = this.f8883i.toString();
        }
        UMWorkDispatch.sendEvent(this.f8876a, 8194, CoreProtocol.getInstance(this.f8876a), new C2434i.d(str, map, str2, System.currentTimeMillis()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10407a(Context context, String str, Map<String, Object> map, long j) {
        if (context != null) {
            try {
                this.f8876a = context;
            } catch (Throwable th) {
                if (MLog.DEBUG) {
                    MLog.m11273e(th);
                    return;
                }
                return;
            }
        }
        if (!this.f8882h || !this.f8885k) {
            m10417b();
        }
        C2438m.m10584a(this.f8876a).m10597a(str, map, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10408a(Context context, Throwable th) {
        if (context == null || th == null) {
            return;
        }
        if (this.f8876a == null) {
            this.f8876a = context;
        }
        try {
            if (!this.f8882h || !this.f8885k) {
                m10417b();
            }
            m10402a(this.f8876a, DataHelper.convertExceptionToString(th));
        } catch (Exception e) {
            if (MLog.DEBUG) {
                MLog.m11273e(e);
            }
        }
    }

    /* renamed from: a */
    public void m10409a(Context context, List<String> list) {
        try {
            if (context == null) {
                MLog.m11269e("unexpected null context in setFirstLaunchEvent");
                return;
            }
            if (this.f8876a == null) {
                this.f8876a = context;
            }
            if (!this.f8882h || !this.f8885k) {
                m10417b();
            }
            C2438m.m10584a(this.f8876a).m10598a(list);
        } catch (Throwable th) {
            MLog.m11273e(th);
        }
    }

    /* renamed from: a */
    public void m10410a(InterfaceC2443r interfaceC2443r) {
        this.f8877b = interfaceC2443r;
    }

    /* renamed from: a */
    public void m10411a(Object obj) {
        if (obj != null) {
            try {
                String str = (String) obj;
                SharedPreferences.Editor edit = PreferenceWrapper.getDefault(this.f8876a).edit();
                if (edit == null || TextUtils.isEmpty(str)) {
                    return;
                }
                edit.putString(f8875g, this.f8883i.toString()).commit();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10412a(String str) {
        if (AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
            return;
        }
        try {
            this.f8879d.m10618a(str);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10413a(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(C2427b.f8941H, str);
            jSONObject.put("uid", str2);
            UMWorkDispatch.sendEvent(this.f8876a, C2434i.a.f9125e, CoreProtocol.getInstance(this.f8876a), jSONObject);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.m11271e(" Excepthon  in  onProfileSignIn", th);
            }
        }
    }

    @Override // com.umeng.analytics.pro.InterfaceC2439n
    /* renamed from: a */
    public void mo10414a(Throwable th) {
        try {
            this.f8879d.m10617a();
            if (this.f8876a != null) {
                this.f8881f.m10519a(this.f8876a);
                this.f8880e.m10610b(this.f8876a, Long.valueOf(System.currentTimeMillis()));
                C2434i.m10520a(this.f8876a).m10544a();
                C2441p.m10616a(this.f8876a);
                C2433h.m10515b(this.f8876a);
                PreferenceWrapper.getDefault(this.f8876a).edit().commit();
                if (th != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("ts", System.currentTimeMillis());
                    jSONObject.put(C2427b.f8945L, 1);
                    jSONObject.put(C2427b.f8946M, DataHelper.convertExceptionToString(th));
                    C2432g.m10485a(this.f8876a).m10501a(this.f8880e.m10614d(), jSONObject.toString(), 1);
                }
            }
            UMWorkDispatch.Quit();
        } catch (Exception e) {
            if (MLog.DEBUG) {
                MLog.m11271e("Exception in onAppCrash", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10415a(GL10 gl10) {
        String[] gpu = UMUtils.getGPU(gl10);
        if (gpu.length == 2) {
            AnalyticsConfig.GPU_VENDER = gpu[0];
            AnalyticsConfig.GPU_RENDERER = gpu[1];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10416a(boolean z) {
        AnalyticsConfig.CATCH_EXCEPTION = z;
    }

    /* renamed from: b */
    public void m10417b() {
        try {
            if (this.f8876a == null) {
                return;
            }
            if (!this.f8882h) {
                this.f8882h = true;
                this.f8883i = m10396f(this.f8876a);
                if (this.f8883i == null) {
                    this.f8883i = new JSONObject();
                }
                this.f8884j = new JSONObject(this.f8883i.toString());
            }
            if (Build.VERSION.SDK_INT > 13) {
                synchronized (this) {
                    if (!this.f8885k && (this.f8876a instanceof Activity)) {
                        this.f8881f = new C2433h((Activity) this.f8876a);
                        this.f8885k = true;
                    }
                }
            } else {
                this.f8885k = true;
            }
            this.f8876a = this.f8876a.getApplicationContext();
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m10418b(Context context) {
        if (context == null) {
            MLog.m11269e("unexpected null context in onPause");
            return;
        }
        if (this.f8876a == null) {
            this.f8876a = context;
        }
        try {
            if (!this.f8882h || !this.f8885k) {
                m10417b();
            }
            if (AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
                this.f8879d.m10619b(context.getClass().getName());
            }
            m10430f();
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.m11271e("Exception occurred in Mobclick.onRause(). ", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m10419b(Context context, String str) {
        if (context == null) {
            MLog.m11269e("unexpected null context in setSecret");
            return;
        }
        if (this.f8876a == null) {
            this.f8876a = context;
        }
        if (!this.f8882h || !this.f8885k) {
            m10417b();
        }
        AnalyticsConfig.m10391a(this.f8876a, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m10420b(String str) {
        if (AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
            return;
        }
        try {
            this.f8879d.m10619b(str);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m10421b(boolean z) {
        AnalyticsConfig.ACTIVITY_DURATION_OPEN = z;
    }

    /* renamed from: c */
    public JSONObject m10422c() {
        return this.f8884j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m10423c(Context context) {
        try {
            if (this.f8876a == null && context != null) {
                this.f8876a = context;
            }
            this.f8879d.m10617a();
            this.f8881f.m10519a(this.f8876a);
            this.f8880e.m10610b(this.f8876a, Long.valueOf(System.currentTimeMillis()));
            C2434i.m10520a(this.f8876a).m10544a();
            C2441p.m10616a(this.f8876a);
            C2433h.m10515b(this.f8876a);
            PreferenceWrapper.getDefault(this.f8876a).edit().commit();
            UMWorkDispatch.Quit();
        } catch (Throwable unused) {
        }
    }

    /* renamed from: c */
    public void m10424c(Context context, String str) {
        try {
            if (context == null) {
                MLog.m11269e("unexpected null context in unregisterSuperProperty");
                return;
            }
            if (this.f8876a == null) {
                this.f8876a = context;
            }
            if (!this.f8882h || !this.f8885k) {
                m10417b();
            }
            String subStr = HelperUtils.subStr(str, 128);
            if (this.f8883i == null) {
                this.f8883i = new JSONObject();
            }
            if (this.f8883i.has(subStr)) {
                this.f8883i.remove(subStr);
                UMWorkDispatch.sendEvent(this.f8876a, C2434i.a.f9135o, CoreProtocol.getInstance(this.f8876a), subStr);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: d */
    public Object m10425d(Context context, String str) {
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (context == null) {
            MLog.m11269e("unexpected null context in getSuperProperty");
            return null;
        }
        if (this.f8876a == null) {
            this.f8876a = context;
        }
        if (this.f8883i == null) {
            this.f8883i = new JSONObject();
            return null;
        }
        String subStr = HelperUtils.subStr(str, 128);
        if (this.f8883i.has(subStr)) {
            return this.f8883i.opt(subStr);
        }
        return null;
    }

    /* renamed from: d */
    public String m10426d(Context context) {
        try {
            if (context == null) {
                MLog.m11269e("unexpected null context in getSuperProperties");
                return null;
            }
            if (this.f8876a == null) {
                this.f8876a = context;
            }
            if (this.f8883i != null) {
                return this.f8883i.toString();
            }
            this.f8883i = new JSONObject();
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: d */
    public void m10427d() {
        this.f8884j = null;
    }

    /* renamed from: e */
    public void m10428e() {
        UMWorkDispatch.sendEvent(this.f8876a, C2434i.a.f9127g, CoreProtocol.getInstance(this.f8876a), Long.valueOf(System.currentTimeMillis()));
        if (this.f8877b != null) {
            this.f8877b.mo10452a();
        }
    }

    /* renamed from: e */
    public void m10429e(Context context) {
        if (context == null) {
            MLog.m11269e("unexpected null context in clearSuperProperties");
            return;
        }
        if (this.f8876a == null) {
            this.f8876a = context;
        }
        if (!this.f8882h || !this.f8885k) {
            m10417b();
        }
        this.f8883i = new JSONObject();
        UMWorkDispatch.sendEvent(this.f8876a, C2434i.a.f9134n, CoreProtocol.getInstance(this.f8876a), null);
    }

    /* renamed from: f */
    public void m10430f() {
        try {
            UMWorkDispatch.sendEvent(this.f8876a, C2434i.a.f9128h, CoreProtocol.getInstance(this.f8876a), Long.valueOf(System.currentTimeMillis()));
            UMWorkDispatch.sendEvent(this.f8876a, C2434i.a.f9124d, CoreProtocol.getInstance(this.f8876a), null);
            UMWorkDispatch.sendEvent(this.f8876a, 4099, CoreProtocol.getInstance(this.f8876a), null);
            UMWorkDispatch.sendEvent(this.f8876a, C2434i.a.f9129i, CoreProtocol.getInstance(this.f8876a), null);
        } catch (Throwable unused) {
        }
        if (this.f8877b != null) {
            this.f8877b.mo10462b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m10431g() {
        UMWorkDispatch.sendEvent(this.f8876a, C2434i.a.f9126f, CoreProtocol.getInstance(this.f8876a), null);
    }

    /* renamed from: h */
    public void m10432h() {
        try {
            if (this.f8883i == null) {
                this.f8883i = new JSONObject();
                return;
            }
            SharedPreferences.Editor edit = PreferenceWrapper.getDefault(this.f8876a).edit();
            edit.putString(f8875g, this.f8883i.toString());
            edit.commit();
        } catch (Throwable unused) {
        }
    }

    /* renamed from: i */
    public JSONObject m10433i() {
        try {
            if (this.f8883i == null) {
                this.f8883i = new JSONObject();
            }
        } catch (Throwable unused) {
        }
        return this.f8883i;
    }

    /* renamed from: j */
    public void m10434j() {
        try {
            SharedPreferences.Editor edit = PreferenceWrapper.getDefault(this.f8876a).edit();
            edit.remove(f8875g);
            edit.commit();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
