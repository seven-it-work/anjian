package com.umeng.commonsdk.proguard;

import android.os.Build;
import com.umeng.commonsdk.proguard.C2509m;
import java.io.File;

/* renamed from: com.umeng.commonsdk.proguard.p */
/* loaded from: classes.dex */
public class C2512p {
    /* renamed from: b */
    private boolean m10980b() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    /* renamed from: c */
    private boolean m10981c() {
        try {
            return new File("/system/app/Superuser.apk").exists();
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: d */
    private boolean m10982d() {
        return new C2509m().m10967a(C2509m.a.check_su_binary) != null;
    }

    /* renamed from: e */
    private boolean m10983e() {
        String[] strArr = {"/bin", "/system/bin/", "/system/xbin/", "/system/sbin/", "/sbin/", "/vendor/bin/", "/su/bin/"};
        for (int i = 0; i < 7; i++) {
            if (new File(strArr[i] + "su").exists()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public boolean m10984a() {
        return m10980b() || m10981c() || m10982d() || m10983e();
    }
}
