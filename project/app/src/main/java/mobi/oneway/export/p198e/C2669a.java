package mobi.oneway.export.p198e;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.webkit.WebView;
import com.didi.virtualapk.PluginManager;
import com.didi.virtualapk.delegate.RemoteContentProvider;
import java.io.File;
import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import mobi.oneway.export.C2640a;
import mobi.oneway.export.C2645b;
import mobi.oneway.export.enums.PluginErrorType;
import mobi.oneway.export.p192a.C2641a;
import mobi.oneway.export.p192a.C2642b;
import mobi.oneway.export.p193b.C2646a;
import mobi.oneway.export.p197d.C2668f;
import mobi.oneway.export.p199f.C2683c;
import mobi.oneway.export.p199f.C2684d;
import mobi.oneway.export.p199f.C2686f;
import mobi.oneway.export.p199f.C2687g;
import mobi.oneway.export.p201g.C2694f;
import mobi.oneway.export.p201g.C2695g;
import mobi.oneway.export.p201g.C2696h;
import mobi.oneway.export.p201g.C2702n;
import mobi.oneway.export.p201g.C2704p;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: mobi.oneway.export.e.a */
/* loaded from: classes2.dex */
public class C2669a extends Thread {

    /* renamed from: a */
    private String f10264a;

    /* renamed from: b */
    private PluginManager f10265b;

    /* renamed from: c */
    private C2687g f10266c;

    /* renamed from: g */
    private Timer f10270g;

    /* renamed from: h */
    private TimerTask f10271h;

    /* renamed from: d */
    private boolean f10267d = false;

    /* renamed from: f */
    private final long f10269f = 5000;

    /* renamed from: e */
    private CountDownLatch f10268e = new CountDownLatch(1);

    public C2669a(String str) {
        this.f10264a = str;
        try {
            m12052c();
            this.f10265b = PluginManager.getInstance(C2642b.m11898a());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    private String m12043a(String str) {
        return C2642b.m11898a().getDir("plugin", 0).getPath() + File.separator + str;
    }

    /* renamed from: a */
    private String m12044a(JSONArray jSONArray, int i) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() > 0) {
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i2);
                        if (i == jSONObject.optInt("adp")) {
                            return jSONObject.getString("appId");
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return "";
    }

    /* renamed from: a */
    private C2687g m12046a() {
        m12053d();
        if (this.f10266c == null && !this.f10267d) {
            this.f10267d = true;
            ClassLoader m11913a = C2645b.m11913a();
            if (m11913a != null) {
                try {
                    Class<?> loadClass = m11913a.loadClass(C2641a.f10170l);
                    this.f10266c = new C2687g();
                    this.f10266c.m12142a(loadClass);
                    this.f10266c.m12140a(1);
                    this.f10266c.m12143a(m11913a);
                    this.f10266c.m12146b(C2642b.m11902b());
                } catch (Exception e) {
                    C2671c.m12064a(PluginErrorType.shell_error_reflectClass, C2695g.m12191a((Throwable) e));
                }
            }
        }
        m12054e();
        return this.f10266c;
    }

    /* renamed from: a */
    private C2687g m12047a(JSONObject jSONObject, JSONArray jSONArray) {
        return jSONObject.optInt("adp") == 1 ? m12046a() : m12050b(jSONObject, jSONArray);
    }

    /* renamed from: a */
    private void m12048a(JSONArray jSONArray) {
        C2684d.m12127a(jSONArray.toString());
        if (jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                C2684d.m12128a(new C2683c(optJSONObject));
            }
        }
    }

    /* renamed from: a */
    private void m12049a(JSONObject jSONObject) {
        C2646a m11919a = C2646a.m11919a();
        m11919a.m11928a(jSONObject.optBoolean("cacheAd"));
        m11919a.m11925a(jSONObject.optInt("reqExpireTime"));
    }

    /* renamed from: b */
    private C2687g m12050b(JSONObject jSONObject, JSONArray jSONArray) {
        m12053d();
        int optInt = jSONObject.optInt("adp");
        String optString = jSONObject.optString("apkpkg");
        String optString2 = jSONObject.optString("verison");
        String optString3 = jSONObject.optString("adcl");
        try {
            this.f10265b.loadPlugin(new File(m12043a(optInt + ".apk")));
            ClassLoader classLoader = this.f10265b.getLoadedPlugin(optString).getClassLoader();
            Class<?> loadClass = classLoader.loadClass(optString3);
            String m12044a = m12044a(jSONArray, optInt);
            C2687g c2687g = new C2687g();
            c2687g.m12143a(classLoader);
            c2687g.m12140a(optInt);
            c2687g.m12142a(loadClass);
            c2687g.m12144a(optString2);
            c2687g.m12141a(System.currentTimeMillis());
            c2687g.m12146b(m12044a);
            return c2687g;
        } catch (Exception e) {
            e.printStackTrace();
            m12054e();
            return null;
        }
    }

