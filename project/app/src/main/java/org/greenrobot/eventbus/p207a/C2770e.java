package org.greenrobot.eventbus.p207a;

import org.greenrobot.eventbus.ThreadMode;

/* renamed from: org.greenrobot.eventbus.a.e */
/* loaded from: classes2.dex */
public final class C2770e {

    /* renamed from: a */
    final String f10460a;

    /* renamed from: b */
    final ThreadMode f10461b;

    /* renamed from: c */
    final Class<?> f10462c;

    /* renamed from: d */
    final int f10463d;

    /* renamed from: e */
    final boolean f10464e;

    private C2770e(String str, Class<?> cls) {
        this(str, cls, ThreadMode.POSTING);
    }

    private C2770e(String str, Class<?> cls, ThreadMode threadMode) {
        this.f10460a = str;
        this.f10461b = threadMode;
        this.f10462c = cls;
        this.f10463d = 0;
        this.f10464e = false;
    }

    private C2770e(String str, Class<?> cls, ThreadMode threadMode, byte b2) {
        this(str, cls, threadMode);
    }
}
