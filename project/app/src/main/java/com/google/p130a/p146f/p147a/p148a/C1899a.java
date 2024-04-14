package com.google.p130a.p146f.p147a.p148a;

import com.google.p130a.AbstractC2020q;
import com.google.p130a.C2016m;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p137c.C1862g;
import com.google.p130a.p158i.p160b.C2003c;
import com.google.p130a.p158i.p160b.C2006f;
import java.util.ArrayList;

/* renamed from: com.google.a.f.a.a.a */
/* loaded from: classes.dex */
public final class C1899a extends C2003c {

    /* renamed from: b */
    private static final C1862g[] f7434b = new C1862g[0];

    public C1899a(C1852b c1852b) {
        super(c1852b);
    }

    /* renamed from: a */
    public final C1862g[] m8707a() throws C2016m {
        C2006f[] m8709a = new C1900b(this.f7838a, (byte) 0).m8709a();
        if (m8709a.length == 0) {
            throw C2016m.getNotFoundInstance();
        }
        ArrayList arrayList = new ArrayList();
        for (C2006f c2006f : m8709a) {
            try {
                arrayList.add(m9174a(c2006f));
            } catch (AbstractC2020q unused) {
            }
        }
        return arrayList.isEmpty() ? f7434b : (C1862g[]) arrayList.toArray(new C1862g[arrayList.size()]);
    }
}
