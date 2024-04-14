package com.cyjh.mobileanjian.ipc.p105a;

import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.WindowManager;
import android.widget.Toast;
import com.cyjh.event.C1451c;
import com.cyjh.event.Injector;
import com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener;
import com.cyjh.mobileanjian.ipc.log.NativeLog;
import com.cyjh.mq.p107a.C1673a;
import com.cyjh.mq.sdk.entity.Script4Run;
import com.cyjh.mqm.MQLanguageStub;
import com.cyjh.mqsdk.C1696R;
import java.io.File;
import java.util.concurrent.ArrayBlockingQueue;

/* renamed from: com.cyjh.mobileanjian.ipc.a.b */
/* loaded from: classes.dex */
public final class C1586b implements InterfaceC1585a {

    /* renamed from: h */
    private static final int f5915h = 1;

    /* renamed from: i */
    private static final int f5916i = 2;

    /* renamed from: j */
    private static final int f5917j = 3;

    /* renamed from: k */
    private static final int f5918k = 25;

    /* renamed from: d */
    public c f5922d;

    /* renamed from: e */
    public Script4Run f5923e;

    /* renamed from: f */
    public OnScriptListener f5924f;

    /* renamed from: l */
    private MQLanguageStub f5926l;

    /* renamed from: a */
    public volatile boolean f5919a = false;

    /* renamed from: b */
    boolean f5920b = false;

    /* renamed from: c */
    public boolean f5921c = false;

    /* renamed from: g */
    public ArrayBlockingQueue<a> f5925g = new ArrayBlockingQueue<>(4);

