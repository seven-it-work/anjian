package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.C2422b;
import com.umeng.analytics.pro.C2428c;
import com.umeng.analytics.pro.C2432g;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import java.lang.reflect.Method;
import org.json.JSONObject;

/* renamed from: com.umeng.analytics.pro.o */
/* loaded from: classes.dex */
public class C2440o {

    /* renamed from: a */
    private static final String f9163a = "session_start_time";

    /* renamed from: b */
    private static final String f9164b = "session_end_time";

    /* renamed from: c */
    private static final String f9165c = "session_id";

    /* renamed from: f */
    private static String f9166f;

    /* renamed from: g */
    private static Context f9167g;

    /* renamed from: d */
    private final String f9168d;

    /* renamed from: e */
    private final String f9169e;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.analytics.pro.o$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        private static final C2440o f9170a = new C2440o();

        private a() {
        }
    }

    private C2440o() {
        this.f9168d = "a_start_time";
        this.f9169e = "a_end_time";
    }

    /* renamed from: a */
    public static C2440o m10600a() {
        return a.f9170a;
    }

    /* renamed from: a */
    private String m10601a(Context context, SharedPreferences sharedPreferences, long j) {
        if (f9167g == null && context != null) {
            f9167g = context.getApplicationContext();
        }
        String m10608b = m10608b(f9167g);
        try {
            m10604d(context);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("__e", j);
            C2432g.m10485a(f9167g).m10502a(m10608b, jSONObject, C2432g.a.BEGIN);
            m10606a(f9167g);
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString(f9165c, m10608b);
            edit.putLong(f9163a, j);
            edit.putLong(f9164b, 0L);
            edit.putLong("a_start_time", j);
            edit.putLong("a_end_time", 0L);
            edit.putInt("versioncode", Integer.parseInt(UMUtils.getAppVersionCode(context)));
            edit.putString(C2427b.f8972al, UMUtils.getAppVersionName(context));
            edit.commit();
            JSONObject jSONObject2 = new JSONObject();
            JSONObject m10433i = C2422b.m10394a().m10433i();
            if (m10433i.length() > 0) {
                jSONObject2.put(C2427b.f8962ab, m10433i);
            }
            jSONObject2.put(C2427b.f8964ad, m10608b);
            jSONObject2.put("__ii", m10608b);
            jSONObject2.put(C2427b.f8965ae, j);
            C2434i.m10520a(f9167g).m10556c((Object) jSONObject2);
        } catch (Throwable unused) {
        }
        return m10608b;
    }

    /* renamed from: a */
    private void m10602a(SharedPreferences sharedPreferences) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.remove(f9163a);
        edit.remove(f9164b);
        edit.remove("a_start_time");
        edit.remove("a_end_time");
        edit.commit();
    }

    /* renamed from: a */
    private boolean m10603a(SharedPreferences sharedPreferences, long j) {
        long j2 = sharedPreferences.getLong("a_start_time", 0L);
        long j3 = sharedPreferences.getLong("a_end_time", 0L);
        if (j2 != 0 && j - j2 < AnalyticsConfig.kContinueSessionMillis) {
            MLog.m11269e("onResume called before onPause");
            return false;
        }
        if (j - j3 <= AnalyticsConfig.kContinueSessionMillis) {
            return false;
        }
        try {
            String string = sharedPreferences.getString(f9165c, "-1");
            long j4 = sharedPreferences.getLong(f9164b, 0L);
            if ("-1".equals(string)) {
                return true;
            }
            if (j4 == 0) {
                j4 = System.currentTimeMillis();
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(C2428c.e.a.f9049g, j4);
            C2432g.m10485a(f9167g).m10502a(string, jSONObject, C2432g.a.END);
            if (!AnalyticsConfig.FLAG_DPLUS) {
                return true;
            }
            JSONObject jSONObject2 = new JSONObject();
            JSONObject m10433i = C2422b.m10394a().m10433i();
            if (m10433i.length() > 0) {
                jSONObject2.put(C2427b.f8962ab, m10433i);
            }
            jSONObject2.put(C2427b.f8966af, string);
            jSONObject2.put("__ii", string);
            jSONObject2.put(C2427b.f8967ag, j4);
            C2434i.m10520a(f9167g).m10547a(jSONObject2, 3, false);
            return true;
        } catch (Throwable unused) {
            return true;
        }
    }

    /* renamed from: d */
    private void m10604d(Context context) {
        C2434i.m10520a(context).m10553b(context);
        C2434i.m10520a(context).m10544a();
    }

    /* renamed from: a */
    public void m10605a(Context context, Object obj) {
        try {
            if (f9167g == null && context != null) {
                f9167g = context.getApplicationContext();
            }
            long longValue = ((Long) obj).longValue();
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f9167g);
            if (sharedPreferences == null) {
                return;
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            String string = sharedPreferences.getString(C2427b.f8972al, "");
            String appVersionName = UMUtils.getAppVersionName(f9167g);
            if (TextUtils.isEmpty(string) || string.equals(appVersionName)) {
                if (m10603a(sharedPreferences, longValue)) {
                    f9166f = m10601a(context, sharedPreferences, longValue);
                    MLog.m11275i("Start new session: " + f9166f);
                    return;
                }
                f9166f = sharedPreferences.getString(f9165c, null);
                edit.putLong("a_start_time", longValue);
                edit.putLong("a_end_time", 0L);
                edit.commit();
                MLog.m11275i("Extend current session: " + f9166f);
                m10604d(context);
                C2434i.m10520a(f9167g).m10549a(false);
                C2434i.m10520a(f9167g).m10557d();
                return;
            }
            int i = sharedPreferences.getInt("versioncode", 0);
            String string2 = sharedPreferences.getString("pre_date", "");
            String string3 = sharedPreferences.getString("pre_version", "");
            String string4 = sharedPreferences.getString(C2427b.f8972al, "");
            edit.putString("vers_date", string2);
            edit.putString("vers_pre_version", string3);
            edit.putString("cur_version", string4);
            edit.putString("dp_vers_date", string2);
            edit.putString("dp_vers_pre_version", string3);
            edit.putString("dp_cur_version", string4);
            edit.putInt("vers_code", i);
            edit.putString("vers_name", string);
            edit.putInt("dp_vers_code", i);
            edit.putString("dp_vers_name", string);
            edit.putLong("a_end_time", 0L);
            edit.commit();
            if (m10613c(context) == null) {
                f9166f = m10601a(context, sharedPreferences, longValue);
            }
            m10607a(f9167g, longValue);
            m10609b(f9167g, longValue);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public boolean m10606a(Context context) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
        String string = sharedPreferences.getString(f9165c, null);
        if (string == null) {
            return false;
        }
        long j = sharedPreferences.getLong(f9163a, 0L);
        long j2 = sharedPreferences.getLong(f9164b, 0L);
        if (j2 != 0) {
            Math.abs(j2 - j);
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("__ii", string);
            jSONObject.put("__e", j);
            jSONObject.put(C2428c.e.a.f9049g, j2);
            double[] location = AnalyticsConfig.getLocation();
            if (location != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("lat", location[0]);
                jSONObject2.put("lng", location[1]);
                jSONObject2.put("ts", System.currentTimeMillis());
                jSONObject.put(C2428c.e.a.f9047e, jSONObject2);
            }
            Class<?> cls = Class.forName("android.net.TrafficStats");
            Method method = cls.getMethod("getUidRxBytes", Integer.TYPE);
            Method method2 = cls.getMethod("getUidTxBytes", Integer.TYPE);
            int i = context.getApplicationInfo().uid;
            if (i == -1) {
                return false;
            }
            long longValue = ((Long) method.invoke(null, Integer.valueOf(i))).longValue();
            long longValue2 = ((Long) method2.invoke(null, Integer.valueOf(i))).longValue();
            if (longValue > 0 && longValue2 > 0) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(C2427b.f8936C, longValue);
                jSONObject3.put(C2427b.f8935B, longValue2);
                jSONObject.put(C2428c.e.a.f9046d, jSONObject3);
            }
            C2432g.m10485a(context).m10502a(string, jSONObject, C2432g.a.NEWSESSION);
            C2441p.m10616a(f9167g);
            C2433h.m10515b(f9167g);
            m10602a(sharedPreferences);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: a */
    public boolean m10607a(Context context, long j) {
        String string;
        boolean z = true;
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (sharedPreferences == null || (string = sharedPreferences.getString(f9165c, null)) == null) {
                return false;
            }
            long j2 = sharedPreferences.getLong("a_start_time", 0L);
            long j3 = sharedPreferences.getLong("a_end_time", 0L);
            if (j2 <= 0 || j3 != 0) {
                z = false;
            } else {
                try {
                    m10610b(f9167g, Long.valueOf(j));
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(C2428c.e.a.f9049g, j);
                        C2432g.m10485a(context).m10502a(string, jSONObject, C2432g.a.END);
                        C2434i.m10520a(f9167g).m10552b();
                        if (AnalyticsConfig.FLAG_DPLUS) {
                            JSONObject jSONObject2 = new JSONObject();
                            JSONObject m10422c = C2422b.m10394a().m10422c();
                            if (m10422c == null || m10422c.length() <= 0) {
                                m10422c = C2422b.m10394a().m10433i();
                            }
                            if (m10422c.length() > 0) {
                                jSONObject2.put(C2427b.f8962ab, m10422c);
                            }
                            jSONObject2.put(C2427b.f8966af, string);
                            jSONObject2.put("__ii", string);
                            jSONObject2.put(C2427b.f8967ag, j);
                            C2434i.m10520a(f9167g).m10547a(jSONObject2, 3, true);
                        }
                    } catch (Throwable unused) {
                    }
                } catch (Throwable unused2) {
                    return z;
                }
            }
            m10606a(context);
            return z;
        } catch (Throwable unused3) {
            return false;
        }
    }

    /* renamed from: b */
    public String m10608b(Context context) {
        String deviceId = DeviceConfig.getDeviceId(context);
        String appkey = UMUtils.getAppkey(context);
        long currentTimeMillis = System.currentTimeMillis();
        if (appkey == null) {
            throw new RuntimeException("Appkey is null or empty, Please check!");
        }
        String MD5 = UMUtils.MD5(currentTimeMillis + appkey + deviceId);
        f9166f = MD5;
        return MD5;
    }

    /* renamed from: b */
    public void m10609b(Context context, long j) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
        if (sharedPreferences == null) {
            return;
        }
        f9166f = m10608b(context);
        try {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString(f9165c, f9166f);
            edit.putLong(f9163a, j);
            edit.putLong(f9164b, 0L);
            edit.putLong("a_start_time", j);
            edit.putLong("a_end_time", 0L);
            edit.putInt("versioncode", Integer.parseInt(UMUtils.getAppVersionCode(f9167g)));
            edit.putString(C2427b.f8972al, UMUtils.getAppVersionName(f9167g));
            edit.commit();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("__e", j);
            C2432g.m10485a(f9167g).m10502a(f9166f, jSONObject, C2432g.a.BEGIN);
            JSONObject jSONObject2 = new JSONObject();
            JSONObject m10433i = C2422b.m10394a().m10433i();
            if (m10433i.length() > 0) {
                jSONObject2.put(C2427b.f8962ab, m10433i);
            }
            jSONObject2.put(C2427b.f8964ad, f9166f);
            jSONObject2.put("__ii", f9166f);
            jSONObject2.put(C2427b.f8965ae, j);
            C2434i.m10520a(f9167g).m10554b((Object) jSONObject2);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: b */
    public void m10610b(Context context, Object obj) {
        try {
            if (f9167g == null && context != null) {
                f9167g = context.getApplicationContext();
            }
            long longValue = ((Long) obj).longValue();
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (sharedPreferences == null) {
                return;
            }
            if (sharedPreferences.getLong("a_start_time", 0L) == 0 && AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
                MLog.m11269e("onPause called before onResume");
                return;
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putLong("a_end_time", longValue);
            edit.putLong(f9164b, longValue);
            edit.commit();
        } catch (Throwable unused) {
        }
    }

    /* renamed from: b */
    public boolean m10611b() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f9167g);
        if (sharedPreferences == null) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j = sharedPreferences.getLong("a_start_time", 0L);
        return (j == 0 || currentTimeMillis - j >= AnalyticsConfig.kContinueSessionMillis) && currentTimeMillis - sharedPreferences.getLong("a_end_time", 0L) > AnalyticsConfig.kContinueSessionMillis;
    }

    /* renamed from: c */
    public String m10612c() {
        return f9166f;
    }

    /* renamed from: c */
    public String m10613c(Context context) {
        try {
            if (f9166f == null) {
                return PreferenceWrapper.getDefault(context).getString(f9165c, null);
            }
        } catch (Throwable unused) {
        }
        return f9166f;
    }

    /* renamed from: d */
    public String m10614d() {
        return m10613c(f9167g);
    }
}
