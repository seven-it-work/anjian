package org.apache.harmony.awt.datatransfer;

import java.awt.datatransfer.Clipboard;

/* loaded from: classes2.dex */
public abstract class NativeClipboard extends Clipboard {
    protected static final int OPS_TIMEOUT = 10000;

    public NativeClipboard(String str) {
        super(str);
    }

    public void onRestart() {
    }

    public void onShutdown() {
    }
}
