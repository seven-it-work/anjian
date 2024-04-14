package org.junit.p210a.p215e.p216a;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import org.junit.p210a.p215e.C2856d;
import org.junit.p210a.p215e.InterfaceC2845a;
import org.junit.p210a.p215e.InterfaceC2852b;
import org.junit.p210a.p215e.InterfaceC2855c;
import org.junit.p228e.p229a.C2935d;
import org.junit.p228e.p229a.C2942k;

/* renamed from: org.junit.a.e.a.f */
/* loaded from: classes.dex */
public final class C2851f extends C2846a {
    private C2851f(C2942k c2942k) {
        super(c2942k);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.junit.p210a.p215e.p216a.C2846a
    /* renamed from: b */
    public final Collection<C2935d> mo12786b(C2856d c2856d) {
        Collection<C2935d> mo12786b = super.mo12786b(c2856d);
        String m12809a = ((InterfaceC2855c) c2856d.m12824c(InterfaceC2855c.class)).m12809a();
        ArrayList arrayList = new ArrayList();
        for (C2935d c2935d : mo12786b) {
            if (Arrays.asList(((InterfaceC2852b) c2935d.mo13183a(InterfaceC2852b.class)).m12806a()).contains(m12809a)) {
                arrayList.add(c2935d);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.junit.p210a.p215e.p216a.C2846a
    /* renamed from: c */
    public final Collection<Field> mo12787c(C2856d c2856d) {
        Collection<Field> mo12787c = super.mo12787c(c2856d);
        String m12809a = ((InterfaceC2855c) c2856d.m12824c(InterfaceC2855c.class)).m12809a();
        ArrayList arrayList = new ArrayList();
        for (Field field : mo12787c) {
            if (Arrays.asList(((InterfaceC2845a) field.getAnnotation(InterfaceC2845a.class)).m12773a()).contains(m12809a)) {
                arrayList.add(field);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.junit.p210a.p215e.p216a.C2846a
    /* renamed from: d */
    public final Collection<Field> mo12788d(C2856d c2856d) {
        Collection<Field> mo12788d = super.mo12788d(c2856d);
        String m12809a = ((InterfaceC2855c) c2856d.m12824c(InterfaceC2855c.class)).m12809a();
        ArrayList arrayList = new ArrayList();
        for (Field field : mo12788d) {
            if (Arrays.asList(((InterfaceC2852b) field.getAnnotation(InterfaceC2852b.class)).m12806a()).contains(m12809a)) {
                arrayList.add(field);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.junit.p210a.p215e.p216a.C2846a
    /* renamed from: e */
    public final Collection<C2935d> mo12789e(C2856d c2856d) {
        Collection<C2935d> mo12789e = super.mo12789e(c2856d);
        String m12809a = ((InterfaceC2855c) c2856d.m12824c(InterfaceC2855c.class)).m12809a();
        ArrayList arrayList = new ArrayList();
        for (C2935d c2935d : mo12789e) {
            if (Arrays.asList(((InterfaceC2845a) c2935d.mo13183a(InterfaceC2845a.class)).m12773a()).contains(m12809a)) {
                arrayList.add(c2935d);
            }
        }
        return arrayList;
    }
}
