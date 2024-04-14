package p017c;

import javax.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: c.u */
/* loaded from: classes.dex */
public final class C0553u {

    /* renamed from: a */
    static final int f1145a = 8192;

    /* renamed from: b */
    static final int f1146b = 1024;

    /* renamed from: c */
    final byte[] f1147c;

    /* renamed from: d */
    int f1148d;

    /* renamed from: e */
    int f1149e;

    /* renamed from: f */
    boolean f1150f;

    /* renamed from: g */
    boolean f1151g;

    /* renamed from: h */
    C0553u f1152h;

    /* renamed from: i */
    C0553u f1153i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0553u() {
        this.f1147c = new byte[8192];
        this.f1151g = true;
        this.f1150f = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0553u(C0553u c0553u) {
        this(c0553u.f1147c, c0553u.f1148d, c0553u.f1149e);
        c0553u.f1150f = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0553u(byte[] bArr, int i, int i2) {
        this.f1147c = bArr;
        this.f1148d = i;
        this.f1149e = i2;
        this.f1151g = false;
        this.f1150f = true;
    }

    /* renamed from: a */
    private C0553u m1236a(int i) {
        C0553u m1241a;
        if (i <= 0 || i > this.f1149e - this.f1148d) {
            throw new IllegalArgumentException();
        }
        if (i >= 1024) {
            m1241a = new C0553u(this);
        } else {
            m1241a = C0554v.m1241a();
            System.arraycopy(this.f1147c, this.f1148d, m1241a.f1147c, 0, i);
        }
        m1241a.f1149e = m1241a.f1148d + i;
        this.f1148d += i;
        this.f1153i.m1239a(m1241a);
        return m1241a;
    }

    /* renamed from: b */
    private void m1237b() {
        if (this.f1153i == this) {
            throw new IllegalStateException();
        }
        if (this.f1153i.f1151g) {
            int i = this.f1149e - this.f1148d;
            if (i > (8192 - this.f1153i.f1149e) + (this.f1153i.f1150f ? 0 : this.f1153i.f1148d)) {
                return;
            }
            m1240a(this.f1153i, i);
            m1238a();
            C0554v.m1242a(this);
        }
    }

    @Nullable
    /* renamed from: a */
    public final C0553u m1238a() {
        C0553u c0553u = this.f1152h != this ? this.f1152h : null;
        this.f1153i.f1152h = this.f1152h;
        this.f1152h.f1153i = this.f1153i;
        this.f1152h = null;
        this.f1153i = null;
        return c0553u;
    }

    /* renamed from: a */
    public final C0553u m1239a(C0553u c0553u) {
        c0553u.f1153i = this;
        c0553u.f1152h = this.f1152h;
        this.f1152h.f1153i = c0553u;
        this.f1152h = c0553u;
        return c0553u;
    }

    /* renamed from: a */
    public final void m1240a(C0553u c0553u, int i) {
        if (!c0553u.f1151g) {
            throw new IllegalArgumentException();
        }
        if (c0553u.f1149e + i > 8192) {
            if (c0553u.f1150f) {
                throw new IllegalArgumentException();
            }
            if ((c0553u.f1149e + i) - c0553u.f1148d > 8192) {
                throw new IllegalArgumentException();
            }
            System.arraycopy(c0553u.f1147c, c0553u.f1148d, c0553u.f1147c, 0, c0553u.f1149e - c0553u.f1148d);
            c0553u.f1149e -= c0553u.f1148d;
            c0553u.f1148d = 0;
        }
        System.arraycopy(this.f1147c, this.f1148d, c0553u.f1147c, c0553u.f1149e, i);
        c0553u.f1149e += i;
        this.f1148d += i;
    }
}
