package org.greenrobot.eventbus.util;

import android.content.res.Resources;
import android.util.Log;
import org.greenrobot.eventbus.C2772c;

/* renamed from: org.greenrobot.eventbus.util.b */
/* loaded from: classes2.dex */
public final class C2785b {

    /* renamed from: a */
    final Resources f10578a;

    /* renamed from: b */
    final int f10579b;

    /* renamed from: c */
    final int f10580c;

    /* renamed from: e */
    C2772c f10582e;

    /* renamed from: g */
    String f10584g;

    /* renamed from: h */
    int f10585h;

    /* renamed from: i */
    Class<?> f10586i;

    /* renamed from: f */
    boolean f10583f = true;

    /* renamed from: d */
    final C2787d f10581d = new C2787d();

    private C2785b(Resources resources, int i, int i2) {
        this.f10578a = resources;
        this.f10579b = i;
        this.f10580c = i2;
    }

    /* renamed from: a */
    private int m12572a(Throwable th) {
        Integer m12588a = this.f10581d.m12588a(th);
        if (m12588a != null) {
            return m12588a.intValue();
        }
        Log.d(C2772c.f10468a, "No specific message ressource ID found for " + th);
        return this.f10580c;
    }

    /* renamed from: a */
    private C2785b m12573a(Class<? extends Throwable> cls, int i) {
        this.f10581d.f10588a.put(cls, Integer.valueOf(i));
        return this;
    }

    /* renamed from: a */
    private void m12574a(int i) {
        this.f10585h = i;
    }

    /* renamed from: a */
    private void m12575a(Class<?> cls) {
        this.f10586i = cls;
    }

    /* renamed from: a */
    private void m12576a(String str) {
        this.f10584g = str;
    }

    /* renamed from: a */
    private void m12577a(C2772c c2772c) {
        this.f10582e = c2772c;
    }

    /* renamed from: b */
    private void m12578b() {
        this.f10583f = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C2772c m12579a() {
        return this.f10582e != null ? this.f10582e : C2772c.m12482a();
    }
}
