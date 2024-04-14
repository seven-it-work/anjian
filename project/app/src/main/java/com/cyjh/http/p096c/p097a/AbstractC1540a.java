package com.cyjh.http.p096c.p097a;

import android.util.Log;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1175r;
import com.cyjh.http.bean.SignaClass;
import com.cyjh.http.bean.response.BaseInfo;
import com.cyjh.http.p101d.p102a.InterfaceC1573a;
import com.cyjh.http.p101d.p102a.InterfaceC1574b;
import com.cyjh.http.p101d.p103b.C1575a;
import com.cyjh.http.p104e.C1581c;

/* renamed from: com.cyjh.http.c.a.a */
/* loaded from: classes.dex */
public abstract class AbstractC1540a implements InterfaceC1573a, InterfaceC1574b {

    /* renamed from: a */
    protected C1575a f5820a = new C1575a(this, this);

    @Override // com.cyjh.http.p101d.p102a.InterfaceC1573a
    /* renamed from: a */
    public final Object mo6895a(String str) {
        try {
            C1151ad.m4325c("AbstractHttpPresenter", "getData = " + str);
            BaseInfo baseInfo = (BaseInfo) C1175r.m4522a(str, BaseInfo.class);
            String m7062a = C1581c.m7062a(this.f5820a.f5877a, baseInfo.Data, baseInfo.f5817R);
            Log.i("AbstractHttpPresenter", "decodeRes:" + m7062a);
            SignaClass signaClass = (SignaClass) C1175r.m4522a(m7062a, SignaClass.class);
            if (signaClass == null || !C1581c.m7063a(signaClass.SignContent, signaClass.Signature)) {
                return null;
            }
            return signaClass.SignContent;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003f  */
    @Override // com.cyjh.http.p101d.p102a.InterfaceC1574b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void mo6896a(com.android.volley.C0606s r5) {
        /*
            r4 = this;
            com.cyjh.http.b.a r0 = com.cyjh.http.p095b.C1487a.m6886a()
            android.content.Context r0 = r0.f5810a
            android.content.res.Resources r0 = r0.getResources()
            if (r0 == 0) goto L78
            boolean r1 = r5 instanceof com.android.volley.C0604q
            if (r1 == 0) goto L17
            int r1 = com.cyjh.http.C1480R.string.network_server_error
        L12:
            java.lang.String r1 = r0.getString(r1)
            goto L3b
        L17:
            boolean r1 = r5 instanceof com.android.volley.C0597j
            if (r1 == 0) goto L1e
            int r1 = com.cyjh.http.C1480R.string.network_no_connection_error
            goto L12
        L1e:
            boolean r1 = r5 instanceof com.android.volley.C0595h
            if (r1 == 0) goto L25
            int r1 = com.cyjh.http.C1480R.string.network_network_error
            goto L12
        L25:
            boolean r1 = r5 instanceof com.android.volley.C0598k
            if (r1 == 0) goto L2c
            int r1 = com.cyjh.http.C1480R.string.network_parse_error
            goto L12
        L2c:
            boolean r1 = r5 instanceof com.android.volley.C0588a
            if (r1 == 0) goto L33
            int r1 = com.cyjh.http.C1480R.string.network_auth_failure_error
            goto L12
        L33:
            boolean r1 = r5 instanceof com.android.volley.C0605r
            if (r1 == 0) goto L3a
            int r1 = com.cyjh.http.C1480R.string.network_timeout_error
            goto L12
        L3a:
            r1 = 0
        L3b:
            com.android.volley.i r2 = r5.networkResponse
            if (r2 == 0) goto L6d
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            com.android.volley.i r3 = r5.networkResponse
            int r3 = r3.f1244a
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 != 0) goto L6d
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            com.android.volley.i r5 = r5.networkResponse
            int r5 = r5.f1244a
            r2.append(r5)
            java.lang.String r5 = "\t\t"
            r2.append(r5)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
        L6d:
            if (r1 != 0) goto L75
            int r5 = com.cyjh.http.C1480R.string.network_again_error
            java.lang.String r1 = r0.getString(r5)
        L75:
            r4.mo6897b(r1)
        L78:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.http.p096c.p097a.AbstractC1540a.mo6896a(com.android.volley.s):void");
    }

    /* renamed from: b */
    public abstract void mo6897b(String str);
}
