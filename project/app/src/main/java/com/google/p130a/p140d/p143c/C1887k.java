package com.google.p130a.p140d.p143c;

import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.google.p130a.C1896f;

/* renamed from: com.google.a.d.c.k */
/* loaded from: classes.dex */
public class C1887k {

    /* renamed from: a */
    static final C1887k[] f7392a;

    /* renamed from: g */
    private static C1887k[] f7393g;

    /* renamed from: b */
    final int f7394b;

    /* renamed from: c */
    final int f7395c;

    /* renamed from: d */
    public final int f7396d;

    /* renamed from: e */
    public final int f7397e;

    /* renamed from: f */
    final int f7398f;

    /* renamed from: h */
    private final boolean f7399h;

    /* renamed from: i */
    private final int f7400i;

    /* renamed from: j */
    private final int f7401j;

    static {
        C1887k[] c1887kArr = {new C1887k(false, 3, 5, 8, 8, 1), new C1887k(false, 5, 7, 10, 10, 1), new C1887k(true, 5, 7, 16, 6, 1), new C1887k(false, 8, 10, 12, 12, 1), new C1887k(true, 10, 11, 14, 6, 2), new C1887k(false, 12, 12, 14, 14, 1), new C1887k(true, 16, 14, 24, 10, 1), new C1887k(false, 18, 14, 16, 16, 1), new C1887k(false, 22, 18, 18, 18, 1), new C1887k(true, 22, 18, 16, 10, 2), new C1887k(false, 30, 20, 20, 20, 1), new C1887k(true, 32, 24, 16, 14, 2), new C1887k(false, 36, 24, 22, 22, 1), new C1887k(false, 44, 28, 24, 24, 1), new C1887k(true, 49, 28, 22, 14, 2), new C1887k(false, 62, 36, 14, 14, 4), new C1887k(false, 86, 42, 16, 16, 4), new C1887k(false, 114, 48, 18, 18, 4), new C1887k(false, 144, 56, 20, 20, 4), new C1887k(false, 174, 68, 22, 22, 4), new C1887k(false, UiMessage.CommandToUi.Command_Type.SET_RADIO_GROUP_VALUE, 84, 24, 24, 4, 102, 42), new C1887k(false, 280, 112, 14, 14, 16, 140, 56), new C1887k(false, 368, 144, 16, 16, 16, 92, 36), new C1887k(false, 456, 192, 18, 18, 16, 114, 48), new C1887k(false, 576, 224, 20, 20, 16, 144, 56), new C1887k(false, 696, 272, 22, 22, 16, 174, 68), new C1887k(false, 816, 336, 24, 24, 16, 136, 56), new C1887k(false, 1050, UiMessage.CommandToUi.Command_Type.GET_VALUE_VALUE, 18, 18, 36, 175, 68), new C1887k(false, 1304, 496, 20, 20, 36, 163, 62), new C1880d()};
        f7392a = c1887kArr;
        f7393g = c1887kArr;
    }

    private C1887k(boolean z, int i, int i2, int i3, int i4, int i5) {
        this(z, i, i2, i3, i4, i5, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1887k(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.f7399h = z;
        this.f7394b = i;
        this.f7395c = i2;
        this.f7396d = i3;
        this.f7397e = i4;
        this.f7400i = i5;
        this.f7401j = i6;
        this.f7398f = i7;
    }

    /* renamed from: a */
    private static C1887k m8671a(int i, EnumC1888l enumC1888l) {
        return m8673a(i, enumC1888l, true);
    }

    /* renamed from: a */
    public static C1887k m8672a(int i, EnumC1888l enumC1888l, C1896f c1896f, C1896f c1896f2, boolean z) {
        for (C1887k c1887k : f7393g) {
            if (!(enumC1888l == EnumC1888l.FORCE_SQUARE && c1887k.f7399h) && ((enumC1888l != EnumC1888l.FORCE_RECTANGLE || c1887k.f7399h) && ((c1896f == null || (c1887k.m8685d() >= c1896f.f7429a && c1887k.m8686e() >= c1896f.f7430b)) && ((c1896f2 == null || (c1887k.m8685d() <= c1896f2.f7429a && c1887k.m8686e() <= c1896f2.f7430b)) && i <= c1887k.f7394b)))) {
                return c1887k;
            }
        }
        if (z) {
            throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: ".concat(String.valueOf(i)));
        }
        return null;
    }

    /* renamed from: a */
    private static C1887k m8673a(int i, EnumC1888l enumC1888l, boolean z) {
        return m8672a(i, enumC1888l, null, null, z);
    }

    /* renamed from: a */
    private static C1887k m8674a(int i, boolean z, boolean z2) {
        return m8673a(i, z ? EnumC1888l.FORCE_NONE : EnumC1888l.FORCE_SQUARE, z2);
    }

    /* renamed from: a */
    private static void m8675a(C1887k[] c1887kArr) {
        f7393g = c1887kArr;
    }

    /* renamed from: b */
    private static C1887k m8676b(int i) {
        return m8673a(i, EnumC1888l.FORCE_NONE, true);
    }

    /* renamed from: f */
    private int m8677f() {
        int i = this.f7400i;
        if (i == 4) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 36) {
            return 6;
        }
        switch (i) {
            case 1:
                return 1;
            case 2:
                return 2;
            default:
                throw new IllegalStateException("Cannot handle this number of data regions");
        }
    }

    /* renamed from: g */
    private int m8678g() {
        int i = this.f7400i;
        if (i == 4) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 36) {
            return 6;
        }
        switch (i) {
            case 1:
            case 2:
                return 1;
            default:
                throw new IllegalStateException("Cannot handle this number of data regions");
        }
    }

    /* renamed from: h */
    private int m8679h() {
        return this.f7394b + this.f7395c;
    }

    /* renamed from: i */
    private int m8680i() {
        return this.f7394b;
    }

    /* renamed from: j */
    private int m8681j() {
        return this.f7395c;
    }

    /* renamed from: k */
    private int m8682k() {
        return this.f7398f;
    }

    /* renamed from: a */
    public int mo8614a() {
        return this.f7394b / this.f7401j;
    }

    /* renamed from: a */
    public int mo8615a(int i) {
        return this.f7401j;
    }

    /* renamed from: b */
    public final int m8683b() {
        return m8677f() * this.f7396d;
    }

    /* renamed from: c */
    public final int m8684c() {
        return m8678g() * this.f7397e;
    }

    /* renamed from: d */
    public final int m8685d() {
        return m8683b() + (m8677f() << 1);
    }

    /* renamed from: e */
    public final int m8686e() {
        return m8684c() + (m8678g() << 1);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f7399h ? "Rectangular Symbol:" : "Square Symbol:");
        sb.append(" data region ");
        sb.append(this.f7396d);
        sb.append('x');
        sb.append(this.f7397e);
        sb.append(", symbol size ");
        sb.append(m8685d());
        sb.append('x');
        sb.append(m8686e());
        sb.append(", symbol data size ");
        sb.append(m8683b());
        sb.append('x');
        sb.append(m8684c());
        sb.append(", codewords ");
        sb.append(this.f7394b);
        sb.append('+');
        sb.append(this.f7395c);
        return sb.toString();
    }
}
