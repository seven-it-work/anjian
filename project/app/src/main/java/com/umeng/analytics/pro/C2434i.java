package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.cyjh.http.p104e.C1579a;
import com.hlzn.socketclient.p163b.C2146a;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.C2422b;
import com.umeng.analytics.C2423c;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.ReportPolicy;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.noise.ABTest;
import com.umeng.commonsdk.statistics.noise.Defcon;
import com.umeng.commonsdk.statistics.noise.ImLatent;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import net.grandcentrix.tray.provider.ContentProviderStorage;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.umeng.analytics.pro.i */
/* loaded from: classes.dex */
public class C2434i {

    /* renamed from: A */
    private static boolean f9092A = false;

    /* renamed from: B */
    private static final String f9093B = "n_sess_dp";

    /* renamed from: C */
    private static final String f9094C = "n_sess_dp_type";

    /* renamed from: a */
    private static Context f9095a = null;

    /* renamed from: q */
    private static final String f9096q = "first_activate_time";

    /* renamed from: r */
    private static final String f9097r = "ana_is_f";

    /* renamed from: s */
    private static final String f9098s = "thtstart";

    /* renamed from: t */
    private static final String f9099t = "dstk_last_time";

    /* renamed from: u */
    private static final String f9100u = "dstk_cnt";

    /* renamed from: v */
    private static final String f9101v = "gkvc";

    /* renamed from: w */
    private static final String f9102w = "ekvc";

    /* renamed from: y */
    private static final String f9103y = "-1";

    /* renamed from: z */
    private static boolean f9104z;

    /* renamed from: b */
    private ABTest f9105b;

    /* renamed from: c */
    private ImLatent f9106c;

    /* renamed from: d */
    private c f9107d;

    /* renamed from: e */
    private SharedPreferences f9108e;

    /* renamed from: f */
    private String f9109f;

    /* renamed from: g */
    private String f9110g;

    /* renamed from: h */
    private String f9111h;

    /* renamed from: i */
    private String f9112i;

    /* renamed from: j */
    private long f9113j;

    /* renamed from: k */
    private int f9114k;

    /* renamed from: l */
    private JSONArray f9115l;

    /* renamed from: m */
    private final int f9116m;

    /* renamed from: n */
    private int f9117n;

    /* renamed from: o */
    private int f9118o;

    /* renamed from: p */
    private long f9119p;

    /* renamed from: x */
    private final long f9120x;

    /* renamed from: com.umeng.analytics.pro.i$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        public static final int f9121a = 4097;

        /* renamed from: b */
        public static final int f9122b = 4098;

        /* renamed from: c */
        public static final int f9123c = 4099;

        /* renamed from: d */
        public static final int f9124d = 4100;

        /* renamed from: e */
        public static final int f9125e = 4101;

        /* renamed from: f */
        public static final int f9126f = 4102;

        /* renamed from: g */
        public static final int f9127g = 4103;

        /* renamed from: h */
        public static final int f9128h = 4104;

        /* renamed from: i */
        public static final int f9129i = 4105;

        /* renamed from: j */
        public static final int f9130j = 4106;

        /* renamed from: k */
        public static final int f9131k = 8193;

        /* renamed from: l */
        public static final int f9132l = 8194;

        /* renamed from: m */
        public static final int f9133m = 8195;

        /* renamed from: n */
        public static final int f9134n = 8196;

        /* renamed from: o */
        public static final int f9135o = 8197;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.analytics.pro.i$b */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a */
        private static final C2434i f9136a = new C2434i();

