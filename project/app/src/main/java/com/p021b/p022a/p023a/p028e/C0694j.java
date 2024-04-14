package com.p021b.p022a.p023a.p028e;

import android.support.v7.widget.ActivityChooserView;
import com.p021b.p022a.p023a.C0650c;
import com.p021b.p032b.C0783f;
import com.p021b.p032b.InterfaceC0785h;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: com.b.a.a.e.j */
/* loaded from: classes.dex */
public final class C0694j implements Closeable {

    /* renamed from: a */
    static final ExecutorService f1666a = new ThreadPoolExecutor(0, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60, TimeUnit.SECONDS, new SynchronousQueue(), C0650c.m1610a("OkHttp Http2Connection", true));

    /* renamed from: s */
    static final /* synthetic */ boolean f1667s = true;

    /* renamed from: b */
    final boolean f1668b;

    /* renamed from: c */
    final AbstractC0703s f1669c;

    /* renamed from: e */
    final String f1671e;

    /* renamed from: f */
    int f1672f;

    /* renamed from: g */
    int f1673g;

    /* renamed from: h */
    boolean f1674h;

    /* renamed from: i */
    final InterfaceC0682aj f1675i;

    /* renamed from: k */
    long f1677k;

    /* renamed from: o */
    final Socket f1681o;

    /* renamed from: p */
    final C0678af f1682p;

    /* renamed from: q */
    final C0705u f1683q;

    /* renamed from: t */
    private final ExecutorService f1685t;

    /* renamed from: u */
    private Map<Integer, C0681ai> f1686u;

    /* renamed from: v */
    private int f1687v;

    /* renamed from: d */
    final Map<Integer, C0674ab> f1670d = new LinkedHashMap();

    /* renamed from: j */
    long f1676j = 0;

    /* renamed from: l */
    C0684al f1678l = new C0684al();

    /* renamed from: m */
    final C0684al f1679m = new C0684al();

    /* renamed from: n */
    boolean f1680n = false;

