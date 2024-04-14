package com.umeng.analytics.game;

import android.content.Context;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.statistics.common.MLog;

/* loaded from: classes.dex */
public class UMGameAgent extends MobclickAgent {

    /* renamed from: a */
    private static final String f8888a = "Input string is null or empty";

    /* renamed from: b */
    private static final String f8889b = "Input string must be less than 64 chars";

    /* renamed from: c */
    private static final String f8890c = "Input value type is negative";

    /* renamed from: d */
    private static final String f8891d = "The int value for 'Pay Channels' ranges between 1 ~ 99 ";

    /* renamed from: e */
    private static final C2425b f8892e = new C2425b();

    /* renamed from: f */
    private static Context f8893f;

    /* renamed from: a */
    private static boolean m10439a(String str) {
        return str == null || str.trim().length() <= 0;
    }

    public static void bonus(double d, int i) {
        if (d < 0.0d) {
            MLog.m11269e(f8890c);
        } else if (i <= 0 || i >= 100) {
            MLog.m11269e(f8891d);
        } else {
            f8892e.m10454a(d, i);
        }
    }

    public static void bonus(String str, int i, double d, int i2) {
        if (m10439a(str)) {
            MLog.m11269e(f8888a);
            return;
        }
        if (i < 0 || d < 0.0d) {
            MLog.m11269e(f8890c);
        } else if (i2 <= 0 || i2 >= 100) {
            MLog.m11269e(f8891d);
        } else {
            f8892e.m10460a(str, i, d, i2);
        }
    }

    public static void buy(String str, int i, double d) {
        if (m10439a(str)) {
            MLog.m11269e(f8888a);
        } else if (i < 0 || d < 0.0d) {
            MLog.m11269e(f8890c);
        } else {
            f8892e.m10459a(str, i, d);
        }
    }

    public static void exchange(double d, String str, double d2, int i, String str2) {
        if (d < 0.0d || d2 < 0.0d) {
            MLog.m11269e(f8890c);
        } else if (i <= 0 || i >= 100) {
            MLog.m11269e(f8891d);
        } else {
            f8892e.m10455a(d, str, d2, i, str2);
        }
    }

    public static void failLevel(String str) {
        if (m10439a(str)) {
            MLog.m11269e(f8888a);
        } else if (str.length() > 64) {
            MLog.m11269e(f8889b);
        } else {
            f8892e.m10466d(str);
        }
    }

    public static void finishLevel(String str) {
        if (m10439a(str)) {
            MLog.m11269e(f8888a);
        } else if (str.length() > 64) {
            MLog.m11269e(f8889b);
        } else {
            f8892e.m10465c(str);
        }
    }

    public static void init(Context context) {
        try {
            if (f8893f == null && context != null) {
                f8893f = context.getApplicationContext();
            }
            f8892e.m10457a(f8893f);
        } catch (Throwable unused) {
            MLog.m11269e("please check Context!");
        }
    }

    public static void pay(double d, double d2, int i) {
        if (i <= 0 || i >= 100) {
            MLog.m11269e(f8891d);
        } else if (d < 0.0d || d2 < 0.0d) {
            MLog.m11269e(f8890c);
        } else {
            f8892e.m10453a(d, d2, i);
        }
    }

    public static void pay(double d, String str, int i, double d2, int i2) {
        if (i2 <= 0 || i2 >= 100) {
            MLog.m11269e(f8891d);
            return;
        }
        if (d < 0.0d || i < 0 || d2 < 0.0d) {
            MLog.m11269e(f8890c);
        } else if (m10439a(str)) {
            MLog.m11269e(f8888a);
        } else {
            f8892e.m10456a(d, str, i, d2, i2);
        }
    }

    public static void setPlayerLevel(int i) {
        f8892e.m10458a(String.valueOf(i));
    }

    public static void setTraceSleepTime(boolean z) {
        f8892e.m10461a(z);
    }

    public static void startLevel(String str) {
        if (m10439a(str)) {
            MLog.m11269e(f8888a);
        } else if (str.length() > 64) {
            MLog.m11269e(f8889b);
        } else {
            f8892e.m10463b(str);
        }
    }

    public static void use(String str, int i, double d) {
        if (m10439a(str)) {
            MLog.m11269e(f8888a);
        } else if (i < 0 || d < 0.0d) {
            MLog.m11269e(f8890c);
        } else {
            f8892e.m10464b(str, i, d);
        }
    }
}
