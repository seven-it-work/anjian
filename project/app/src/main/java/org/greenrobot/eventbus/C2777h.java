package org.greenrobot.eventbus;

import java.util.ArrayList;
import java.util.List;

/* renamed from: org.greenrobot.eventbus.h */
/* loaded from: classes2.dex */
final class C2777h {

    /* renamed from: d */
    private static final List<C2777h> f10514d = new ArrayList();

    /* renamed from: a */
    Object f10515a;

    /* renamed from: b */
    C2783n f10516b;

    /* renamed from: c */
    C2777h f10517c;

    private C2777h(Object obj, C2783n c2783n) {
        this.f10515a = obj;
        this.f10516b = c2783n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C2777h m12523a(C2783n c2783n, Object obj) {
        synchronized (f10514d) {
            int size = f10514d.size();
            if (size <= 0) {
                return new C2777h(obj, c2783n);
            }
            C2777h remove = f10514d.remove(size - 1);
            remove.f10515a = obj;
            remove.f10516b = c2783n;
            remove.f10517c = null;
            return remove;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m12524a(C2777h c2777h) {
        c2777h.f10515a = null;
        c2777h.f10516b = null;
        c2777h.f10517c = null;
        synchronized (f10514d) {
            if (f10514d.size() < 10000) {
                f10514d.add(c2777h);
            }
        }
    }
}
