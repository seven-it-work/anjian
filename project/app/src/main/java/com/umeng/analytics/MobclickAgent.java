package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import java.util.HashMap;
import java.util.Map;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: classes.dex */
public class MobclickAgent {

    /* renamed from: a */
    private static final String f8867a = "input map is null";

    /* loaded from: classes.dex */
    public enum EScenarioType {
        E_UM_NORMAL(0),
        E_UM_GAME(1),
        E_DUM_NORMAL(160),
        E_DUM_GAME(161);


        /* renamed from: a */
        private int f8869a;

        EScenarioType(int i) {
            this.f8869a = i;
        }

        public final int toValue() {
            return this.f8869a;
        }
    }

    public static void enableEncrypt(boolean z) {
    }

    public static C2422b getAgent() {
        return C2422b.m10394a();
    }

    public static void onEvent(Context context, String str) {
        C2422b.m10394a().m10404a(context, str, null, -1L, 1);
    }

    public static void onEvent(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            MLog.m11287w("label is null or empty");
        } else {
            C2422b.m10394a().m10404a(context, str, str2, -1L, 1);
        }
    }

    public static void onEvent(Context context, String str, Map<String, String> map) {
        if (map == null) {
            MLog.m11269e(f8867a);
        } else {
            C2422b.m10394a().m10407a(context, str, new HashMap(map), -1L);
        }
    }

    public static void onEventValue(Context context, String str, Map<String, String> map, int i) {
        HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("__ct__", Integer.valueOf(i));
        C2422b.m10394a().m10407a(context, str, hashMap, -1L);
    }

    public static void onKillProcess(Context context) {
        C2422b.m10394a().m10423c(context);
    }

    public static void onPageEnd(String str) {
        if (TextUtils.isEmpty(str)) {
            MLog.m11269e("pageName is null or empty");
        } else {
            C2422b.m10394a().m10420b(str);
        }
    }

    public static void onPageStart(String str) {
        if (TextUtils.isEmpty(str)) {
            MLog.m11269e("pageName is null or empty");
        } else {
            C2422b.m10394a().m10412a(str);
        }
    }

    public static void onPause(Context context) {
        C2422b.m10394a().m10418b(context);
    }

    public static void onProfileSignIn(String str) {
        onProfileSignIn("_adhoc", str);
    }

    public static void onProfileSignIn(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            MLog.m11287w("uid is null");
            return;
        }
        if (str2.length() > 64) {
            MLog.m11287w("uid is Illegal(length bigger then  legitimate length).");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            C2422b.m10394a().m10413a("_adhoc", str2);
        } else if (str.length() > 32) {
            MLog.m11287w("provider is Illegal(length bigger then  legitimate length).");
        } else {
            C2422b.m10394a().m10413a(str, str2);
        }
    }

    public static void onProfileSignOff() {
        C2422b.m10394a().m10431g();
    }

    public static void onResume(Context context) {
        if (context == null) {
            MLog.m11269e("unexpected null context in onResume");
        } else {
            C2422b.m10394a().m10399a(context);
        }
    }

    public static void openActivityDurationTrack(boolean z) {
        C2422b.m10394a().m10421b(z);
    }

    public static void reportError(Context context, String str) {
        C2422b.m10394a().m10402a(context, str);
    }

    public static void reportError(Context context, Throwable th) {
        C2422b.m10394a().m10408a(context, th);
    }

    public static void setCatchUncaughtExceptions(boolean z) {
        C2422b.m10394a().m10416a(z);
    }

    public static void setCheckDevice(boolean z) {
    }

    public static void setDebugMode(boolean z) {
    }

    public static void setLatencyWindow(long j) {
    }

    public static void setLocation(double d, double d2) {
        C2422b.m10394a().m10397a(d, d2);
    }

    public static void setOpenGLContext(GL10 gl10) {
        C2422b.m10394a().m10415a(gl10);
    }

    public static void setScenarioType(Context context, EScenarioType eScenarioType) {
        C2422b.m10394a().m10401a(context, eScenarioType);
    }

    public static void setSecret(Context context, String str) {
        C2422b.m10394a().m10419b(context, str);
    }

    public static void setSessionContinueMillis(long j) {
        C2422b.m10394a().m10398a(j);
    }
}
