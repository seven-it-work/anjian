package com.cyjh.common.util.toast;

import android.content.Intent;
import android.net.Uri;

/* renamed from: com.cyjh.common.util.toast.f */
/* loaded from: classes.dex */
public final class C1183f {
    private C1183f() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    private static Intent m4841a(Intent intent, boolean z) {
        return z ? intent.addFlags(268435456) : intent;
    }

    /* renamed from: a */
    private static Intent m4842a(String str) {
        String m4550a = C1178a.m4550a(str);
        if (C1196s.m5200b(m4550a)) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setClassName(str, m4550a);
        return intent.addFlags(268435456);
    }

    /* renamed from: a */
    private static Intent m4843a(String str, boolean z) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.parse("package:" + str));
        return z ? intent.addFlags(268435456) : intent;
    }

    /* renamed from: a */
    private static boolean m4844a(Intent intent) {
        return C1194q.m5135a().getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }
}
