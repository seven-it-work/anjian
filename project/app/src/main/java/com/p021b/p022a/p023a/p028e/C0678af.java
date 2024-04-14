package com.p021b.p022a.p023a.p028e;

import android.support.v7.widget.ActivityChooserView;
import com.p021b.p022a.p023a.C0650c;
import com.p021b.p032b.C0783f;
import com.p021b.p032b.InterfaceC0784g;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.a.e.af */
/* loaded from: classes.dex */
public final class C0678af implements Closeable {

    /* renamed from: b */
    private static final Logger f1589b = Logger.getLogger(C0691g.class.getName());

    /* renamed from: c */
    private final InterfaceC0784g f1591c;

    /* renamed from: d */
    private final boolean f1592d;

    /* renamed from: g */
    private boolean f1595g;

    /* renamed from: e */
    private final C0783f f1593e = new C0783f();

    /* renamed from: a */
    final C0690f f1590a = new C0690f(this.f1593e);

    /* renamed from: f */
    private int f1594f = 16384;

    public C0678af(InterfaceC0784g interfaceC0784g, boolean z) {
        this.f1591c = interfaceC0784g;
        this.f1592d = z;
    }

    /* renamed from: a */
    private void m1694a(int i, int i2, byte b2, byte b3) {
        if (f1589b.isLoggable(Level.FINE)) {
            f1589b.fine(C0691g.m1749a(false, i, i2, b2, b3));
        }
        if (i2 > this.f1594f) {
            throw C0691g.m1748a("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(this.f1594f), Integer.valueOf(i2));
        }
        if ((Integer.MIN_VALUE & i) != 0) {
            throw C0691g.m1748a("reserved bit set: %s", Integer.valueOf(i));
        }
        InterfaceC0784g interfaceC0784g = this.f1591c;
        interfaceC0784g.mo2058h((i2 >>> 16) & 255);
        interfaceC0784g.mo2058h((i2 >>> 8) & 255);
        interfaceC0784g.mo2058h(i2 & 255);
        this.f1591c.mo2058h(b2 & 255);
        this.f1591c.mo2058h(b3 & 255);
        this.f1591c.mo2051f(i & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    /* renamed from: b */
    private void m1695b(int i, long j) {
        while (j > 0) {
            int min = (int) Math.min(this.f1594f, j);
            long j2 = min;
            long j3 = j - j2;
            m1694a(i, min, (byte) 9, j3 == 0 ? (byte) 4 : (byte) 0);
            this.f1591c.mo1663a_(this.f1593e, j2);
            j = j3;
        }
    }

    /* renamed from: a */
    public final synchronized void m1696a() {
        if (this.f1595g) {
            throw new IOException("closed");
        }
        if (this.f1592d) {
            if (f1589b.isLoggable(Level.FINE)) {
                f1589b.fine(C0650c.m1606a(">> CONNECTION %s", C0691g.f1647a.mo2084e()));
            }
            this.f1591c.mo2039b(C0691g.f1647a.mo2087h());
            this.f1591c.flush();
        }
    }

    /* renamed from: a */
    public final synchronized void m1697a(int i, long j) {
        if (this.f1595g) {
            throw new IOException("closed");
        }
        if (j != 0 && j <= 2147483647L) {
            m1694a(i, 4, (byte) 8, (byte) 0);
            this.f1591c.mo2051f((int) j);
            this.f1591c.flush();
        }
        throw C0691g.m1748a("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
    }

    /* renamed from: a */
    public final synchronized void m1698a(int i, EnumC0686b enumC0686b) {
        if (this.f1595g) {
            throw new IOException("closed");
        }
        if (enumC0686b.f1617g == -1) {
            throw new IllegalArgumentException();
        }
        m1694a(i, 4, (byte) 3, (byte) 0);
        this.f1591c.mo2051f(enumC0686b.f1617g);
        this.f1591c.flush();
    }

    /* renamed from: a */
    public final synchronized void m1699a(int i, EnumC0686b enumC0686b, byte[] bArr) {
        if (this.f1595g) {
            throw new IOException("closed");
        }
        if (enumC0686b.f1617g == -1) {
            throw C0691g.m1748a("errorCode.httpCode == -1", new Object[0]);
        }
        m1694a(0, bArr.length + 8, (byte) 7, (byte) 0);
        this.f1591c.mo2051f(i);
        this.f1591c.mo2051f(enumC0686b.f1617g);
        if (bArr.length > 0) {
            this.f1591c.mo2039b(bArr);
        }
        this.f1591c.flush();
    }

    /* renamed from: a */
    public final synchronized void m1700a(C0684al c0684al) {
        if (this.f1595g) {
            throw new IOException("closed");
        }
        this.f1594f = c0684al.m1725c(this.f1594f);
        if (c0684al.m1722b() != -1) {
            this.f1590a.m1746a(c0684al.m1722b());
        }
        m1694a(0, 0, (byte) 4, (byte) 1);
        this.f1591c.flush();
    }

    /* renamed from: a */
    public final synchronized void m1701a(boolean z, int i, int i2) {
        if (this.f1595g) {
            throw new IOException("closed");
        }
        m1694a(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
        this.f1591c.mo2051f(i);
        this.f1591c.mo2051f(i2);
        this.f1591c.flush();
    }

    /* renamed from: a */
    public final synchronized void m1702a(boolean z, int i, C0783f c0783f, int i2) {
        if (this.f1595g) {
            throw new IOException("closed");
        }
        m1694a(i, i2, (byte) 0, z ? (byte) 1 : (byte) 0);
        if (i2 > 0) {
            this.f1591c.mo1663a_(c0783f, i2);
        }
    }

    /* renamed from: a */
    public final synchronized void m1703a(boolean z, int i, List<C0687c> list) {
        if (this.f1595g) {
            throw new IOException("closed");
        }
        if (this.f1595g) {
            throw new IOException("closed");
        }
        this.f1590a.m1747a(list);
        long m2036b = this.f1593e.m2036b();
        int min = (int) Math.min(this.f1594f, m2036b);
        long j = min;
        byte b2 = m2036b == j ? (byte) 4 : (byte) 0;
        if (z) {
            b2 = (byte) (b2 | 1);
        }
        m1694a(i, min, (byte) 1, b2);
        this.f1591c.mo1663a_(this.f1593e, j);
        if (m2036b > j) {
            m1695b(i, m2036b - j);
        }
    }

    /* renamed from: b */
    public final synchronized void m1704b() {
        if (this.f1595g) {
            throw new IOException("closed");
        }
        this.f1591c.flush();
    }

    /* renamed from: b */
    public final synchronized void m1705b(C0684al c0684al) {
        if (this.f1595g) {
            throw new IOException("closed");
        }
        int i = 0;
        m1694a(0, c0684al.m1719a() * 6, (byte) 4, (byte) 0);
        while (i < 10) {
            if (c0684al.m1721a(i)) {
                this.f1591c.mo2056g(i == 4 ? 3 : i == 7 ? 4 : i);
                this.f1591c.mo2051f(c0684al.m1723b(i));
            }
            i++;
        }
        this.f1591c.flush();
    }

    /* renamed from: c */
    public final int m1706c() {
        return this.f1594f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f1595g = true;
        this.f1591c.close();
    }
}
