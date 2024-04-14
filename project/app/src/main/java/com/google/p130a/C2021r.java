package com.google.p130a;

import java.util.EnumMap;
import java.util.Map;

/* renamed from: com.google.a.r */
/* loaded from: classes.dex */
public final class C2021r {

    /* renamed from: a */
    public final String f7894a;

    /* renamed from: b */
    public final byte[] f7895b;

    /* renamed from: c */
    public final int f7896c;

    /* renamed from: d */
    public C2023t[] f7897d;

    /* renamed from: e */
    public final EnumC1796a f7898e;

    /* renamed from: f */
    public Map<EnumC2022s, Object> f7899f;

    /* renamed from: g */
    public final long f7900g;

    public C2021r(String str, byte[] bArr, int i, C2023t[] c2023tArr, EnumC1796a enumC1796a, long j) {
        this.f7894a = str;
        this.f7895b = bArr;
        this.f7896c = i;
        this.f7897d = c2023tArr;
        this.f7898e = enumC1796a;
        this.f7899f = null;
        this.f7900g = j;
    }

    public C2021r(String str, byte[] bArr, C2023t[] c2023tArr, EnumC1796a enumC1796a) {
        this(str, bArr, c2023tArr, enumC1796a, System.currentTimeMillis());
    }

    private C2021r(String str, byte[] bArr, C2023t[] c2023tArr, EnumC1796a enumC1796a, long j) {
        this(str, bArr, bArr == null ? 0 : bArr.length * 8, c2023tArr, enumC1796a, j);
    }

    /* renamed from: a */
    private String m9281a() {
        return this.f7894a;
    }

    /* renamed from: a */
    private void m9282a(C2023t[] c2023tArr) {
        C2023t[] c2023tArr2 = this.f7897d;
        if (c2023tArr2 == null) {
            this.f7897d = c2023tArr;
            return;
        }
        if (c2023tArr == null || c2023tArr.length <= 0) {
            return;
        }
        C2023t[] c2023tArr3 = new C2023t[c2023tArr2.length + c2023tArr.length];
        System.arraycopy(c2023tArr2, 0, c2023tArr3, 0, c2023tArr2.length);
        System.arraycopy(c2023tArr, 0, c2023tArr3, c2023tArr2.length, c2023tArr.length);
        this.f7897d = c2023tArr3;
    }

    /* renamed from: b */
    private byte[] m9283b() {
        return this.f7895b;
    }

    /* renamed from: c */
    private int m9284c() {
        return this.f7896c;
    }

    /* renamed from: d */
    private C2023t[] m9285d() {
        return this.f7897d;
    }

    /* renamed from: e */
    private EnumC1796a m9286e() {
        return this.f7898e;
    }

    /* renamed from: f */
    private Map<EnumC2022s, Object> m9287f() {
        return this.f7899f;
    }

    /* renamed from: g */
    private long m9288g() {
        return this.f7900g;
    }

    /* renamed from: a */
    public final void m9289a(EnumC2022s enumC2022s, Object obj) {
        if (this.f7899f == null) {
            this.f7899f = new EnumMap(EnumC2022s.class);
        }
        this.f7899f.put(enumC2022s, obj);
    }

    /* renamed from: a */
    public final void m9290a(Map<EnumC2022s, Object> map) {
        if (map != null) {
            if (this.f7899f == null) {
                this.f7899f = map;
            } else {
                this.f7899f.putAll(map);
            }
        }
    }

    public final String toString() {
        return this.f7894a;
    }
}
