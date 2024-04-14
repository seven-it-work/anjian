package com.cyjh.mq.service;

import android.app.Service;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.HandlerThread;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.util.Log;
import com.cyjh.event.Injector;
import com.cyjh.mobileanjian.ipc.C1589d;
import com.cyjh.mobileanjian.ipc.rpc.AndroidHelper;
import com.cyjh.mobileanjian.ipc.utils.C1664r;
import com.cyjh.mobileanjian.ipc.utils.FileUtils;
import com.cyjh.mobileanjian.ipc.utils.RomUtils;
import com.cyjh.mobileanjian.screencap.ScreenShoterV3;
import com.cyjh.mq.p107a.C1673a;
import com.cyjh.mq.p109c.C1677c;
import com.cyjh.mq.sdk.MqRunner;
import com.cyjh.mq.sdk.MqRunnerLite;
import com.cyjh.mqsdk.C1696R;
import com.cyjh.mqsdk.C1697a;
import java.io.File;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.UnknownHostException;
import java.util.UUID;

/* loaded from: classes.dex */
public class IpcService extends Service {

    /* renamed from: f */
    private static final String f6628f = "mqm_engine";

    /* renamed from: g */
    private static final String f6629g = "ipc_server_port";

    /* renamed from: h */
    private static final String f6630h = "/system/bin/app_process32";

    /* renamed from: i */
    private static final String f6631i = "elfinject";

    /* renamed from: j */
    private static final String f6632j = "model";

    /* renamed from: k */
    private static final String f6633k = "code_cache";

    /* renamed from: l */
    private static final String f6634l = "secondary-dexes";

    /* renamed from: m */
    private static final String f6635m = "mycache";

    /* renamed from: n */
    private static final String f6636n = "dalvik-cache";

    /* renamed from: b */
    private int f6638b;

    /* renamed from: e */
    private C1677c f6641e;

    /* renamed from: a */
    private String f6637a = null;

    /* renamed from: c */
    private String f6639c = "";

    /* renamed from: d */
    private String f6640d = "";

    /* renamed from: com.cyjh.mq.service.IpcService$1 */
    /* loaded from: classes.dex */
    final class HandlerThreadC16941 extends HandlerThread {
        HandlerThreadC16941(String str) {
            super(str);
        }

        @Override // android.os.HandlerThread
        protected final void onLooperPrepared() {
            super.onLooperPrepared();
            IpcService.this.f6641e = new C1677c(IpcService.this);
            C1677c c1677c = IpcService.this.f6641e;
            c1677c.f6545a.add(MqRunner.getInstance());
            IpcService.this.f6641e.m7648a(IpcService.this.f6637a, IpcService.this.f6638b);
        }
    }

    /* renamed from: com.cyjh.mq.service.IpcService$2 */
    /* loaded from: classes.dex */
    final class C16952 extends Thread {
        C16952(String str) {
            super(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            super.run();
            IpcService.m7744d(IpcService.this);
            IpcService.m7746e(IpcService.this);
            IpcService.m7748f(IpcService.this);
            C1589d.m7132a().m7146a(MqRunner.getInstance());
        }
    }

