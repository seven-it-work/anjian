package org.greenrobot.eventbus;

import java.lang.reflect.Method;

/* renamed from: org.greenrobot.eventbus.l */
/* loaded from: classes2.dex */
public final class C2781l {

    /* renamed from: a */
    final Method f10524a;

    /* renamed from: b */
    final ThreadMode f10525b;

    /* renamed from: c */
    final Class<?> f10526c;

    /* renamed from: d */
    final int f10527d;

    /* renamed from: e */
    final boolean f10528e;

    /* renamed from: f */
    String f10529f;

    public C2781l(Method method, Class<?> cls, ThreadMode threadMode, int i, boolean z) {
        this.f10524a = method;
        this.f10525b = threadMode;
        this.f10526c = cls;
        this.f10527d = i;
        this.f10528e = z;
    }

    /* renamed from: a */
    private synchronized void m12531a() {
        if (this.f10529f == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(this.f10524a.getDeclaringClass().getName());
            sb.append('#');
            sb.append(this.f10524a.getName());
            sb.append('(');
            sb.append(this.f10526c.getName());
            this.f10529f = sb.toString();
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2781l)) {
            return false;
        }
        m12531a();
        C2781l c2781l = (C2781l) obj;
        c2781l.m12531a();
        return this.f10529f.equals(c2781l.f10529f);
    }

    public final int hashCode() {
        return this.f10524a.hashCode();
    }
}
