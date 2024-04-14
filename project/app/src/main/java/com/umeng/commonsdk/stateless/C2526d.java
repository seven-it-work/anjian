package com.umeng.commonsdk.stateless;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.commonsdk.proguard.C2501e;
import com.umeng.commonsdk.statistics.common.C2536e;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import java.io.File;

/* renamed from: com.umeng.commonsdk.stateless.d */
/* loaded from: classes.dex */
public class C2526d {

    /* renamed from: a */
    public static final int f9709a = 273;

    /* renamed from: b */
    private static Context f9710b = null;

    /* renamed from: c */
    private static HandlerThread f9711c = null;

    /* renamed from: d */
    private static Handler f9712d = null;

    /* renamed from: f */
    private static final int f9714f = 512;

    /* renamed from: g */
    private static IntentFilter f9715g;

    /* renamed from: h */
    private static boolean f9716h;

    /* renamed from: e */
    private static Object f9713e = new Object();

    /* renamed from: i */
    private static BroadcastReceiver f9717i = new BroadcastReceiver() { // from class: com.umeng.commonsdk.stateless.d.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            ConnectivityManager connectivityManager;
            if (context == null || intent == null) {
                return;
            }
            try {
                if (intent.getAction() == null || !intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                    return;
                }
                Context unused = C2526d.f9710b = context.getApplicationContext();
                if (C2526d.f9710b == null || (connectivityManager = (ConnectivityManager) C2526d.f9710b.getSystemService("connectivity")) == null) {
                    return;
                }
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                    C2536e.m11329a("walle", "[stateless] net reveiver disconnected --->>>");
                    boolean unused2 = C2526d.f9716h = false;
                } else {
                    boolean unused3 = C2526d.f9716h = true;
                    C2536e.m11329a("walle", "[stateless] net reveiver ok --->>>");
                    C2526d.m11233b(273);
                }
            } catch (Throwable th) {
                C2501e.m10904a(context, th);
            }
        }
    };

    public C2526d(Context context) {
        synchronized (f9713e) {
            if (context != null) {
                try {
                    Context applicationContext = context.getApplicationContext();
                    f9710b = applicationContext;
                    if (applicationContext != null && f9711c == null) {
                        HandlerThread handlerThread = new HandlerThread("SL-NetWorkSender");
                        f9711c = handlerThread;
                        handlerThread.start();
                        if (f9712d == null) {
                            f9712d = new Handler(f9711c.getLooper()) { // from class: com.umeng.commonsdk.stateless.d.2
                                @Override // android.os.Handler
                                public void handleMessage(Message message) {
                                    int i = message.what;
                                    if (i == 273) {
                                        C2526d.m11236e();
                                    } else {
                                        if (i != 512) {
                                            return;
                                        }
                                        C2526d.m11237f();
                                    }
                                }
                            };
                        }
                        if (DeviceConfig.checkPermission(f9710b, "android.permission.ACCESS_NETWORK_STATE")) {
                            C2536e.m11329a("walle", "[stateless] begin register receiver");
                            if (f9715g == null) {
                                IntentFilter intentFilter = new IntentFilter();
                                f9715g = intentFilter;
                                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                                if (f9717i != null) {
                                    C2536e.m11329a("walle", "[stateless] register receiver ok");
                                    f9710b.registerReceiver(f9717i, f9715g);
                                }
                            }
                        }
                    }
                } catch (Throwable th) {
                    C2501e.m10904a(context, th);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m11229a() {
        m11233b(512);
    }

    /* renamed from: a */
    public static void m11230a(int i) {
        if (!f9716h || f9712d == null) {
            return;
        }
        Message obtainMessage = f9712d.obtainMessage();
        obtainMessage.what = i;
        f9712d.sendMessage(obtainMessage);
    }

    /* renamed from: b */
    public static void m11233b(int i) {
        try {
            if (!f9716h || f9712d == null || f9712d.hasMessages(i)) {
                return;
            }
            C2536e.m11329a("walle", "[stateless] sendMsgOnce !!!!");
            Message obtainMessage = f9712d.obtainMessage();
            obtainMessage.what = i;
            f9712d.sendMessage(obtainMessage);
        } catch (Throwable th) {
            C2501e.m10904a(f9710b, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static void m11236e() {
        if (!f9716h || f9710b == null) {
            return;
        }
        try {
            File m11241a = C2528f.m11241a(f9710b);
            if (m11241a == null || m11241a.getParentFile() == null || TextUtils.isEmpty(m11241a.getParentFile().getName())) {
                return;
            }
            C2527e c2527e = new C2527e(f9710b);
            String str = new String(Base64.decode(m11241a.getParentFile().getName(), 0));
            C2536e.m11329a("walle", "[stateless] handleProcessNext, pathUrl is " + str);
            byte[] bArr = null;
            try {
                bArr = C2528f.m11245a(m11241a.getAbsolutePath());
            } catch (Exception unused) {
            }
            if (!c2527e.m11239a(bArr, str)) {
                C2536e.m11329a("walle", "[stateless] Send envelope file failed, abandon and wait next trigger!");
                return;
            }
            C2536e.m11329a("walle", "[stateless] Send envelope file success, delete it.");
            File file = new File(m11241a.getAbsolutePath());
            if (!file.delete()) {
                C2536e.m11329a("walle", "[stateless] Failed to delete already processed file. We try again after delete failed.");
                file.delete();
            }
            m11233b(273);
        } catch (Throwable th) {
            C2501e.m10904a(f9710b, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static void m11237f() {
        if (f9715g != null) {
            if (f9717i != null) {
                if (f9710b != null) {
                    f9710b.unregisterReceiver(f9717i);
                }
                f9717i = null;
            }
            f9715g = null;
        }
        if (f9711c != null) {
            f9711c.quit();
            if (f9711c != null) {
                f9711c = null;
            }
            if (f9712d != null) {
                f9712d = null;
            }
        }
    }
}
