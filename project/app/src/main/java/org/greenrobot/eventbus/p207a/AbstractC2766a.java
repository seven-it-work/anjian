package org.greenrobot.eventbus.p207a;

import org.greenrobot.eventbus.C2774e;
import org.greenrobot.eventbus.C2781l;
import org.greenrobot.eventbus.ThreadMode;

/* renamed from: org.greenrobot.eventbus.a.a */
/* loaded from: classes2.dex */
public abstract class AbstractC2766a implements InterfaceC2768c {

    /* renamed from: a */
    private final Class f10456a;

    /* renamed from: b */
    private final Class<? extends InterfaceC2768c> f10457b = null;

    /* renamed from: c */
    private final boolean f10458c;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2766a(Class cls, boolean z) {
        this.f10456a = cls;
        this.f10458c = z;
    }

    /* renamed from: a */
    private C2781l m12472a(String str, Class<?> cls) {
        return m12475a(str, cls, ThreadMode.POSTING, 0, false);
    }

    /* renamed from: a */
    private C2781l m12473a(String str, Class<?> cls, ThreadMode threadMode) {
        return m12475a(str, cls, threadMode, 0, false);
    }

    @Override // org.greenrobot.eventbus.p207a.InterfaceC2768c
    /* renamed from: a */
    public final Class mo12474a() {
        return this.f10456a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final C2781l m12475a(String str, Class<?> cls, ThreadMode threadMode, int i, boolean z) {
        try {
            return new C2781l(this.f10456a.getDeclaredMethod(str, cls), cls, threadMode, i, z);
        } catch (NoSuchMethodException e) {
            throw new C2774e("Could not find subscriber method in " + this.f10456a + ". Maybe a missing ProGuard rule?", e);
        }
    }

    @Override // org.greenrobot.eventbus.p207a.InterfaceC2768c
    /* renamed from: b */
    public final InterfaceC2768c mo12476b() {
        if (this.f10457b == null) {
            return null;
        }
        try {
            return this.f10457b.newInstance();
        } catch (IllegalAccessException | InstantiationException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // org.greenrobot.eventbus.p207a.InterfaceC2768c
    /* renamed from: c */
    public final boolean mo12477c() {
        return this.f10458c;
    }
}
