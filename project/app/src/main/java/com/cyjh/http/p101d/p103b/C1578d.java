package com.cyjh.http.p101d.p103b;

import com.android.volley.AbstractC0599l;
import com.android.volley.C0588a;
import com.android.volley.C0591d;
import com.android.volley.C0596i;
import com.android.volley.C0598k;
import com.android.volley.C0601n;
import com.android.volley.toolbox.C0617h;
import com.cyjh.http.p101d.p102a.InterfaceC1573a;
import java.util.Map;

/* renamed from: com.cyjh.http.d.b.d */
/* loaded from: classes.dex */
public final class C1578d extends AbstractC0599l<Object> {

    /* renamed from: n */
    private static final int f5884n = 50000;

    /* renamed from: m */
    private InterfaceC1573a f5885m;

    /* renamed from: o */
    private C0601n.b<Object> f5886o;

    /* renamed from: p */
    private Map<String, String> f5887p;

    private C1578d(int i, String str, Map<String, String> map, C0601n.b<Object> bVar, C0601n.a aVar) {
        super(i, str, aVar);
        this.f5886o = bVar;
        this.f5887p = map;
        this.f1260j = new C0591d(f5884n, 0, 1.0f);
        this.f1257g = false;
    }

    public C1578d(String str, C0601n.b<Object> bVar, C0601n.a aVar, InterfaceC1573a interfaceC1573a) {
        this(0, str, (Map<String, String>) null, bVar, aVar);
        this.f5885m = interfaceC1573a;
    }

    public C1578d(String str, Map<String, String> map, C0601n.b<Object> bVar, C0601n.a aVar, InterfaceC1573a interfaceC1573a) {
        this(1, str, map, bVar, aVar);
        this.f5885m = interfaceC1573a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.AbstractC0599l
    /* renamed from: a */
    public final C0601n<Object> mo1379a(C0596i c0596i) {
        try {
            String str = new String(c0596i.f1245b, "UTF-8");
            if (this.f5885m != null) {
                return C0601n.m1405a(this.f5885m.mo6895a(str), C0617h.m1467a(c0596i));
            }
            return null;
        } catch (Exception e) {
            return C0601n.m1404a(new C0598k(e));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.AbstractC0599l
    /* renamed from: a */
    public final void mo1380a(Object obj) {
        if (this.f5886o != null) {
            this.f5886o.mo1408a(obj);
        }
    }

    @Override // com.android.volley.AbstractC0599l
    /* renamed from: e */
    protected final Map<String, String> mo1387e() throws C0588a {
        return this.f5887p;
    }

    @Override // com.android.volley.AbstractC0599l
    /* renamed from: h */
    public final AbstractC0599l.b mo1390h() {
        return AbstractC0599l.b.HIGH;
    }
}