    /* renamed from: a */
    private void m7738a() {
        String absolutePath = getApplicationContext().getFilesDir().getAbsolutePath();
        new File(absolutePath).setExecutable(true, false);
        this.f6637a = UUID.randomUUID().toString();
        this.f6638b = m7749g();
        String str = getFilesDir().getAbsolutePath() + File.separator + C1673a.f6500e;
        String makeAbsolutePath = FileUtils.makeAbsolutePath(getApplicationInfo().dataDir, "lib", C1673a.f6501f);
        String str2 = new File(f6630h).exists() ? f6630h : "app_process";
        File file = new File(FileUtils.makeAbsolutePath(getApplicationInfo().dataDir, f6635m, f6636n));
        file.mkdirs();
        file.setReadable(true, false);
        file.setWritable(true, false);
        file.setExecutable(true, false);
        file.getParentFile().setReadable(true, false);
        file.getParentFile().setWritable(true, false);
        file.getParentFile().setExecutable(true, false);
        this.f6639c = "export CLASSPATH=" + str + "\n" + String.format("exec %s %s %s %s %s %s &\n", str2, absolutePath, C1673a.f6499d, this.f6637a, makeAbsolutePath, Integer.valueOf(this.f6638b));
        if (RomUtils.isOppoR9S()) {
            this.f6639c = "export CLASSPATH=" + str + "\n" + String.format("exec %s -Xnodex2oat %s %s %s %s %s &\n", str2, absolutePath, C1673a.f6499d, this.f6637a, makeAbsolutePath, Integer.valueOf(this.f6638b));
        }
        this.f6640d = "export ANDROID_DATA=" + file.getParent() + "\n" + this.f6639c + "\necho Okay";
    }

