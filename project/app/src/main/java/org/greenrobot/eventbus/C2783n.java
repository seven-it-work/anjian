package org.greenrobot.eventbus;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.greenrobot.eventbus.n */
/* loaded from: classes2.dex */
public final class C2783n {

    /* renamed from: a */
    final Object f10547a;

    /* renamed from: b */
    final C2781l f10548b;

    /* renamed from: c */
    volatile boolean f10549c = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2783n(Object obj, C2781l c2781l) {
        this.f10547a = obj;
        this.f10548b = c2781l;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2783n) {
            C2783n c2783n = (C2783n) obj;
            if (this.f10547a == c2783n.f10547a && this.f10548b.equals(c2783n.f10548b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f10547a.hashCode() + this.f10548b.f10529f.hashCode();
    }
}
