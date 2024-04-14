package com.android.volley.toolbox;

import com.android.volley.AbstractC0599l;
import com.android.volley.C0596i;
import com.android.volley.C0601n;
import java.io.UnsupportedEncodingException;

/* renamed from: com.android.volley.toolbox.s */
/* loaded from: classes.dex */
public class C0628s extends AbstractC0599l<String> {

    /* renamed from: m */
    private final C0601n.b<String> f1398m;

    public C0628s(String str, C0601n.b<String> bVar, C0601n.a aVar) {
        super(0, str, aVar);
        this.f1398m = bVar;
    }

    private C0628s(String str, C0601n.b<String> bVar, C0601n.a aVar, byte b2) {
        this(str, bVar, aVar);
    }

    /* renamed from: c */
    private void m1517c(String str) {
        this.f1398m.mo1408a(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.AbstractC0599l
    /* renamed from: a */
    public final C0601n<String> mo1379a(C0596i c0596i) {
        String str;
        try {
            str = new String(c0596i.f1245b, C0617h.m1468a(c0596i.f1246c));
        } catch (UnsupportedEncodingException unused) {
            str = new String(c0596i.f1245b);
        }
        return C0601n.m1405a(str, C0617h.m1467a(c0596i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.AbstractC0599l
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo1380a(String str) {
        this.f1398m.mo1408a(str);
    }
}