    /* renamed from: b */
    private void m12051b() {
        C2687g m12046a = m12046a();
        if (m12046a != null) {
            C2684d.m12129a(m12046a);
        }
        C2670b.m12055a().m12061c();
    }

    /* renamed from: c */
    private void m12052c() {
        C2670b.m12055a().m12062c(new Runnable() { // from class: mobi.oneway.export.e.a.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    try {
                        if (Build.VERSION.SDK_INT >= 28) {
                            try {
                                int myPid = Process.myPid();
                                Context m11898a = C2642b.m11898a();
                                String str = m11898a.getPackageName() + myPid;
                                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) m11898a.getSystemService("activity")).getRunningAppProcesses()) {
                                    if (runningAppProcessInfo.pid == myPid) {
                                        str = runningAppProcessInfo.processName;
                                    }
                                }
                                WebView.setDataDirectorySuffix(str);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        new WebView(C2642b.m11898a());
                        if (C2669a.this.f10268e == null) {
                            return;
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        if (C2669a.this.f10268e == null) {
                            return;
                        }
                    }
                    C2669a.this.f10268e.countDown();
                } catch (Throwable th) {
                    if (C2669a.this.f10268e != null) {
                        C2669a.this.f10268e.countDown();
                    }
                    throw th;
                }
            }
        });
    }

    /* renamed from: d */
    private void m12053d() {
        m12054e();
        this.f10271h = new TimerTask() { // from class: mobi.oneway.export.e.a.2
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                C2670b.m12055a().m12061c();
            }
        };
        this.f10270g = new Timer();
        this.f10270g.schedule(this.f10271h, 5000L);
    }

    /* renamed from: e */
    private void m12054e() {
        if (this.f10271h != null) {
            this.f10271h.cancel();
            this.f10271h = null;
        }
        if (this.f10270g != null) {
            this.f10270g.cancel();
            this.f10270g = null;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        super.run();
        try {
            if (this.f10268e != null) {
                this.f10268e.await(5000L, TimeUnit.MILLISECONDS);
            }
            JSONObject m12039m = new C2668f(C2641a.f10164f, C2641a.f10159a).m12015a("publishId", (Object) this.f10264a).m12015a("shellVersion", (Object) C2640a.f10158f).m12015a("dmd", (Object) Build.MODEL).m12015a("dmk", (Object) Build.BRAND).m12015a("ip", (Object) C2702n.m12247a(C2642b.m11898a())).m12015a("osv", (Object) Build.VERSION.RELEASE).m12015a("osl", Integer.valueOf(Build.VERSION.SDK_INT)).m12015a("ts", Long.valueOf(System.currentTimeMillis())).m12015a("osi", (Object) C2686f.m12138a()).m12015a(RemoteContentProvider.KEY_PKG, (Object) C2642b.m11898a().getPackageName()).m12015a("did", (Object) C2694f.m12177a()).m12015a("aid", (Object) C2694f.m12183e()).m12039m();
            boolean optBoolean = m12039m.optBoolean("upgrade");
            boolean optBoolean2 = m12039m.optBoolean("e");
            String optString = m12039m.optString("appToken");
            String optString2 = m12039m.optString("sc");
            JSONArray optJSONArray = m12039m.optJSONArray("plugins");
            JSONArray optJSONArray2 = m12039m.optJSONArray("appIdConfigs");
            JSONArray optJSONArray3 = m12039m.optJSONArray("placements");
            C2642b.m11903b(optString);
            C2642b.m11901a(optBoolean2);
            C2642b.m11904c(optString2);
            if (optBoolean && optJSONArray.length() != 0) {
                m12048a(optJSONArray3);
                m12049a(m12039m);
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject jSONObject = optJSONArray.getJSONObject(i);
                    String optString3 = jSONObject.optString("hash");
                    int optInt = jSONObject.optInt("adp");
                    String optString4 = jSONObject.optString("url");
                    File file = new File(m12043a(optInt == 1 ? C2641a.f10168j : optInt + ".apk"));
                    String upperCase = C2696h.m12213e(file) ? C2704p.m12250a(file).toUpperCase() : null;
                    if (upperCase == null || !upperCase.equalsIgnoreCase(optString3)) {
                        byte[] m12038l = new C2668f(optString4).m12010a(2000).m12038l();
                        if (C2704p.m12252a(m12038l).toUpperCase().equalsIgnoreCase(optString3)) {
                            C2696h.m12198a(file, m12038l);
                        }
                    }
                    C2687g m12047a = m12047a(jSONObject, optJSONArray2);
                    if (m12047a != null) {
                        C2684d.m12129a(m12047a);
                    }
                }
                C2670b.m12055a().m12061c();
                return;
            }
            m12051b();
        } catch (IOException e) {
            e.printStackTrace();
            m12051b();
        } catch (JSONException e2) {
            e2.printStackTrace();
            m12051b();
        } catch (Exception e3) {
            e3.printStackTrace();
            m12051b();
        }
    }
}
