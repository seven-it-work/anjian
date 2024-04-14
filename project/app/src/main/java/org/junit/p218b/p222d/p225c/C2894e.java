package org.junit.p218b.p222d.p225c;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.junit.p228e.p229a.AbstractC2941j;
import org.junit.p228e.p229a.C2935d;
import org.junit.p228e.p229a.C2937f;

/* renamed from: org.junit.b.d.c.e */
/* loaded from: classes2.dex */
public final class C2894e extends AbstractC2941j {

    /* renamed from: a */
    private final AbstractC2941j f10774a;

    /* renamed from: b */
    private final Object f10775b;

    /* renamed from: c */
    private final List<C2935d> f10776c;

    public C2894e(AbstractC2941j abstractC2941j, List<C2935d> list, Object obj) {
        this.f10774a = abstractC2941j;
        this.f10776c = list;
        this.f10775b = obj;
    }

    @Override // org.junit.p228e.p229a.AbstractC2941j
    /* renamed from: a */
    public final void mo12846a() throws Throwable {
        ArrayList arrayList = new ArrayList();
        try {
            try {
                this.f10774a.mo12846a();
                Iterator<C2935d> it = this.f10776c.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().m13201a(this.f10775b, new Object[0]);
                    } catch (Throwable th) {
                        arrayList.add(th);
                    }
                }
            } catch (Throwable th2) {
                Iterator<C2935d> it2 = this.f10776c.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().m13201a(this.f10775b, new Object[0]);
                    } catch (Throwable th3) {
                        arrayList.add(th3);
                    }
                }
                throw th2;
            }
        } catch (Throwable th4) {
            arrayList.add(th4);
            Iterator<C2935d> it3 = this.f10776c.iterator();
            while (it3.hasNext()) {
                try {
                    it3.next().m13201a(this.f10775b, new Object[0]);
                } catch (Throwable th5) {
                    arrayList.add(th5);
                }
            }
        }
        C2937f.assertEmpty(arrayList);
    }
}
