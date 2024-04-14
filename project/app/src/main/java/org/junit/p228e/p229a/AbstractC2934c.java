package org.junit.p228e.p229a;

import java.lang.reflect.Modifier;
import java.util.Iterator;
import java.util.List;
import org.junit.p228e.p229a.AbstractC2934c;

/* renamed from: org.junit.e.a.c */
/* loaded from: classes.dex */
public abstract class AbstractC2934c<T extends AbstractC2934c<T>> implements InterfaceC2932a {
    /* renamed from: a */
    private boolean m13192a(List<T> list) {
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (mo13187a((AbstractC2934c<T>) it.next())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract boolean mo13187a(T t);

    /* renamed from: b */
    public abstract String mo13188b();

    /* renamed from: c */
    protected abstract int mo13189c();

    /* renamed from: d */
    public abstract Class<?> mo13190d();

    /* renamed from: e */
    public abstract Class<?> mo13191e();

    /* renamed from: f */
    public final boolean m13193f() {
        return Modifier.isStatic(mo13189c());
    }

    /* renamed from: g */
    public final boolean m13194g() {
        return Modifier.isPublic(mo13189c());
    }
}
