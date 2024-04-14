package com.umeng.analytics.game;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.C2422b;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.game.C2424a;
import com.umeng.analytics.pro.InterfaceC2443r;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

/* renamed from: com.umeng.analytics.game.b */
/* loaded from: classes.dex */
class C2425b implements InterfaceC2443r {

    /* renamed from: a */
    public static boolean f8906a = true;

    /* renamed from: A */
    private Context f8907A;

    /* renamed from: b */
    private C2422b f8908b = MobclickAgent.getAgent();

    /* renamed from: c */
    private C2424a f8909c = null;

    /* renamed from: d */
    private final int f8910d = 100;

    /* renamed from: e */
    private final int f8911e = 1;

    /* renamed from: f */
    private final int f8912f = 0;

    /* renamed from: g */
    private final int f8913g = -1;

    /* renamed from: h */
    private final int f8914h = 1;

    /* renamed from: i */
    private final String f8915i = "level";

    /* renamed from: j */
    private final String f8916j = "pay";

    /* renamed from: k */
    private final String f8917k = "buy";

    /* renamed from: l */
    private final String f8918l = "use";

    /* renamed from: m */
    private final String f8919m = "bonus";

    /* renamed from: n */
    private final String f8920n = "item";

    /* renamed from: o */
    private final String f8921o = "cash";

    /* renamed from: p */
    private final String f8922p = "coin";

    /* renamed from: q */
    private final String f8923q = "source";

    /* renamed from: r */
    private final String f8924r = "amount";

    /* renamed from: s */
    private final String f8925s = "user_level";

    /* renamed from: t */
    private final String f8926t = "bonus_source";

    /* renamed from: u */
    private final String f8927u = "level";

    /* renamed from: v */
    private final String f8928v = NotificationCompat.CATEGORY_STATUS;

    /* renamed from: w */
    private final String f8929w = "duration";

    /* renamed from: x */
    private final String f8930x = "curtype";

    /* renamed from: y */
    private final String f8931y = "orderid";

    /* renamed from: z */
    private final String f8932z = "UMGameAgent.init(Context) should be called before any game api";

    public C2425b() {
        f8906a = true;
    }

    /* renamed from: a */
    private void m10451a(String str, int i) {
        if (this.f8907A == null) {
            MLog.m11269e("UMGameAgent.init(Context) should be called before any game api");
            return;
        }
        if (AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m11269e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
            return;
        }
        C2424a.a m10442b = this.f8909c.m10442b(str);
        if (m10442b == null) {
            MLog.m11287w(String.format("finishLevel(or failLevel) called before startLevel", new Object[0]));
            return;
        }
        long m10449e = m10442b.m10449e();
        if (m10449e <= 0) {
            MLog.m11263d("level duration is 0");
            return;
        }
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("level", str);
        hashMap.put(NotificationCompat.CATEGORY_STATUS, Integer.valueOf(i));
        hashMap.put("duration", Long.valueOf(m10449e));
        if (this.f8909c.f8895b != null) {
            hashMap.put("user_level", this.f8909c.f8895b);
        }
        this.f8908b.m10405a(this.f8907A, "level", hashMap);
    }

