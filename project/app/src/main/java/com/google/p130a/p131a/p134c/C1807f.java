package com.google.p130a.p131a.p134c;

import com.google.p130a.p137c.C1848a;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.a.a.c.f */
/* loaded from: classes.dex */
public final class C1807f {

    /* renamed from: a */
    static final C1807f f7121a = new C1807f(AbstractC1808g.f7126a, 0, 0, 0);

    /* renamed from: b */
    final int f7122b;

    /* renamed from: c */
    final int f7123c;

    /* renamed from: d */
    final int f7124d;

    /* renamed from: e */
    private final AbstractC1808g f7125e;

    private C1807f(AbstractC1808g abstractC1808g, int i, int i2, int i3) {
        this.f7125e = abstractC1808g;
        this.f7122b = i;
        this.f7123c = i2;
        this.f7124d = i3;
    }

    /* renamed from: a */
    private int m8237a() {
        return this.f7122b;
    }

    /* renamed from: b */
    private AbstractC1808g m8238b() {
        return this.f7125e;
    }

    /* renamed from: c */
    private int m8239c() {
        return this.f7123c;
    }

    /* renamed from: d */
    private int m8240d() {
        return this.f7124d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C1807f m8241a(int i) {
        AbstractC1808g abstractC1808g = this.f7125e;
        int i2 = this.f7122b;
        int i3 = this.f7124d;
        if (this.f7122b == 4 || this.f7122b == 2) {
            int i4 = C1805d.f7114g[i2][0];
            int i5 = 65535 & i4;
            int i6 = i4 >> 16;
            abstractC1808g = abstractC1808g.m8249a(i5, i6);
            i3 += i6;
            i2 = 0;
        }
        C1807f c1807f = new C1807f(abstractC1808g, i2, this.f7123c + 1, i3 + ((this.f7123c == 0 || this.f7123c == 31) ? 18 : this.f7123c == 62 ? 9 : 8));
        return c1807f.f7123c == 2078 ? c1807f.m8245b(i + 1) : c1807f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C1807f m8242a(int i, int i2) {
        int i3 = this.f7124d;
        AbstractC1808g abstractC1808g = this.f7125e;
        if (i != this.f7122b) {
            int i4 = C1805d.f7114g[this.f7122b][i];
            int i5 = 65535 & i4;
            int i6 = i4 >> 16;
            abstractC1808g = abstractC1808g.m8249a(i5, i6);
            i3 += i6;
        }
        int i7 = i == 2 ? 4 : 5;
        return new C1807f(abstractC1808g.m8249a(i2, i7), i, 0, i3 + i7);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C1848a m8243a(byte[] bArr) {
        LinkedList linkedList = new LinkedList();
        for (AbstractC1808g abstractC1808g = m8245b(bArr.length).f7125e; abstractC1808g != null; abstractC1808g = abstractC1808g.f7127b) {
            linkedList.addFirst(abstractC1808g);
        }
        C1848a c1848a = new C1848a();
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            ((AbstractC1808g) it.next()).mo8219a(c1848a, bArr);
        }
        return c1848a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m8244a(C1807f c1807f) {
        int i = this.f7124d + (C1805d.f7114g[this.f7122b][c1807f.f7122b] >> 16);
        if (c1807f.f7123c > 0 && (this.f7123c == 0 || this.f7123c > c1807f.f7123c)) {
            i += 10;
        }
        return i <= c1807f.f7124d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final C1807f m8245b(int i) {
        return this.f7123c == 0 ? this : new C1807f(new C1803b(this.f7125e, i - this.f7123c, this.f7123c), this.f7122b, 0, this.f7124d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final C1807f m8246b(int i, int i2) {
        AbstractC1808g abstractC1808g = this.f7125e;
        int i3 = this.f7122b == 2 ? 4 : 5;
        return new C1807f(abstractC1808g.m8249a(C1805d.f7115h[this.f7122b][i], i3).m8249a(i2, 5), this.f7122b, 0, this.f7124d + i3 + 5);
    }

    public final String toString() {
        return String.format("%s bits=%d bytes=%d", C1805d.f7108a[this.f7122b], Integer.valueOf(this.f7124d), Integer.valueOf(this.f7123c));
    }
}
