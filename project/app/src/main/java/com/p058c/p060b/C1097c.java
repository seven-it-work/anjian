package com.p058c.p060b;

import com.p058c.p062d.C1105a;
import java.io.Closeable;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HttpContext;

/* renamed from: com.c.b.c */
/* loaded from: classes.dex */
public class C1097c {

    /* renamed from: a */
    public static final int f3587a = 1;

    /* renamed from: b */
    public static final int f3588b = 2;

    /* renamed from: c */
    public static final int f3589c = 3;

    /* renamed from: d */
    public static final int f3590d = 4;

    /* renamed from: e */
    public static final int f3591e = 5;

    /* renamed from: f */
    public static final int f3592f = -101;

    /* renamed from: g */
    public static final int f3593g = -102;

    /* renamed from: h */
    public static final int f3594h = -103;

    /* renamed from: i */
    public int f3595i;

    /* renamed from: j */
    String f3596j;

    /* renamed from: k */
    String f3597k;

    /* renamed from: l */
    byte[] f3598l;

    /* renamed from: m */
    File f3599m;

    /* renamed from: n */
    Date f3600n;

    /* renamed from: o */
    boolean f3601o;

    /* renamed from: p */
    DefaultHttpClient f3602p;

    /* renamed from: q */
    long f3603q;

    /* renamed from: r */
    public int f3604r;

    /* renamed from: s */
    long f3605s;

    /* renamed from: t */
    boolean f3606t;

    /* renamed from: u */
    public boolean f3607u;

    /* renamed from: v */
    boolean f3608v;

    /* renamed from: w */
    public String f3609w;

    /* renamed from: x */
    HttpContext f3610x;

    /* renamed from: y */
    Header[] f3611y;

    /* renamed from: z */
    Closeable f3612z;

    public C1097c() {
        this.f3595i = 200;
        this.f3596j = "OK";
        this.f3600n = new Date();
        this.f3604r = 1;
        this.f3605s = System.currentTimeMillis();
    }

    private C1097c(int i, String str) {
        this.f3595i = 200;
        this.f3596j = "OK";
        this.f3600n = new Date();
        this.f3604r = 1;
        this.f3605s = System.currentTimeMillis();
        this.f3595i = i;
        this.f3596j = str;
    }

    /* renamed from: a */
    private C1097c m3859a(int i) {
        this.f3604r = i;
        return this;
    }

    /* renamed from: a */
    private C1097c m3860a(File file) {
        this.f3599m = file;
        return this;
    }

    /* renamed from: a */
    private C1097c m3861a(Date date) {
        this.f3600n = date;
        return this;
    }

    /* renamed from: a */
    private C1097c m3862a(DefaultHttpClient defaultHttpClient) {
        this.f3602p = defaultHttpClient;
        return this;
    }

    /* renamed from: a */
    private C1097c m3863a(HttpContext httpContext) {
        this.f3610x = httpContext;
        return this;
    }

    /* renamed from: a */
    private C1097c m3864a(boolean z) {
        this.f3601o = z;
        return this;
    }

    /* renamed from: a */
    private C1097c m3865a(byte[] bArr) {
        this.f3598l = bArr;
        return this;
    }

    /* renamed from: a */
    private C1097c m3866a(Header[] headerArr) {
        this.f3611y = headerArr;
        return this;
    }

    /* renamed from: a */
    private void m3867a(Closeable closeable) {
        this.f3612z = closeable;
    }

    /* renamed from: a */
    private boolean m3868a(long j) {
        return System.currentTimeMillis() - this.f3600n.getTime() > j && this.f3604r != 1;
    }

    /* renamed from: b */
    private C1097c m3869b(int i) {
        this.f3595i = i;
        return this;
    }

    /* renamed from: b */
    private C1097c m3870b(String str) {
        this.f3609w = str;
        return this;
    }

    /* renamed from: c */
    private C1097c m3871c() {
        this.f3608v = true;
        return this;
    }

    /* renamed from: c */
    private C1097c m3872c(String str) {
        this.f3596j = str;
        return this;
    }

    /* renamed from: d */
    private C1097c m3873d() {
        this.f3603q = System.currentTimeMillis() - this.f3605s;
        this.f3606t = false;
        m3894b();
        return this;
    }

    /* renamed from: d */
    private C1097c m3874d(String str) {
        this.f3597k = str;
        return this;
    }

    /* renamed from: e */
    private C1097c m3875e() {
        this.f3607u = true;
        return this;
    }

    /* renamed from: f */
    private boolean m3876f() {
        return this.f3606t;
    }

    /* renamed from: g */
    private boolean m3877g() {
        return this.f3608v;
    }

    /* renamed from: h */
    private boolean m3878h() {
        return this.f3607u;
    }

    /* renamed from: i */
    private int m3879i() {
        return this.f3595i;
    }

    /* renamed from: j */
    private String m3880j() {
        return this.f3596j;
    }

    /* renamed from: k */
    private String m3881k() {
        return this.f3597k;
    }

    /* renamed from: l */
    private byte[] m3882l() {
        return this.f3598l;
    }

    /* renamed from: m */
    private File m3883m() {
        return this.f3599m;
    }

    /* renamed from: n */
    private Date m3884n() {
        return this.f3600n;
    }

    /* renamed from: o */
    private boolean m3885o() {
        return this.f3601o;
    }

    /* renamed from: p */
    private DefaultHttpClient m3886p() {
        return this.f3602p;
    }

    /* renamed from: q */
    private long m3887q() {
        return this.f3603q;
    }

    /* renamed from: r */
    private int m3888r() {
        return this.f3604r;
    }

    /* renamed from: s */
    private String m3889s() {
        return this.f3609w;
    }

    /* renamed from: t */
    private List<Cookie> m3890t() {
        CookieStore cookieStore;
        if (this.f3610x != null && (cookieStore = (CookieStore) this.f3610x.getAttribute("http.cookie-store")) != null) {
            return cookieStore.getCookies();
        }
        return Collections.emptyList();
    }

    /* renamed from: u */
    private List<Header> m3891u() {
        return this.f3611y == null ? Collections.emptyList() : Arrays.asList(this.f3611y);
    }

    /* renamed from: a */
    public final C1097c m3892a() {
        this.f3603q = System.currentTimeMillis() - this.f3605s;
        this.f3606t = true;
        this.f3608v = false;
        return this;
    }

    /* renamed from: a */
    public final String m3893a(String str) {
        if (this.f3611y == null) {
            return null;
        }
        for (int i = 0; i < this.f3611y.length; i++) {
            if (str.equalsIgnoreCase(this.f3611y[i].getName())) {
                return this.f3611y[i].getValue();
            }
        }
        return null;
    }

    /* renamed from: b */
    public final void m3894b() {
        C1105a.m4035a(this.f3612z);
        this.f3612z = null;
    }
}
