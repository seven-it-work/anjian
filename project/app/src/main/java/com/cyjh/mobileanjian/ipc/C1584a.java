package com.cyjh.mobileanjian.ipc;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.PowerManager;
import android.os.Vibrator;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.ime.input.C2351a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.cyjh.mobileanjian.ipc.a */
/* loaded from: classes.dex */
public final class C1584a {

    /* renamed from: c */
    public static final String f5904c = "NO NETWORK";

    /* renamed from: d */
    public static final String f5905d = "WiFi";

    /* renamed from: e */
    public static final String f5906e = "2G";

    /* renamed from: f */
    public static final String f5907f = "3G";

    /* renamed from: g */
    public static final String f5908g = "4G";

    /* renamed from: k */
    private static MediaPlayer f5909k = new MediaPlayer();

    /* renamed from: a */
    public Context f5910a;

    /* renamed from: b */
    public C2351a f5911b;

    /* renamed from: h */
    private PowerManager.WakeLock f5912h;

    /* renamed from: i */
    private PowerManager.WakeLock f5913i;

    /* renamed from: j */
    private KeyguardManager.KeyguardLock f5914j;

    public C1584a(Context context) {
        this.f5910a = null;
        this.f5910a = context;
        this.f5912h = ((PowerManager) this.f5910a.getSystemService("power")).newWakeLock(6, "fzcyjh");
        this.f5912h.setReferenceCounted(false);
        this.f5911b = C2351a.m10315a();
        this.f5914j = ((KeyguardManager) this.f5910a.getSystemService("keyguard")).newKeyguardLock("unlock");
        this.f5913i = ((PowerManager) this.f5910a.getSystemService("power")).newWakeLock(268435462, "lock_unlock_screen");
    }

    /* renamed from: a */
    private void m7065a(boolean z) {
        Settings.System.putInt(this.f5910a.getContentResolver(), "airplane_mode_on", z ? 1 : 0);
        Intent intent = new Intent("android.intent.action.AIRPLANE_MODE");
        intent.putExtra("state", z);
        this.f5910a.sendBroadcast(intent);
    }

    /* renamed from: b */
    private void m7066b(boolean z) {
        Settings.System.putInt(this.f5910a.getContentResolver(), "accelerometer_rotation", !z ? 1 : 0);
    }

    /* renamed from: c */
    public static void m7067c(String str) {
        if (f5909k == null) {
            f5909k = new MediaPlayer();
        }
        m7069f();
        try {
            f5909k.reset();
            f5909k.setDataSource(str);
            f5909k.prepare();
            f5909k.start();
        } catch (IOException e) {
            e.printStackTrace();
            f5909k.release();
            f5909k = null;
        }
    }

    /* renamed from: e */
    private void m7068e(String str) {
        InputConnection currentInputConnection;
        C2351a c2351a = this.f5911b;
        if (c2351a.f8824a == null || (currentInputConnection = c2351a.f8824a.getCurrentInputConnection()) == null) {
            return;
        }
        currentInputConnection.commitText(str, str.length());
    }

    /* renamed from: f */
    public static void m7069f() {
        if (f5909k == null || !f5909k.isPlaying()) {
            return;
        }
        f5909k.stop();
    }

    /* renamed from: f */
    private static void m7070f(int i) {
        if (i > 0) {
            C1589d.m7132a().m7147a("kill " + i);
        }
    }

    /* renamed from: l */
    private void m7071l() {
        this.f5912h = ((PowerManager) this.f5910a.getSystemService("power")).newWakeLock(6, "fzcyjh");
        this.f5912h.setReferenceCounted(false);
    }

