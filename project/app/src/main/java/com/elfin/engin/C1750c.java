package com.elfin.engin;

import android.app.Application;
import android.util.Log;
import com.cyjh.common.util.EnumC1157aj;
import com.cyjh.mobileanjian.ipc.interfaces.OnEngineStartCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnKeyEventListener;
import com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener;
import com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback;
import com.cyjh.mobileanjian.ipc.interfaces.RootProgressListener;
import com.cyjh.mq.sdk.MqBridge;
import com.cyjh.mq.sdk.entity.Script4Run;
import com.cyjh.mq.sdk.inf.OnElfCallback;
import com.goldcoast.sdk.domain.EntryPoint;

/* renamed from: com.elfin.engin.c */
/* loaded from: classes.dex */
public final class C1750c {

    /* renamed from: l */
    private static final String f6891l = "EnginRunnerManager";

    /* renamed from: o */
    private static final C1750c f6892o = new C1750c();

    /* renamed from: b */
    public AbstractC1745b f6894b;

    /* renamed from: c */
    public int f6895c;

    /* renamed from: d */
    public C1754f f6896d;

    /* renamed from: e */
    public C1755g f6897e;

    /* renamed from: f */
    public InterfaceC1753e f6898f;

    /* renamed from: m */
    private boolean f6904m;

    /* renamed from: a */
    public boolean f6893a = false;

    /* renamed from: g */
    public OnKeyEventListener f6899g = new OnKeyEventListener() { // from class: com.elfin.engin.c.1
        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnKeyEventListener
        public final void onKeyEvent(int i) {
            if (C1750c.this.f6898f != null) {
                C1750c.this.f6898f.mo6019b(i);
            }
        }
    };

    /* renamed from: n */
    private RootProgressListener f6905n = new RootProgressListener() { // from class: com.elfin.engin.c.2
        @Override // com.cyjh.mobileanjian.ipc.interfaces.RootProgressListener
        public final void onRootProgress(String str, int i) {
            InterfaceC1753e unused = C1750c.this.f6898f;
        }
    };

    /* renamed from: h */
    public OnEngineStartCallback f6900h = new OnEngineStartCallback() { // from class: com.elfin.engin.c.3
        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnEngineStartCallback
        public final void onEngineStart(int i) {
            C1750c.m8017b(C1750c.this);
            if (C1750c.this.f6898f != null) {
                C1750c.this.f6898f.mo6013a();
            }
        }
    };

