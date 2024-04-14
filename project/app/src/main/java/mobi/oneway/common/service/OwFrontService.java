package mobi.oneway.common.service;

import android.R;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.util.Log;

/* loaded from: classes.dex */
public class OwFrontService extends Service {

    /* renamed from: a */
    public static final int f10102a = 110;

    /* renamed from: b */
    private static final String f10103b = "DaemonService";

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.d(f10103b, "DaemonService---->onCreate被调用，启动前台service");
        if (Build.VERSION.SDK_INT <= 18 || Build.VERSION.SDK_INT >= 25) {
            if (Build.VERSION.SDK_INT < 18) {
                startForeground(110, new Notification());
            }
        } else {
            Notification.Builder builder = new Notification.Builder(this);
            builder.setSmallIcon(R.drawable.sym_def_app_icon);
            builder.setContentTitle(getPackageName());
            builder.setContentText(getPackageName());
            startForeground(110, builder.build());
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        if (Build.VERSION.SDK_INT <= 18 || Build.VERSION.SDK_INT >= 25) {
            return;
        }
        ((NotificationManager) getSystemService("notification")).cancel(110);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return 1;
    }
}
