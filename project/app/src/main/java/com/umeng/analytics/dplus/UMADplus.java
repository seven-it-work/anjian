package com.umeng.analytics.dplus;

import android.content.Context;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.statistics.common.MLog;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class UMADplus {
    public static void clearSuperProperties(Context context) {
        if (AnalyticsConfig.FLAG_DPLUS) {
            MobclickAgent.getAgent().m10429e(context);
        } else {
            MLog.m11269e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
        }
    }

    public static String getSuperProperties(Context context) {
        if (AnalyticsConfig.FLAG_DPLUS) {
            return MobclickAgent.getAgent().m10426d(context);
        }
        MLog.m11269e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
        return null;
    }

    public static Object getSuperProperty(Context context, String str) {
        if (AnalyticsConfig.FLAG_DPLUS) {
            return MobclickAgent.getAgent().m10425d(context, str);
        }
        MLog.m11269e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
        return null;
    }

    public static void registerSuperProperty(Context context, String str, Object obj) {
        if (AnalyticsConfig.FLAG_DPLUS) {
            MobclickAgent.getAgent().m10403a(context, str, obj);
        } else {
            MLog.m11269e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
        }
    }

    public static void setFirstLaunchEvent(Context context, List<String> list) {
        if (AnalyticsConfig.FLAG_DPLUS) {
            MobclickAgent.getAgent().m10409a(context, list);
        } else {
            MLog.m11269e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
        }
    }

    public static void track(Context context, String str) {
        if (AnalyticsConfig.FLAG_DPLUS) {
            MobclickAgent.getAgent().m10406a(context, str, (Map<String, Object>) null);
        } else {
            MLog.m11269e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
        }
    }

    public static void track(Context context, String str, Map<String, Object> map) {
        if (!AnalyticsConfig.FLAG_DPLUS) {
            MLog.m11269e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
            return;
        }
        if (map == null || map.size() <= 0) {
            MLog.m11269e("the map is null!");
        }
        MobclickAgent.getAgent().m10406a(context, str, map);
    }

    public static void unregisterSuperProperty(Context context, String str) {
        if (AnalyticsConfig.FLAG_DPLUS) {
            MobclickAgent.getAgent().m10424c(context, str);
        } else {
            MLog.m11269e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
        }
    }
}
