package com.cyjh.http.p101d.p103b;

import android.content.Context;
import com.android.volley.C0601n;
import com.cyjh.http.p101d.p102a.InterfaceC1573a;
import java.util.Map;

/* renamed from: com.cyjh.http.d.b.b */
/* loaded from: classes.dex */
public abstract class AbstractC1576b implements C0601n.a, C0601n.b<Object> {
    /* renamed from: a */
    private C1578d m7001a(String str, InterfaceC1573a interfaceC1573a) {
        return new C1578d(str, this, this, interfaceC1573a);
    }

    /* renamed from: a */
    private C1578d m7002a(String str, Map<String, String> map, InterfaceC1573a interfaceC1573a) {
        return new C1578d(str, map, this, this, interfaceC1573a);
    }

    /* renamed from: a */
    private void m7003a(Context context, Object obj, String str, InterfaceC1573a interfaceC1573a) {
        C1577c.m7005a().m7009a(context, obj, new C1578d(str, this, this, interfaceC1573a));
    }

    /* renamed from: a */
    private void m7004a(Context context, Object obj, String str, Map<String, String> map, InterfaceC1573a interfaceC1573a) {
        C1577c.m7005a().m7009a(context, obj, new C1578d(str, map, this, this, interfaceC1573a));
    }
}
