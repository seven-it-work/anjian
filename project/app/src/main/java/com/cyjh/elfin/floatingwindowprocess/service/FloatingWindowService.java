package com.cyjh.elfin.floatingwindowprocess.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.support.v4.internal.view.SupportMenu;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1283a;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.floatingwindowprocess.p084d.C1289b;
import com.hjol.R;

/* loaded from: classes.dex */
public class FloatingWindowService extends Service {

    /* renamed from: a */
    public static final int f4955a = 1;

    /* renamed from: b */
    public static final int f4956b = 2;

    /* renamed from: c */
    public static final int f4957c = 8;

    /* renamed from: d */
    public static final int f4958d = 11;

    /* renamed from: e */
    public static final int f4959e = 102;

    /* renamed from: f */
    public static final int f4960f = 101;

    /* renamed from: g */
    public static final int f4961g = 201;

    /* renamed from: h */
    public static final int f4962h = 202;

    /* renamed from: i */
    public static final String f4963i = "script_service_key_bundle";

    /* renamed from: j */
    public static final String f4964j = "PARAM_V";

    /* renamed from: k */
    public static final String f4965k = "script_service_key_type";

    /* renamed from: l */
    public static final String f4966l = "script_service_key_encrypt_value";

    /* renamed from: m */
    public static final int f4967m = 0;

    /* renamed from: n */
    public static final int f4968n = 1;

    /* renamed from: o */
    public static final String f4969o = "PARAM_APP_2_DOMAIN_NAME";

    /* renamed from: p */
    public static final String f4970p = "PARAM_AUTH_KEYS";

    /* renamed from: q */
    private static final String f4971q = "FloatingWindowService";

    /* renamed from: r */
    private final Handler f4972r = new Handler();

    /* renamed from: a */
    private void m6087a() {
        Notification.Builder builder;
        try {
            NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
            Resources resources = getResources();
            long currentTimeMillis = System.currentTimeMillis();
            if (Build.VERSION.SDK_INT >= 26) {
                NotificationChannel notificationChannel = new NotificationChannel("createRecordingNotification", "Channel1", 3);
                notificationChannel.enableLights(true);
                notificationChannel.setLightColor(SupportMenu.CATEGORY_MASK);
                notificationChannel.setShowBadge(true);
                notificationChannel.enableVibration(false);
                notificationChannel.setVibrationPattern(new long[]{0});
                if (notificationManager != null) {
                    notificationManager.createNotificationChannel(notificationChannel);
                    builder = new Notification.Builder(this, "createRecordingNotification");
                } else {
                    builder = new Notification.Builder(this);
                }
            } else {
                builder = new Notification.Builder(this);
            }
            builder.setTicker(resources.getString(R.string.app_name));
            builder.setSmallIcon(R.drawable.ic_launcher);
            builder.setWhen(currentTimeMillis);
            Notification build = builder.build();
            build.icon = R.drawable.ic_launcher;
            build.flags = 2;
            build.flags |= 32;
            build.flags |= 64;
            startForeground(getResources().getInteger(R.integer.notification_id), build);
        } catch (Resources.NotFoundException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    private static void m6088b() {
        C1289b.m6001j();
        String m5964e = C1285c.m5955f().m5964e();
        C1285c.m5955f();
        String m5953c = C1285c.m5953c();
        C1285c.m5955f();
        C1289b.m5985a(m5964e, m5953c, C1285c.m5954d());
    }

    /* renamed from: c */
    private void m6089c() {
        m6088b();
        C1283a.m5940a().f4843b = this;
        C1285c.m5955f().m5963b();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return C1302a.m6090a().f4976a.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        Notification.Builder builder;
        super.onCreate();
        try {
            NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
            Resources resources = getResources();
            long currentTimeMillis = System.currentTimeMillis();
            if (Build.VERSION.SDK_INT >= 26) {
                NotificationChannel notificationChannel = new NotificationChannel("createRecordingNotification", "Channel1", 3);
                notificationChannel.enableLights(true);
                notificationChannel.setLightColor(SupportMenu.CATEGORY_MASK);
                notificationChannel.setShowBadge(true);
                notificationChannel.enableVibration(false);
                notificationChannel.setVibrationPattern(new long[]{0});
                if (notificationManager != null) {
                    notificationManager.createNotificationChannel(notificationChannel);
                    builder = new Notification.Builder(this, "createRecordingNotification");
                } else {
                    builder = new Notification.Builder(this);
                }
            } else {
                builder = new Notification.Builder(this);
            }
            builder.setTicker(resources.getString(R.string.app_name));
            builder.setSmallIcon(R.drawable.ic_launcher);
            builder.setWhen(currentTimeMillis);
            Notification build = builder.build();
            build.icon = R.drawable.ic_launcher;
            build.flags = 2;
            build.flags |= 32;
            build.flags |= 64;
            startForeground(getResources().getInteger(R.integer.notification_id), build);
        } catch (Resources.NotFoundException e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0074, code lost:
    
        if (com.cyjh.elfin.floatingwindowprocess.p083c.C1285c.m5955f().f4853d == 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00f7, code lost:
    
        com.cyjh.elfin.floatingwindowprocess.p083c.C1283a.m5940a().m5946b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
    
        return 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00f1, code lost:
    
        com.cyjh.elfin.floatingwindowprocess.p083c.C1285c.m5955f().f4853d = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ef, code lost:
    
        if (com.cyjh.elfin.floatingwindowprocess.p083c.C1285c.m5955f().f4853d == 0) goto L30;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x000c. Please report as an issue. */
    @Override // android.app.Service
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int onStartCommand(android.content.Intent r5, int r6, int r7) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.elfin.floatingwindowprocess.service.FloatingWindowService.onStartCommand(android.content.Intent, int, int):int");
    }
}