    /* renamed from: i */
    public OnScriptListener f6901i = new OnScriptListener() { // from class: com.elfin.engin.c.4
        @Override // com.cyjh.mobileanjian.ipc.interfaces.BasicScriptListener
        public final void onPause() {
            if (C1750c.this.f6898f != null) {
                C1750c.this.f6898f.mo6022c();
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.BasicScriptListener
        public final void onResume() {
            if (C1750c.this.f6898f != null) {
                C1750c.this.f6898f.mo6025d();
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.BasicScriptListener
        public final void onScriptIsRunning() {
            if (C1750c.this.f6898f != null) {
                C1750c.this.f6898f.mo6027e();
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener
        public final void onSetControlBarVisiable(int i) {
            if (C1750c.this.f6898f != null) {
                C1750c.this.f6898f.mo6015a(i);
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.BasicScriptListener
        public final void onStartScript() {
            if (C1750c.this.f6898f != null) {
                C1750c.this.f6898f.mo6018b();
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.BasicScriptListener
        public final void onStopScript(int i, String str) {
            if (C1750c.this.f6898f != null) {
                C1750c.this.f6898f.mo6020b(i, str);
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener
        public final void onUpdateControlBarPos(float f, int i, int i2) {
            if (C1750c.this.f6898f != null) {
                C1750c.this.f6898f.mo6014a(f, i, i2);
            }
        }
    };

    /* renamed from: j */
    public OnElfCallback f6902j = new OnElfCallback() { // from class: com.elfin.engin.c.5
        @Override // com.cyjh.mq.sdk.inf.OnElfCallback
        public final void callback(int i, String str) {
            if (C1750c.this.f6898f != null) {
                C1750c.this.f6898f.mo6016a(i, str);
            }
        }
    };

    /* renamed from: k */
    public OnSpecialMqCmdCallback f6903k = new OnSpecialMqCmdCallback() { // from class: com.elfin.engin.c.6
        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback
        public final void doSpecialFuction(int i, String str) {
            if (C1750c.this.f6898f != null) {
                C1750c.this.f6898f.mo6026d(str);
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback
        public final String getForegroundPackage() {
            if (C1750c.this.f6898f != null) {
                return C1750c.this.f6898f.mo6028f();
            }
            return null;
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback
        public final String getRunningPackages() {
            if (C1750c.this.f6898f != null) {
                return C1750c.this.f6898f.mo6029g();
            }
            return null;
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback
        public final void inputText(String str) {
            if (C1750c.this.f6898f != null) {
                C1750c.this.f6898f.mo6024c(str);
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback
        public final void keyPress(int i) {
            if (C1750c.this.f6898f != null) {
                C1750c.this.f6898f.mo6023c(i);
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback
        public final void killApp(String str) {
            if (C1750c.this.f6898f != null) {
                C1750c.this.f6898f.mo6021b(str);
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback
        public final void launchApp(String str) {
            if (C1750c.this.f6898f != null) {
                C1750c.this.f6898f.mo6017a(str);
            }
        }
    };

    /* renamed from: com.elfin.engin.c$7, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass7 implements RootProgressListener {

        /* renamed from: a */
        final /* synthetic */ Application f6912a;

        public AnonymousClass7(Application application) {
            this.f6912a = application;
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.RootProgressListener
        public final void onRootProgress(String str, int i) {
            if (i == 6) {
                EnumC1157aj.INSTANCE.copyWebInjectFile(this.f6912a);
            }
        }
    }

    /* renamed from: a */
    public static C1750c m8005a() {
        return f6892o;
    }

    /* renamed from: a */
    private void m8007a(int i) {
        AbstractC1745b abstractC1745b;
        this.f6895c = i;
        if (this.f6895c == 0) {
            if (this.f6896d == null) {
                this.f6896d = new C1754f();
            }
            abstractC1745b = this.f6896d;
        } else {
            if (this.f6897e == null) {
                this.f6897e = new C1755g();
            }
            abstractC1745b = this.f6897e;
        }
        this.f6894b = abstractC1745b;
    }

    /* renamed from: a */
    private void m8008a(Application application) {
        EntryPoint.init(application, "", null, 10, (byte) 0);
        this.f6896d = new C1754f();
        this.f6894b = this.f6896d;
    }

    /* renamed from: a */
    private void m8009a(Application application, String str, String str2, InterfaceC1753e interfaceC1753e) {
        this.f6898f = interfaceC1753e;
        MqBridge.init(application, str, str2, this.f6899g, new AnonymousClass7(application), this.f6900h);
        this.f6894b.mo7981a(this.f6903k);
        AbstractC1745b abstractC1745b = this.f6894b;
        abstractC1745b.mo7980a().setOnScriptListener(this.f6901i);
    }

    /* renamed from: a */
    private void m8010a(String str) {
        if (this.f6894b != null) {
            this.f6894b.mo7983a(str);
        }
    }

    /* renamed from: a */
    private void m8011a(String str, String str2, String str3) {
        this.f6894b.mo7984a(str, str2, str3, this.f6902j);
    }

    /* renamed from: a */
    private void m8012a(String str, String str2, String str3, int i, long j, String str4, String str5, String str6) {
        Script4Run script4Run = new Script4Run();
        script4Run.setLcPath(str);
        script4Run.setAtcPath(str2);
        script4Run.setConfigPath(str3);
        script4Run.setScriptEncryptKey(str4);
        script4Run.trialTime = i;
        script4Run.encryptKey = j;
        Log.e("zzz", "runScript--script4Run.scripyEncryptKey:" + script4Run.getScriptEncryptKey());
        script4Run.appId = str5;
        script4Run.username = str6;
        script4Run.encrypt = true;
        if (this.f6894b != null) {
            this.f6894b.m7982a(script4Run);
        }
    }

    /* renamed from: a */
    private void m8013a(String str, String str2, String str3, String str4) {
        Script4Run script4Run = new Script4Run();
        script4Run.setLcPath(str);
        script4Run.setAtcPath(str2);
        script4Run.setConfigPath(str3);
        script4Run.setScriptEncryptKey(str4);
        if (this.f6894b != null) {
            this.f6894b.m7982a(script4Run);
        }
    }

    /* renamed from: a */
    private void m8014a(boolean z) {
        this.f6893a = z;
    }

    /* renamed from: a */
    private void m8015a(boolean z, int i, int i2, int i3, int i4) {
        if (this.f6894b != null) {
            this.f6894b.mo7985a(z, i, i2, i3, i4);
        }
    }

    /* renamed from: b */
    private boolean m8016b() {
        return this.f6893a;
    }

    /* renamed from: b */
    static /* synthetic */ boolean m8017b(C1750c c1750c) {
        c1750c.f6893a = true;
        return true;
    }

    /* renamed from: c */
    private void m8018c() {
        if (this.f6894b != null) {
            this.f6894b.mo7981a(this.f6903k);
            this.f6894b.mo7980a().start();
        }
    }

    /* renamed from: d */
    private void m8019d() {
        if (this.f6894b != null) {
            this.f6894b.mo7980a().pause();
        }
    }

    /* renamed from: e */
    private void m8020e() {
        if (this.f6894b != null) {
            this.f6894b.mo7980a().resume();
        }
    }

    /* renamed from: f */
    private void m8021f() {
        if (this.f6894b != null) {
            this.f6894b.mo7980a().stop();
        }
    }

    /* renamed from: g */
    private boolean m8022g() {
        if (this.f6894b != null) {
            return this.f6894b.mo7980a().isScriptStarted();
        }
        return false;
    }
}