        private b() {
        }
    }

    /* renamed from: com.umeng.analytics.pro.i$c */
    /* loaded from: classes.dex */
    public class c {

        /* renamed from: b */
        private ReportPolicy.ReportStrategy f9138b = null;

        /* renamed from: c */
        private int f9139c = -1;

        /* renamed from: d */
        private int f9140d = -1;

        /* renamed from: e */
        private int f9141e = -1;

        /* renamed from: f */
        private int f9142f = -1;

        public c() {
        }

        /* renamed from: b */
        private ReportPolicy.ReportStrategy m10559b(int i, int i2) {
            switch (i) {
                case 0:
                    if (!(this.f9138b instanceof ReportPolicy.ReportRealtime)) {
                        return new ReportPolicy.ReportRealtime();
                    }
                    break;
                case 1:
                    if (!(this.f9138b instanceof ReportPolicy.ReportAtLaunch)) {
                        return new ReportPolicy.ReportAtLaunch();
                    }
                    break;
                case 2:
                case 3:
                case 7:
                default:
                    if (!(this.f9138b instanceof ReportPolicy.ReportAtLaunch)) {
                        return new ReportPolicy.ReportAtLaunch();
                    }
                    break;
                case 4:
                    if (!(this.f9138b instanceof ReportPolicy.ReportDaily)) {
                        return new ReportPolicy.ReportDaily(StatTracer.getInstance(C2434i.f9095a));
                    }
                    break;
                case 5:
                    if (!(this.f9138b instanceof ReportPolicy.ReportWifiOnly)) {
                        return new ReportPolicy.ReportWifiOnly(C2434i.f9095a);
                    }
                    break;
                case 6:
                    if (!(this.f9138b instanceof ReportPolicy.ReportByInterval)) {
                        return new ReportPolicy.ReportByInterval(StatTracer.getInstance(C2434i.f9095a), i2);
                    }
                    ReportPolicy.ReportStrategy reportStrategy = this.f9138b;
                    ((ReportPolicy.ReportByInterval) reportStrategy).setReportInterval(i2);
                    return reportStrategy;
                case 8:
                    if (!(this.f9138b instanceof ReportPolicy.SmartPolicy)) {
                        return new ReportPolicy.SmartPolicy(StatTracer.getInstance(C2434i.f9095a));
                    }
                    break;
            }
            return this.f9138b;
        }

        /* renamed from: a */
        public int m10560a(int i) {
            int intValue = Integer.valueOf(UMEnvelopeBuild.imprintProperty(C2434i.f9095a, "test_report_interval", C2434i.f9103y)).intValue();
            return (intValue == -1 || intValue < 90 || intValue > 86400) ? i : intValue * 1000;
        }

        /* renamed from: a */
        public void m10561a() {
            try {
                int[] m10562a = m10562a(-1, -1);
                this.f9139c = m10562a[0];
                this.f9140d = m10562a[1];
            } catch (Throwable unused) {
            }
        }

        /* renamed from: a */
        public int[] m10562a(int i, int i2) {
            int intValue = Integer.valueOf(UMEnvelopeBuild.imprintProperty(C2434i.f9095a, "report_policy", C2434i.f9103y)).intValue();
            int intValue2 = Integer.valueOf(UMEnvelopeBuild.imprintProperty(C2434i.f9095a, "report_interval", C2434i.f9103y)).intValue();
            if (intValue == -1 || !ReportPolicy.isValid(intValue)) {
                return new int[]{i, i2};
            }
            int i3 = 90;
            if (intValue2 != -1 && intValue2 >= 90 && intValue2 <= 86400) {
                i3 = intValue2;
            }
            return new int[]{intValue, i3 * 1000};
        }

        /* renamed from: b */
        protected void m10563b() {
            int i;
            ReportPolicy.ReportStrategy m10559b;
            Defcon service = Defcon.getService(C2434i.f9095a);
            if (service.isOpen()) {
                if ((this.f9138b instanceof ReportPolicy.DefconPolicy) && this.f9138b.isValid()) {
                    r2 = 1;
                }
                m10559b = r2 != 0 ? this.f9138b : new ReportPolicy.DefconPolicy(StatTracer.getInstance(C2434i.f9095a), service);
            } else {
                boolean z = Integer.valueOf(UMEnvelopeBuild.imprintProperty(C2434i.f9095a, "integrated_test", C2434i.f9103y)).intValue() == 1;
                if (MLog.DEBUG && z) {
                    m10559b = new ReportPolicy.DebugPolicy(StatTracer.getInstance(C2434i.f9095a));
                } else {
                    if (C2434i.this.f9105b.isInTest() && "RPT".equals(C2434i.this.f9105b.getTestName())) {
                        if (C2434i.this.f9105b.getTestPolicy() == 6) {
                            r2 = (Integer.valueOf(UMEnvelopeBuild.imprintProperty(C2434i.f9095a, "test_report_interval", C2434i.f9103y)).intValue() != -1 ? 1 : 0) != 0 ? m10560a(90000) : this.f9140d > 0 ? this.f9140d : this.f9142f;
                        }
                        i = C2434i.this.f9105b.getTestPolicy();
                    } else {
                        i = this.f9141e;
                        r2 = this.f9142f;
                        if (this.f9139c != -1) {
                            i = this.f9139c;
                            r2 = this.f9140d;
                        }
                    }
                    m10559b = m10559b(i, r2);
                }
            }
            this.f9138b = m10559b;
            MLog.m11263d("Report policy : " + this.f9138b.getClass().getSimpleName());
        }

        /* renamed from: c */
        public ReportPolicy.ReportStrategy m10564c() {
            m10563b();
            return this.f9138b;
        }
    }

    /* renamed from: com.umeng.analytics.pro.i$d */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a */
        private Map<String, Object> f9143a;

        /* renamed from: b */
        private String f9144b;

        /* renamed from: c */
        private String f9145c;

        /* renamed from: d */
        private long f9146d;

        private d() {
            this.f9143a = null;
            this.f9144b = null;
            this.f9145c = null;
            this.f9146d = 0L;
        }

        public d(String str, Map<String, Object> map, String str2, long j) {
            this.f9143a = null;
            this.f9144b = null;
            this.f9145c = null;
            this.f9146d = 0L;
            this.f9143a = map;
            this.f9144b = str;
            this.f9146d = j;
            this.f9145c = str2;
        }

        /* renamed from: a */
        public Map<String, Object> m10565a() {
            return this.f9143a;
        }

        /* renamed from: b */
        public String m10566b() {
            return this.f9145c;
        }

        /* renamed from: c */
        public String m10567c() {
            return this.f9144b;
        }

        /* renamed from: d */
        public long m10568d() {
            return this.f9146d;
        }
    }

    private C2434i() {
        this.f9105b = null;
        this.f9106c = null;
        this.f9107d = null;
        this.f9108e = null;
        this.f9109f = null;
        this.f9110g = null;
        this.f9111h = null;
        this.f9112i = null;
        this.f9113j = 0L;
        this.f9114k = 10;
        this.f9115l = new JSONArray();
        this.f9116m = C2146a.f8101t;
        this.f9117n = 0;
        this.f9118o = 0;
        this.f9119p = 0L;
        this.f9120x = 28800000L;
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f9095a);
            this.f9119p = sharedPreferences.getLong(f9098s, 0L);
            this.f9117n = sharedPreferences.getInt(f9101v, 0);
            this.f9118o = sharedPreferences.getInt(f9102w, 0);
            this.f9107d = new c();
            this.f9105b = ABTest.getService(f9095a);
            this.f9106c = ImLatent.getService(f9095a, StatTracer.getInstance(f9095a));
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public static C2434i m10520a(Context context) {
        if (f9095a == null && context != null) {
            f9095a = context.getApplicationContext();
        }
        return b.f9136a;
    }

    /* renamed from: a */
    private JSONObject m10522a(JSONObject jSONObject, long j) {
        try {
            if (C2436k.m10572a(jSONObject) <= j) {
                return jSONObject;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("header");
            jSONObject2.put(C2427b.f8974an, C2436k.m10572a(jSONObject));
            jSONObject.put("header", jSONObject2);
            return C2436k.m10574a(f9095a, j, jSONObject);
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    /* renamed from: a */
    private boolean m10523a(long j, int i) {
        if (j == 0) {
            return true;
        }
        if (System.currentTimeMillis() - j <= 28800000) {
            return i < 5000;
        }
        m10537j();
        return true;
    }

    /* renamed from: b */
    private void m10524b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.length() <= 0) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            if (jSONObject.has("analytics")) {
                JSONObject jSONObject3 = jSONObject.getJSONObject("analytics");
                if (jSONObject3.has(C2427b.f8947N)) {
                    jSONObject2.put(C2427b.f8947N, jSONObject3.getJSONArray(C2427b.f8947N));
                }
                if (jSONObject3.has(C2427b.f8948O)) {
                    jSONObject2.put(C2427b.f8948O, jSONObject3.getJSONArray(C2427b.f8948O));
                }
                if (jSONObject3.has(C2427b.f8943J)) {
                    jSONObject2.put(C2427b.f8943J, jSONObject3.getJSONArray(C2427b.f8943J));
                }
                if (jSONObject3.has(C2427b.f8990n)) {
                    JSONArray jSONArray = jSONObject3.getJSONArray(C2427b.f8990n);
                    JSONArray jSONArray2 = new JSONArray();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject4 = jSONArray.getJSONObject(i);
                        if (jSONObject4 != null && jSONObject4.length() > 0) {
                            if (jSONObject4.has(C2427b.f8996t)) {
                                jSONObject4.remove(C2427b.f8996t);
                            }
                            jSONArray2.put(jSONObject4);
                        }
                    }
                    jSONObject2.put(C2427b.f8990n, jSONArray2);
                }
                if (jSONObject3.has(C2427b.f8937D)) {
                    jSONObject2.put(C2427b.f8937D, jSONObject3.getJSONObject(C2427b.f8937D));
                }
                if (jSONObject3.has(C2427b.f8940G)) {
                    jSONObject2.put(C2427b.f8940G, jSONObject3.getJSONObject(C2427b.f8940G));
                }
            }
            if (jSONObject.has("dplus")) {
                jSONObject2.put("dplus", jSONObject.getJSONObject("dplus"));
            }
            if (jSONObject.has("header")) {
                JSONObject jSONObject5 = jSONObject.getJSONObject("header");
                jSONObject2.put("sdk_version", jSONObject5.getString("sdk_version"));
                jSONObject2.put("device_id", jSONObject5.getString("device_id"));
                jSONObject2.put("device_model", jSONObject5.getString("device_model"));
                jSONObject2.put(ContentProviderStorage.VERSION, jSONObject5.getString("version_code"));
                jSONObject2.put("appkey", jSONObject5.getString("appkey"));
                jSONObject2.put("channel", jSONObject5.getString("channel"));
            }
            if (jSONObject2.length() > 0) {
                MLog.m11263d("constructMessage:" + jSONObject2.toString());
            }
        } catch (Throwable th) {
            MLog.m11273e(th);
        }
    }

    /* renamed from: c */
    private void m10525c(JSONObject jSONObject) {
        JSONObject optJSONObject;
        try {
            if (!jSONObject.getJSONObject("header").has(C2427b.f8974an)) {
                if (jSONObject.has(C2427b.f8956W)) {
                    jSONObject = jSONObject.getJSONObject(C2427b.f8956W);
                }
                if (jSONObject.has("analytics") && (optJSONObject = jSONObject.optJSONObject("analytics")) != null && optJSONObject.length() > 0) {
                    if (optJSONObject.has(C2427b.f8990n)) {
                        C2432g.m10485a(f9095a).m10500a(true, false);
                    }
                    if (optJSONObject.has(C2427b.f8947N) || optJSONObject.has(C2427b.f8948O)) {
                        C2432g.m10485a(f9095a).m10507d();
                    }
                    if (optJSONObject.has(C2427b.f8943J)) {
                        C2432g.m10485a(f9095a).m10508e();
                    }
                }
                if (jSONObject.has("dplus")) {
                    C2432g.m10485a(f9095a).m10509f();
                }
                C2432g.m10485a(f9095a).m10495a();
                return;
            }
            if (jSONObject.has(C2427b.f8956W)) {
                jSONObject = jSONObject.getJSONObject(C2427b.f8956W);
            }
            if (jSONObject.has("analytics")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("analytics");
                if (jSONObject2.has(C2427b.f8990n)) {
                    JSONObject jSONObject3 = jSONObject2.getJSONArray(C2427b.f8990n).getJSONObject(0);
                    if (jSONObject3 != null) {
                        C2432g.m10485a(f9095a).m10499a(true, jSONObject3.getString("id"));
                    }
                } else {
                    C2432g.m10485a(f9095a).m10510g();
                }
            } else if (jSONObject.has("dplus")) {
                JSONObject jSONObject4 = jSONObject.getJSONObject("dplus");
                if (jSONObject4.has(C2427b.f8958Y)) {
                    C2432g.m10485a(f9095a).m10505b(0);
                }
                if (jSONObject4.has(C2427b.f8963ac)) {
                    C2432g.m10485a(f9095a).m10505b(4);
                }
                if (jSONObject4.has(C2427b.f8968ah)) {
                    C2432g.m10485a(f9095a).m10505b(1);
                }
            }
            C2432g.m10485a(f9095a).m10495a();
        } catch (Exception unused) {
        }
    }

    /* renamed from: c */
    private void m10526c(boolean z) {
        JSONObject buildEnvelopeWithExtHeader;
        JSONObject jSONObject = new JSONObject();
        if (!z) {
            jSONObject = m10543a(UMEnvelopeBuild.maxDataSpace(f9095a));
        } else if (AnalyticsConfig.FLAG_DPLUS) {
            jSONObject = m10550b(UMEnvelopeBuild.maxDataSpace(f9095a));
        }
        if (jSONObject == null || jSONObject.length() <= 0) {
            return;
        }
        JSONObject jSONObject2 = (JSONObject) jSONObject.opt("header");
        JSONObject jSONObject3 = (JSONObject) jSONObject.opt(C2427b.f8956W);
        if (f9095a == null || jSONObject2 == null || jSONObject3 == null || (buildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(f9095a, jSONObject2, jSONObject3)) == null) {
            return;
        }
        m10524b(buildEnvelopeWithExtHeader);
        m10545a((Object) buildEnvelopeWithExtHeader);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005f A[Catch: Throwable -> 0x01b3, TryCatch #0 {Throwable -> 0x01b3, blocks: (B:3:0x0005, B:5:0x0009, B:7:0x000d, B:8:0x001b, B:10:0x002b, B:11:0x002f, B:12:0x0043, B:14:0x005f, B:15:0x0064, B:17:0x0075, B:19:0x0089, B:21:0x0097, B:23:0x00c5, B:24:0x00dd, B:25:0x0111, B:30:0x0115, B:32:0x0129, B:34:0x0137, B:36:0x0165, B:37:0x017d, B:38:0x0034, B:40:0x003c, B:41:0x0041), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0075 A[Catch: Throwable -> 0x01b3, TryCatch #0 {Throwable -> 0x01b3, blocks: (B:3:0x0005, B:5:0x0009, B:7:0x000d, B:8:0x001b, B:10:0x002b, B:11:0x002f, B:12:0x0043, B:14:0x005f, B:15:0x0064, B:17:0x0075, B:19:0x0089, B:21:0x0097, B:23:0x00c5, B:24:0x00dd, B:25:0x0111, B:30:0x0115, B:32:0x0129, B:34:0x0137, B:36:0x0165, B:37:0x017d, B:38:0x0034, B:40:0x003c, B:41:0x0041), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0115 A[Catch: Throwable -> 0x01b3, TryCatch #0 {Throwable -> 0x01b3, blocks: (B:3:0x0005, B:5:0x0009, B:7:0x000d, B:8:0x001b, B:10:0x002b, B:11:0x002f, B:12:0x0043, B:14:0x005f, B:15:0x0064, B:17:0x0075, B:19:0x0089, B:21:0x0097, B:23:0x00c5, B:24:0x00dd, B:25:0x0111, B:30:0x0115, B:32:0x0129, B:34:0x0137, B:36:0x0165, B:37:0x017d, B:38:0x0034, B:40:0x003c, B:41:0x0041), top: B:2:0x0005 }] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private org.json.JSONObject m10527d(boolean r8) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2434i.m10527d(boolean):org.json.JSONObject");
    }

    /* renamed from: d */
    private void m10528d(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (2050 == jSONObject.getInt("__t")) {
                if (!m10523a(this.f9119p, this.f9117n)) {
                    return;
                } else {
                    this.f9117n++;
                }
            } else if (2049 == jSONObject.getInt("__t")) {
                if (!m10523a(this.f9119p, this.f9118o)) {
                    return;
                } else {
                    this.f9118o++;
                }
            }
            if (this.f9115l.length() >= this.f9114k) {
                C2432g.m10485a(f9095a).m10497a(this.f9115l);
                this.f9115l = new JSONArray();
            }
            if (this.f9119p == 0) {
                this.f9119p = System.currentTimeMillis();
            }
            this.f9115l.put(jSONObject);
        } catch (Throwable th) {
            MLog.m11273e(th);
        }
    }

    /* renamed from: e */
    private void m10530e(Object obj) {
        try {
            m10553b(f9095a);
            m10544a();
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject == null || jSONObject.length() <= 0) {
                return;
            }
            String string = jSONObject.getString(C2427b.f8941H);
            String string2 = jSONObject.getString("uid");
            String[] m10437a = C2423c.m10437a(f9095a);
            if (m10437a != null && string.equals(m10437a[0]) && string2.equals(m10437a[1])) {
                return;
            }
            boolean m10607a = C2440o.m10600a().m10607a(f9095a, System.currentTimeMillis());
            C2423c.m10436a(f9095a, string, string2);
            if (m10607a) {
                C2440o.m10600a().m10609b(f9095a, System.currentTimeMillis());
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: e */
    private boolean m10531e(boolean z) {
        if (m10541n()) {
            return true;
        }
        if (this.f9107d == null) {
            this.f9107d = new c();
        }
        this.f9107d.m10561a();
        ReportPolicy.ReportStrategy m10564c = this.f9107d.m10564c();
        boolean shouldSendMessage = m10564c.shouldSendMessage(z);
        if (shouldSendMessage && (((m10564c instanceof ReportPolicy.ReportByInterval) || (m10564c instanceof ReportPolicy.DebugPolicy)) && m10538k())) {
            m10544a();
        }
        return shouldSendMessage;
    }

    /* renamed from: f */
    private String m10532f() {
        String imprintProperty;
        String str = null;
        try {
            imprintProperty = UMEnvelopeBuild.imprintProperty(f9095a, "pr_ve", null);
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(imprintProperty)) {
            if (!TextUtils.isEmpty(this.f9109f)) {
                return this.f9109f;
            }
            if (this.f9108e == null) {
                this.f9108e = PreferenceWrapper.getDefault(f9095a);
            }
            str = this.f9108e.getString("pre_version", "");
            String appVersionName = DeviceConfig.getAppVersionName(f9095a);
            if (TextUtils.isEmpty(str)) {
                this.f9108e.edit().putString("pre_version", "0").putString("cur_version", appVersionName).commit();
                str = "0";
            } else {
                String string = this.f9108e.getString("cur_version", "");
                if (!appVersionName.equals(string)) {
                    this.f9108e.edit().putString("pre_version", string).putString("cur_version", appVersionName).commit();
                    str = string;
                }
            }
            this.f9109f = str;
            return str;
        }
        str = imprintProperty;
        this.f9109f = str;
        return str;
    }

    /* renamed from: f */
    private void m10533f(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject == null || jSONObject.length() <= 0 || !jSONObject.has("__ii")) {
                return;
            }
            String optString = jSONObject.optString("__ii");
            jSONObject.remove("__ii");
            if (TextUtils.isEmpty(optString)) {
                return;
            }
            C2432g.m10485a(f9095a).m10501a(optString, obj.toString(), 2);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: g */
    private String m10534g() {
        String imprintProperty;
        String str = null;
        try {
            imprintProperty = UMEnvelopeBuild.imprintProperty(f9095a, "ud_da", null);
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(imprintProperty)) {
            if (!TextUtils.isEmpty(this.f9110g)) {
                return this.f9110g;
            }
            if (this.f9108e == null) {
                this.f9108e = PreferenceWrapper.getDefault(f9095a);
            }
            str = this.f9108e.getString("pre_date", "");
            if (TextUtils.isEmpty(str)) {
                str = new SimpleDateFormat(C1579a.f5889b, Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                this.f9108e.edit().putString("pre_date", str).commit();
            } else {
                String format = new SimpleDateFormat(C1579a.f5889b, Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                if (!str.equals(format)) {
                    this.f9108e.edit().putString("pre_date", format).commit();
                    str = format;
                }
            }
            this.f9110g = str;
            return str;
        }
        str = imprintProperty;
        this.f9110g = str;
        return str;
    }

    /* renamed from: h */
    private String m10535h() {
        String imprintProperty;
        String str = null;
        try {
            imprintProperty = UMEnvelopeBuild.imprintProperty(f9095a, "pr_ve", null);
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(imprintProperty)) {
            if (!TextUtils.isEmpty(this.f9111h)) {
                return this.f9111h;
            }
            if (this.f9108e == null) {
                this.f9108e = PreferenceWrapper.getDefault(f9095a);
            }
            str = this.f9108e.getString("dp_pre_version", "");
            String appVersionName = DeviceConfig.getAppVersionName(f9095a);
            if (TextUtils.isEmpty(str)) {
                this.f9108e.edit().putString("dp_pre_version", "0").putString("dp_cur_version", appVersionName).commit();
                str = "0";
            } else {
                String string = this.f9108e.getString("dp_cur_version", "");
                if (!appVersionName.equals(string)) {
                    this.f9108e.edit().putString("dp_pre_version", string).putString("dp_cur_version", appVersionName).commit();
                    str = string;
                }
            }
            this.f9111h = str;
            return str;
        }
        str = imprintProperty;
        this.f9111h = str;
        return str;
    }

    /* renamed from: i */
    private String m10536i() {
        String imprintProperty;
        String str = null;
        try {
            imprintProperty = UMEnvelopeBuild.imprintProperty(f9095a, "ud_da", null);
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(imprintProperty)) {
            if (!TextUtils.isEmpty(this.f9112i)) {
                return this.f9112i;
            }
            if (this.f9108e == null) {
                this.f9108e = PreferenceWrapper.getDefault(f9095a);
            }
            str = this.f9108e.getString("dp_pre_date", "");
            if (TextUtils.isEmpty(str)) {
                str = new SimpleDateFormat(C1579a.f5889b, Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                this.f9108e.edit().putString("dp_pre_date", str).commit();
            } else {
                String format = new SimpleDateFormat(C1579a.f5889b, Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                if (!str.equals(format)) {
                    this.f9108e.edit().putString("dp_pre_date", format).commit();
                    str = format;
                }
            }
            this.f9112i = str;
            return str;
        }
        str = imprintProperty;
        this.f9112i = str;
        return str;
    }

    /* renamed from: j */
    private void m10537j() {
        try {
            this.f9117n = 0;
            this.f9118o = 0;
            this.f9119p = System.currentTimeMillis();
            PreferenceWrapper.getDefault(f9095a).edit().putLong(f9099t, System.currentTimeMillis()).putInt(f9100u, 0).commit();
        } catch (Throwable unused) {
        }
    }

    /* renamed from: k */
    private boolean m10538k() {
        try {
            if (!TextUtils.isEmpty(C2440o.m10600a().m10612c())) {
                m10553b(f9095a);
            }
            if (this.f9115l.length() <= 0) {
                return false;
            }
            for (int i = 0; i < this.f9115l.length(); i++) {
                JSONObject optJSONObject = this.f9115l.optJSONObject(i);
                if (optJSONObject != null && optJSONObject.length() > 0) {
                    String optString = optJSONObject.optString("__i");
                    if (TextUtils.isEmpty(optString) || f9103y.equals(optString)) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Throwable unused) {
            return true;
        }
    }

    /* renamed from: l */
    private void m10539l() {
        if (this.f9115l.length() > 0) {
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < this.f9115l.length(); i++) {
                try {
                    JSONObject jSONObject = this.f9115l.getJSONObject(i);
                    if (jSONObject != null && jSONObject.length() > 0) {
                        String optString = jSONObject.optString("__i");
                        if (TextUtils.isEmpty(optString) || f9103y.equals(optString)) {
                            String m10612c = C2440o.m10600a().m10612c();
                            if (TextUtils.isEmpty(m10612c)) {
                                m10612c = f9103y;
                            }
                            jSONObject.put("__i", m10612c);
                        }
                    }
                    jSONArray.put(jSONObject);
                } catch (Throwable unused) {
                }
            }
            this.f9115l = jSONArray;
        }
    }

    /* renamed from: m */
    private void m10540m() {
        SharedPreferences sharedPreferences;
        try {
            if (!m10541n() || f9095a == null || (sharedPreferences = PreferenceWrapper.getDefault(f9095a)) == null || sharedPreferences.getLong(f9096q, 0L) != 0) {
                return;
            }
            sharedPreferences.edit().putLong(f9096q, System.currentTimeMillis()).commit();
        } catch (Throwable unused) {
        }
    }

    /* renamed from: n */
    private boolean m10541n() {
        SharedPreferences sharedPreferences;
        try {
            if (f9095a == null || (sharedPreferences = PreferenceWrapper.getDefault(f9095a)) == null) {
                return false;
            }
            return sharedPreferences.getLong(f9097r, -1L) != 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: o */
    private void m10542o() {
        try {
            m10553b(f9095a);
            m10544a();
            String[] m10437a = C2423c.m10437a(f9095a);
            if (m10437a == null || TextUtils.isEmpty(m10437a[0]) || TextUtils.isEmpty(m10437a[1])) {
                return;
            }
            boolean m10607a = C2440o.m10600a().m10607a(f9095a, System.currentTimeMillis());
            C2423c.m10438b(f9095a);
            if (m10607a) {
                C2440o.m10600a().m10609b(f9095a, System.currentTimeMillis());
            }
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.m11271e(" Excepthon  in  onProfileSignOff", th);
            }
        }
    }

    /* renamed from: a */
    public JSONObject m10543a(long j) {
        if (TextUtils.isEmpty(C2440o.m10600a().m10613c(f9095a))) {
            return null;
        }
        JSONObject m10551b = m10551b(false);
        int m10580a = C2437l.m10578a().m10580a(f9095a);
        if (m10551b.length() <= 0) {
            return null;
        }
        if (m10551b.length() == 1) {
            if (m10551b.optJSONObject(C2427b.f8940G) != null && m10580a != 3) {
                return null;
            }
            if (!TextUtils.isEmpty(m10551b.optString("userlevel")) && m10580a != 3) {
                return null;
            }
        } else if (m10551b.length() == 2 && m10551b.optJSONObject(C2427b.f8940G) != null && !TextUtils.isEmpty(m10551b.optString("userlevel")) && m10580a != 3) {
            return null;
        }
        JSONObject m10527d = m10527d(false);
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (m10580a == 3) {
                jSONObject2.put("analytics", new JSONObject());
            } else if (m10551b != null && m10551b.length() > 0) {
                jSONObject2.put("analytics", m10551b);
            }
            if (m10527d != null && m10527d.length() > 0) {
                jSONObject.put("header", m10527d);
            }
            if (jSONObject2.length() > 0) {
                jSONObject.put(C2427b.f8956W, jSONObject2);
            }
            return m10522a(jSONObject, j);
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    /* renamed from: a */
    public void m10544a() {
        try {
            if (this.f9115l.length() > 0) {
                C2432g.m10485a(f9095a).m10497a(this.f9115l);
                this.f9115l = new JSONArray();
            }
            PreferenceWrapper.getDefault(f9095a).edit().putLong(f9098s, this.f9119p).putInt(f9101v, this.f9117n).putInt(f9102w, this.f9118o).commit();
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public void m10545a(Object obj) {
        if (obj != null) {
            try {
                JSONObject jSONObject = (JSONObject) obj;
                if (jSONObject.length() > 0) {
                    if (!jSONObject.has(C2427b.f8975ao)) {
                        m10525c(jSONObject);
                    } else if (101 != jSONObject.getInt(C2427b.f8975ao)) {
                        m10525c(jSONObject);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* renamed from: a */
    public void m10546a(Object obj, int i) {
        switch (i) {
            case 4097:
                if (obj != null) {
                    try {
                        m10528d(obj);
                    } catch (Throwable unused) {
                        return;
                    }
                }
                if (f9103y.equals(((JSONObject) obj).optString("__i"))) {
                    return;
                }
                m10549a(false);
                return;
            case 4098:
                if (obj != null) {
                    try {
                        m10528d(obj);
                    } catch (Throwable unused2) {
                        return;
                    }
                }
                if (f9103y.equals(((JSONObject) obj).optString("__i"))) {
                    return;
                }
                m10549a(false);
                return;
            case 4099:
                C2441p.m10616a(f9095a);
                return;
            case a.f9124d /* 4100 */:
                C2433h.m10515b(f9095a);
                return;
            case a.f9125e /* 4101 */:
                m10530e(obj);
                return;
            case a.f9126f /* 4102 */:
                m10542o();
                return;
            case a.f9127g /* 4103 */:
                C2440o.m10600a().m10605a(f9095a, obj);
                return;
            case a.f9128h /* 4104 */:
                C2440o.m10600a().m10610b(f9095a, obj);
                return;
            case a.f9129i /* 4105 */:
                m10544a();
                return;
            case a.f9130j /* 4106 */:
                m10533f(obj);
                return;
            default:
                switch (i) {
                    case a.f9131k /* 8193 */:
                        m10547a(obj, 1, false);
                        return;
                    case 8194:
                        C2438m.m10584a(f9095a).m10594a(obj);
                        return;
                    case a.f9133m /* 8195 */:
                        C2422b.m10394a().m10411a(obj);
                        return;
                    case a.f9134n /* 8196 */:
                        C2422b.m10394a().m10434j();
                        return;
                    case a.f9135o /* 8197 */:
                        C2422b.m10394a().m10432h();
                        return;
                    default:
                        return;
                }
        }
    }

    /* renamed from: a */
    public void m10547a(Object obj, int i, boolean z) {
        String str;
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject == null || jSONObject.length() <= 0) {
                return;
            }
            String optString = jSONObject.optString("__ii");
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f9095a);
            if (i == 0) {
                long j = sharedPreferences.getLong(f9099t, 0L);
                int i2 = sharedPreferences.getInt(f9100u, 0);
                if (!m10523a(j, i2)) {
                    return;
                } else {
                    sharedPreferences.edit().putLong(f9099t, System.currentTimeMillis()).putInt(f9100u, i2 == 5000 ? 0 : i2 + 1).commit();
                }
            }
            String string = sharedPreferences.getString(f9093B, "");
            JSONArray jSONArray = TextUtils.isEmpty(string) ? new JSONArray() : new JSONArray(string);
            JSONObject m10433i = C2422b.m10394a().m10433i();
            if (f9103y.equals(optString)) {
                jSONObject.put(f9094C, i);
                if (!jSONObject.has(C2427b.f8962ab) && m10433i.length() > 0) {
                    jSONObject.put(C2427b.f8962ab, m10433i);
                }
                jSONArray.put(jSONObject);
                sharedPreferences.edit().putString(f9093B, jSONArray.toString()).commit();
                return;
            }
            if (i != 3 && jSONArray.length() > 0) {
                for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i3);
                    if (jSONObject2 != null && jSONObject2.length() > 0) {
                        int i4 = jSONObject2.getInt(f9094C);
                        if (!jSONObject2.has(C2427b.f8962ab) && m10433i.length() > 0) {
                            jSONObject2.put(C2427b.f8962ab, m10433i);
                        }
                        switch (i4) {
                            case 0:
                                str = "_$!ts";
                                break;
                            case 1:
                                str = "_$!ts";
                                break;
                        }
                        jSONObject2.put(str, System.currentTimeMillis());
                        jSONObject2.put("__ii", optString);
                        jSONObject2.remove(f9094C);
                        C2432g.m10485a(f9095a).m10498a(jSONObject2, i4);
                    }
                }
                C2422b.m10394a().m10427d();
                sharedPreferences.edit().remove(f9093B).commit();
            }
            C2432g.m10485a(f9095a).m10498a(jSONObject, i);
            if (z) {
                m10526c(true);
                return;
            }
            if (UMEnvelopeBuild.isReadyBuild(f9095a, UMLogDataProtocol.UMBusinessType.U_DPLUS)) {
                Defcon service = Defcon.getService(f9095a);
                if (!service.isOpen()) {
                    m10526c(true);
                } else if (new ReportPolicy.DefconPolicy(StatTracer.getInstance(f9095a), service).shouldSendMessage(false)) {
                    m10526c(true);
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public void m10548a(JSONObject jSONObject) {
        JSONObject m10527d;
        try {
            if (!UMEnvelopeBuild.isReadyBuild(f9095a, UMLogDataProtocol.UMBusinessType.U_DPLUS) || jSONObject == null || (m10527d = m10527d(true)) == null || m10527d.length() <= 0) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(C2427b.f8963ac, jSONArray);
            jSONObject2.put("dplus", jSONObject3);
            if (f9095a == null || m10527d == null) {
                return;
            }
            UMEnvelopeBuild.buildEnvelopeWithExtHeader(f9095a, m10527d, jSONObject2);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public void m10549a(boolean z) {
        if (m10531e(z) && UMEnvelopeBuild.isReadyBuild(f9095a, UMLogDataProtocol.UMBusinessType.U_APP)) {
            m10526c(false);
        }
    }

    /* renamed from: b */
    public JSONObject m10550b(long j) {
        if (!AnalyticsConfig.FLAG_DPLUS || TextUtils.isEmpty(C2440o.m10600a().m10613c(f9095a))) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        if (AnalyticsConfig.FLAG_DPLUS) {
            jSONObject = C2432g.m10485a(f9095a).m10506c();
            C2437l.m10578a().m10581a(jSONObject, f9095a);
            Defcon service = Defcon.getService(f9095a);
            if (service.isOpen() && !new ReportPolicy.DefconPolicy(StatTracer.getInstance(f9095a), service).shouldSendMessage(false)) {
                jSONObject = new JSONObject();
            }
        }
        if (jSONObject.length() <= 0) {
            return null;
        }
        JSONObject m10527d = m10527d(true);
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONObject jSONObject3 = new JSONObject();
            if (jSONObject != null && jSONObject.length() > 0) {
                jSONObject3.put("dplus", jSONObject);
            }
            if (m10527d != null && m10527d.length() > 0) {
                jSONObject2.put("header", m10527d);
            }
            if (jSONObject3.length() > 0) {
                jSONObject2.put(C2427b.f8956W, jSONObject3);
            }
            return m10522a(jSONObject2, j);
        } catch (Throwable unused) {
            return jSONObject2;
        }
    }

    /* renamed from: b */
    public JSONObject m10551b(boolean z) {
        try {
            JSONObject m10494a = C2432g.m10485a(f9095a).m10494a(z);
            if (m10494a == null) {
                try {
                    m10494a = new JSONObject();
                } catch (Throwable unused) {
                    return m10494a;
                }
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f9095a);
            if (sharedPreferences != null) {
                String string = sharedPreferences.getString("userlevel", "");
                if (!TextUtils.isEmpty(string)) {
                    m10494a.put("userlevel", string);
                }
            }
            if (m10541n()) {
                this.f9113j = m10555c();
                if (this.f9113j != 0) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("ts", this.f9113j);
                    m10494a.put(C2427b.f8937D, jSONObject);
                    sharedPreferences.edit().putLong(f9097r, 0L).commit();
                }
            }
            String[] m10437a = C2423c.m10437a(f9095a);
            if (m10437a != null && !TextUtils.isEmpty(m10437a[0]) && !TextUtils.isEmpty(m10437a[1])) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(C2427b.f8941H, m10437a[0]);
                jSONObject2.put(C2427b.f8942I, m10437a[1]);
                if (jSONObject2.length() > 0) {
                    m10494a.put(C2427b.f8940G, jSONObject2);
                }
            }
            if (ABTest.getService(f9095a).isInTest()) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(ABTest.getService(f9095a).getTestName(), ABTest.getService(f9095a).getGroupInfo());
                m10494a.put(C2427b.f8939F, jSONObject3);
            }
            C2437l.m10578a().m10583b(m10494a, f9095a);
            if (m10494a.length() <= 0) {
                return m10494a;
            }
            new JSONObject().put("analytics", m10494a);
            return m10494a;
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* renamed from: b */
    public void m10552b() {
        f9104z = true;
        m10526c(false);
    }

    /* renamed from: b */
    public void m10553b(Context context) {
        try {
            C2432g.m10485a(context).m10504b();
            m10539l();
        } catch (Throwable unused) {
        }
    }

    /* renamed from: b */
    public void m10554b(Object obj) {
        f9104z = true;
        m10553b(f9095a);
        m10544a();
        m10526c(false);
        if (AnalyticsConfig.FLAG_DPLUS) {
            m10547a(obj, 2, false);
        }
    }

    /* renamed from: c */
    public long m10555c() {
        SharedPreferences sharedPreferences;
        long j = 0;
        try {
            if (f9095a == null || (sharedPreferences = PreferenceWrapper.getDefault(f9095a)) == null) {
                return 0L;
            }
            long j2 = sharedPreferences.getLong(f9096q, 0L);
            if (j2 == 0) {
                try {
                    j = System.currentTimeMillis();
                    sharedPreferences.edit().putLong(f9096q, j).commit();
                    return j;
                } catch (Throwable unused) {
                }
            }
            return j2;
        } catch (Throwable unused2) {
            return j;
        }
    }

    /* renamed from: c */
    public void m10556c(Object obj) {
        m10540m();
        f9092A = true;
        m10532f();
        m10534g();
        m10535h();
        m10536i();
        m10549a(true);
        if (AnalyticsConfig.FLAG_DPLUS) {
            m10547a(obj, 2, false);
        }
    }

    /* renamed from: d */
    public void m10557d() {
        String str;
        try {
            String m10612c = C2440o.m10600a().m10612c();
            if (TextUtils.isEmpty(m10612c)) {
                return;
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f9095a);
            String string = sharedPreferences.getString(f9093B, "");
            JSONArray jSONArray = TextUtils.isEmpty(string) ? new JSONArray() : new JSONArray(string);
            if (jSONArray.length() > 0) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    if (jSONObject != null && jSONObject.length() > 0) {
                        int i2 = jSONObject.getInt(f9094C);
                        switch (i2) {
                            case 0:
                                str = "_$!ts";
                                break;
                            case 1:
                                str = "_$!ts";
                                break;
                        }
                        jSONObject.put(str, System.currentTimeMillis());
                        jSONObject.put("__ii", m10612c);
                        jSONObject.remove(f9094C);
                        C2432g.m10485a(f9095a).m10498a(jSONObject, i2);
                    }
                }
                sharedPreferences.edit().remove(f9093B).commit();
                if (UMEnvelopeBuild.isReadyBuild(f9095a, UMLogDataProtocol.UMBusinessType.U_DPLUS)) {
                    m10526c(true);
                }
            }
        } catch (Throwable unused) {
        }
    }
}
