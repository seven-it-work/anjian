package com.google.p130a.p137c;

import java.util.List;

/* renamed from: com.google.a.c.e */
/* loaded from: classes.dex */
public final class C1860e {

    /* renamed from: a */
    public final byte[] f7282a;

    /* renamed from: b */
    public int f7283b;

    /* renamed from: c */
    public final String f7284c;

    /* renamed from: d */
    public final List<byte[]> f7285d;

    /* renamed from: e */
    public final String f7286e;

    /* renamed from: f */
    public Integer f7287f;

    /* renamed from: g */
    public Integer f7288g;

    /* renamed from: h */
    public Object f7289h;

    /* renamed from: i */
    public final int f7290i;

    /* renamed from: j */
    public final int f7291j;

    public C1860e(byte[] bArr, String str, List<byte[]> list, String str2) {
        this(bArr, str, list, str2, -1, -1);
    }

    public C1860e(byte[] bArr, String str, List<byte[]> list, String str2, int i, int i2) {
        this.f7282a = bArr;
        this.f7283b = bArr == null ? 0 : bArr.length * 8;
        this.f7284c = str;
        this.f7285d = list;
        this.f7286e = str2;
        this.f7290i = i2;
        this.f7291j = i;
    }

    /* renamed from: a */
    private void m8516a(int i) {
        this.f7283b = i;
    }

    /* renamed from: a */
    private void m8517a(Integer num) {
        this.f7287f = num;
    }

    /* renamed from: a */
    private void m8518a(Object obj) {
        this.f7289h = obj;
    }

    /* renamed from: b */
    private void m8519b(Integer num) {
        this.f7288g = num;
    }

    /* renamed from: b */
    private byte[] m8520b() {
        return this.f7282a;
    }

    /* renamed from: c */
    private int m8521c() {
        return this.f7283b;
    }

    /* renamed from: d */
    private String m8522d() {
        return this.f7284c;
    }

    /* renamed from: e */
    private List<byte[]> m8523e() {
        return this.f7285d;
    }

    /* renamed from: f */
    private String m8524f() {
        return this.f7286e;
    }

    /* renamed from: g */
    private Integer m8525g() {
        return this.f7287f;
    }

    /* renamed from: h */
    private Integer m8526h() {
        return this.f7288g;
    }

    /* renamed from: i */
    private Object m8527i() {
        return this.f7289h;
    }

    /* renamed from: j */
    private int m8528j() {
        return this.f7290i;
    }

    /* renamed from: k */
    private int m8529k() {
        return this.f7291j;
    }

    /* renamed from: a */
    public final boolean m8530a() {
        return this.f7290i >= 0 && this.f7291j >= 0;
    }
}