    /* renamed from: m */
    private Handler f5927m = new Handler(Looper.getMainLooper()) { // from class: com.cyjh.mobileanjian.ipc.a.b.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    if (C1586b.this.f5924f != null) {
                        C1586b.this.f5924f.onStartScript();
                        return;
                    }
                    return;
                case 2:
                    if (C1586b.this.f5924f != null) {
                        C1586b.this.f5924f.onStopScript(message.arg1, (String) message.obj);
                        return;
                    }
                    return;
                case 3:
                    Toast.makeText(C1673a.f6502g.getApplicationContext(), (String) message.obj, 1).show();
                    return;
                default:
                    return;
            }
        }
    };

    /* renamed from: n */
    private MQLanguageStub.MQAuxiliary f5928n = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.mobileanjian.ipc.a.b$a */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a */
        public static final int f5930a = 0;

        /* renamed from: b */
        public static final int f5931b = 1;

        /* renamed from: c */
        public static final int f5932c = 2;

        /* renamed from: d */
        public static final int f5933d = 3;

        /* renamed from: e */
        public static final int f5934e = 4;

        /* renamed from: f */
        public static final int f5935f = 16;

        /* renamed from: g */
        public int f5936g;

        /* renamed from: h */
        public String f5937h;

        /* renamed from: i */
        public String f5938i;

        /* renamed from: j */
        public String f5939j;

        /* renamed from: k */
        public String f5940k;

        /* renamed from: l */
        public int f5941l;

        /* renamed from: m */
        public int f5942m;

        /* renamed from: n */
        public String f5943n;

        public a(int i, String str, String str2, String str3, String str4, int i2, int i3, String str5) {
            this.f5936g = i;
            this.f5937h = str;
            this.f5938i = str2;
            this.f5939j = str3;
            this.f5940k = str4;
            this.f5941l = i2;
            this.f5942m = i3;
            this.f5943n = str5;
        }

        public final String toString() {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.mobileanjian.ipc.a.b$b */
    /* loaded from: classes.dex */
    public class b extends Thread {
        private b() {
        }

        public /* synthetic */ b(C1586b c1586b, byte b2) {
            this();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            if (C1586b.this.f5923e == null) {
                return;
            }
            Looper.prepare();
            C1586b.m7097a(C1586b.this);
            Looper.myLooper().quit();
            Looper.loop();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.mobileanjian.ipc.a.b$c */
    /* loaded from: classes.dex */
    public class c extends Thread {
        public c(String str) {
            super(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Looper.prepare();
            C1586b.this.f5921c = true;
            while (C1673a.f6502g != null) {
                try {
                    a take = C1586b.this.f5925g.take();
                    new StringBuilder("Take Request:\n").append(take);
                    switch (take.f5936g) {
                        case 0:
                            C1586b.m7097a(C1586b.this);
                            continue;
                        case 1:
                            C1586b.this.m7111e();
                            MQLanguageStub.InitHost(take.f5937h);
                            C1586b.this.f5920b = true;
                            continue;
                        case 2:
                            C1586b.this.m7111e();
                            MQLanguageStub.InitElf(C1673a.f6502g, take.f5938i, take.f5939j, take.f5940k);
                            continue;
                        case 3:
                            C1586b.this.m7111e();
                            MQLanguageStub.SetHeartBeatTime(take.f5941l, take.f5942m);
                            continue;
                        case 4:
                            C1586b.this.m7111e();
                            MQLanguageStub.SetRegCode(take.f5943n);
                            continue;
                        default:
                            continue;
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                e.printStackTrace();
            }
            Looper.myLooper().quit();
            Looper.loop();
            C1586b.this.f5921c = false;
        }
    }

    /* renamed from: a */
    private void m7096a(int i, int i2) {
        try {
            this.f5925g.put(new a(3, "", "", "", "", i, i2, ""));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m7097a(C1586b c1586b) {
        if (c1586b.f5923e != null) {
            c1586b.f5919a = true;
            c1586b.f5927m.obtainMessage(1).sendToTarget();
            c1586b.m7107c(C1673a.f6502g.getApplicationContext().getString(C1696R.string.toast_on_start_script));
            c1586b.m7113g();
            int Run = c1586b.m7111e().Run(c1586b.f5923e.getLcPath(), c1586b.f5923e.getAtcPath(), c1586b.f5923e.getConfigPath(), c1586b.f5923e.getAppId(), c1586b.f5923e.getScriptEncryptKey(), c1586b.f5923e.getTrialTime(), c1586b.f5923e.getEncryptKey());
            if (Run == 102) {
                c1586b.m7107c(String.format(C1673a.f6502g.getApplicationContext().getString(C1696R.string.toast_run_failed), Integer.valueOf(Run)));
            }
            if (c1586b.f5927m != null) {
                Message obtainMessage = c1586b.f5927m.obtainMessage();
                obtainMessage.what = 2;
                obtainMessage.arg1 = Run;
                obtainMessage.obj = NativeLog.getExtraLog();
                c1586b.f5927m.sendMessage(obtainMessage);
            }
            c1586b.m7107c(C1673a.f6502g.getApplicationContext().getString(C1696R.string.toast_on_stop_script));
            C1451c.m6690c();
            Injector.release();
            NativeLog.reset();
            c1586b.f5919a = false;
        }
    }

    /* renamed from: a */
    private void m7098a(OnScriptListener onScriptListener) {
        if (onScriptListener != null) {
            this.f5924f = onScriptListener;
        }
    }

    /* renamed from: a */
    private void m7099a(Script4Run script4Run) {
        if (script4Run != null) {
            this.f5923e = script4Run;
        }
    }

    /* renamed from: a */
    private void m7100a(String str) {
        try {
            if (!this.f5921c) {
                this.f5922d = new c("ScriptRunnerLite_Request");
                this.f5922d.start();
            }
            this.f5925g.put(new a(1, str, "", "", "", 0, 0, ""));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    private void m7101a(String str, String str2, String str3) {
        try {
            this.f5925g.put(new a(2, "", str, str2, str3, 0, 0, ""));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    private void m7102a(boolean z, int i, int i2, int i3, int i4) {
        m7112f().SetImageCrop(z, i, i2, i3, i4);
    }

    /* renamed from: b */
    private void m7105b(String str) {
        try {
            this.f5925g.put(new a(4, "", "", "", "", 0, 0, str));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    private void m7107c(String str) {
        this.f5927m.obtainMessage(3, str).sendToTarget();
    }

    /* renamed from: e */
    private static /* synthetic */ boolean m7109e(C1586b c1586b) {
        c1586b.f5920b = true;
        return true;
    }

    /* renamed from: i */
    private void m7110i() {
        if (this.f5923e == null) {
            return;
        }
        this.f5919a = true;
        this.f5927m.obtainMessage(1).sendToTarget();
        m7107c(C1673a.f6502g.getApplicationContext().getString(C1696R.string.toast_on_start_script));
        m7113g();
        int Run = m7111e().Run(this.f5923e.getLcPath(), this.f5923e.getAtcPath(), this.f5923e.getConfigPath(), this.f5923e.getAppId(), this.f5923e.getScriptEncryptKey(), this.f5923e.getTrialTime(), this.f5923e.getEncryptKey());
        if (Run == 102) {
            m7107c(String.format(C1673a.f6502g.getApplicationContext().getString(C1696R.string.toast_run_failed), Integer.valueOf(Run)));
        }
        if (this.f5927m != null) {
            Message obtainMessage = this.f5927m.obtainMessage();
            obtainMessage.what = 2;
            obtainMessage.arg1 = Run;
            obtainMessage.obj = NativeLog.getExtraLog();
            this.f5927m.sendMessage(obtainMessage);
        }
        m7107c(C1673a.f6502g.getApplicationContext().getString(C1696R.string.toast_on_stop_script));
        C1451c.m6690c();
        Injector.release();
        NativeLog.reset();
        this.f5919a = false;
    }

    @Override // com.cyjh.mobileanjian.ipc.p105a.InterfaceC1585a
    /* renamed from: a */
    public final void mo7092a() {
        if (!this.f5919a) {
            new b(this, (byte) 0).start();
        } else if (this.f5924f != null) {
            this.f5924f.onScriptIsRunning();
        }
    }

    @Override // com.cyjh.mobileanjian.ipc.p105a.InterfaceC1585a
    /* renamed from: b */
    public final void mo7093b() {
        m7111e().Resume();
    }

    @Override // com.cyjh.mobileanjian.ipc.p105a.InterfaceC1585a
    /* renamed from: c */
    public final void mo7094c() {
        m7111e().Pause();
    }

    @Override // com.cyjh.mobileanjian.ipc.p105a.InterfaceC1585a
    /* renamed from: d */
    public final void mo7095d() {
        new StringBuilder("stop: ").append(getClass().getSimpleName());
        m7111e().Stop();
    }

    /* renamed from: e */
    public final MQLanguageStub m7111e() {
        if (this.f5926l == null) {
            this.f5926l = new MQLanguageStub();
            new StringBuilder("Application: ").append(C1673a.f6502g);
            File file = new File(Environment.getExternalStorageDirectory(), C1673a.f6502g.getPackageName());
            if (!file.exists()) {
                file.mkdir();
            }
            this.f5926l.SetLocalDir(Environment.getExternalStorageDirectory().getAbsolutePath(), file.getAbsolutePath(), new File(C1673a.f6502g.getApplicationContext().getFilesDir().getParent(), "lib").getAbsolutePath());
            this.f5926l.SetWriteLog2File(true);
        }
        return this.f5926l;
    }

    /* renamed from: f */
    public final MQLanguageStub.MQAuxiliary m7112f() {
        if (this.f5928n == null) {
            MQLanguageStub m7111e = m7111e();
            m7111e.getClass();
            this.f5928n = new MQLanguageStub.MQAuxiliary();
        }
        return this.f5928n;
    }

    /* renamed from: g */
    public final void m7113g() {
        m7112f().SetScreenRotation(((WindowManager) C1673a.f6502g.getSystemService("window")).getDefaultDisplay().getRotation());
    }

    /* renamed from: h */
    public final synchronized boolean m7114h() {
        return this.f5919a;
    }
}
