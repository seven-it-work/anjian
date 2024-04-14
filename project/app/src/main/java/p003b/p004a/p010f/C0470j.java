package p003b.p004a.p010f;

import android.support.v7.widget.ActivityChooserView;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import p003b.p004a.C0439c;
import p003b.p004a.p010f.C0464d;
import p017c.C0535c;
import p017c.InterfaceC0536d;

/* renamed from: b.a.f.j */
/* loaded from: classes.dex */
public final class C0470j implements Closeable {

    /* renamed from: c */
    private static final Logger f463c = Logger.getLogger(C0465e.class.getName());

    /* renamed from: d */
    private final InterfaceC0536d f466d;

    /* renamed from: e */
    private final boolean f467e;

    /* renamed from: g */
    private boolean f469g;

    /* renamed from: f */
    private final C0535c f468f = new C0535c();

    /* renamed from: b */
    final C0464d.b f465b = new C0464d.b(this.f468f);

    /* renamed from: a */
    int f464a = 16384;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0470j(InterfaceC0536d interfaceC0536d, boolean z) {
        this.f466d = interfaceC0536d;
        this.f467e = z;
    }

    /* renamed from: a */
    private void m408a(int i, byte b2, C0535c c0535c, int i2) throws IOException {
        m409a(i, i2, (byte) 0, b2);
        if (i2 > 0) {
            this.f466d.mo114a(c0535c, i2);
        }
    }