    /* renamed from: m */
    private boolean m7072m() {
        try {
            return ((Vibrator) this.f5910a.getSystemService("vibrator")).hasVibrator();
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: n */
    private List<String> m7073n() {
        ArrayList arrayList = new ArrayList();
        Iterator<InputMethodInfo> it = ((InputMethodManager) this.f5910a.getSystemService("input_method")).getInputMethodList().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getId());
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m7074a() {
        ((Vibrator) this.f5910a.getSystemService("vibrator")).cancel();
    }

    /* renamed from: a */
    public final void m7075a(int i) {
        if (m7072m()) {
            m7074a();
            ((Vibrator) this.f5910a.getSystemService("vibrator")).vibrate(i);
        }
    }

    /* renamed from: a */
    public final boolean m7076a(String str) {
        if (str == null || str.trim().equals("")) {
            return false;
        }
        try {
            Intent launchIntentForPackage = this.f5910a.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage == null) {
                return false;
            }
            launchIntentForPackage.setFlags(270532608);
            launchIntentForPackage.setPackage(null);
            this.f5910a.startActivity(launchIntentForPackage);
            StringBuilder sb = new StringBuilder("runApp(");
            sb.append(str);
            sb.append(") OK.");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: b */
    public final String m7077b() {
        String string = Settings.Secure.getString(this.f5910a.getContentResolver(), "default_input_method");
        if (!string.contains("com.cyjh")) {
            return string;
        }
        ArrayList<String> arrayList = new ArrayList();
        Iterator<InputMethodInfo> it = ((InputMethodManager) this.f5910a.getSystemService("input_method")).getInputMethodList().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getId());
        }
        for (String str : arrayList) {
            if (!str.contains("com.cyjh")) {
                return str;
            }
        }
        return string;
    }

    /* renamed from: b */
    public final void m7078b(int i) {
        if (i > 0) {
            this.f5912h.acquire();
        } else if (this.f5912h != null) {
            this.f5912h.release();
        }
    }

    /* renamed from: b */
    public final boolean m7079b(String str) {
        boolean z = false;
        if (str != null) {
            if (str.trim().equals("")) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) this.f5910a.getSystemService("activity")).getRunningAppProcesses()) {
                if (runningAppProcessInfo.processName.equals(str)) {
                    int i = runningAppProcessInfo.pid;
                    if (i > 0) {
                        C1589d.m7132a().m7147a("kill " + i);
                    }
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: c */
    public final String m7080c() {
        WifiInfo connectionInfo = ((WifiManager) this.f5910a.getSystemService("wifi")).getConnectionInfo();
        return connectionInfo == null ? "" : connectionInfo.getMacAddress();
    }

    /* renamed from: c */
    public final void m7081c(int i) {
        Settings.System.putInt(this.f5910a.getContentResolver(), "screen_off_timeout", i * 1000);
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: d */
    public final String m7082d() {
        String str = null;
        try {
            str = Build.VERSION.SDK_INT >= 29 ? Settings.System.getString(this.f5910a.getContentResolver(), InterfaceC1133a.f3938aM) : ((TelephonyManager) this.f5910a.getSystemService("phone")).getDeviceId();
            if (str == null || str.equals("")) {
                str = m7080c();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (str == null || str.equals("")) ? m7080c() : str;
    }

    /* renamed from: d */
    public final String m7083d(String str) {
        try {
            return this.f5910a.getPackageManager().getApplicationInfo(str, 0).sourceDir;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: d */
    public final void m7084d(int i) {
        Settings.System.putInt(this.f5910a.getContentResolver(), "screen_brightness", (int) ((i * 255) / 100.0d));
    }

    /* renamed from: e */
    public final void m7085e() {
        String packageName = this.f5910a.getPackageName();
        ActivityManager activityManager = (ActivityManager) this.f5910a.getSystemService("activity");
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (int i = 0; i < runningAppProcesses.size(); i++) {
                ActivityManager.RunningAppProcessInfo runningAppProcessInfo = runningAppProcesses.get(i);
                if (!runningAppProcessInfo.processName.contains(packageName) && runningAppProcessInfo.importance > 200) {
                    for (String str : runningAppProcessInfo.pkgList) {
                        activityManager.killBackgroundProcesses(str);
                    }
                }
            }
        }
    }

    /* renamed from: e */
    public final void m7086e(int i) {
        AudioManager audioManager = (AudioManager) this.f5910a.getSystemService("audio");
        audioManager.setStreamVolume(4, (int) ((audioManager.getStreamMaxVolume(4) * i) / 100.0d), 8);
        audioManager.setStreamVolume(3, (int) ((audioManager.getStreamMaxVolume(3) * i) / 100.0d), 8);
        audioManager.setStreamVolume(5, (int) ((audioManager.getStreamMaxVolume(5) * i) / 100.0d), 8);
        audioManager.setStreamVolume(2, (int) ((audioManager.getStreamMaxVolume(2) * i) / 100.0d), 8);
        audioManager.setStreamVolume(1, (int) ((audioManager.getStreamMaxVolume(1) * i) / 100.0d), 8);
        audioManager.setStreamVolume(0, (int) ((audioManager.getStreamMaxVolume(0) * i) / 100.0d), 8);
        audioManager.setStreamVolume(8, (int) ((i * audioManager.getStreamMaxVolume(8)) / 100.0d), 8);
    }

    /* renamed from: g */
    public final void m7087g() {
        ((DevicePolicyManager) this.f5910a.getSystemService("device_policy")).lockNow();
        this.f5914j.reenableKeyguard();
    }

    /* renamed from: h */
    public final void m7088h() {
        this.f5914j.disableKeyguard();
        this.f5913i.acquire();
        this.f5913i.release();
    }

    /* renamed from: i */
    public final String m7089i() {
        NetworkInfo activeNetworkInfo;
        NetworkInfo.State state;
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f5910a.getSystemService("connectivity");
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable()) {
            return f5904c;
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        if (networkInfo != null && (state = networkInfo.getState()) != null && (state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING)) {
            return f5905d;
        }
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
        if (networkInfo2 == null) {
            return f5904c;
        }
        NetworkInfo.State state2 = networkInfo2.getState();
        String subtypeName = networkInfo2.getSubtypeName();
        if (state2 == null) {
            return f5904c;
        }
        if (state2 != NetworkInfo.State.CONNECTED && state2 != NetworkInfo.State.CONNECTING) {
            return f5904c;
        }
        switch (activeNetworkInfo.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return f5906e;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return f5907f;
            case 13:
                return f5908g;
            default:
                return (subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000")) ? f5907f : f5906e;
        }
    }

    /* renamed from: j */
    public final String m7090j() {
        try {
            return this.f5910a.getFilesDir().getAbsolutePath();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: k */
    public final void m7091k() {
        Intent intent = new Intent("android.net.vpn.SETTINGS");
        intent.setFlags(268435456);
        this.f5910a.startActivity(intent);
    }
}
