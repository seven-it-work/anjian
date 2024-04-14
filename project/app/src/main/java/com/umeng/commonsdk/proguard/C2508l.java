package com.umeng.commonsdk.proguard;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.app.NotificationCompat;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.statistics.common.C2536e;
import org.json.JSONObject;

/* renamed from: com.umeng.commonsdk.proguard.l */
/* loaded from: classes.dex */
public class C2508l {

    /* renamed from: a */
    private static final String f9434a = "BatteryUtils";

    /* renamed from: b */
    private static boolean f9435b;

    /* renamed from: c */
    private static Context f9436c;

    /* renamed from: d */
    private BroadcastReceiver f9437d;

    /* renamed from: com.umeng.commonsdk.proguard.l$a */
    /* loaded from: classes.dex */
    private static class a {

        /* renamed from: a */
        private static final C2508l f9439a = new C2508l();

        private a() {
        }
    }

    private C2508l() {
        this.f9437d = new BroadcastReceiver() { // from class: com.umeng.commonsdk.proguard.l.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                try {
                    if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("le", intent.getIntExtra("level", 0));
                        } catch (Exception unused) {
                        }
                        try {
                            jSONObject.put("vol", intent.getIntExtra("voltage", 0));
                        } catch (Exception unused2) {
                        }
                        try {
                            jSONObject.put("temp", intent.getIntExtra("temperature", 0));
                            jSONObject.put("ts", System.currentTimeMillis());
                        } catch (Exception unused3) {
                        }
                        int i = 2;
                        int i2 = -1;
                        switch (intent.getIntExtra(NotificationCompat.CATEGORY_STATUS, 0)) {
                            case 2:
                                i2 = 1;
                                break;
                            case 4:
                                i2 = 0;
                                break;
                            case 5:
                                i2 = 2;
                                break;
                        }
                        try {
                            jSONObject.put("st", i2);
                        } catch (Exception unused4) {
                        }
                        switch (intent.getIntExtra("plugged", 0)) {
                            case 1:
                                i = 1;
                                break;
                            case 2:
                                break;
                            default:
                                i = 0;
                                break;
                        }
                        try {
                            jSONObject.put("ct", i);
                            jSONObject.put("ts", System.currentTimeMillis());
                        } catch (Exception unused5) {
                        }
                        C2536e.m11329a(C2508l.f9434a, jSONObject.toString());
                        UMWorkDispatch.sendEvent(context, C2455a.f9246g, C2482b.m10851a(C2508l.f9436c).m10852a(), jSONObject.toString());
                        C2508l.this.m10965c();
                    }
                } catch (Throwable th) {
                    C2501e.m10904a(C2508l.f9436c, th);
                }
            }
        };
    }

    /* renamed from: a */
    public static C2508l m10961a(Context context) {
        if (f9436c == null && context != null) {
            f9436c = context.getApplicationContext();
        }
        return a.f9439a;
    }

    /* renamed from: a */
    public synchronized boolean m10963a() {
        return f9435b;
    }

    /* renamed from: b */
    public synchronized void m10964b() {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            f9436c.registerReceiver(this.f9437d, intentFilter);
            f9435b = true;
        } catch (Throwable th) {
            C2501e.m10904a(f9436c, th);
        }
    }

    /* renamed from: c */
    public synchronized void m10965c() {
        try {
            f9436c.unregisterReceiver(this.f9437d);
            f9435b = false;
        } catch (Throwable th) {
            C2501e.m10904a(f9436c, th);
        }
    }
}
