package com.goldcoast.sdk.p127a;

import android.support.v4.app.NotificationCompat;
import com.umeng.commonsdk.proguard.C2518v;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.goldcoast.sdk.a.g */
/* loaded from: classes.dex */
public final class C1774g extends AbstractC1770c<C1774g> {

    /* renamed from: a */
    private String f6986a;

    /* renamed from: b */
    private int f6987b;

    /* renamed from: c */
    private String f6988c;

    /* renamed from: d */
    private long f6989d;

    /* renamed from: e */
    private String f6990e;

    /* renamed from: f */
    private String f6991f;

    /* renamed from: g */
    private String f6992g;

    /* renamed from: h */
    private String f6993h;

    /* renamed from: i */
    private String f6994i;

    /* renamed from: j */
    private String f6995j;

    /* renamed from: k */
    private int f6996k;

    /* renamed from: l */
    private C1773f f6997l;

    /* renamed from: m */
    private String f6998m;

    /* renamed from: n */
    private String f6999n;

    /* renamed from: o */
    private String f7000o;

    /* renamed from: a */
    public final JSONObject m8078a() {
        JSONObject m8077b = this.f6997l != null ? this.f6997l.m8077b() : new JSONObject();
        try {
            m8077b.put("rf_md5", this.f6986a);
            m8077b.put(NotificationCompat.CATEGORY_STATUS, this.f6987b);
            m8077b.put(NotificationCompat.CATEGORY_MESSAGE, this.f6988c);
            m8077b.put("runTime", this.f6989d);
            m8077b.put("androidId", this.f6990e);
            m8077b.put("netOperator", this.f6991f);
            m8077b.put("simOperatorName", this.f6992g);
            m8077b.put("displayLanguage", this.f6993h);
            m8077b.put("displayCountry", this.f6994i);
            m8077b.put("token", this.f6995j);
            m8077b.put("category", this.f6996k);
            m8077b.put("sdkV", this.f6998m);
            m8077b.put(C2518v.f9564j, this.f6999n);
            m8077b.put("signature", this.f7000o);
        } catch (JSONException unused) {
        }
        return m8077b;
    }

    /* renamed from: a */
    public final void m8079a(int i) {
        this.f6987b = i;
    }

    /* renamed from: a */
    public final void m8080a(long j) {
        this.f6989d = j;
    }

    /* renamed from: a */
    public final void m8081a(C1773f c1773f) {
        this.f6997l = c1773f;
    }

    /* renamed from: a */
    public final void m8082a(String str) {
        this.f6986a = str;
    }

    /* renamed from: b */
    public final void m8083b(int i) {
        this.f6996k = i;
    }

    /* renamed from: b */
    public final void m8084b(String str) {
        this.f6988c = str;
    }

    /* renamed from: c */
    public final void m8085c(String str) {
        this.f6990e = str;
    }

    /* renamed from: d */
    public final void m8086d(String str) {
        this.f6991f = str;
    }

    /* renamed from: e */
    public final void m8087e(String str) {
        this.f6992g = str;
    }

    /* renamed from: f */
    public final void m8088f(String str) {
        this.f6993h = str;
    }

    /* renamed from: g */
    public final void m8089g(String str) {
        this.f6994i = str;
    }

    /* renamed from: h */
    public final void m8090h(String str) {
        this.f6995j = str;
    }

    /* renamed from: i */
    public final void m8091i(String str) {
        this.f6998m = str;
    }

    /* renamed from: j */
    public final void m8092j(String str) {
        this.f6999n = str;
    }

    /* renamed from: k */
    public final void m8093k(String str) {
        this.f7000o = str;
    }
}
