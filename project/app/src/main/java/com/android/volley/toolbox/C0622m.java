package com.android.volley.toolbox;

import com.android.volley.C0596i;
import com.android.volley.C0598k;
import com.android.volley.C0601n;
import java.io.UnsupportedEncodingException;
import org.json.JSONArray;
import org.json.JSONException;

/* renamed from: com.android.volley.toolbox.m */
/* loaded from: classes.dex */
public final class C0622m extends AbstractC0624o<JSONArray> {
    private C0622m(int i, String str, JSONArray jSONArray, C0601n.b<JSONArray> bVar, C0601n.a aVar) {
        super(i, str, jSONArray == null ? null : jSONArray.toString(), bVar, aVar);
    }

    private C0622m(String str, C0601n.b<JSONArray> bVar, C0601n.a aVar) {
        super(0, str, null, bVar, aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.toolbox.AbstractC0624o, com.android.volley.AbstractC0599l
    /* renamed from: a */
    public final C0601n<JSONArray> mo1379a(C0596i c0596i) {
        C0598k c0598k;
        try {
            return C0601n.m1405a(new JSONArray(new String(c0596i.f1245b, C0617h.m1469a(c0596i.f1246c, "utf-8"))), C0617h.m1467a(c0596i));
        } catch (UnsupportedEncodingException e) {
            c0598k = new C0598k(e);
            return C0601n.m1404a(c0598k);
        } catch (JSONException e2) {
            c0598k = new C0598k(e2);
            return C0601n.m1404a(c0598k);
        }
    }
}
