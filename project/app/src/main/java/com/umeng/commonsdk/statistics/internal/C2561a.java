package com.umeng.commonsdk.statistics.internal;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.cyjh.common.util.C1176s;
import com.umeng.commonsdk.proguard.C2501e;
import com.umeng.commonsdk.proguard.C2518v;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.utils.UMUtils;

/* renamed from: com.umeng.commonsdk.statistics.internal.a */
/* loaded from: classes.dex */
public class C2561a {

    /* renamed from: a */
    private static Context f9861a;

    /* renamed from: b */
    private String f9862b;

    /* renamed from: c */
    private String f9863c;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.commonsdk.statistics.internal.a$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        private static final C2561a f9864a = new C2561a();

        private a() {
        }
    }

    private C2561a() {
        this.f9862b = null;
        this.f9863c = null;
    }

    /* renamed from: a */
    public static C2561a m11423a(Context context) {
        if (f9861a == null && context != null) {
            f9861a = context.getApplicationContext();
        }
        return a.f9864a;
    }

    /* renamed from: c */
    private void m11424c(String str) {
        try {
            this.f9862b = str.replaceAll("&=", C1176s.a.f4108a).replaceAll("&&", C1176s.a.f4108a).replaceAll("==", "/") + "/Android/" + Build.DISPLAY + "/" + Build.MODEL + "/" + Build.VERSION.RELEASE + C1176s.a.f4108a + HelperUtils.getUmengMD5(UMUtils.getAppkey(f9861a));
        } catch (Throwable th) {
            C2501e.m10904a(f9861a, th);
        }
    }

    /* renamed from: d */
    private void m11425d(String str) {
        try {
            String str2 = str.split("&&")[0];
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            String[] split = str2.split("&=");
            StringBuilder sb = new StringBuilder();
            sb.append(C2518v.f9551ar);
            for (String str3 : split) {
                if (!TextUtils.isEmpty(str3)) {
                    String substring = str3.substring(0, 2);
                    if (substring.endsWith("=")) {
                        substring = substring.replace("=", "");
                    }
                    sb.append(substring);
                }
            }
            this.f9863c = sb.toString();
        } catch (Throwable th) {
            C2501e.m10904a(f9861a, th);
        }
    }

    /* renamed from: a */
    public String m11426a() {
        return this.f9863c;
    }

    /* renamed from: a */
    public boolean m11427a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("a");
    }

    /* renamed from: b */
    public String m11428b() {
        return this.f9862b;
    }

    /* renamed from: b */
    public void m11429b(String str) {
        String substring = str.substring(0, str.indexOf(95));
        m11425d(substring);
        m11424c(substring);
    }
}