    @Override // com.umeng.analytics.pro.InterfaceC2443r
    /* renamed from: a */
    public void mo10452a() {
        String str;
        MLog.m11263d("App resume from background");
        if (this.f8907A == null) {
            str = "UMGameAgent.init(Context) should be called before any game api";
        } else {
            if (AnalyticsConfig.getVerticalType(this.f8907A) != MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() && AnalyticsConfig.getVerticalType(this.f8907A) != MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
                if (f8906a) {
                    this.f8909c.m10443b();
                    return;
                }
                return;
            }
            str = "UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ";
        }
        MLog.m11269e(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10453a(double d, double d2, int i) {
        if (this.f8907A == null) {
            MLog.m11269e("UMGameAgent.init(Context) should be called before any game api");
            return;
        }
        if (AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m11269e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
            return;
        }
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("cash", Long.valueOf((long) (d * 100.0d)));
        hashMap.put("coin", Long.valueOf((long) (d2 * 100.0d)));
        hashMap.put("source", Integer.valueOf(i));
        if (this.f8909c.f8895b != null) {
            hashMap.put("user_level", this.f8909c.f8895b);
        }
        if (this.f8909c.f8894a != null) {
            hashMap.put("level", this.f8909c.f8894a);
        }
        this.f8908b.m10405a(this.f8907A, "pay", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10454a(double d, int i) {
        if (this.f8907A == null) {
            MLog.m11269e("UMGameAgent.init(Context) should be called before any game api");
            return;
        }
        if (AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m11269e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
            return;
        }
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("coin", Long.valueOf((long) (d * 100.0d)));
        hashMap.put("bonus_source", Integer.valueOf(i));
        if (this.f8909c.f8895b != null) {
            hashMap.put("user_level", this.f8909c.f8895b);
        }
        if (this.f8909c.f8894a != null) {
            hashMap.put("level", this.f8909c.f8894a);
        }
        this.f8908b.m10405a(this.f8907A, "bonus", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10455a(double d, String str, double d2, int i, String str2) {
        String str3;
        if (this.f8907A == null) {
            str3 = "UMGameAgent.init(Context) should be called before any game api";
        } else {
            if (AnalyticsConfig.getVerticalType(this.f8907A) != MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() && AnalyticsConfig.getVerticalType(this.f8907A) != MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
                if (d < 0.0d || d2 < 0.0d) {
                    return;
                }
                HashMap<String, Object> hashMap = new HashMap<>();
                if (!TextUtils.isEmpty(str) && str.length() > 0 && str.length() <= 3) {
                    hashMap.put("curtype", str);
                }
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        int length = str2.getBytes("UTF-8").length;
                        if (length > 0 && length <= 1024) {
                            hashMap.put("orderid", str2);
                        }
                    } catch (UnsupportedEncodingException e) {
                        e.printStackTrace();
                    }
                }
                hashMap.put("cash", Long.valueOf((long) (d * 100.0d)));
                hashMap.put("coin", Long.valueOf((long) (d2 * 100.0d)));
                hashMap.put("source", Integer.valueOf(i));
                if (this.f8909c.f8895b != null) {
                    hashMap.put("user_level", this.f8909c.f8895b);
                }
                if (this.f8909c.f8894a != null) {
                    hashMap.put("level", this.f8909c.f8894a);
                }
                this.f8908b.m10405a(this.f8907A, "pay", hashMap);
                return;
            }
            str3 = "UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ";
        }
        MLog.m11269e(str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10456a(double d, String str, int i, double d2, int i2) {
        if (AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m11269e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else {
            m10453a(d, d2 * i, i2);
            m10459a(str, i, d2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10457a(Context context) {
        if (context == null) {
            MLog.m11269e("Context is null, can't init GameAgent");
            return;
        }
        this.f8907A = context.getApplicationContext();
        this.f8908b.m10410a((InterfaceC2443r) this);
        this.f8909c = new C2424a(this.f8907A);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10458a(String str) {
        try {
            if (this.f8907A == null) {
                MLog.m11269e("UMGameAgent.init(Context) should be called before any game api");
                return;
            }
            this.f8909c.f8895b = str;
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(this.f8907A);
            if (sharedPreferences != null) {
                sharedPreferences.edit().putString("userlevel", str).commit();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10459a(String str, int i, double d) {
        if (this.f8907A == null) {
            MLog.m11269e("UMGameAgent.init(Context) should be called before any game api");
            return;
        }
        if (AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m11269e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
            return;
        }
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("item", str);
        hashMap.put("amount", Integer.valueOf(i));
        hashMap.put("coin", Long.valueOf((long) (i * d * 100.0d)));
        if (this.f8909c.f8895b != null) {
            hashMap.put("user_level", this.f8909c.f8895b);
        }
        if (this.f8909c.f8894a != null) {
            hashMap.put("level", this.f8909c.f8894a);
        }
        this.f8908b.m10405a(this.f8907A, "buy", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10460a(String str, int i, double d, int i2) {
        if (AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m11269e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else {
            m10454a(i * d, i2);
            m10459a(str, i, d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m10461a(boolean z) {
        MLog.m11263d(String.format("Trace sleep time : %b", Boolean.valueOf(z)));
        f8906a = z;
    }

    @Override // com.umeng.analytics.pro.InterfaceC2443r
    /* renamed from: b */
    public void mo10462b() {
        String str;
        if (this.f8907A == null) {
            str = "UMGameAgent.init(Context) should be called before any game api";
        } else {
            if (AnalyticsConfig.getVerticalType(this.f8907A) != MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() && AnalyticsConfig.getVerticalType(this.f8907A) != MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
                if (f8906a) {
                    this.f8909c.m10441a();
                    return;
                }
                return;
            }
            str = "UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ";
        }
        MLog.m11269e(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m10463b(String str) {
        if (this.f8907A == null) {
            MLog.m11269e("UMGameAgent.init(Context) should be called before any game api");
            return;
        }
        if (AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m11269e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
            return;
        }
        this.f8909c.f8894a = str;
        this.f8909c.m10440a(str);
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("level", str);
        hashMap.put(NotificationCompat.CATEGORY_STATUS, 0);
        if (this.f8909c.f8895b != null) {
            hashMap.put("user_level", this.f8909c.f8895b);
        }
        this.f8908b.m10405a(this.f8907A, "level", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m10464b(String str, int i, double d) {
        if (this.f8907A == null) {
            MLog.m11269e("UMGameAgent.init(Context) should be called before any game api");
            return;
        }
        if (AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m11269e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
            return;
        }
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("item", str);
        hashMap.put("amount", Integer.valueOf(i));
        hashMap.put("coin", Long.valueOf((long) (i * d * 100.0d)));
        if (this.f8909c.f8895b != null) {
            hashMap.put("user_level", this.f8909c.f8895b);
        }
        if (this.f8909c.f8894a != null) {
            hashMap.put("level", this.f8909c.f8894a);
        }
        this.f8908b.m10405a(this.f8907A, "use", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m10465c(String str) {
        if (this.f8907A == null) {
            MLog.m11269e("UMGameAgent.init(Context) should be called before any game api");
        } else if (AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m11269e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else {
            m10451a(str, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m10466d(String str) {
        if (this.f8907A == null) {
            MLog.m11269e("UMGameAgent.init(Context) should be called before any game api");
        } else if (AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f8907A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m11269e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else {
            m10451a(str, -1);
        }
    }
}
