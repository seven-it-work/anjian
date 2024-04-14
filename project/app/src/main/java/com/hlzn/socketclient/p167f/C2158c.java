package com.hlzn.socketclient.p167f;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.hlzn.socketclient.bean.ServiceParam;
import com.hlzn.socketclient.p163b.C2146a;
import com.hlzn.socketclient.service.SocketService;
import java.util.List;

/* renamed from: com.hlzn.socketclient.f.c */
/* loaded from: classes.dex */
public class C2158c {

    /* renamed from: a */
    public static final String f8148a = "c";

    /* renamed from: a */
    private static Intent m9589a(Context context, Intent intent) {
        List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
        ResolveInfo resolveInfo = null;
        if (queryIntentServices == null || queryIntentServices.size() == 0) {
            return null;
        }
        if (queryIntentServices.size() > 1) {
            for (ResolveInfo resolveInfo2 : queryIntentServices) {
                if (resolveInfo2.serviceInfo.packageName.equals(context.getPackageName())) {
                    resolveInfo = resolveInfo2;
                }
            }
        } else {
            resolveInfo = queryIntentServices.get(0);
        }
        ComponentName componentName = new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
        Intent intent2 = new Intent(intent);
        intent2.setComponent(componentName);
        return intent2;
    }

    /* renamed from: a */
    public static void m9590a(Context context, String str) {
        m9591a(context, str, null);
    }

    /* renamed from: a */
    public static void m9591a(Context context, String str, ServiceParam serviceParam) {
        Intent intent = new Intent(m9589a(context, new Intent(context, (Class<?>) SocketService.class)));
        intent.putExtra(C2146a.f8095n, str);
        if (serviceParam != null) {
            intent.putExtra(C2146a.f8096o, serviceParam);
        }
        context.startService(intent);
        C2159d.m9593b(f8148a, "toSocketService --> serviceTag=" + str);
    }
}
