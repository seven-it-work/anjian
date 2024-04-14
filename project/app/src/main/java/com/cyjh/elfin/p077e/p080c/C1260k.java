package com.cyjh.elfin.p077e.p080c;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import com.core.p063a.C1115b;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.floatingwindowprocess.service.FloatingWindowService;
import com.cyjh.elfin.p085ui.activity.BindRegisterCodeActivity;
import com.cyjh.elfin.p085ui.activity.ElfinFreeActivity;
import com.cyjh.elfin.p085ui.activity.H5LinkJumpPageActivity;
import com.cyjh.elfin.p085ui.activity.SweepCodeZbarActivity;
import com.cyjh.elfin.p085ui.activity.UnbindRegistrationCodeActivity;
import com.cyjh.elfin.services.BootService;
import com.elfin.ad.activity.FullScreenTwoAdActivity;

/* renamed from: com.cyjh.elfin.e.c.k */
/* loaded from: classes.dex */
public final class C1260k {
    /* renamed from: a */
    public static void m5735a(int i) {
        AppContext m5350a = AppContext.m5350a();
        Intent intent = new Intent(m5350a, (Class<?>) FloatingWindowService.class);
        intent.putExtra(C1115b.f3800g, i);
        if (Build.VERSION.SDK_INT >= 26) {
            m5350a.startForegroundService(intent);
        } else {
            m5350a.startService(intent);
        }
    }

    /* renamed from: a */
    private static void m5736a(long j) {
        AppContext m5350a = AppContext.m5350a();
        Intent intent = new Intent(m5350a, (Class<?>) FloatingWindowService.class);
        intent.putExtra(C1115b.f3800g, 202);
        intent.putExtra("tokenKey", j);
        if (Build.VERSION.SDK_INT >= 26) {
            m5350a.startForegroundService(intent);
        } else {
            m5350a.startService(intent);
        }
    }

    /* renamed from: a */
    private static void m5737a(Context context) {
        Intent intent = new Intent(context, (Class<?>) ElfinFreeActivity.class);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    /* renamed from: a */
    private static void m5738a(Context context, String str) {
        context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }

    /* renamed from: a */
    private static void m5739a(Context context, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) H5LinkJumpPageActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(H5LinkJumpPageActivity.class.getCanonicalName(), str);
        intent.putExtra(H5LinkJumpPageActivity.class.getSimpleName(), str2);
        context.startActivity(intent);
    }

    /* renamed from: a */
    public static void m5740a(String str) {
        AppContext m5350a = AppContext.m5350a();
        Intent intent = new Intent(m5350a, (Class<?>) FloatingWindowService.class);
        intent.putExtra(C1115b.f3800g, 2);
        Bundle bundle = new Bundle();
        bundle.putInt(FloatingWindowService.f4965k, 1);
        bundle.putString(FloatingWindowService.f4966l, str);
        intent.putExtra(FloatingWindowService.f4963i, bundle);
        if (Build.VERSION.SDK_INT >= 26) {
            m5350a.startForegroundService(intent);
        } else {
            m5350a.startService(intent);
        }
    }

    /* renamed from: a */
    private static void m5741a(String str, String[] strArr) {
        AppContext m5350a = AppContext.m5350a();
        Intent intent = new Intent(m5350a, (Class<?>) FloatingWindowService.class);
        intent.putExtra(C1115b.f3800g, 2);
        Bundle bundle = new Bundle();
        bundle.putInt(FloatingWindowService.f4965k, 0);
        bundle.putString(FloatingWindowService.f4969o, C1132a.m4203h());
        bundle.putString(FloatingWindowService.f4964j, str);
        bundle.putStringArray(FloatingWindowService.f4970p, strArr);
        intent.putExtra(FloatingWindowService.f4963i, bundle);
        if (Build.VERSION.SDK_INT >= 26) {
            m5350a.startForegroundService(intent);
        } else {
            m5350a.startService(intent);
        }
    }

    /* renamed from: b */
    private static void m5742b(Context context) {
        Intent intent = new Intent(context, (Class<?>) FullScreenTwoAdActivity.class);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    /* renamed from: b */
    private static void m5743b(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) BindRegisterCodeActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(BindRegisterCodeActivity.class.getCanonicalName(), str);
        context.startActivity(intent);
    }

    /* renamed from: c */
    private static void m5744c(Context context) {
        context.startService(new Intent(context, (Class<?>) FloatingWindowService.class));
    }

    /* renamed from: c */
    private static void m5745c(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) UnbindRegistrationCodeActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(UnbindRegistrationCodeActivity.class.getCanonicalName(), str);
        context.startActivity(intent);
    }

    /* renamed from: d */
    private static void m5746d(Context context) {
        context.startService(new Intent(AppContext.m5350a(), (Class<?>) BootService.class));
    }

    /* renamed from: e */
    private static Intent m5747e(Context context) {
        return new Intent(context, (Class<?>) SweepCodeZbarActivity.class);
    }
}
