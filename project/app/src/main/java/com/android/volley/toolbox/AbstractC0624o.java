package com.android.volley.toolbox;

import com.android.volley.AbstractC0599l;
import com.android.volley.C0596i;
import com.android.volley.C0601n;
import com.android.volley.C0607t;
import java.io.UnsupportedEncodingException;

/* renamed from: com.android.volley.toolbox.o */
/* loaded from: classes.dex */
public abstract class AbstractC0624o<T> extends AbstractC0599l<T> {

    /* renamed from: m */
    protected static final String f1388m = "utf-8";

    /* renamed from: n */
    private static final String f1389n = String.format("application/json; charset=%s", "utf-8");

    /* renamed from: o */
    private final C0601n.b<T> f1390o;

    /* renamed from: p */
    private final String f1391p;

    public AbstractC0624o(int i, String str, String str2, C0601n.b<T> bVar, C0601n.a aVar) {
        super(i, str, aVar);
        this.f1390o = bVar;
        this.f1391p = str2;
    }

    private AbstractC0624o(String str, String str2, C0601n.b<T> bVar, C0601n.a aVar) {
        this(-1, str, str2, bVar, aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.AbstractC0599l
    /* renamed from: a */
    public abstract C0601n<T> mo1379a(C0596i c0596i);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.AbstractC0599l
    /* renamed from: a */
    public final void mo1380a(T t) {
        this.f1390o.mo1408a(t);
    }

    @Override // com.android.volley.AbstractC0599l
    /* renamed from: c */
    public final String mo1385c() {
        return f1389n;
    }

    @Override // com.android.volley.AbstractC0599l
    /* renamed from: d */
    public final byte[] mo1386d() {
        return mo1389g();
    }

    @Override // com.android.volley.AbstractC0599l
    /* renamed from: f */
    public final String mo1388f() {
        return f1389n;
    }

    @Override // com.android.volley.AbstractC0599l
    /* renamed from: g */
    public final byte[] mo1389g() {
        try {
            if (this.f1391p == null) {
                return null;
            }
            return this.f1391p.getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
            C0607t.m1415d("Unsupported Encoding while trying to get the bytes of %s using %s", this.f1391p, "utf-8");
            return null;
        }
    }
}
