package com.android.volley.toolbox;

import android.os.Handler;
import android.os.Looper;
import com.android.volley.AbstractC0599l;
import com.android.volley.C0596i;
import com.android.volley.C0601n;
import com.android.volley.InterfaceC0589b;

/* renamed from: com.android.volley.toolbox.e */
/* loaded from: classes.dex */
public final class C0614e extends AbstractC0599l<Object> {

    /* renamed from: m */
    private final InterfaceC0589b f1329m;

    /* renamed from: n */
    private final Runnable f1330n;

    private C0614e(InterfaceC0589b interfaceC0589b, Runnable runnable) {
        super(0, null, null);
        this.f1329m = interfaceC0589b;
        this.f1330n = runnable;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.AbstractC0599l
    /* renamed from: a */
    public final C0601n<Object> mo1379a(C0596i c0596i) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.AbstractC0599l
    /* renamed from: a */
    public final void mo1380a(Object obj) {
    }

    @Override // com.android.volley.AbstractC0599l
    /* renamed from: a */
    public final boolean mo1382a() {
        this.f1329m.mo1333b();
        if (this.f1330n == null) {
            return true;
        }
        new Handler(Looper.getMainLooper()).postAtFrontOfQueue(this.f1330n);
        return true;
    }

    @Override // com.android.volley.AbstractC0599l
    /* renamed from: h */
    public final AbstractC0599l.b mo1390h() {
        return AbstractC0599l.b.IMMEDIATE;
    }
}
