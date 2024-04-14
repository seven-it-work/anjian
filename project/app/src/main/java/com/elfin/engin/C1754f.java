package com.elfin.engin;

import com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback;
import com.cyjh.mq.sdk.MqRunner;
import com.cyjh.mq.sdk.inf.IRunner;
import com.cyjh.mq.sdk.inf.OnElfCallback;

/* renamed from: com.elfin.engin.f */
/* loaded from: classes.dex */
public final class C1754f extends AbstractC1745b {

    /* renamed from: a */
    private static final String f6928a = "MqRunnerApi";

    /* renamed from: a */
    private static void m8046a(String str, String str2, String str3) {
        MqRunner.getInstance().mo7718a(str, str2, str3, null);
    }

    /* renamed from: b */
    private static void m8047b(String str) {
        MqRunner.getInstance().mo7717a(str);
    }

    @Override // com.elfin.engin.AbstractC1745b
    /* renamed from: a */
    public final IRunner mo7980a() {
        return MqRunner.getInstance();
    }

    @Override // com.elfin.engin.AbstractC1745b
    /* renamed from: a */
    public final void mo7981a(OnSpecialMqCmdCallback onSpecialMqCmdCallback) {
        MqRunner.getInstance().mo7716a(onSpecialMqCmdCallback);
    }

    @Override // com.elfin.engin.AbstractC1745b
    /* renamed from: a */
    public final void mo7983a(String str) {
        MqRunner.getInstance().mo7720b(str);
    }

    @Override // com.elfin.engin.AbstractC1745b
    /* renamed from: a */
    public final void mo7984a(String str, String str2, String str3, OnElfCallback onElfCallback) {
        MqRunner.getInstance().mo7718a(str, str2, str3, onElfCallback);
    }

    @Override // com.elfin.engin.AbstractC1745b
    /* renamed from: a */
    public final void mo7985a(boolean z, int i, int i2, int i3, int i4) {
    }
}
