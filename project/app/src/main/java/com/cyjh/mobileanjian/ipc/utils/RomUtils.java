package com.cyjh.mobileanjian.ipc.utils;

import android.os.Build;
import java.io.File;
import java.io.FileInputStream;

/* loaded from: classes.dex */
public class RomUtils {

    /* renamed from: a */
    private static final C1648b f6390a = new C1648b();

    public static String getEmuiVersion() {
        return f6390a.m7476a("ro.build.version.emui");
    }

    public static String getFlymeVersion() {
        return Build.DISPLAY;
    }

    public static String getKnownRomVersion() {
        return isMIUI() ? getMUIUDetailVersion() : isFlyme() ? getFlymeVersion() : isEmui() ? getEmuiVersion() : isHaimawanVM() ? "海马玩模拟器" : isTiantianVM() ? "天天模拟器" : isNoxVM() ? "夜神模拟器" : isXiaoyaoVM() ? "逍遥模拟器" : isXXZS() ? "猩猩助手" : "undefined";
    }

    public static String getMUIUDetailVersion() {
        return !isMIUI() ? "" : String.format("MIUI %s %s", f6390a.m7476a("ro.miui.ui.version.name"), Build.VERSION.INCREMENTAL);
    }

    public static int getMUIUVersion() {
        if (!isMIUI()) {
            return -1;
        }
        String m7477a = f6390a.m7477a("ro.miui.ui.version.name", "V0");
        if (m7477a.equals("V8")) {
            return 8;
        }
        if (m7477a.equals("V7")) {
            return 7;
        }
        if (m7477a.equals("V6")) {
            return 6;
        }
        return m7477a.equals("V5") ? 5 : 0;
    }

    public static boolean isARMCpu() {
        byte[] bArr = new byte[20];
        try {
            if (new FileInputStream(new File("/system/lib/libc.so")).read(bArr) != -1) {
                if (bArr[18] == 3) {
                    return false;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    public static boolean isEmui() {
        return f6390a.m7478a((Object) "ro.build.version.emui");
    }

    public static boolean isEmulator() {
        return isHaimawanVM() || isTiantianVM() || isNoxVM() || isXiaoyaoVM() || isXXZS();
    }

    public static boolean isFlyme() {
        return f6390a.m7478a((Object) "ro.flyme.published");
    }

    public static boolean isHaimawanVM() {
        return f6390a.m7478a((Object) "droid4x.inited") || f6390a.m7478a((Object) "ro.droid4x.host.mac") || f6390a.m7478a((Object) "droid4x.battery.status") || f6390a.m7478a((Object) "persist.droid4x.op_alpha");
    }

    public static boolean isMIUI() {
        return f6390a.m7478a((Object) "ro.miui.ui.version.name");
    }

    public static boolean isNoxVM() {
        return f6390a.m7478a((Object) "nox.inited") || f6390a.m7478a((Object) "nox.vbox_dpi") || f6390a.m7478a((Object) "ro.nox.host.mac") || f6390a.m7478a((Object) "nox.battery.status");
    }

    public static boolean isOppoR9S() {
        String m7477a = f6390a.m7477a("ro.product.name", "");
        String m7477a2 = f6390a.m7477a("ro.product.model", "");
        return m7477a != null && m7477a.contains("R9s") && m7477a2 != null && m7477a2.contains("R9s");
    }

    public static boolean isTiantianVM() {
        return f6390a.m7478a((Object) "ttVM.inited") || f6390a.m7478a((Object) "ttvmd.battery.status") || f6390a.m7478a((Object) "ttVM.vbox_dpi") || f6390a.m7478a((Object) "ttvmd.battery.mode");
    }

    public static boolean isXXZS() {
        return f6390a.m7478a((Object) "ro.xxzs.DeviceId") || f6390a.m7478a((Object) "ro.xxzs.origDeviceId");
    }

    public static boolean isXiaoyaoVM() {
        return f6390a.m7478a((Object) "microvirt.inited") || f6390a.m7478a((Object) "microvirt.channel") || f6390a.m7478a((Object) "ro.microvirt.hmac") || f6390a.m7478a((Object) "microvirt.vbox_dpi");
    }
}
