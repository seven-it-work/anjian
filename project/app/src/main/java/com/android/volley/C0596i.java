package com.android.volley;

import java.util.Collections;
import java.util.Map;

/* renamed from: com.android.volley.i */
/* loaded from: classes.dex */
public final class C0596i {

    /* renamed from: a */
    public final int f1244a;

    /* renamed from: b */
    public final byte[] f1245b;

    /* renamed from: c */
    public final Map<String, String> f1246c;

    /* renamed from: d */
    public final boolean f1247d;

    /* renamed from: e */
    public final long f1248e;

    private C0596i(int i, byte[] bArr, Map<String, String> map, boolean z) {
        this(i, bArr, map, z, 0L);
    }

    public C0596i(int i, byte[] bArr, Map<String, String> map, boolean z, long j) {
        this.f1244a = i;
        this.f1245b = bArr;
        this.f1246c = map;
        this.f1247d = z;
        this.f1248e = j;
    }

    private C0596i(byte[] bArr) {
        this(200, bArr, Collections.emptyMap(), false, 0L);
    }

    public C0596i(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, false, 0L);
    }
}
