package com.cyjh.common.util.toast;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.support.annotation.LayoutRes;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.StringRes;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.cyjh.common.util.toast.C1179b;
import com.cyjh.common.util.toast.C1194q;
import com.cyjh.common.util.toast.C1195r;
import com.cyjh.elfin.p073a.C1225b;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.cyjh.common.util.toast.s */
/* loaded from: classes.dex */
public final class C1196s {
    C1196s() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Intent m5176a(String str) {
        String m4550a = C1178a.m4550a(str);
        if (m5200b(m4550a)) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setClassName(str, m4550a);
        return intent.addFlags(268435456);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Intent m5177a(String str, boolean z) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.parse("package:" + str));
        return z ? intent.addFlags(268435456) : intent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Bitmap m5178a(View view) {
        Bitmap createBitmap;
        if (view == null) {
            return null;
        }
        boolean isDrawingCacheEnabled = view.isDrawingCacheEnabled();
        boolean willNotCacheDrawing = view.willNotCacheDrawing();
        view.setDrawingCacheEnabled(true);
        view.setWillNotCacheDrawing(false);
        Bitmap drawingCache = view.getDrawingCache();
        if (drawingCache == null || drawingCache.isRecycled()) {
            view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
            view.buildDrawingCache();
            Bitmap drawingCache2 = view.getDrawingCache();
            if (drawingCache2 == null || drawingCache2.isRecycled()) {
                createBitmap = Bitmap.createBitmap(view.getMeasuredWidth(), view.getMeasuredHeight(), Bitmap.Config.RGB_565);
                view.draw(new Canvas(createBitmap));
            } else {
                createBitmap = Bitmap.createBitmap(drawingCache2);
            }
        } else {
            createBitmap = Bitmap.createBitmap(drawingCache);
        }
        view.setWillNotCacheDrawing(willNotCacheDrawing);
        view.setDrawingCacheEnabled(isDrawingCacheEnabled);
        return createBitmap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static View m5179a(@LayoutRes int i) {
        return ((LayoutInflater) C1194q.m5135a().getSystemService("layout_inflater")).inflate(i, (ViewGroup) null);
    }

    /* renamed from: a */
    private static String m5180a(@StringRes int i, Object... objArr) {
        return C1191n.m4957a(i, objArr);
    }

    /* renamed from: a */
    private static String m5181a(@Nullable String str, Object... objArr) {
        return C1191n.m4958a(str, objArr);
    }

    /* renamed from: a */
    private static void m5182a(Activity activity) {
        C1195r c1195r = C1195r.f4233a;
        if (activity != null) {
            C1192o.m4987a(new C1195r.AnonymousClass2(activity));
        }
    }

    /* renamed from: a */
    private static void m5183a(Activity activity, C1194q.a aVar) {
        C1195r.f4233a.m5174a(activity, aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m5184a(Application application) {
        application.registerActivityLifecycleCallbacks(C1195r.f4233a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m5185a(C1194q.a aVar) {
        C1195r.f4233a.m5174a(C1195r.f4234d, aVar);
    }

    /* renamed from: a */
    private static void m5186a(C1194q.d dVar) {
        C1195r.f4233a.f4236c.add(dVar);
    }

    /* renamed from: a */
    private static void m5187a(Runnable runnable) {
        C1192o.m4987a(runnable);
    }

    /* renamed from: a */
    private static void m5188a(Runnable runnable, long j) {
        C1192o.m4988a(runnable, j);
    }

    /* renamed from: a */
    private static void m5189a(Runnable... runnableArr) {
        for (int i = 0; i <= 0; i++) {
            C1192o.m4972a().execute(runnableArr[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m5190a() {
        return !C1195r.f4233a.f4237e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m5191a(Intent intent) {
        return C1194q.m5135a().getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    /* renamed from: a */
    private static boolean m5192a(CharSequence charSequence, CharSequence charSequence2) {
        int length;
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence != null && charSequence2 != null && (length = charSequence.length()) == charSequence2.length()) {
            if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
                return charSequence.equals(charSequence2);
            }
            for (int i = 0; i < length; i++) {
                if (charSequence.charAt(i) == charSequence2.charAt(i)) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m5193b() {
        Resources resources = C1194q.m5135a().getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", C1225b.f4510b));
    }

    /* renamed from: b */
    private static String m5194b(@StringRes int i) {
        return C1191n.m4957a(i, (Object[]) null);
    }

    /* renamed from: b */
    private static void m5195b(Activity activity, C1194q.a aVar) {
        C1195r.f4233a.m5175b(activity, aVar);
    }

    /* renamed from: b */
    private static void m5196b(Application application) {
        C1195r c1195r = C1195r.f4233a;
        c1195r.f4235b.clear();
        application.unregisterActivityLifecycleCallbacks(c1195r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m5197b(C1194q.a aVar) {
        C1195r.f4233a.m5175b(C1195r.f4234d, aVar);
    }

    /* renamed from: b */
    private static void m5198b(C1194q.d dVar) {
        C1195r.f4233a.f4236c.remove(dVar);
    }

    /* renamed from: b */
    private static boolean m5199b(Activity activity) {
        return C1178a.m4627a(activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static boolean m5200b(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m5201c() {
        Resources resources = C1194q.m5135a().getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", C1225b.f4510b);
        if (identifier != 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* renamed from: c */
    private static String m5202c(String str) {
        return C1178a.m4550a(str);
    }

    /* renamed from: c */
    private static void m5203c(Activity activity) {
        C1184g.m4847a(activity);
    }

    /* renamed from: d */
    private static void m5204d() {
        Runnable[] runnableArr = {new C1179b.AnonymousClass1()};
        for (int i = 0; i <= 0; i++) {
            C1192o.m4972a().execute(runnableArr[0]);
        }
    }

    /* renamed from: e */
    private static Activity m5205e() {
        for (Activity activity : C1195r.f4233a.m5173a()) {
            if (C1178a.m4627a(activity)) {
                return activity;
            }
        }
        return null;
    }

    /* renamed from: f */
    private static List<Activity> m5206f() {
        return C1195r.f4233a.m5173a();
    }

    /* renamed from: g */
    private static Application m5207g() {
        C1195r c1195r = C1195r.f4233a;
        return C1195r.m5157b();
    }

    /* renamed from: h */
    private static void m5208h() {
        for (Activity activity : C1195r.f4233a.m5173a()) {
            activity.finish();
            activity.overridePendingTransition(0, 0);
        }
    }

    @RequiresApi(api = 23)
    /* renamed from: i */
    private static boolean m5209i() {
        return Settings.canDrawOverlays(C1194q.m5135a());
    }

    /* renamed from: j */
    private static String m5210j() {
        return C1187j.m4876a();
    }

    /* renamed from: k */
    private static String m5211k() {
        return C1187j.m4878b();
    }

    /* renamed from: l */
    private static int m5212l() {
        WindowManager windowManager = (WindowManager) C1194q.m5135a().getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        windowManager.getDefaultDisplay().getSize(point);
        return point.x;
    }

    /* renamed from: m */
    private static int m5213m() {
        return (int) ((Resources.getSystem().getDisplayMetrics().density * 80.0f) + 0.5f);
    }

    /* renamed from: n */
    private static C1188k m5214n() {
        return C1188k.m4887a("Utils");
    }

    /* renamed from: o */
    private static boolean m5215o() {
        if (Build.VERSION.SDK_INT >= 17) {
            if (TextUtils.getLayoutDirectionFromLocale(Build.VERSION.SDK_INT >= 24 ? C1194q.m5135a().getResources().getConfiguration().getLocales().get(0) : C1194q.m5135a().getResources().getConfiguration().locale) == 1) {
                return true;
            }
        }
        return false;
    }
}
