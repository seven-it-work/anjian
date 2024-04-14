package org.junit.p228e.p230b;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.List;
import org.junit.p228e.C2944b;
import org.junit.p228e.C2951e;
import org.junit.p228e.p229a.AbstractC2941j;
import org.junit.p228e.p229a.C2933b;
import org.junit.p228e.p229a.C2935d;
import org.junit.p228e.p229a.C2936e;
import org.junit.runner.p233b.C2977c;

/* renamed from: org.junit.e.b.a */
/* loaded from: classes2.dex */
public final class C2945a extends C2944b {

    /* renamed from: a */
    private final Object[] f10859a;

    /* renamed from: b */
    private final String f10860b;

    public C2945a(C2948d c2948d) throws C2936e {
        super(c2948d.f10862b.f10854b);
        this.f10859a = c2948d.f10863c.toArray(new Object[c2948d.f10863c.size()]);
        this.f10860b = c2948d.f10861a;
    }

    /* renamed from: g */
    private Object m13262g() throws Exception {
        return this.f10869c.m13231c().newInstance(this.f10859a);
    }

    /* renamed from: h */
    private Object m13263h() throws Exception {
        List<C2933b> m13264i = m13264i();
        if (m13264i.size() != this.f10859a.length) {
            throw new Exception("Wrong number of parameters and @Parameter fields. @Parameter fields counted: " + m13264i.size() + ", available parameters: " + this.f10859a.length + ".");
        }
        Object newInstance = this.f10869c.f10854b.newInstance();
        Iterator<C2933b> it = m13264i.iterator();
        while (it.hasNext()) {
            Field field = it.next().f10845a;
            int m13283a = ((C2951e.a) field.getAnnotation(C2951e.a.class)).m13283a();
            try {
                field.set(newInstance, this.f10859a[m13283a]);
            } catch (IllegalArgumentException e) {
                throw new Exception(this.f10869c.m13228b() + ": Trying to set " + field.getName() + " with the value " + this.f10859a[m13283a] + " that is not the right type (" + this.f10859a[m13283a].getClass().getSimpleName() + " instead of " + field.getType().getSimpleName() + ").", e);
            }
        }
        return newInstance;
    }

    /* renamed from: i */
    private List<C2933b> m13264i() {
        return this.f10869c.m13232c(C2951e.a.class);
    }

    /* renamed from: j */
    private boolean m13265j() {
        return !m13264i().isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.junit.p228e.C2944b
    /* renamed from: b */
    public final String mo13266b(C2935d c2935d) {
        return c2935d.f10846a.getName() + this.f10860b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.junit.p228e.AbstractC2952f
    /* renamed from: b */
    public final AbstractC2941j mo13267b(C2977c c2977c) {
        return m13304c(c2977c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.junit.p228e.C2944b
    /* renamed from: b */
    public final void mo12833b(List<Throwable> list) {
        m13259d(list);
        if (m13265j()) {
            m13260e(list);
        }
    }

    @Override // org.junit.p228e.C2944b
    /* renamed from: c */
    public final Object mo12848c() throws Exception {
        return m13265j() ? m13263h() : this.f10869c.m13231c().newInstance(this.f10859a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.junit.p228e.AbstractC2952f
    /* renamed from: e */
    public final String mo13268e() {
        return this.f10860b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.junit.p228e.C2944b
    /* renamed from: f */
    public final void mo13261f(List<Throwable> list) {
        super.mo13261f(list);
        if (m13265j()) {
            List<C2933b> m13264i = m13264i();
            int[] iArr = new int[m13264i.size()];
            Iterator<C2933b> it = m13264i.iterator();
            while (it.hasNext()) {
                int m13283a = ((C2951e.a) it.next().f10845a.getAnnotation(C2951e.a.class)).m13283a();
                if (m13283a < 0 || m13283a > m13264i.size() - 1) {
                    list.add(new Exception("Invalid @Parameter value: " + m13283a + ". @Parameter fields counted: " + m13264i.size() + ". Please use an index between 0 and " + (m13264i.size() - 1) + "."));
                } else {
                    iArr[m13283a] = iArr[m13283a] + 1;
                }
            }
            for (int i = 0; i < iArr.length; i++) {
                int i2 = iArr[i];
                if (i2 == 0) {
                    list.add(new Exception("@Parameter(" + i + ") is never used."));
                } else if (i2 > 1) {
                    list.add(new Exception("@Parameter(" + i + ") is used more than once (" + i2 + ")."));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.junit.p228e.AbstractC2952f
    /* renamed from: f */
    public final Annotation[] mo13269f() {
        return new Annotation[0];
    }
}
