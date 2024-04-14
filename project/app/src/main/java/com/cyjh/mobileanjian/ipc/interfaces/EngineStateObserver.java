package com.cyjh.mobileanjian.ipc.interfaces;

import com.cyjh.mobileanjian.ipc.C1587b;
import com.cyjh.mq.p109c.C1676b;

/* loaded from: classes.dex */
public interface EngineStateObserver {
    void onConnected(C1676b c1676b);

    void onCrash(C1587b c1587b);

    void onExit();
}
