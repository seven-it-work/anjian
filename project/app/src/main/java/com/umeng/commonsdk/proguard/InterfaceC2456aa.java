package com.umeng.commonsdk.proguard;

import com.umeng.commonsdk.proguard.InterfaceC2456aa;
import com.umeng.commonsdk.proguard.InterfaceC2463ah;
import java.io.Serializable;

/* renamed from: com.umeng.commonsdk.proguard.aa */
/* loaded from: classes.dex */
public interface InterfaceC2456aa<T extends InterfaceC2456aa<?, ?>, F extends InterfaceC2463ah> extends Serializable {
    void clear();

    InterfaceC2456aa<T, F> deepCopy();

    F fieldForId(int i);

    void read(AbstractC2481az abstractC2481az) throws C2462ag;

    void write(AbstractC2481az abstractC2481az) throws C2462ag;
}
