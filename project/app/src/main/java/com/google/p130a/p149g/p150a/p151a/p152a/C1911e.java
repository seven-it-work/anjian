package com.google.p130a.p149g.p150a.p151a.p152a;

import com.google.p130a.C2016m;
import com.google.p130a.p137c.C1848a;

/* renamed from: com.google.a.g.a.a.a.e */
/* loaded from: classes.dex */
public final class C1911e extends AbstractC1915i {

    /* renamed from: d */
    private static final int f7468d = 8;

    /* renamed from: e */
    private static final int f7469e = 20;

    /* renamed from: f */
    private static final int f7470f = 16;

    /* renamed from: g */
    private final String f7471g;

    /* renamed from: h */
    private final String f7472h;

    public C1911e(C1848a c1848a, String str, String str2) {
        super(c1848a);
        this.f7471g = str2;
        this.f7472h = str;
    }

    /* renamed from: a */
    private void m8734a(StringBuilder sb) {
        int m8782a = this.f7478c.m8782a(68, 16);
        if (m8782a == 38400) {
            return;
        }
        sb.append('(');
        sb.append(this.f7471g);
        sb.append(')');
        int i = m8782a % 32;
        int i2 = m8782a / 32;
        int i3 = (i2 % 12) + 1;
        int i4 = i2 / 12;
        if (i4 / 10 == 0) {
            sb.append('0');
        }
        sb.append(i4);
        if (i3 / 10 == 0) {
            sb.append('0');
        }
        sb.append(i3);
        if (i / 10 == 0) {
            sb.append('0');
        }
        sb.append(i);
    }

    @Override // com.google.p130a.p149g.p150a.p151a.p152a.AbstractC1915i
    /* renamed from: a */
    protected final int mo8731a(int i) {
        return i % 100000;
    }

    @Override // com.google.p130a.p149g.p150a.p151a.p152a.AbstractC1916j
    /* renamed from: a */
    public final String mo8733a() throws C2016m {
        if (this.f7477b.f7243b != 84) {
            throw C2016m.getNotFoundInstance();
        }
        StringBuilder sb = new StringBuilder();
        m8737b(sb, 8);
        m8738b(sb, 48, 20);
        int m8782a = this.f7478c.m8782a(68, 16);
        if (m8782a != 38400) {
            sb.append('(');
            sb.append(this.f7471g);
            sb.append(')');
            int i = m8782a % 32;
            int i2 = m8782a / 32;
            int i3 = (i2 % 12) + 1;
            int i4 = i2 / 12;
            if (i4 / 10 == 0) {
                sb.append('0');
            }
            sb.append(i4);
            if (i3 / 10 == 0) {
                sb.append('0');
            }
            sb.append(i3);
            if (i / 10 == 0) {
                sb.append('0');
            }
            sb.append(i);
        }
        return sb.toString();
    }

    @Override // com.google.p130a.p149g.p150a.p151a.p152a.AbstractC1915i
    /* renamed from: a */
    protected final void mo8732a(StringBuilder sb, int i) {
        sb.append('(');
        sb.append(this.f7472h);
        sb.append(i / 100000);
        sb.append(')');
    }
}
