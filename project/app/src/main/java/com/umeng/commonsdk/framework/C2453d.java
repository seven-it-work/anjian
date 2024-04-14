package com.umeng.commonsdk.framework;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.FileObserver;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.umeng.commonsdk.proguard.C2501e;
import com.umeng.commonsdk.proguard.C2506j;
import com.umeng.commonsdk.proguard.C2517u;
import com.umeng.commonsdk.statistics.C2537d;
import com.umeng.commonsdk.statistics.common.C2536e;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.noise.ImLatent;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.umeng.commonsdk.framework.d */
/* loaded from: classes.dex */
public class C2453d {

    /* renamed from: a */
    private static HandlerThread f9215a = null;

    /* renamed from: b */
    private static Handler f9216b = null;

    /* renamed from: c */
    private static Handler f9217c = null;

    /* renamed from: d */
    private static final int f9218d = 273;

    /* renamed from: e */
    private static final int f9219e = 512;

    /* renamed from: f */
    private static final int f9220f = 769;

    /* renamed from: g */
    private static a f9221g;

    /* renamed from: h */
    private static ConnectivityManager f9222h;

    /* renamed from: i */
    private static NetworkInfo f9223i;

    /* renamed from: j */
    private static IntentFilter f9224j;

    /* renamed from: k */
    private static StatTracer f9225k;

    /* renamed from: l */
    private static ImLatent f9226l;

    /* renamed from: m */
    private static boolean f9227m;

