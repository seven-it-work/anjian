package com.goldcoast.sdk.p129c;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1176s;
import com.goldcoast.sdk.p127a.C1768a;
import com.goldcoast.sdk.p127a.C1769b;
import com.goldcoast.sdk.p127a.C1772e;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.goldcoast.sdk.c.d */
/* loaded from: classes.dex */
public final class C1780d {

    /* renamed from: a */
    private static C1780d f7008a;

    /* renamed from: b */
    private static Context f7009b;

    private C1780d() {
    }

    /* renamed from: a */
    public static C1769b m8107a() {
        String str;
        C1769b c1769b = new C1769b();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        String str2 = "";
        C1772e m8110c = m8110c();
        try {
            hashMap2.put("MemTotal", "");
            C1782f.m8118a(new FileInputStream("/proc/meminfo"), hashMap2);
            str = (String) hashMap2.get("MemTotal");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            str = "";
        }
        C1768a c1768a = null;
        try {
            str2 = C1782f.m8118a(new FileInputStream("/proc/version"), null).split(C1176s.a.f4108a)[2];
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
        }
        try {
            C1782f.m8118a(new FileInputStream("/proc/cpuinfo"), hashMap);
            c1768a = new C1768a(hashMap);
        } catch (FileNotFoundException e3) {
            e3.printStackTrace();
        }
        c1769b.m8053a(c1768a);
        c1769b.m8054a(m8110c);
        c1769b.m8058b(str2);
        c1769b.m8056a(str);
        c1769b.m8059c(m8111d());
        c1769b.m8061e(m8109b());
        c1769b.m8060d(m8112e());
        c1769b.m8063g(C1778b.m8098a());
        c1769b.m8062f(String.valueOf(System.currentTimeMillis()));
        return c1769b;
    }

    /* renamed from: a */
    public static C1780d m8108a(Context context) {
        f7009b = context;
        if (f7008a == null) {
            f7008a = new C1780d();
        }
        return f7008a;
    }

    /* renamed from: b */
    public static String m8109b() {
        try {
            return Settings.Secure.getString(f7009b.getContentResolver(), InterfaceC1133a.f3938aM);
        } catch (Exception e) {
            e.printStackTrace();
            return "0";
        }
    }

    /* renamed from: c */
    public static C1772e m8110c() {
        HashMap hashMap = new HashMap();
        String[] strArr = {"ro.product.brand", "ro.product.name", "ro.product.model", "ro.build.fingerprint", "ro.build.version.sdk", "ro.build.version.release", "ro.build.date", "ro.build.date.utc", "ro.boot.cpuid", "ro.btconfig.vendor", "persist.sys.timezone", "persist.sys.country", "persist.sys.language", "persist.sys.dalvik.vm.lib", "ro.build.description", "ro.runtime.firstboot", "ro.serialno", "ro.hardware", "ro.product.board", "ro.product.locale.language", "ro.product.locale.region", "ro.product.cpu.abi", "ro.board.platform", "ro.build.selinux", "ro.build.selinux.enforce"};
        for (int i = 0; i < 25; i++) {
            hashMap.put(strArr[i], "");
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            hashMap.put(entry.getKey(), C1785i.m8128a((String) entry.getKey()));
        }
        return new C1772e(hashMap);
    }

    /* renamed from: d */
    private static String m8111d() {
        try {
            return ((TelephonyManager) f7009b.getSystemService("phone")).getDeviceId();
        } catch (Exception e) {
            e.printStackTrace();
            return "0";
        }
    }

    /* renamed from: e */
    private static String m8112e() {
        try {
            return ((WifiManager) f7009b.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        } catch (Exception e) {
            e.printStackTrace();
            return "0";
        }
    }
}
