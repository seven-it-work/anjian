package com.iflytek.collector.p168a.p169a;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.iflytek.collector.device.IDeviceInfo;
import dalvik.system.DexClassLoader;
import java.io.File;
import org.json.JSONObject;

/* renamed from: com.iflytek.collector.a.a.b */
/* loaded from: classes.dex */
public class C2199b {

    /* renamed from: a */
    private static volatile C2199b f8272a;

    /* renamed from: b */
    private IDeviceInfo f8273b;

    /* renamed from: c */
    private Context f8274c;

    /* renamed from: d */
    private volatile String f8275d;

    /* renamed from: e */
    private volatile boolean f8276e;

    /* renamed from: f */
    private volatile String f8277f;

    private C2199b(Context context) {
        boolean z;
        try {
            this.f8274c = context.getApplicationContext();
            this.f8273b = (IDeviceInfo) new DexClassLoader(m9746c(), m9741g(), null, this.f8274c.getClassLoader()).loadClass("com.iflytek.collector.device.DeviceInfo").newInstance();
            new C2200c(this).start();
            z = false;
        } catch (Throwable unused) {
            this.f8273b = null;
            z = true;
        }
        m9739a(z);
    }

    /* renamed from: a */
    public static C2199b m9737a(Context context) {
        if (f8272a == null) {
            synchronized (C2199b.class) {
                if (f8272a == null) {
                    f8272a = new C2199b(context);
                }
            }
        }
        return f8272a;
    }

    /* renamed from: a */
    private static void m9738a(File file) {
        if (!file.isDirectory()) {
            file.delete();
            return;
        }
        for (File file2 : file.listFiles()) {
            m9738a(file2);
        }
        file.delete();
    }

    /* renamed from: a */
    private void m9739a(boolean z) {
        try {
            if (this.f8276e) {
                return;
            }
            new Thread(new RunnableC2201d(this.f8274c, z)).start();
            this.f8276e = true;
        } catch (Throwable unused) {
        }
    }

    /* renamed from: c */
    private void m9740c(String str) {
        File[] listFiles;
        File file = new File(str);
        if (!file.exists() || !file.isDirectory() || (listFiles = file.listFiles()) == null || listFiles.length <= 0) {
            return;
        }
        for (int i = 0; i < listFiles.length; i++) {
            if (listFiles[i] != null) {
                m9738a(listFiles[i]);
            }
        }
    }

    /* renamed from: g */
    private String m9741g() {
        String str = this.f8274c.getFilesDir().getAbsolutePath() + File.separator + "dex/";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public JSONObject m9742a() {
        try {
            if (this.f8273b != null) {
                return this.f8273b.getHeart(this.f8274c);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: a */
    public void m9743a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f8275d = str;
        SharedPreferences m9781b = C2208k.m9781b(this.f8274c);
        if (m9781b == null || str.equals(m9781b.getString("appid", ""))) {
            return;
        }
        SharedPreferences.Editor edit = m9781b.edit();
        edit.putString("appid", str);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public String m9744b() {
        try {
            return this.f8273b != null ? this.f8273b.getVersion() : "-1";
        } catch (Throwable unused) {
            return "-1";
        }
    }

    /* renamed from: b */
    public void m9745b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f8277f = str;
        SharedPreferences m9781b = C2208k.m9781b(this.f8274c);
        if (m9781b != null) {
            if (this.f8277f.equals(m9781b.getString("subid", ""))) {
                return;
            }
            SharedPreferences.Editor edit = m9781b.edit();
            edit.putString("subid", str);
            edit.apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public String m9746c() {
        return (this.f8274c.getFilesDir().getAbsolutePath() + File.separator + "jar/") + "iflytek_device_info.zip";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m9747d() {
        String absolutePath = this.f8274c.getFilesDir().getAbsolutePath();
        m9740c(absolutePath + File.separator + "jar/");
        m9740c(absolutePath + File.separator + "dex/");
    }

    /* renamed from: e */
    public String m9748e() {
        return this.f8275d;
    }

    /* renamed from: f */
    public String m9749f() {
        return this.f8277f;
    }
}
