package com.elfin.engin;

import com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback;
import com.cyjh.mq.sdk.MqRunner;
import com.cyjh.mq.sdk.MqRunnerLite;
import com.cyjh.mq.sdk.inf.IRunner;
import com.cyjh.mq.sdk.inf.OnElfCallback;

/* renamed from: com.elfin.engin.g */
/* loaded from: classes.dex */
public final class C1755g extends AbstractC1745b {
    /* renamed from: b */
    private static void m8048b(String str) {
        MqRunnerLite.getInstance().mo7717a(str);
    }

    @Override // com.elfin.engin.AbstractC1745b
    /* renamed from: a */
    public final IRunner mo7980a() {
        return MqRunnerLite.getInstance();
    }

    @Override // com.elfin.engin.AbstractC1745b
    /* renamed from: a */
    public final void mo7981a(OnSpecialMqCmdCallback onSpecialMqCmdCallback) {
        MqRunnerLite.getInstance().mo7716a(onSpecialMqCmdCallback);
    }

    @Override // com.elfin.engin.AbstractC1745b
    /* renamed from: a */
    public final void mo7983a(String str) {
    }

    @Override // com.elfin.engin.AbstractC1745b
    /* renamed from: a */
    public final void mo7984a(String str, String str2, String str3, OnElfCallback onElfCallback) {
        MqRunner.getInstance().mo7718a(str, str2, str3, onElfCallback);
        MqRunnerLite.getInstance().mo7718a(str, str2, str3, onElfCallback);
    }

    @Override // com.elfin.engin.AbstractC1745b
    /* renamed from: a */
    public final void mo7985a(boolean z, int i, int i2, int i3, int i4) {
        MqRunnerLite.getInstance().setImageCrop(z, i, i2, i3, i4);
    }
}