    /* renamed from: n */
    private static BroadcastReceiver f9228n = new BroadcastReceiver() { // from class: com.umeng.commonsdk.framework.d.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(final Context context, Intent intent) {
            new Thread(new Runnable() { // from class: com.umeng.commonsdk.framework.d.1.1
                @Override // java.lang.Runnable
                public void run() {
                    C2506j.m10929d(context);
                }
            }).start();
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                final Context m10665a = C2452c.m10665a();
                ConnectivityManager unused = C2453d.f9222h = (ConnectivityManager) m10665a.getSystemService("connectivity");
                try {
                    NetworkInfo unused2 = C2453d.f9223i = C2453d.f9222h.getActiveNetworkInfo();
                    if (C2453d.f9223i == null || !C2453d.f9223i.isAvailable()) {
                        C2536e.m11338c("--->>> network disconnected.");
                        boolean unused3 = C2453d.f9227m = false;
                        return;
                    }
                    C2536e.m11338c("--->>> network isAvailable, check if there are any files to send.");
                    boolean unused4 = C2453d.f9227m = true;
                    C2453d.m10680c(273);
                    if (C2453d.f9223i.getType() == 1) {
                        C2536e.m11338c("--->>> wifi connection available, send uop packet now.");
                        new Thread(new Runnable() { // from class: com.umeng.commonsdk.framework.d.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    C2517u.m11038a(m10665a);
                                } catch (Throwable th) {
                                    C2501e.m10904a(m10665a, th);
                                }
                            }
                        }).start();
                    }
                } catch (Throwable th) {
                    C2501e.m10904a(m10665a, th);
                }
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.umeng.commonsdk.framework.d$a */
    /* loaded from: classes.dex */
    public static class a extends FileObserver {
        public a(String str) {
            super(str);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i, String str) {
            if ((i & 8) != 8) {
                return;
            }
            C2536e.m11332b("--->>> envelope file created >>> " + str);
            C2453d.m10680c(273);
        }
    }

    public C2453d(Context context, Handler handler) {
        f9217c = handler;
        if (f9215a == null) {
            HandlerThread handlerThread = new HandlerThread("NetWorkSender");
            f9215a = handlerThread;
            handlerThread.start();
            if (f9221g == null) {
                a aVar = new a(C2451b.m10660h(context));
                f9221g = aVar;
                aVar.startWatching();
                C2536e.m11332b("--->>> FileMonitor has already started!");
            }
            Context m10665a = C2452c.m10665a();
            if (DeviceConfig.checkPermission(m10665a, "android.permission.ACCESS_NETWORK_STATE") && f9224j == null) {
                IntentFilter intentFilter = new IntentFilter();
                f9224j = intentFilter;
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                if (f9228n != null) {
                    m10665a.registerReceiver(f9228n, f9224j);
                }
            }
            if (f9225k == null) {
                f9225k = StatTracer.getInstance(context);
                f9226l = ImLatent.getService(context, f9225k);
            }
            if (f9216b == null) {
                f9216b = new Handler(f9215a.getLooper()) { // from class: com.umeng.commonsdk.framework.d.2
                    @Override // android.os.Handler
                    public void handleMessage(Message message) {
                        int i = message.what;
                        if (i == 273) {
                            C2536e.m11332b("--->>> handleMessage: recv MSG_PROCESS_NEXT msg.");
                            C2453d.m10687j();
                        } else {
                            if (i != 512) {
                                return;
                            }
                            C2453d.m10686i();
                        }
                    }
                };
            }
        }
    }

    /* renamed from: a */
    public static void m10672a() {
        m10680c(512);
    }

    /* renamed from: a */
    private static void m10674a(int i, int i2) {
        if (!f9227m || f9217c == null) {
            return;
        }
        f9217c.removeMessages(i);
        Message obtainMessage = f9217c.obtainMessage();
        obtainMessage.what = i;
        f9217c.sendMessageDelayed(obtainMessage, i2);
    }

    /* renamed from: a */
    private static void m10675a(int i, long j) {
        if (!f9227m || f9216b == null) {
            return;
        }
        Message obtainMessage = f9216b.obtainMessage();
        obtainMessage.what = i;
        f9216b.sendMessageDelayed(obtainMessage, j);
    }

    /* renamed from: b */
    public static void m10677b() {
        m10678b(273);
    }

    /* renamed from: b */
    private static void m10678b(int i) {
        if (!f9227m || f9216b == null || f9216b.hasMessages(i)) {
            return;
        }
        Message obtainMessage = f9216b.obtainMessage();
        obtainMessage.what = i;
        f9216b.sendMessage(obtainMessage);
    }

    /* renamed from: c */
    public static void m10679c() {
        m10674a((int) f9220f, 3000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static void m10680c(int i) {
        if (!f9227m || f9216b == null) {
            return;
        }
        Message obtainMessage = f9216b.obtainMessage();
        obtainMessage.what = i;
        f9216b.sendMessage(obtainMessage);
    }

    /* renamed from: h */
    private static void m10685h() {
        if (f9215a != null) {
            f9215a = null;
        }
        if (f9216b != null) {
            f9216b = null;
        }
        if (f9217c != null) {
            f9217c = null;
        }
        if (f9226l != null) {
            f9226l = null;
        }
        if (f9225k != null) {
            f9225k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public static void m10686i() {
        if (f9221g != null) {
            f9221g.stopWatching();
            f9221g = null;
        }
        if (f9224j != null) {
            if (f9228n != null) {
                C2452c.m10665a().unregisterReceiver(f9228n);
                f9228n = null;
            }
            f9224j = null;
        }
        C2536e.m11332b("--->>> handleQuit: Quit sender thread.");
        if (f9215a != null) {
            f9215a.quit();
            m10685h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public static void m10687j() {
        C2536e.m11332b("--->>> handleProcessNext: Enter...");
        if (f9227m) {
            Context m10665a = C2452c.m10665a();
            try {
                if (C2451b.m10654c(m10665a) > 0) {
                    C2536e.m11332b("--->>> The envelope file exists.");
                    if (C2451b.m10654c(m10665a) > 100) {
                        C2536e.m11332b("--->>> Number of envelope files is greater than 100, remove old files first.");
                        C2451b.m10656d(m10665a);
                    }
                    File m10657e = C2451b.m10657e(m10665a);
                    if (m10657e != null) {
                        C2536e.m11332b("--->>> Ready to send envelope file [" + m10657e.getPath() + "].");
                        C2537d c2537d = new C2537d(m10665a);
                        if (f9226l != null && f9226l.isLatentActivite()) {
                            f9226l.latentDeactivite();
                            long delayTime = f9226l.getDelayTime();
                            if (delayTime > 0) {
                                C2536e.m11338c("start lacency policy, wait [" + delayTime + "] milliseconds .");
                                try {
                                    Thread.sleep(delayTime * 1000);
                                } catch (Throwable th) {
                                    C2501e.m10904a(m10665a, th);
                                }
                            }
                        }
                        if (!c2537d.m11363a(m10657e)) {
                            C2536e.m11332b("--->>> Send envelope file failed, abandon and wait next trigger!");
                            return;
                        }
                        C2536e.m11332b("--->>> Send envelope file success, delete it.");
                        if (!C2451b.m10650a(m10657e)) {
                            C2536e.m11332b("--->>> Failed to delete already processed file. We try again after delete failed.");
                            C2451b.m10650a(m10657e);
                        }
                        m10680c(273);
                        return;
                    }
                }
                C2536e.m11332b("--->>> The envelope file not exists, start auto process for module cache data.");
                m10679c();
            } catch (Throwable th2) {
                C2501e.m10904a(m10665a, th2);
            }
        }
    }
}