    /* renamed from: b */
    private void m7740b() {
        File dir = getDir(f6632j, 0);
        if (!dir.exists()) {
            dir.mkdirs();
        }
        try {
            for (String str : getResources().getAssets().list(f6632j)) {
                File file = new File(dir, str);
                FileUtils.copyAssetsFile(this, new File(f6632j, str).getPath(), file.getAbsolutePath());
                if (file.exists()) {
                    file.setReadable(true, false);
                }
            }
            File file2 = new File(getFilesDir(), C1673a.f6500e);
            FileUtils.copyAssetsFile(this, C1673a.f6500e, file2.getAbsolutePath());
            file2.setReadable(true, false);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    private void m7742c() {
        FileUtils.copyRawFile(this, C1664r.m7527b(this) ? C1696R.raw.elfinject_x86 : C1696R.raw.elfinject_arm, getFilesDir().getAbsolutePath() + File.separator + f6631i);
    }

    /* renamed from: d */
    private void m7743d() {
        File externalFilesDir;
        File filesDir = getFilesDir();
        File file = new File(filesDir, C1673a.f6496a);
        FileUtils.writeStringToFile(file, this.f6640d);
        file.setReadable(true, false);
        file.setExecutable(true, false);
        new StringBuilder("execute command mRootScriptContent: ").append(this.f6639c);
        FileUtils.writeStringToFile(new File(filesDir, C1673a.f6497b), this.f6639c);
        C1673a.m7572a().setExecutable(true, false);
        if (Build.VERSION.SDK_INT < 23 || (externalFilesDir = getExternalFilesDir(null)) == null || !externalFilesDir.exists()) {
            return;
        }
        FileUtils.writeStringToFile(new File(externalFilesDir, C1673a.f6496a), this.f6640d);
    }

    /* renamed from: d */
    static /* synthetic */ void m7744d(IpcService ipcService) {
        File dir = ipcService.getDir(f6632j, 0);
        if (!dir.exists()) {
            dir.mkdirs();
        }
        try {
            for (String str : ipcService.getResources().getAssets().list(f6632j)) {
                File file = new File(dir, str);
                FileUtils.copyAssetsFile(ipcService, new File(f6632j, str).getPath(), file.getAbsolutePath());
                if (file.exists()) {
                    file.setReadable(true, false);
                }
            }
            File file2 = new File(ipcService.getFilesDir(), C1673a.f6500e);
            FileUtils.copyAssetsFile(ipcService, C1673a.f6500e, file2.getAbsolutePath());
            file2.setReadable(true, false);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    private void m7745e() {
        new HandlerThreadC16941("ipcserver_thread").start();
    }

    /* renamed from: e */
    static /* synthetic */ void m7746e(IpcService ipcService) {
        FileUtils.copyRawFile(ipcService, C1664r.m7527b(ipcService) ? C1696R.raw.elfinject_x86 : C1696R.raw.elfinject_arm, ipcService.getFilesDir().getAbsolutePath() + File.separator + f6631i);
    }

    /* renamed from: f */
    private void m7747f() {
        new C16952("startRootRequest").start();
    }

    /* renamed from: f */
    static /* synthetic */ void m7748f(IpcService ipcService) {
        File externalFilesDir;
        File filesDir = ipcService.getFilesDir();
        File file = new File(filesDir, C1673a.f6496a);
        FileUtils.writeStringToFile(file, ipcService.f6640d);
        file.setReadable(true, false);
        file.setExecutable(true, false);
        new StringBuilder("execute command mRootScriptContent: ").append(ipcService.f6639c);
        FileUtils.writeStringToFile(new File(filesDir, C1673a.f6497b), ipcService.f6639c);
        C1673a.m7572a().setExecutable(true, false);
        if (Build.VERSION.SDK_INT < 23 || (externalFilesDir = ipcService.getExternalFilesDir(null)) == null || !externalFilesDir.exists()) {
            return;
        }
        FileUtils.writeStringToFile(new File(externalFilesDir, C1673a.f6496a), ipcService.f6640d);
    }

    /* renamed from: g */
    private static int m7749g() {
        int i = C1697a.f6655i;
        for (int i2 = 0; i2 < 9; i2++) {
            try {
                new ServerSocket(i).close();
                return i;
            } catch (UnknownHostException e) {
                i++;
                e.printStackTrace();
            } catch (IOException e2) {
                i++;
                e2.printStackTrace();
            }
        }
        return i;
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        MqRunner.getInstance().notifyRotationStatus();
        MqRunnerLite.getInstance().notifyRotationStatus();
        ScreenShoterV3.getInstance().updateScreenSize();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        AndroidHelper.init(getApplicationContext());
        Injector.init(getApplicationContext());
        String absolutePath = getApplicationContext().getFilesDir().getAbsolutePath();
        new File(absolutePath).setExecutable(true, false);
        this.f6637a = UUID.randomUUID().toString();
        this.f6638b = m7749g();
        String str = getFilesDir().getAbsolutePath() + File.separator + C1673a.f6500e;
        String makeAbsolutePath = FileUtils.makeAbsolutePath(getApplicationInfo().dataDir, "lib", C1673a.f6501f);
        String str2 = new File(f6630h).exists() ? f6630h : "app_process";
        File file = new File(FileUtils.makeAbsolutePath(getApplicationInfo().dataDir, f6635m, f6636n));
        file.mkdirs();
        file.setReadable(true, false);
        file.setWritable(true, false);
        file.setExecutable(true, false);
        file.getParentFile().setReadable(true, false);
        file.getParentFile().setWritable(true, false);
        file.getParentFile().setExecutable(true, false);
        this.f6639c = "export CLASSPATH=" + str + "\n" + String.format("exec %s %s %s %s %s %s &\n", str2, absolutePath, C1673a.f6499d, this.f6637a, makeAbsolutePath, Integer.valueOf(this.f6638b));
        if (RomUtils.isOppoR9S()) {
            this.f6639c = "export CLASSPATH=" + str + "\n" + String.format("exec %s -Xnodex2oat %s %s %s %s %s &\n", str2, absolutePath, C1673a.f6499d, this.f6637a, makeAbsolutePath, Integer.valueOf(this.f6638b));
        }
        this.f6640d = "export ANDROID_DATA=" + file.getParent() + "\n" + this.f6639c + "\necho Okay";
        new HandlerThreadC16941("ipcserver_thread").start();
        new C16952("startRootRequest").start();
        Log.i("VERSION", "build info: build on 2023-05-17 13:36:07");
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f6641e.onAppQuit();
        super.onDestroy();
        C1589d m7132a = C1589d.m7132a();
        if (m7132a.f5967d) {
            m7132a.m7147a("exit");
            if (m7132a.f5966c.isAlive()) {
                m7132a.f5966c.interrupt();
            }
            try {
                m7132a.f5968e.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        C1589d.f5963a = null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return 2;
    }
}
