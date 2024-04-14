package com.cyjh.http.p101d.p103b;

import android.content.Context;
import android.util.Log;
import com.android.volley.C0606s;
import com.cyjh.http.p101d.p102a.InterfaceC1573a;
import com.cyjh.http.p101d.p102a.InterfaceC1574b;
import java.util.Map;

/* renamed from: com.cyjh.http.d.b.a */
/* loaded from: classes.dex */
public final class C1575a extends AbstractC1576b {

    /* renamed from: a */
    public String f5877a;

    /* renamed from: b */
    private InterfaceC1574b f5878b;

    /* renamed from: c */
    private InterfaceC1573a f5879c;

    private C1575a(InterfaceC1574b interfaceC1574b) {
        this.f5878b = interfaceC1574b;
    }

    public C1575a(InterfaceC1574b interfaceC1574b, InterfaceC1573a interfaceC1573a) {
        this.f5878b = interfaceC1574b;
        this.f5879c = interfaceC1573a;
    }

    /* renamed from: a */
    private void m6993a() {
        C1577c.m7005a().m7010a(this);
    }

    /* renamed from: a */
    private void m6994a(Context context, String str) {
        m6999a(context, this, str);
    }

    /* renamed from: a */
    private void m6995a(Context context, String str, Map<String, String> map) {
        m7000a(context, this, str, map);
    }

    /* renamed from: a */
    private void m6996a(Object obj, String str) {
        m6999a((Context) null, obj, str);
    }

    /* renamed from: a */
    private void m6997a(Object obj, String str, Map<String, String> map) {
        m7000a((Context) null, obj, str, map);
    }

    /* renamed from: b */
    private static void m6998b(Object obj) {
        C1577c.m7005a().m7010a(obj);
    }

    /* renamed from: a */
    public final void m6999a(Context context, Object obj, String str) {
        this.f5877a = str;
        C1577c.m7005a().m7009a(context, obj, new C1578d(str, this, this, this.f5879c));
    }

    /* renamed from: a */
    public final void m7000a(Context context, Object obj, String str, Map<String, String> map) {
        this.f5877a = str;
        Log.d("ActivithHttpHelper", "url:" + str);
        C1577c.m7005a().m7009a(context, obj, new C1578d(str, map, this, this, this.f5879c));
    }

    @Override // com.android.volley.C0601n.a
    /* renamed from: a */
    public final void mo1407a(C0606s c0606s) {
        if (this.f5878b != null) {
            this.f5878b.mo6896a(c0606s);
        }
    }

    @Override // com.android.volley.C0601n.b
    /* renamed from: a */
    public final void mo1408a(Object obj) {
        if (this.f5878b != null) {
            this.f5878b.mo6915a(obj);
        }
    }
}
