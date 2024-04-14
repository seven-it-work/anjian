package com.cyjh.elfin.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.cyjh.common.util.C1149ab;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.cyjh.elfin.services.TimerService;

/* loaded from: classes.dex */
public class BootBroadcast extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f4583a = "android.intent.action.BOOT_COMPLETED";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        Log.e("zzz", "BootBroadcast:开机启动广播" + action);
        if (f4583a.equals(action)) {
            boolean m4314b = C1149ab.m4306a().m4314b(InterfaceC1224a.f4439D, (Boolean) false);
            Log.e("zzz", "BootBroadcast:开机启动广播" + m4314b);
            if (m4314b) {
                context.startService(new Intent(context, (Class<?>) TimerService.class));
            }
        }
    }
}
