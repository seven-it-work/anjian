package com.iflytek.collector.p168a.p169a;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import com.didi.virtualapk.internal.Constants;
import com.hlzn.socketclient.p163b.C2146a;
import com.iflytek.collector.p168a.p169a.C2204g;
import com.iflytek.voiceads.config.SDKLogger;
import com.umeng.commonsdk.amap.UMAmapConfig;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONObject;

/* renamed from: com.iflytek.collector.a.a.d */
/* loaded from: classes.dex */
public class RunnableC2201d implements Runnable {

    /* renamed from: a */
    protected Context f8279a;

    /* renamed from: b */
    private C2204g.a f8280b = new C2202e(this);

    /* renamed from: c */
    private boolean f8281c;

    public RunnableC2201d(Context context, boolean z) {
        this.f8279a = context;
        this.f8281c = z;
    }

    /* renamed from: a */
    private void m9750a() {
        try {
            SystemClock.sleep(UMAmapConfig.AMAP_CACHE_WRITE_TIME);
            if (m9755b() && C2208k.m9779a(this.f8279a)) {
                C2204g c2204g = new C2204g();
                c2204g.m9773b(C2146a.f8099r);
                c2204g.m9769a(1);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("appid", C2199b.m9737a(this.f8279a).m9748e());
                jSONObject.put("ver", C2199b.m9737a(this.f8279a).m9744b());
                c2204g.m9771a("https://logconf.iflytek.com/hotupdate", null, jSONObject.toString().getBytes("utf-8"));
                c2204g.m9774b(this.f8280b);
            }
        } catch (Exception unused) {
            SDKLogger.m9850e("Collector", "exception occur while update dex");
        }
    }

    /* renamed from: a */
    public static void m9752a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m9753a(JSONObject jSONObject) {
        if ("yes".equalsIgnoreCase(jSONObject.optString("update"))) {
            String optString = jSONObject.optString(Constants.OPTIMIZE_DIR);
            if (!TextUtils.isEmpty(optString)) {
                m9754a(Base64.decode(optString, 0));
            }
        } else {
            SDKLogger.m9848d("Collector", "no need to update");
        }
        SharedPreferences.Editor edit = C2208k.m9781b(this.f8279a).edit();
        edit.putLong("last_check_time", System.currentTimeMillis());
        edit.apply();
    }

    /* renamed from: a */
    private void m9754a(byte[] bArr) {
        FileOutputStream fileOutputStream;
        C2199b m9737a = C2199b.m9737a(this.f8279a);
        m9737a.m9747d();
        File file = new File(m9737a.m9746c());
        File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        BufferedOutputStream bufferedOutputStream = null;
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                try {
                    BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(fileOutputStream);
                    try {
                        bufferedOutputStream2.write(bArr);
                        m9752a(bufferedOutputStream2);
                    } catch (IOException e) {
                        e = e;
                        bufferedOutputStream = bufferedOutputStream2;
                        e.printStackTrace();
                        m9752a(bufferedOutputStream);
                        m9752a(fileOutputStream);
                    } catch (Throwable th) {
                        th = th;
                        bufferedOutputStream = bufferedOutputStream2;
                        m9752a(bufferedOutputStream);
                        m9752a(fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (IOException e3) {
            e = e3;
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
        m9752a(fileOutputStream);
    }

    /* renamed from: b */
    private boolean m9755b() {
        SharedPreferences m9781b;
        if (this.f8281c || (m9781b = C2208k.m9781b(this.f8279a)) == null) {
            return true;
        }
        return System.currentTimeMillis() - m9781b.getLong("last_check_time", 0L) > 604800000;
    }

    @Override // java.lang.Runnable
    public void run() {
        m9750a();
    }
}
