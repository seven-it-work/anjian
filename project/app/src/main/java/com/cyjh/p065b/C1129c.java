package com.cyjh.p065b;

import android.content.Context;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.UMConfigure;

/* renamed from: com.cyjh.b.c */
/* loaded from: classes.dex */
public final class C1129c {
    /* renamed from: a */
    private static void m4182a() {
        MobclickAgent.openActivityDurationTrack(false);
    }

    /* renamed from: a */
    private static void m4183a(Context context) {
        MobclickAgent.onResume(context);
    }

    /* renamed from: a */
    private static void m4184a(Context context, String str, String str2) {
        UMConfigure.init(context, str, str2, 1, null);
        MobclickAgent.openActivityDurationTrack(false);
    }

    /* renamed from: a */
    private static void m4185a(String str) {
        MobclickAgent.onPageStart(str);
    }

    /* renamed from: b */
    private static void m4186b(Context context) {
        MobclickAgent.onPause(context);
    }

    /* renamed from: b */
    private static void m4187b(String str) {
        MobclickAgent.onPageEnd(str);
    }

    /* renamed from: c */
    private static void m4188c(Context context) {
        MobclickAgent.onKillProcess(context);
    }
}
