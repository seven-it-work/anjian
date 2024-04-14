package com.cyjh.mobileanjian.ipc.share.proto;

import java.nio.ByteBuffer;

/* renamed from: com.cyjh.mobileanjian.ipc.share.proto.c */
/* loaded from: classes.dex */
public abstract class AbstractC1614c {
    /* renamed from: b */
    private ByteBuffer m7206b() {
        int length = mo7205a().length;
        ByteBuffer wrap = ByteBuffer.wrap(new byte[length + 4]);
        wrap.putInt(length);
        wrap.put(mo7205a());
        wrap.flip();
        return wrap;
    }

    /* renamed from: a */
    public abstract byte[] mo7205a();
}
