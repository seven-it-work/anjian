package net.grandcentrix.tray.core;

/* loaded from: classes2.dex */
public class ItemNotFoundException extends TrayException {
    public ItemNotFoundException() {
    }

    public ItemNotFoundException(String str) {
        super(str);
    }

    public ItemNotFoundException(String str, Throwable th) {
        super(str, th);
    }

    public ItemNotFoundException(String str, Object... objArr) {
        super(str, objArr);
    }

    public ItemNotFoundException(Throwable th) {
        super(th);
    }
}
