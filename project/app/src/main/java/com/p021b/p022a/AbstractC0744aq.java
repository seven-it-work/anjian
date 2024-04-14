package com.p021b.p022a;

import com.p021b.p022a.p023a.C0650c;
import com.p021b.p032b.InterfaceC0784g;

/* renamed from: com.b.a.aq */
/* loaded from: classes.dex */
public abstract class AbstractC0744aq {
    /* renamed from: a */
    public static AbstractC0744aq m1910a(byte[] bArr) {
        int length = bArr.length;
        if (bArr == null) {
            throw new NullPointerException("content == null");
        }
        C0650c.m1611a(bArr.length, length);
        return new C0745ar(length, bArr);
    }

    /* renamed from: a */
    public abstract C0735ah mo1911a();

    /* renamed from: a */
    public abstract void mo1912a(InterfaceC0784g interfaceC0784g);

    /* renamed from: b */
    public long mo1913b() {
        return -1L;
    }
}
