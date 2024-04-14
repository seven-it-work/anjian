package com.android.volley;

import android.content.Intent;

/* renamed from: com.android.volley.a */
/* loaded from: classes.dex */
public final class C0588a extends C0606s {
    private Intent mResolutionIntent;

    public C0588a() {
    }

    public C0588a(Intent intent) {
        this.mResolutionIntent = intent;
    }

    public C0588a(C0596i c0596i) {
        super(c0596i);
    }

    public C0588a(String str) {
        super(str);
    }

    public C0588a(String str, Exception exc) {
        super(str, exc);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.mResolutionIntent != null ? "User needs to (re)enter credentials." : super.getMessage();
    }

    public final Intent getResolutionIntent() {
        return this.mResolutionIntent;
    }
}
