package mobi.oneway.common.service;

import android.R;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.os.SystemClock;
import android.support.annotation.Nullable;

/* loaded from: classes.dex */
public class OwCancleService extends Service {
    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (Build.VERSION.SDK_INT > 18 && Build.VERSION.SDK_INT < 25) {
            Notification.Builder builder = new Notification.Builder(this);
            builder.setSmallIcon(R.drawable.sym_def_app_icon);
            startForeground(110, builder.build());
            new Thread(new Runnable() { // from class: mobi.oneway.common.service.OwCancleService.1
                @Override // java.lang.Runnable
                public final void run() {
                    SystemClock.sleep(500L);
                    OwCancleService.this.stopForeground(true);
                    ((NotificationManager) OwCancleService.this.getSystemService("notification")).cancel(110);
                    OwCancleService.this.stopSelf();
                }
            }).start();
        }
        return super.onStartCommand(intent, i, i2);
    }
}
