package com.android.volley.toolbox;

import com.android.volley.C0596i;
import com.android.volley.C0598k;
import com.android.volley.C0601n;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.android.volley.toolbox.n */
/* loaded from: classes.dex */
public class C0623n extends AbstractC0624o<JSONObject> {
    public C0623n(int i, String str, JSONObject jSONObject, C0601n.b<JSONObject> bVar, C0601n.a aVar) {
        super(i, str, jSONObject == null ? null : jSONObject.toString(), bVar, aVar);
    }

    private C0623n(String str, JSONObject jSONObject, C0601n.b<JSONObject> bVar, C0601n.a aVar) {
        this(jSONObject == null ? 0 : 1, str, jSONObject, bVar, aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.toolbox.AbstractC0624o, com.android.volley.AbstractC0599l
    /* renamed from: a */
    public final C0601n<JSONObject> mo1379a(C0596i c0596i) {
        C0598k c0598k;
        try {
            return C0601n.m1405a(new JSONObject(new String(c0596i.f1245b, C0617h.m1469a(c0596i.f1246c, "utf-8"))), C0617h.m1467a(c0596i));
        } catch (UnsupportedEncodingException e) {
            c0598k = new C0598k(e);
            return C0601n.m1404a(c0598k);
        } catch (JSONException e2) {
            c0598k = new C0598k(e2);
            return C0601n.m1404a(c0598k);
        }
    }
}
