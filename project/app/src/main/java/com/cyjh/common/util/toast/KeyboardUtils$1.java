package com.cyjh.common.util.toast;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;

/* loaded from: classes.dex */
class KeyboardUtils$1 extends ResultReceiver {
    /* JADX INFO: Access modifiers changed from: package-private */
    public KeyboardUtils$1(Handler handler) {
        super(handler);
    }

    @Override // android.os.ResultReceiver
    protected final void onReceiveResult(int i, Bundle bundle) {
        if (i == 1 || i == 3) {
            C1184g.m4846a();
        }
    }
}
