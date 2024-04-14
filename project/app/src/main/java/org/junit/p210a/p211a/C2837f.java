package org.junit.p210a.p211a;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.junit.p210a.p211a.C2832a;
import org.junit.runner.p232a.AbstractC2969a;

/* renamed from: org.junit.a.a.f */
/* loaded from: classes2.dex */
public final class C2837f extends AbstractC2834c {

    /* renamed from: org.junit.a.a.f$a */
    /* loaded from: classes2.dex */
    private static class a extends C2832a.a {
        public a(List<Class<?>> list) {
            this(new HashSet(list));
        }

        private a(Set<Class<?>> set) {
            super(true, set, true, null);
        }

        @Override // org.junit.p210a.p211a.C2832a.a, org.junit.runner.p232a.AbstractC2969a
        /* renamed from: a */
        public final String mo12735a() {
            return "includes " + super.mo12735a();
        }
    }

    @Override // org.junit.p210a.p211a.AbstractC2834c
    /* renamed from: a */
    protected final AbstractC2969a mo12743a(List<Class<?>> list) {
        return new a(list);
    }
}
