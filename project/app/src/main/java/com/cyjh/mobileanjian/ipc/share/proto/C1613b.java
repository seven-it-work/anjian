package com.cyjh.mobileanjian.ipc.share.proto;

import com.cyjh.mobileanjian.ipc.share.proto.Ipc;

/* renamed from: com.cyjh.mobileanjian.ipc.share.proto.b */
/* loaded from: classes.dex */
public final class C1613b extends AbstractC1614c {

    /* renamed from: a */
    private Ipc.IpcMessage f6130a;

    public C1613b(Ipc.IpcMessage ipcMessage) {
        this.f6130a = null;
        this.f6130a = ipcMessage;
    }

    /* renamed from: a */
    public static final Ipc.IpcMessage m7204a(int i) {
        return Ipc.IpcMessage.newBuilder().setCmd(i).build();
    }

    @Override // com.cyjh.mobileanjian.ipc.share.proto.AbstractC1614c
    /* renamed from: a */
    public final byte[] mo7205a() {
        if (this.f6130a == null) {
            return null;
        }
        return this.f6130a.toByteArray();
    }
}
