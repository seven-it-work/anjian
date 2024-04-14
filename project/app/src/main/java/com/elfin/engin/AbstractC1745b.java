package com.elfin.engin;

import android.util.Log;
import com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener;
import com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback;
import com.cyjh.mq.sdk.entity.Script4Run;
import com.cyjh.mq.sdk.inf.IRunner;
import com.cyjh.mq.sdk.inf.OnElfCallback;

/* renamed from: com.elfin.engin.b */
/* loaded from: classes.dex */
public abstract class AbstractC1745b {

    /* renamed from: a */
    private static final String f6879a = "ScriptRunnerManager";

    /* renamed from: a */
    private void m7974a(OnScriptListener onScriptListener) {
        mo7980a().setOnScriptListener(onScriptListener);
    }

    /* renamed from: b */
    private boolean m7975b() {
        return mo7980a().isScriptStarted();
    }

    /* renamed from: c */
    private void m7976c() {
        mo7980a().start();
    }

    /* renamed from: d */
    private void m7977d() {
        mo7980a().stop();
    }

    /* renamed from: e */
    private void m7978e() {
        mo7980a().pause();
    }

    /* renamed from: f */
    private void m7979f() {
        mo7980a().resume();
    }

    /* renamed from: a */
    public abstract IRunner mo7980a();

    /* renamed from: a */
    public abstract void mo7981a(OnSpecialMqCmdCallback onSpecialMqCmdCallback);

    /* renamed from: a */
    public final void m7982a(Script4Run script4Run) {
        Log.i("EnginSdk", "EnginRunnerApi -> EnginSdk -> " + script4Run);
        mo7980a().setScript(script4Run);
    }

    /* renamed from: a */
    public abstract void mo7983a(String str);

    /* renamed from: a */
    public abstract void mo7984a(String str, String str2, String str3, OnElfCallback onElfCallback);

    /* renamed from: a */
    public abstract void mo7985a(boolean z, int i, int i2, int i3, int i4);
}
