package org.junit.p228e;

import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.junit.p228e.p229a.C2935d;
import org.junit.p228e.p229a.C2936e;
import org.junit.p228e.p229a.C2942k;
import org.junit.p228e.p230b.C2946b;
import org.junit.p228e.p230b.C2948d;
import org.junit.p228e.p230b.InterfaceC2947c;
import org.junit.runner.AbstractC2988k;

/* renamed from: org.junit.e.e */
/* loaded from: classes2.dex */
public final class C2951e extends C2953g {

    /* renamed from: a */
    private static final InterfaceC2947c f10864a = new C2946b();

    /* renamed from: b */
    private static final List<AbstractC2988k> f10865b = Collections.emptyList();

    /* renamed from: e */
    private final List<AbstractC2988k> f10866e;

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: org.junit.e.e$a */
    /* loaded from: classes.dex */
    public @interface a {
        /* renamed from: a */
        int m13283a() default 0;
    }

    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: org.junit.e.e$b */
    /* loaded from: classes.dex */
    public @interface b {
        /* renamed from: a */
        String m13284a() default "{index}";
    }

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: org.junit.e.e$c */
    /* loaded from: classes.dex */
    public @interface c {
        /* renamed from: a */
        Class<? extends InterfaceC2947c> m13285a() default C2946b.class;
    }

    private C2951e(Class<?> cls) throws Throwable {
        super(cls, f10865b);
        Iterable<Object> asList;
        c cVar = (c) cls.getAnnotation(c.class);
        InterfaceC2947c newInstance = cVar == null ? f10864a : cVar.m13285a().newInstance();
        b bVar = (b) m13281g().mo13183a(b.class);
        Object m13201a = m13281g().m13201a((Object) null, new Object[0]);
        if (m13201a instanceof Iterable) {
            asList = (Iterable) m13201a;
        } else {
            if (!(m13201a instanceof Object[])) {
                throw m13282h();
            }
            asList = Arrays.asList((Object[]) m13201a);
        }
        this.f10866e = Collections.unmodifiableList(m13276a(asList, bVar.m13284a(), newInstance));
    }

    /* renamed from: a */
    private List<C2948d> m13275a(Iterable<Object> iterable, String str) throws Exception {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : iterable) {
            int i2 = i + 1;
            Object[] objArr = obj instanceof Object[] ? (Object[]) obj : new Object[]{obj};
            arrayList.add(new C2948d("[" + MessageFormat.format(str.replaceAll("\\{index\\}", Integer.toString(i)), objArr) + "]", this.f10869c, Arrays.asList(objArr)));
            i = i2;
        }
        return arrayList;
    }

    /* renamed from: a */
    private List<AbstractC2988k> m13276a(Iterable<Object> iterable, String str, InterfaceC2947c interfaceC2947c) throws C2936e, Exception {
        try {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            for (Object obj : iterable) {
                int i2 = i + 1;
                Object[] objArr = obj instanceof Object[] ? (Object[]) obj : new Object[]{obj};
                arrayList.add(new C2948d("[" + MessageFormat.format(str.replaceAll("\\{index\\}", Integer.toString(i)), objArr) + "]", this.f10869c, Arrays.asList(objArr)));
                i = i2;
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(interfaceC2947c.mo13270a((C2948d) it.next()));
            }
            return arrayList2;
        } catch (ClassCastException unused) {
            throw m13282h();
        }
    }

    /* renamed from: a */
    private static InterfaceC2947c m13277a(Class<?> cls) throws InstantiationException, IllegalAccessException {
        c cVar = (c) cls.getAnnotation(c.class);
        return cVar == null ? f10864a : cVar.m13285a().newInstance();
    }

    /* renamed from: a */
    private C2948d m13278a(String str, int i, Object obj) {
        Object[] objArr = obj instanceof Object[] ? (Object[]) obj : new Object[]{obj};
        return new C2948d("[" + MessageFormat.format(str.replaceAll("\\{index\\}", Integer.toString(i)), objArr) + "]", this.f10869c, Arrays.asList(objArr));
    }

    /* renamed from: a */
    private static C2948d m13279a(C2942k c2942k, String str, int i, Object[] objArr) {
        return new C2948d("[" + MessageFormat.format(str.replaceAll("\\{index\\}", Integer.toString(i)), objArr) + "]", c2942k, Arrays.asList(objArr));
    }

    /* renamed from: c */
    private Iterable<Object> m13280c() throws Throwable {
        Object m13201a = m13281g().m13201a((Object) null, new Object[0]);
        if (m13201a instanceof Iterable) {
            return (Iterable) m13201a;
        }
        if (m13201a instanceof Object[]) {
            return Arrays.asList((Object[]) m13201a);
        }
        throw m13282h();
    }

    /* renamed from: g */
    private C2935d m13281g() throws Exception {
        for (C2935d c2935d : this.f10869c.m13229b(b.class)) {
            if (c2935d.m13193f() && c2935d.m13194g()) {
                return c2935d;
            }
        }
        throw new Exception("No public static parameters method on class " + this.f10869c.m13228b());
    }

    /* renamed from: h */
    private Exception m13282h() throws Exception {
        return new Exception(MessageFormat.format("{0}.{1}() must return an Iterable of arrays.", this.f10869c.m13228b(), m13281g().f10846a.getName()));
    }

    @Override // org.junit.p228e.C2953g, org.junit.p228e.AbstractC2952f
    /* renamed from: d */
    protected final List<AbstractC2988k> mo13258d() {
        return this.f10866e;
    }
}
