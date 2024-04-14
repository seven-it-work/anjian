package com.cyjh.mq.sdk;

import android.widget.Toast;
import com.cyjh.mobileanjian.ipc.C1587b;
import com.cyjh.mobileanjian.ipc.interfaces.OnMqScriptCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnRequestCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnScreenShotCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback;
import com.cyjh.mobileanjian.ipc.share.proto.C1613b;
import com.cyjh.mobileanjian.ipc.share.proto.Ipc;
import com.cyjh.mq.p107a.C1673a;
import com.cyjh.mq.p109c.C1676b;
import com.cyjh.mq.sdk.inf.InterfaceC1690a;
import com.cyjh.mq.sdk.inf.OnElfCallback;
import com.cyjh.mqm.MQLanguageStub;
import com.cyjh.mqsdk.C1696R;

/* loaded from: classes.dex */
public class MqRunner extends AbstractC1689a implements InterfaceC1690a {

    /* renamed from: k */
    private OnElfCallback f6600k;

    /* renamed from: l */
    private OnMqScriptCallback f6601l;

    /* renamed from: n */
    private int f6603n;

    /* renamed from: o */
    private int f6604o;

    /* renamed from: p */
    private int f6605p;

    /* renamed from: q */
    private int f6606q;

    /* renamed from: r */
    private OnScreenShotCallback f6607r;

    /* renamed from: g */
    private String f6596g = "";

    /* renamed from: h */
    private String f6597h = "";

    /* renamed from: i */
    private String f6598i = "";

    /* renamed from: j */
    private String f6599j = "";

    /* renamed from: m */
    private boolean f6602m = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.mq.sdk.MqRunner$a */
    /* loaded from: classes.dex */
    public static class C1686a {

        /* renamed from: a */
        private static final MqRunner f6608a = new MqRunner();

        private C1686a() {
        }
    }

    public static synchronized MqRunner getInstance() {
        MqRunner mqRunner;
        synchronized (MqRunner.class) {
            mqRunner = C1686a.f6608a;
        }
        return mqRunner;
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1692c
    /* renamed from: a */
    public final OnRequestCallback mo7712a() {
        return null;
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1690a
    /* renamed from: a */
    public final void mo7713a(int i, int i2) {
        this.f6603n = i;
        this.f6604o = i2;
        if (this.f6622e) {
            m7732a(Ipc.IpcMessage.newBuilder().setCmd(84).addArg1(i).addArg1(i2).build());
        }
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1690a
    /* renamed from: a */
    public final void mo7714a(OnMqScriptCallback onMqScriptCallback) {
        this.f6601l = onMqScriptCallback;
        if (this.f6619b != null) {
            this.f6619b.f6532n = onMqScriptCallback;
        }
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1690a
    /* renamed from: a */
    public final void mo7715a(OnScreenShotCallback onScreenShotCallback) {
        if (this.f6619b == null) {
            this.f6605p = 1;
            this.f6606q = 3000;
            this.f6607r = onScreenShotCallback;
        } else {
            this.f6619b.f6522d = true;
            this.f6619b.f6527i = onScreenShotCallback;
            this.f6619b.m7637a(Ipc.IpcMessage.newBuilder().setCmd(24).addArg1(1).build());
        }
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1690a
    /* renamed from: a */
    public final void mo7716a(OnSpecialMqCmdCallback onSpecialMqCmdCallback) {
        if (this.f6622e) {
            this.f6619b.f6535q = onSpecialMqCmdCallback;
        }
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1690a
    /* renamed from: a */
    public final void mo7717a(String str) {
        MQLanguageStub.InitHost(str);
        if (this.f6622e) {
            m7732a(Ipc.IpcMessage.newBuilder().setCmd(83).addArg2(str).build());
        } else {
            this.f6596g = str;
        }
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1690a
    /* renamed from: a */
    public final void mo7718a(String str, String str2, String str3, OnElfCallback onElfCallback) {
        this.f6597h = str;
        this.f6598i = str2;
        this.f6599j = str3;
        this.f6600k = onElfCallback;
        MQLanguageStub.InitElf(C1673a.f6502g, str, str2, str3);
        if (this.f6622e) {
            this.f6619b.f6533o = onElfCallback;
            m7732a(Ipc.IpcMessage.newBuilder().setCmd(80).addArg2(str).addArg2(str2).addArg2(str3).build());
        }
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1692c
    /* renamed from: b */
    public final OnElfCallback mo7719b() {
        return null;
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1690a
    /* renamed from: b */
    public final void mo7720b(String str) {
        m7732a(Ipc.IpcMessage.newBuilder().setCmd(82).addArg2(str).build());
    }

    @Override // com.cyjh.mq.sdk.AbstractC1689a, com.cyjh.mobileanjian.ipc.interfaces.EngineStateObserver
    public void onConnected(C1676b c1676b) {
        super.onConnected(c1676b);
        c1676b.f6533o = this.f6600k;
        OnMqScriptCallback onMqScriptCallback = this.f6601l;
        this.f6601l = onMqScriptCallback;
        if (this.f6619b != null) {
            this.f6619b.f6532n = onMqScriptCallback;
        }
        m7732a(Ipc.IpcMessage.newBuilder().setCmd(80).addArg2(this.f6597h).addArg2(this.f6598i).addArg2(this.f6599j).build());
        int i = this.f6603n;
        int i2 = this.f6604o;
        this.f6603n = i;
        this.f6604o = i2;
        if (this.f6622e) {
            m7732a(Ipc.IpcMessage.newBuilder().setCmd(84).addArg1(i).addArg1(i2).build());
        }
    }

    @Override // com.cyjh.mobileanjian.ipc.interfaces.EngineStateObserver
    public void onCrash(C1587b c1587b) {
        this.f6622e = false;
        m7733c();
    }

    @Override // com.cyjh.mobileanjian.ipc.interfaces.EngineStateObserver
    public void onExit() {
        this.f6622e = false;
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void start() {
        if (!this.f6622e) {
            Toast.makeText(C1673a.f6502g.getApplicationContext(), C1673a.f6502g.getApplicationContext().getString(C1696R.string.toast_script_engine_failed_start), 1).show();
        } else {
            notifyRotationStatus();
            m7732a(C1613b.m7204a(1));
        }
    }
}
