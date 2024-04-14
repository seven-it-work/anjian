package com.didi.virtualapk.delegate;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import com.didi.virtualapk.PluginManager;

/* loaded from: classes.dex */
public class LocalService extends Service {
    public static final String EXTRA_COMMAND = "command";
    public static final int EXTRA_COMMAND_BIND_SERVICE = 3;
    public static final int EXTRA_COMMAND_START_SERVICE = 1;
    public static final int EXTRA_COMMAND_STOP_SERVICE = 2;
    public static final int EXTRA_COMMAND_UNBIND_SERVICE = 4;
    public static final String EXTRA_PLUGIN_LOCATION = "plugin_location";
    public static final String EXTRA_TARGET = "target";
    private static final String TAG = "VA.LocalService";
    private PluginManager mPluginManager;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return new Binder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mPluginManager = PluginManager.getInstance(this);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x0058. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0155 A[Catch: Exception -> 0x0179, TryCatch #2 {Exception -> 0x0179, blocks: (B:36:0x013d, B:38:0x0155, B:40:0x0159), top: B:35:0x013d }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0159 A[Catch: Exception -> 0x0179, TRY_LEAVE, TryCatch #2 {Exception -> 0x0179, blocks: (B:36:0x013d, B:38:0x0155, B:40:0x0159), top: B:35:0x013d }] */
    @Override // android.app.Service
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int onStartCommand(android.content.Intent r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 638
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.didi.virtualapk.delegate.LocalService.onStartCommand(android.content.Intent, int, int):int");
    }
}
