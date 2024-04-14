package com.cyjh.elfin.services;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.support.v4.app.NotificationCompat;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.cyjh.common.util.C1149ab;
import com.cyjh.elfin.floatingwindowprocess.p084d.C1289b;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.cyjh.elfin.p085ui.activity.SplashActivity;
import com.hjol.R;

/* loaded from: classes.dex */
public class PhoneStateService extends com.cyjh.common.base.service.BaseService {

    /* renamed from: b */
    private static PhoneStateService f4993b;

    /* renamed from: a */
    private PhoneStateReceiver f4994a;

    /* renamed from: c */
    private final String f4995c = "android.intent.action.PHONE_STATE";

    /* loaded from: classes.dex */
    public class PhoneStateReceiver extends BroadcastReceiver {
        public PhoneStateReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Log.e("TAG", ">>>>>>>>>电话广播监听已进来");
            Log.e("TAG", ">>>>>>action>>>>" + action);
            if ("android.intent.action.NEW_OUTGOING_CALL".equals(action) || !"android.intent.action.PHONE_STATE".equals(action)) {
                return;
            }
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            Log.e("TAG", "tm.getCallState()>>>>" + telephonyManager.getCallState());
            switch (telephonyManager.getCallState()) {
                case 1:
                    Log.e("TAG", "继续选项>>>" + C1149ab.m4306a().m4314b(InterfaceC1224a.f4456x, (Boolean) true));
                    if (C1149ab.m4306a().m4314b(InterfaceC1224a.f4456x, (Boolean) true)) {
                        Log.e("TAG", "停止脚本>>>>>");
                        C1289b.m6001j();
                        C1289b.m5995d();
                        return;
                    }
                    return;
                case 2:
                    if (C1149ab.m4306a().m4314b(InterfaceC1224a.f4456x, (Boolean) true)) {
                        C1289b.m6001j();
                        C1289b.m5995d();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: a */
    private void m6114a() {
        Intent intent = new Intent(this, (Class<?>) SplashActivity.class);
        intent.setAction("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        PendingIntent activity = PendingIntent.getActivity(this, 0, intent, 134217728);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this);
        builder.setContentIntent(activity);
        builder.setSmallIcon(R.drawable.ic_launcher);
        builder.setLargeIcon(BitmapFactory.decodeResource(getResources(), R.drawable.ic_launcher));
        builder.setWhen(System.currentTimeMillis());
        builder.setAutoCancel(false);
        builder.setContentTitle(getString(R.string.app_name));
        builder.setContentText(getString(R.string.app_name) + getString(R.string.notification_content));
        if (Build.VERSION.SDK_INT >= 26) {
            builder.setChannelId("umeng");
        }
        startForeground(getResources().getInteger(R.integer.notification_id), builder.build());
    }

    @Override // com.cyjh.common.base.service.BaseService, android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f4994a = new PhoneStateReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.NEW_OUTGOING_CALL");
        intentFilter.addAction("android.intent.action.PHONE_STATE");
        registerReceiver(this.f4994a, intentFilter);
    }

    @Override // android.app.Service
    public void onDestroy() {
        unregisterReceiver(this.f4994a);
        super.onDestroy();
    }

    @Override // com.cyjh.common.base.service.BaseService, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return 2;
    }
}
