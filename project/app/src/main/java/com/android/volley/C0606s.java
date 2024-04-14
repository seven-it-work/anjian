package com.android.volley;

/* renamed from: com.android.volley.s */
/* loaded from: classes.dex */
public class C0606s extends Exception {
    public final C0596i networkResponse;
    private long networkTimeMs;

    public C0606s() {
        this.networkResponse = null;
    }

    public C0606s(C0596i c0596i) {
        this.networkResponse = c0596i;
    }

    public C0606s(String str) {
        super(str);
        this.networkResponse = null;
    }

    public C0606s(String str, Throwable th) {
        super(str, th);
        this.networkResponse = null;
    }

    public C0606s(Throwable th) {
        super(th);
        this.networkResponse = null;
    }

    public long getNetworkTimeMs() {
        return this.networkTimeMs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNetworkTimeMs(long j) {
        this.networkTimeMs = j;
    }
}
