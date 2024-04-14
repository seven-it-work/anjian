package p017c;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* renamed from: c.l */
/* loaded from: classes.dex */
public final class C0544l implements InterfaceC0557y {

    /* renamed from: a */
    private static final byte f1099a = 1;

    /* renamed from: b */
    private static final byte f1100b = 2;

    /* renamed from: c */
    private static final byte f1101c = 3;

    /* renamed from: d */
    private static final byte f1102d = 4;

    /* renamed from: e */
    private static final byte f1103e = 0;

    /* renamed from: f */
    private static final byte f1104f = 1;

    /* renamed from: g */
    private static final byte f1105g = 2;

    /* renamed from: h */
    private static final byte f1106h = 3;

    /* renamed from: j */
    private final InterfaceC0537e f1108j;

    /* renamed from: k */
    private final Inflater f1109k;

    /* renamed from: l */
    private final C0547o f1110l;

    /* renamed from: i */
    private int f1107i = 0;

    /* renamed from: m */
    private final CRC32 f1111m = new CRC32();

    public C0544l(InterfaceC0557y interfaceC0557y) {
        if (interfaceC0557y == null) {
            throw new IllegalArgumentException("source == null");
        }
        this.f1109k = new Inflater(true);
        this.f1108j = C0548p.m1217a(interfaceC0557y);
        this.f1110l = new C0547o(this.f1108j, this.f1109k);
    }

    /* renamed from: a */
    private void m1196a() throws IOException {
        this.f1108j.mo1107a(10L);
        byte m1122c = this.f1108j.mo1096a().m1122c(3L);
        boolean z = ((m1122c >> 1) & 1) == 1;
        if (z) {
            m1197a(this.f1108j.mo1096a(), 0L, 10L);
        }
        m1198a("ID1ID2", 8075, this.f1108j.mo1144h());
        this.f1108j.mo1145h(8L);
        if (((m1122c >> 2) & 1) == 1) {
            this.f1108j.mo1107a(2L);
            if (z) {
                m1197a(this.f1108j.mo1096a(), 0L, 2L);
            }
            long m1056a = C0532ab.m1056a(this.f1108j.mo1096a().mo1144h());
            this.f1108j.mo1107a(m1056a);
            if (z) {
                m1197a(this.f1108j.mo1096a(), 0L, m1056a);
            }
            this.f1108j.mo1145h(m1056a);
        }
        if (((m1122c >> 3) & 1) == 1) {
            long mo1090a = this.f1108j.mo1090a((byte) 0);
            if (mo1090a == -1) {
                throw new EOFException();
            }
            if (z) {
                m1197a(this.f1108j.mo1096a(), 0L, mo1090a + 1);
            }
            this.f1108j.mo1145h(mo1090a + 1);
        }
        if (((m1122c >> 4) & 1) == 1) {
            long mo1090a2 = this.f1108j.mo1090a((byte) 0);
            if (mo1090a2 == -1) {
                throw new EOFException();
            }
            if (z) {
                m1197a(this.f1108j.mo1096a(), 0L, mo1090a2 + 1);
            }
            this.f1108j.mo1145h(mo1090a2 + 1);
        }
        if (z) {
            m1198a("FHCRC", this.f1108j.mo1154k(), (short) this.f1111m.getValue());
            this.f1111m.reset();
        }
    }

    /* renamed from: a */
    private void m1197a(C0535c c0535c, long j, long j2) {
        C0553u c0553u = c0535c.f1085b;
        while (j >= c0553u.f1149e - c0553u.f1148d) {
            long j3 = j - (c0553u.f1149e - c0553u.f1148d);
            c0553u = c0553u.f1152h;
            j = j3;
        }
        while (j2 > 0) {
            int min = (int) Math.min(c0553u.f1149e - r8, j2);
            this.f1111m.update(c0553u.f1147c, (int) (c0553u.f1148d + j), min);
            c0553u = c0553u.f1152h;
            j = 0;
            j2 -= min;
        }
    }

    /* renamed from: a */
    private static void m1198a(String str, int i, int i2) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    /* renamed from: b */
    private void m1199b() throws IOException {
        m1198a("CRC", this.f1108j.mo1155l(), (int) this.f1111m.getValue());
        m1198a("ISIZE", this.f1108j.mo1155l(), (int) this.f1109k.getBytesWritten());
    }

    @Override // p017c.InterfaceC0557y, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f1110l.close();
    }

    @Override // p017c.InterfaceC0557y
    public final long read(C0535c c0535c, long j) throws IOException {
        long j2;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (j == 0) {
            return 0L;
        }
        if (this.f1107i == 0) {
            this.f1108j.mo1107a(10L);
            byte m1122c = this.f1108j.mo1096a().m1122c(3L);
            boolean z = ((m1122c >> 1) & 1) == 1;
            if (z) {
                m1197a(this.f1108j.mo1096a(), 0L, 10L);
            }
            m1198a("ID1ID2", 8075, this.f1108j.mo1144h());
            this.f1108j.mo1145h(8L);
            if (((m1122c >> 2) & 1) == 1) {
                this.f1108j.mo1107a(2L);
                if (z) {
                    m1197a(this.f1108j.mo1096a(), 0L, 2L);
                }
                long mo1154k = this.f1108j.mo1096a().mo1154k();
                this.f1108j.mo1107a(mo1154k);
                if (z) {
                    j2 = mo1154k;
                    m1197a(this.f1108j.mo1096a(), 0L, mo1154k);
                } else {
                    j2 = mo1154k;
                }
                this.f1108j.mo1145h(j2);
            }
            if (((m1122c >> 3) & 1) == 1) {
                long mo1090a = this.f1108j.mo1090a((byte) 0);
                if (mo1090a == -1) {
                    throw new EOFException();
                }
                if (z) {
                    m1197a(this.f1108j.mo1096a(), 0L, mo1090a + 1);
                }
                this.f1108j.mo1145h(mo1090a + 1);
            }
            if (((m1122c >> 4) & 1) == 1) {
                long mo1090a2 = this.f1108j.mo1090a((byte) 0);
                if (mo1090a2 == -1) {
                    throw new EOFException();
                }
                if (z) {
                    m1197a(this.f1108j.mo1096a(), 0L, mo1090a2 + 1);
                }
                this.f1108j.mo1145h(mo1090a2 + 1);
            }
            if (z) {
                m1198a("FHCRC", this.f1108j.mo1154k(), (short) this.f1111m.getValue());
                this.f1111m.reset();
            }
            this.f1107i = 1;
        }
        if (this.f1107i == 1) {
            long j3 = c0535c.f1086c;
            long read = this.f1110l.read(c0535c, j);
            if (read != -1) {
                m1197a(c0535c, j3, read);
                return read;
            }
            this.f1107i = 2;
        }
        if (this.f1107i == 2) {
            m1198a("CRC", this.f1108j.mo1155l(), (int) this.f1111m.getValue());
            m1198a("ISIZE", this.f1108j.mo1155l(), (int) this.f1109k.getBytesWritten());
            this.f1107i = 3;
            if (!this.f1108j.mo1131d()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // p017c.InterfaceC0557y
    public final C0558z timeout() {
        return this.f1108j.timeout();
    }
}