    /* renamed from: a */
    private void m409a(int i, int i2, byte b2, byte b3) throws IOException {
        if (f463c.isLoggable(Level.FINE)) {
            f463c.fine(C0465e.m311a(false, i, i2, b2, b3));
        }
        if (i2 > this.f464a) {
            throw C0465e.m309a("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(this.f464a), Integer.valueOf(i2));
        }
        if ((Integer.MIN_VALUE & i) != 0) {
            throw C0465e.m309a("reserved bit set: %s", Integer.valueOf(i));
        }
        InterfaceC0536d interfaceC0536d = this.f466d;
        interfaceC0536d.mo1157l((i2 >>> 16) & 255);
        interfaceC0536d.mo1157l((i2 >>> 8) & 255);
        interfaceC0536d.mo1157l(i2 & 255);
        this.f466d.mo1157l(b2 & 255);
        this.f466d.mo1157l(b3 & 255);
        this.f466d.mo1148i(i & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    /* renamed from: a */
    private synchronized void m410a(int i, List<C0463c> list) throws IOException {
        if (this.f469g) {
            throw new IOException("closed");
        }
        m414c(false, i, list);
    }

    /* renamed from: a */
    private static void m411a(InterfaceC0536d interfaceC0536d, int i) throws IOException {
        interfaceC0536d.mo1157l((i >>> 16) & 255);
        interfaceC0536d.mo1157l((i >>> 8) & 255);
        interfaceC0536d.mo1157l(i & 255);
    }

    /* renamed from: b */
    private void m412b(int i, long j) throws IOException {
        while (j > 0) {
            int min = (int) Math.min(this.f464a, j);
            long j2 = min;
            long j3 = j - j2;
            m409a(i, min, (byte) 9, j3 == 0 ? (byte) 4 : (byte) 0);
            this.f466d.mo114a(this.f468f, j2);
            j = j3;
        }
    }

    /* renamed from: c */
    private int m413c() {
        return this.f464a;
    }

    /* renamed from: c */
    private void m414c(boolean z, int i, List<C0463c> list) throws IOException {
        if (this.f469g) {
            throw new IOException("closed");
        }
        this.f465b.m308a(list);
        long j = this.f468f.f1086c;
        int min = (int) Math.min(this.f464a, j);
        long j2 = min;
        byte b2 = j == j2 ? (byte) 4 : (byte) 0;
        if (z) {
            b2 = (byte) (b2 | 1);
        }
        m409a(i, min, (byte) 1, b2);
        this.f466d.mo114a(this.f468f, j2);
        if (j > j2) {
            m412b(i, j - j2);
        }
    }

    /* renamed from: a */
    public final synchronized void m415a() throws IOException {
        if (this.f469g) {
            throw new IOException("closed");
        }
        if (this.f467e) {
            if (f463c.isLoggable(Level.FINE)) {
                f463c.fine(C0439c.m138a(">> CONNECTION %s", C0465e.f323a.hex()));
            }
            this.f466d.mo1129d(C0465e.f323a.toByteArray());
            this.f466d.flush();
        }
    }

    /* renamed from: a */
    public final synchronized void m416a(int i, int i2, List<C0463c> list) throws IOException {
        if (this.f469g) {
            throw new IOException("closed");
        }
        this.f465b.m308a(list);
        long j = this.f468f.f1086c;
        int min = (int) Math.min(this.f464a - 4, j);
        long j2 = min;
        m409a(i, min + 4, (byte) 5, j == j2 ? (byte) 4 : (byte) 0);
        this.f466d.mo1148i(i2 & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        this.f466d.mo114a(this.f468f, j2);
        if (j > j2) {
            m412b(i, j - j2);
        }
    }

    /* renamed from: a */
    public final synchronized void m417a(int i, long j) throws IOException {
        if (this.f469g) {
            throw new IOException("closed");
        }
        if (j != 0 && j <= 2147483647L) {
            m409a(i, 4, (byte) 8, (byte) 0);
            this.f466d.mo1148i((int) j);
            this.f466d.flush();
        }
        throw C0465e.m309a("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
    }

    /* renamed from: a */
    public final synchronized void m418a(int i, EnumC0462b enumC0462b) throws IOException {
        if (this.f469g) {
            throw new IOException("closed");
        }
        if (enumC0462b.httpCode == -1) {
            throw new IllegalArgumentException();
        }
        m409a(i, 4, (byte) 3, (byte) 0);
        this.f466d.mo1148i(enumC0462b.httpCode);
        this.f466d.flush();
    }

    /* renamed from: a */
    public final synchronized void m419a(int i, EnumC0462b enumC0462b, byte[] bArr) throws IOException {
        if (this.f469g) {
            throw new IOException("closed");
        }
        if (enumC0462b.httpCode == -1) {
            throw C0465e.m309a("errorCode.httpCode == -1", new Object[0]);
        }
        m409a(0, bArr.length + 8, (byte) 7, (byte) 0);
        this.f466d.mo1148i(i);
        this.f466d.mo1148i(enumC0462b.httpCode);
        if (bArr.length > 0) {
            this.f466d.mo1129d(bArr);
        }
        this.f466d.flush();
    }

    /* renamed from: a */
    public final synchronized void m420a(C0474n c0474n) throws IOException {
        if (this.f469g) {
            throw new IOException("closed");
        }
        int i = this.f464a;
        if ((c0474n.f489i & 32) != 0) {
            i = c0474n.f490j[5];
        }
        this.f464a = i;
        if (c0474n.m449a() != -1) {
            this.f465b.m307a(c0474n.m449a());
        }
        m409a(0, 0, (byte) 4, (byte) 1);
        this.f466d.flush();
    }

    /* renamed from: a */
    public final synchronized void m421a(boolean z, int i, int i2) throws IOException {
        if (this.f469g) {
            throw new IOException("closed");
        }
        m409a(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
        this.f466d.mo1148i(i);
        this.f466d.mo1148i(i2);
        this.f466d.flush();
    }

    /* renamed from: a */
    public final synchronized void m422a(boolean z, int i, C0535c c0535c, int i2) throws IOException {
        if (this.f469g) {
            throw new IOException("closed");
        }
        m409a(i, i2, (byte) 0, z ? (byte) 1 : (byte) 0);
        if (i2 > 0) {
            this.f466d.mo114a(c0535c, i2);
        }
    }

    /* renamed from: a */
    public final synchronized void m423a(boolean z, int i, List<C0463c> list) throws IOException {
        if (this.f469g) {
            throw new IOException("closed");
        }
        m414c(z, i, list);
    }

    /* renamed from: b */
    public final synchronized void m424b() throws IOException {
        if (this.f469g) {
            throw new IOException("closed");
        }
        this.f466d.flush();
    }

    /* renamed from: b */
    public final synchronized void m425b(C0474n c0474n) throws IOException {
        if (this.f469g) {
            throw new IOException("closed");
        }
        int i = 0;
        m409a(0, Integer.bitCount(c0474n.f489i) * 6, (byte) 4, (byte) 0);
        while (i < 10) {
            if (c0474n.m452a(i)) {
                this.f466d.mo1153k(i == 4 ? 3 : i == 7 ? 4 : i);
                this.f466d.mo1148i(c0474n.f490j[i]);
            }
            i++;
        }
        this.f466d.flush();
    }

    /* renamed from: b */
    public final synchronized void m426b(boolean z, int i, List<C0463c> list) throws IOException {
        if (this.f469g) {
            throw new IOException("closed");
        }
        m414c(z, i, list);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        this.f469g = true;
        this.f466d.close();
    }
}
