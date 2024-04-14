package com.android.volley.toolbox;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.http.AndroidHttpClient;
import android.os.Build;
import com.android.volley.C0600m;
import java.io.File;

/* renamed from: com.android.volley.toolbox.t */
/* loaded from: classes.dex */
public final class C0629t {

    /* renamed from: a */
    private static final String f1399a = "volley";

    /* renamed from: a */
    public static C0600m m1518a(Context context) {
        String str;
        File file = new File(context.getCacheDir(), f1399a);
        try {
            String packageName = context.getPackageName();
            str = packageName + "/" + context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            str = "volley/0";
        }
        C0600m c0600m = new C0600m(new C0615f(file, (byte) 0), new C0612c(Build.VERSION.SDK_INT >= 9 ? new C0619j() : new C0616g(AndroidHttpClient.newInstance(str))), (byte) 0);
        c0600m.m1400a();
        return c0600m;
    }

    /* renamed from: b */
    private static C0600m m1519b(Context context) {
        return m1518a(context);
    }
}
