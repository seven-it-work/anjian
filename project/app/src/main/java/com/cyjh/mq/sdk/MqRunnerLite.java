package com.cyjh.mq.sdk;

import com.cyjh.mobileanjian.ipc.interfaces.OnMqScriptCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnRequestCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnScreenShotCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener;
import com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback;
import com.cyjh.mobileanjian.ipc.p105a.C1586b;
import com.cyjh.mq.sdk.entity.Script4Run;
import com.cyjh.mq.sdk.inf.IRunner;
import com.cyjh.mq.sdk.inf.InterfaceC1690a;
import com.cyjh.mq.sdk.inf.InterfaceC1691b;
import com.cyjh.mq.sdk.inf.OnElfCallback;
import com.google.protobuf.ByteString;

/* loaded from: classes.dex */
public class MqRunnerLite implements InterfaceC1690a, InterfaceC1691b {

    /* renamed from: a */
    public OnScriptListener f6609a;

    /* renamed from: b */
    public OnElfCallback f6610b;

    /* renamed from: c */
    public OnRequestCallback f6611c;

    /* renamed from: d */
    public boolean f6612d;

    /* renamed from: e */
    public OnSpecialMqCmdCallback f6613e;

    /* renamed from: f */
    public OnMqScriptCallback f6614f;

    /* renamed from: g */
    private Script4Run f6615g;

    /* renamed from: h */
    private C1586b f6616h;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.mq.sdk.MqRunnerLite$a */
    /* loaded from: classes.dex */
    public static class C1688a {

        /* renamed from: a */
        private static final MqRunnerLite f6617a = new MqRunnerLite(0);

        private C1688a() {
        }
    }

    private MqRunnerLite() {
        this.f6610b = null;
        this.f6611c = null;
        this.f6612d = true;
        this.f6616h = new C1586b();
    }

    /* synthetic */ MqRunnerLite(byte b2) {
        this();
    }

    public static synchronized MqRunnerLite getInstance() {
        MqRunnerLite mqRunnerLite;
        synchronized (MqRunnerLite.class) {
            mqRunnerLite = C1688a.f6617a;
        }
        return mqRunnerLite;
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1692c
    /* renamed from: a */
    public final OnRequestCallback mo7712a() {
        return this.f6611c;
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1690a
    /* renamed from: a */
    public final void mo7713a(int i, int i2) {
        C1586b c1586b = this.f6616h;
        try {
            c1586b.f5925g.put(new C1586b.a(3, "", "", "", "", i, i2, ""));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1690a
    /* renamed from: a */
    public final void mo7714a(OnMqScriptCallback onMqScriptCallback) {
        this.f6614f = onMqScriptCallback;
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1690a
    /* renamed from: a */
    public final void mo7715a(OnScreenShotCallback onScreenShotCallback) {
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1690a
    /* renamed from: a */
    public final void mo7716a(OnSpecialMqCmdCallback onSpecialMqCmdCallback) {
        this.f6613e = onSpecialMqCmdCallback;
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1692c
    /* renamed from: a */
    public final void mo7722a(ByteString byteString) {
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1690a
    /* renamed from: a */
    public final void mo7717a(String str) {
        C1586b c1586b = this.f6616h;
        try {
            if (!c1586b.f5921c) {
                c1586b.f5922d = new C1586b.c("ScriptRunnerLite_Request");
                c1586b.f5922d.start();
            }
            c1586b.f5925g.put(new C1586b.a(1, str, "", "", "", 0, 0, ""));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1690a
    /* renamed from: a */
    public final void mo7718a(String str, String str2, String str3, OnElfCallback onElfCallback) {
        this.f6610b = onElfCallback;
        C1586b c1586b = this.f6616h;
        try {
            c1586b.f5925g.put(new C1586b.a(2, "", str, str2, str3, 0, 0, ""));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1692c
    /* renamed from: b */
    public final OnElfCallback mo7719b() {
        return this.f6610b;
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1692c
    /* renamed from: b */
    public final void mo7723b(ByteString byteString) {
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1690a
    /* renamed from: b */
    public final void mo7720b(String str) {
        C1586b c1586b = this.f6616h;
        try {
            c1586b.f5925g.put(new C1586b.a(4, "", "", "", "", 0, 0, str));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1692c
    /* renamed from: c */
    public final void mo7724c(ByteString byteString) {
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1692c
    /* renamed from: c */
    public final void mo7725c(String str) {
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1691b
    /* renamed from: c */
    public final boolean mo7726c() {
        return this.f6612d;
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1691b
    /* renamed from: d */
    public final OnScriptListener mo7727d() {
        return this.f6609a;
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1691b
    /* renamed from: e */
    public final OnSpecialMqCmdCallback mo7728e() {
        return this.f6613e;
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1691b
    /* renamed from: f */
    public final OnMqScriptCallback mo7729f() {
        return this.f6614f;
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public boolean isScriptStarted() {
        if (this.f6616h == null) {
            return false;
        }
        return this.f6616h.m7114h();
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void notifyRotationStatus() {
        this.f6616h.m7113g();
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void pause() {
        if (this.f6616h != null) {
            this.f6616h.m7111e().Pause();
        }
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void resume() {
        if (this.f6616h != null) {
            this.f6616h.m7111e().Resume();
        }
    }

    public void setImageCrop(boolean z, int i, int i2, int i3, int i4) {
        this.f6616h.m7112f().SetImageCrop(z, i, i2, i3, i4);
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public IRunner setOnScriptListener(OnScriptListener onScriptListener) {
        this.f6609a = onScriptListener;
        if (this.f6616h != null) {
            C1586b c1586b = this.f6616h;
            if (onScriptListener != null) {
                c1586b.f5924f = onScriptListener;
            }
        }
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public IRunner setScript(Script4Run script4Run) {
        this.f6615g = script4Run;
        if (this.f6616h != null) {
            C1586b c1586b = this.f6616h;
            if (script4Run != null) {
                c1586b.f5923e = script4Run;
            }
        }
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void start() {
        if (this.f6616h != null) {
            C1586b c1586b = this.f6616h;
            if (!c1586b.f5919a) {
                new C1586b.b(c1586b, (byte) 0).start();
            } else if (c1586b.f5924f != null) {
                c1586b.f5924f.onScriptIsRunning();
            }
        }
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void stop() {
        if (this.f6616h != null) {
            C1586b c1586b = this.f6616h;
            new StringBuilder("stop: ").append(c1586b.getClass().getSimpleName());
            c1586b.m7111e().Stop();
        }
    }
}
