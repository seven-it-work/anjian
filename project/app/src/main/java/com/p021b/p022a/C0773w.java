package com.p021b.p022a;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;

/* renamed from: com.b.a.w */
/* loaded from: classes.dex */
final class C0773w implements InterfaceC0772v {
    @Override // com.p021b.p022a.InterfaceC0772v
    /* renamed from: a */
    public final List<InetAddress> mo1997a(String str) {
        if (str == null) {
            throw new UnknownHostException("hostname == null");
        }
        return Arrays.asList(InetAddress.getAllByName(str));
    }
}
