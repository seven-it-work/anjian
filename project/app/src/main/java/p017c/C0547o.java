package p017c;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* renamed from: c.o */
/* loaded from: classes.dex */
public final class C0547o implements InterfaceC0557y {

    /* renamed from: a */
    private final InterfaceC0537e f1116a;

    /* renamed from: b */
    private final Inflater f1117b;

    /* renamed from: c */
    private int f1118c;

    /* renamed from: d */
    private boolean f1119d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0547o(InterfaceC0537e interfaceC0537e, Inflater inflater) {
        if (interfaceC0537e == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f1116a = interfaceC0537e;
        this.f1117b = inflater;
    }

    private C0547o(InterfaceC0557y interfaceC0557y, Inflater inflater) {
        this(C0548p.m1217a(interfaceC0557y), inflater);
    }

    /* renamed from: a */
    private boolean m1214a() throws IOException {
        if (!this.f1117b.needsInput()) {
            return false;
        }
        m1215b();
        if (this.f1117b.getRemaining() != 0) {
            throw new IllegalStateException("?");
        }
        if (this.f1116a.mo1131d()) {
            return true;
        }
        C0553u c0553u = this.f1116a.mo1096a().f1085b;
        this.f1118c = c0553u.f1149e - c0553u.f1148d;
        this.f1117b.setInput(c0553u.f1147c, c0553u.f1148d, this.f1118c);
        return false;
    }

    /* renamed from: b */
    private void m1215b() throws IOException {
        if (this.f1118c == 0) {
            return;
        }
        int remaining = this.f1118c - this.f1117b.getRemaining();
        this.f1118c -= remaining;
        this.f1116a.mo1145h(remaining);
    }

    @Override // p017c.InterfaceC0557y, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f1119d) {
            return;
        }
        this.f1117b.end();
        this.f1119d = true;
        this.f1116a.close();
    }

    @Override // p017c.InterfaceC0557y
    public final long read(C0535c c0535c, long j) throws IOException {
        boolean z;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f1119d) {
            throw new IllegalStateException("closed");
        }
        if (j == 0) {
            return 0L;
        }
        do {
            z = false;
            if (this.f1117b.needsInput()) {
                m1215b();
                if (this.f1117b.getRemaining() != 0) {
                    throw new IllegalStateException("?");
                }
                if (this.f1116a.mo1131d()) {
                    z = true;
                } else {
                    C0553u c0553u = this.f1116a.mo1096a().f1085b;
                    this.f1118c = c0553u.f1149e - c0553u.f1148d;
                    this.f1117b.setInput(c0553u.f1147c, c0553u.f1148d, this.f1118c);
                }
            }
            try {
                C0553u m1141g = c0535c.m1141g(1);
                int inflate = this.f1117b.inflate(m1141g.f1147c, m1141g.f1149e, 8192 - m1141g.f1149e);
                if (inflate > 0) {
                    m1141g.f1149e += inflate;
                    long j2 = inflate;
                    c0535c.f1086c += j2;
                    return j2;
                }
                if (!this.f1117b.finished() && !this.f1117b.needsDictionary()) {
                }
                m1215b();
                if (m1141g.f1148d != m1141g.f1149e) {
                    return -1L;
                }
                c0535c.f1085b = m1141g.m1238a();
                C0554v.m1242a(m1141g);
                return -1L;
            } catch (DataFormatException e) {
                throw new IOException(e);
            }
        } while (!z);
        throw new EOFException("source exhausted prematurely");
    }

    @Override // p017c.InterfaceC0557y
    public final C0558z timeout() {
        return this.f1116a.timeout();
    }
}