    /* renamed from: r */
    final Set<Integer> f1684r = new LinkedHashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0694j(C0702r c0702r) {
        this.f1675i = c0702r.f1719f;
        this.f1668b = c0702r.f1720g;
        this.f1669c = c0702r.f1718e;
        this.f1673g = c0702r.f1720g ? 1 : 2;
        if (c0702r.f1720g) {
            this.f1673g += 2;
        }
        this.f1687v = c0702r.f1720g ? 1 : 2;
        if (c0702r.f1720g) {
            this.f1678l.m1720a(7, 16777216);
        }
        this.f1671e = c0702r.f1715b;
        this.f1685t = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), C0650c.m1610a(C0650c.m1606a("OkHttp %s Push Observer", this.f1671e), true));
        this.f1679m.m1720a(7, 65535);
        this.f1679m.m1720a(5, 16384);
        this.f1677k = this.f1679m.m1726d();
        this.f1681o = c0702r.f1714a;
        this.f1682p = new C0678af(c0702r.f1717d, this.f1668b);
        this.f1683q = new C0705u(this, new C0709y(c0702r.f1716c, this.f1668b));
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003d A[Catch: all -> 0x0055, TryCatch #0 {, blocks: (B:6:0x0006, B:8:0x000a, B:9:0x000f, B:11:0x0010, B:13:0x0025, B:15:0x002d, B:19:0x0037, B:21:0x003d, B:22:0x0046), top: B:5:0x0006, outer: #1 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.p021b.p022a.p023a.p028e.C0674ab m1751b(java.util.List<com.p021b.p022a.p023a.p028e.C0687c> r11, boolean r12) {
        /*
            r10 = this;
            r6 = r12 ^ 1
            com.b.a.a.e.af r7 = r10.f1682p
            monitor-enter(r7)
            monitor-enter(r10)     // Catch: java.lang.Throwable -> L58
            boolean r0 = r10.f1674h     // Catch: java.lang.Throwable -> L55
            if (r0 == 0) goto L10
            com.b.a.a.e.a r11 = new com.b.a.a.e.a     // Catch: java.lang.Throwable -> L55
            r11.<init>()     // Catch: java.lang.Throwable -> L55
            throw r11     // Catch: java.lang.Throwable -> L55
        L10:
            int r8 = r10.f1673g     // Catch: java.lang.Throwable -> L55
            int r0 = r10.f1673g     // Catch: java.lang.Throwable -> L55
            int r0 = r0 + 2
            r10.f1673g = r0     // Catch: java.lang.Throwable -> L55
            com.b.a.a.e.ab r9 = new com.b.a.a.e.ab     // Catch: java.lang.Throwable -> L55
            r4 = 0
            r0 = r9
            r1 = r8
            r2 = r10
            r3 = r6
            r5 = r11
            r0.<init>(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L55
            if (r12 == 0) goto L36
            long r0 = r10.f1677k     // Catch: java.lang.Throwable -> L55
            r2 = 0
            int r12 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r12 == 0) goto L36
            long r0 = r9.f1565b     // Catch: java.lang.Throwable -> L55
            int r12 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r12 != 0) goto L34
            goto L36
        L34:
            r12 = 0
            goto L37
        L36:
            r12 = 1
        L37:
            boolean r0 = r9.m1677a()     // Catch: java.lang.Throwable -> L55
            if (r0 == 0) goto L46
            java.util.Map<java.lang.Integer, com.b.a.a.e.ab> r0 = r10.f1670d     // Catch: java.lang.Throwable -> L55
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L55
            r0.put(r1, r9)     // Catch: java.lang.Throwable -> L55
        L46:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L55
            com.b.a.a.e.af r0 = r10.f1682p     // Catch: java.lang.Throwable -> L58
            r0.m1703a(r6, r8, r11)     // Catch: java.lang.Throwable -> L58
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L58
            if (r12 == 0) goto L54
            com.b.a.a.e.af r11 = r10.f1682p
            r11.m1704b()
        L54:
            return r9
        L55:
            r11 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L55
            throw r11     // Catch: java.lang.Throwable -> L58
        L58:
            r11 = move-exception
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L58
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p021b.p022a.p023a.p028e.C0694j.m1751b(java.util.List, boolean):com.b.a.a.e.ab");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static boolean m1752d(int i) {
        return i != 0 && (i & 1) == 0;
    }

    /* renamed from: a */
    public final synchronized int m1753a() {
        return this.f1679m.m1724c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final synchronized C0674ab m1754a(int i) {
        return this.f1670d.get(Integer.valueOf(i));
    }

    /* renamed from: a */
    public final C0674ab m1755a(List<C0687c> list, boolean z) {
        return m1751b(list, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1756a(int i, long j) {
        f1666a.execute(new C0696l(this, "OkHttp Window Update %s stream %d", new Object[]{this.f1671e, Integer.valueOf(i)}, i, j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1757a(int i, EnumC0686b enumC0686b) {
        f1666a.execute(new C0695k(this, "OkHttp %s stream %d", new Object[]{this.f1671e, Integer.valueOf(i)}, i, enumC0686b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1758a(int i, InterfaceC0785h interfaceC0785h, int i2, boolean z) {
        C0783f c0783f = new C0783f();
        long j = i2;
        interfaceC0785h.mo2034a(j);
        interfaceC0785h.mo1543a(c0783f, j);
        if (c0783f.m2036b() == j) {
            this.f1685t.execute(new C0700p(this, "OkHttp %s Push Data[%s]", new Object[]{this.f1671e, Integer.valueOf(i)}, i, c0783f, i2, z));
            return;
        }
        throw new IOException(c0783f.m2036b() + " != " + i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1759a(int i, List<C0687c> list) {
        synchronized (this) {
            if (this.f1684r.contains(Integer.valueOf(i))) {
                m1757a(i, EnumC0686b.PROTOCOL_ERROR);
            } else {
                this.f1684r.add(Integer.valueOf(i));
                this.f1685t.execute(new C0698n(this, "OkHttp %s Push Request[%s]", new Object[]{this.f1671e, Integer.valueOf(i)}, i, list));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1760a(int i, List<C0687c> list, boolean z) {
        this.f1685t.execute(new C0699o(this, "OkHttp %s Push Headers[%s]", new Object[]{this.f1671e, Integer.valueOf(i)}, i, list, z));
    }

    /* renamed from: a */
    public final void m1761a(int i, boolean z, C0783f c0783f, long j) {
        int min;
        long j2;
        if (j == 0) {
            this.f1682p.m1702a(z, i, c0783f, 0);
            return;
        }
        while (j > 0) {
            synchronized (this) {
                while (this.f1677k <= 0) {
                    try {
                        if (!this.f1670d.containsKey(Integer.valueOf(i))) {
                            throw new IOException("stream closed");
                        }
                        wait();
                    } catch (InterruptedException unused) {
                        throw new InterruptedIOException();
                    }
                }
                min = Math.min((int) Math.min(j, this.f1677k), this.f1682p.m1706c());
                j2 = min;
                this.f1677k -= j2;
            }
            long j3 = j - j2;
            this.f1682p.m1702a(z && j3 == 0, i, c0783f, min);
            j = j3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00aa A[RETURN] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m1762a(com.p021b.p022a.p023a.p028e.EnumC0686b r7, com.p021b.p022a.p023a.p028e.EnumC0686b r8) {
        /*
            r6 = this;
            boolean r0 = com.p021b.p022a.p023a.p028e.C0694j.f1667s
            if (r0 != 0) goto L10
            boolean r0 = java.lang.Thread.holdsLock(r6)
            if (r0 == 0) goto L10
            java.lang.AssertionError r7 = new java.lang.AssertionError
            r7.<init>()
            throw r7
        L10:
            r0 = 0
            com.b.a.a.e.af r1 = r6.f1682p     // Catch: java.io.IOException -> L32
            monitor-enter(r1)     // Catch: java.io.IOException -> L32
            monitor-enter(r6)     // Catch: java.lang.Throwable -> L2f
            boolean r2 = r6.f1674h     // Catch: java.lang.Throwable -> L2c
            if (r2 == 0) goto L1c
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L2c
        L1a:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L2f
            goto L2a
        L1c:
            r2 = 1
            r6.f1674h = r2     // Catch: java.lang.Throwable -> L2c
            int r2 = r6.f1672f     // Catch: java.lang.Throwable -> L2c
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L2c
            com.b.a.a.e.af r3 = r6.f1682p     // Catch: java.lang.Throwable -> L2f
            byte[] r4 = com.p021b.p022a.p023a.C0650c.f1499a     // Catch: java.lang.Throwable -> L2f
            r3.m1699a(r2, r7, r4)     // Catch: java.lang.Throwable -> L2f
            goto L1a
        L2a:
            r7 = r0
            goto L33
        L2c:
            r7 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L2c
            throw r7     // Catch: java.lang.Throwable -> L2f
        L2f:
            r7 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L2f
            throw r7     // Catch: java.io.IOException -> L32
        L32:
            r7 = move-exception
        L33:
            monitor-enter(r6)
            java.util.Map<java.lang.Integer, com.b.a.a.e.ab> r1 = r6.f1670d     // Catch: java.lang.Throwable -> Lab
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> Lab
            if (r1 != 0) goto L56
            java.util.Map<java.lang.Integer, com.b.a.a.e.ab> r1 = r6.f1670d     // Catch: java.lang.Throwable -> Lab
            java.util.Collection r1 = r1.values()     // Catch: java.lang.Throwable -> Lab
            java.util.Map<java.lang.Integer, com.b.a.a.e.ab> r2 = r6.f1670d     // Catch: java.lang.Throwable -> Lab
            int r2 = r2.size()     // Catch: java.lang.Throwable -> Lab
            com.b.a.a.e.ab[] r2 = new com.p021b.p022a.p023a.p028e.C0674ab[r2]     // Catch: java.lang.Throwable -> Lab
            java.lang.Object[] r1 = r1.toArray(r2)     // Catch: java.lang.Throwable -> Lab
            com.b.a.a.e.ab[] r1 = (com.p021b.p022a.p023a.p028e.C0674ab[]) r1     // Catch: java.lang.Throwable -> Lab
            java.util.Map<java.lang.Integer, com.b.a.a.e.ab> r2 = r6.f1670d     // Catch: java.lang.Throwable -> Lab
            r2.clear()     // Catch: java.lang.Throwable -> Lab
            goto L57
        L56:
            r1 = r0
        L57:
            java.util.Map<java.lang.Integer, com.b.a.a.e.ai> r2 = r6.f1686u     // Catch: java.lang.Throwable -> Lab
            if (r2 == 0) goto L72
            java.util.Map<java.lang.Integer, com.b.a.a.e.ai> r2 = r6.f1686u     // Catch: java.lang.Throwable -> Lab
            java.util.Collection r2 = r2.values()     // Catch: java.lang.Throwable -> Lab
            java.util.Map<java.lang.Integer, com.b.a.a.e.ai> r3 = r6.f1686u     // Catch: java.lang.Throwable -> Lab
            int r3 = r3.size()     // Catch: java.lang.Throwable -> Lab
            com.b.a.a.e.ai[] r3 = new com.p021b.p022a.p023a.p028e.C0681ai[r3]     // Catch: java.lang.Throwable -> Lab
            java.lang.Object[] r2 = r2.toArray(r3)     // Catch: java.lang.Throwable -> Lab
            com.b.a.a.e.ai[] r2 = (com.p021b.p022a.p023a.p028e.C0681ai[]) r2     // Catch: java.lang.Throwable -> Lab
            r6.f1686u = r0     // Catch: java.lang.Throwable -> Lab
            r0 = r2
        L72:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> Lab
            r2 = 0
            if (r1 == 0) goto L89
            int r3 = r1.length
            r4 = r7
            r7 = 0
        L79:
            if (r7 >= r3) goto L88
            r5 = r1[r7]
            r5.m1674a(r8)     // Catch: java.io.IOException -> L81
            goto L85
        L81:
            r5 = move-exception
            if (r4 == 0) goto L85
            r4 = r5
        L85:
            int r7 = r7 + 1
            goto L79
        L88:
            r7 = r4
        L89:
            if (r0 == 0) goto L96
            int r8 = r0.length
        L8c:
            if (r2 >= r8) goto L96
            r1 = r0[r2]
            r1.m1714c()
            int r2 = r2 + 1
            goto L8c
        L96:
            com.b.a.a.e.af r8 = r6.f1682p     // Catch: java.io.IOException -> L9c
            r8.close()     // Catch: java.io.IOException -> L9c
            goto La0
        L9c:
            r8 = move-exception
            if (r7 != 0) goto La0
            r7 = r8
        La0:
            java.net.Socket r8 = r6.f1681o     // Catch: java.io.IOException -> La6
            r8.close()     // Catch: java.io.IOException -> La6
            goto La7
        La6:
            r7 = move-exception
        La7:
            if (r7 == 0) goto Laa
            throw r7
        Laa:
            return
        Lab:
            r7 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> Lab
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p021b.p022a.p023a.p028e.C0694j.m1762a(com.b.a.a.e.b, com.b.a.a.e.b):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final synchronized C0674ab m1763b(int i) {
        C0674ab remove;
        remove = this.f1670d.remove(Integer.valueOf(i));
        notifyAll();
        return remove;
    }

    /* renamed from: b */
    public final void m1764b() {
        this.f1682p.m1696a();
        this.f1682p.m1705b(this.f1678l);
        if (this.f1678l.m1726d() != 65535) {
            this.f1682p.m1697a(0, r0 - 65535);
        }
        new Thread(this.f1683q).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m1765b(int i, EnumC0686b enumC0686b) {
        this.f1682p.m1698a(i, enumC0686b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final synchronized C0681ai m1766c(int i) {
        if (this.f1686u == null) {
            return null;
        }
        return this.f1686u.remove(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m1767c(int i, EnumC0686b enumC0686b) {
        this.f1685t.execute(new C0701q(this, "OkHttp %s Push Reset[%s]", new Object[]{this.f1671e, Integer.valueOf(i)}, i, enumC0686b));
    }

    /* renamed from: c */
    public final synchronized boolean m1768c() {
        return this.f1674h;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        m1762a(EnumC0686b.NO_ERROR, EnumC0686b.CANCEL);
    }
}
