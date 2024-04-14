package p003b.p004a.p015k;

import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import p017c.C0535c;
import p017c.C0538f;
import p017c.InterfaceC0537e;

/* renamed from: b.a.k.c */
/* loaded from: classes.dex */
final class C0490c {

    /* renamed from: a */
    final boolean f608a;

    /* renamed from: b */
    final InterfaceC0537e f609b;

    /* renamed from: c */
    final a f610c;

    /* renamed from: d */
    boolean f611d;

    /* renamed from: e */
    int f612e;

    /* renamed from: f */
    long f613f;

    /* renamed from: g */
    long f614g;

    /* renamed from: h */
    boolean f615h;

    /* renamed from: i */
    boolean f616i;

    /* renamed from: j */
    boolean f617j;

    /* renamed from: k */
    final byte[] f618k = new byte[4];

    /* renamed from: l */
    final byte[] f619l = new byte[8192];

    /* renamed from: b.a.k.c$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo531a(int i, String str);

        /* renamed from: b */
        void mo535b(C0538f c0538f);

        /* renamed from: f */
        void mo539f() throws IOException;

        /* renamed from: g */
        void mo540g() throws IOException;

        /* renamed from: h */
        void mo541h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0490c(boolean z, InterfaceC0537e interfaceC0537e, a aVar) {
        if (interfaceC0537e == null) {
            throw new NullPointerException("source == null");
        }
        if (aVar == null) {
            throw new NullPointerException("frameCallback == null");
        }
        this.f608a = z;
        this.f609b = interfaceC0537e;
        this.f610c = aVar;
    }

    /* renamed from: a */
    private void m551a(C0535c c0535c) throws IOException {
        long read;
        while (!this.f611d) {
            if (this.f614g == this.f613f) {
                if (this.f615h) {
                    return;
                }
                m555e();
                if (this.f612e != 0) {
                    throw new ProtocolException("Expected continuation opcode. Got: " + Integer.toHexString(this.f612e));
                }
                if (this.f615h && this.f613f == 0) {
                    return;
                }
            }
            long j = this.f613f - this.f614g;
            if (this.f617j) {
                read = this.f609b.mo1089a(this.f619l, 0, (int) Math.min(j, this.f619l.length));
                if (read == -1) {
                    throw new EOFException();
                }
                C0489b.m549a(this.f619l, read, this.f618k, this.f614g);
                c0535c.mo1127c(this.f619l, 0, (int) read);
            } else {
                read = this.f609b.read(c0535c, j);
                if (read == -1) {
                    throw new EOFException();
                }
            }
            this.f614g += read;
        }
        throw new IOException("closed");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    private void m552b() throws IOException {
        if (this.f611d) {
            throw new IOException("closed");
        }
        long mo1189l_ = this.f609b.timeout().mo1189l_();
        this.f609b.timeout().mo1187d();
        try {
            int mo1140g = this.f609b.mo1140g() & 255;
            this.f609b.timeout().mo1185a(mo1189l_, TimeUnit.NANOSECONDS);
            this.f612e = mo1140g & 15;
            this.f615h = (mo1140g & 128) != 0;
            this.f616i = (mo1140g & 8) != 0;
            if (this.f616i && !this.f615h) {
                throw new ProtocolException("Control frames must be final.");
            }
            boolean z = (mo1140g & 64) != 0;
            boolean z2 = (mo1140g & 32) != 0;
            boolean z3 = (mo1140g & 16) != 0;
            if (z || z2 || z3) {
                throw new ProtocolException("Reserved flags are unsupported.");
            }
            this.f617j = ((this.f609b.mo1140g() & 255) & 128) != 0;
            if (this.f617j == this.f608a) {
                throw new ProtocolException(this.f608a ? "Server-sent frames must not be masked." : "Client-sent frames must be masked.");
            }
            this.f613f = r0 & 127;
            if (this.f613f == 126) {
                this.f613f = this.f609b.mo1144h() & 65535;
            } else if (this.f613f == 127) {
                this.f613f = this.f609b.mo1149j();
                if (this.f613f < 0) {
                    throw new ProtocolException("Frame length 0x" + Long.toHexString(this.f613f) + " > 0x7FFFFFFFFFFFFFFF");
                }
            }
            this.f614g = 0L;
            if (this.f616i && this.f613f > 125) {
                throw new ProtocolException("Control frame must be less than 125B.");
            }
            if (this.f617j) {
                this.f609b.mo1120b(this.f618k);
            }
        } catch (Throwable th) {
            this.f609b.timeout().mo1185a(mo1189l_, TimeUnit.NANOSECONDS);
            throw th;
        }
    }

    /* renamed from: c */
    private void m553c() throws IOException {
        C0535c c0535c = new C0535c();
        if (this.f614g < this.f613f) {
            if (this.f608a) {
                this.f609b.mo1119b(c0535c, this.f613f);
            } else {
                while (this.f614g < this.f613f) {
                    int mo1089a = this.f609b.mo1089a(this.f619l, 0, (int) Math.min(this.f613f - this.f614g, this.f619l.length));
                    if (mo1089a == -1) {
                        throw new EOFException();
                    }
                    long j = mo1089a;
                    C0489b.m549a(this.f619l, j, this.f618k, this.f614g);
                    c0535c.mo1127c(this.f619l, 0, mo1089a);
                    this.f614g += j;
                }
            }
        }
        switch (this.f612e) {
            case 8:
                short s = 1005;
                String str = "";
                long j2 = c0535c.f1086c;
                if (j2 == 1) {
                    throw new ProtocolException("Malformed close payload length of 1.");
                }
                if (j2 != 0) {
                    s = c0535c.mo1144h();
                    str = c0535c.mo1167q();
                    String m547a = C0489b.m547a(s);
                    if (m547a != null) {
                        throw new ProtocolException(m547a);
                    }
                }
                this.f610c.mo531a(s, str);
                this.f611d = true;
                return;
            case 9:
                this.f610c.mo535b(c0535c.mo1166p());
                return;
            case 10:
                a aVar = this.f610c;
                c0535c.mo1166p();
                aVar.mo541h();
                return;
            default:
                throw new ProtocolException("Unknown control opcode: " + Integer.toHexString(this.f612e));
        }
    }

    /* renamed from: d */
    private void m554d() throws IOException {
        int i = this.f612e;
        if (i != 1 && i != 2) {
            throw new ProtocolException("Unknown opcode: " + Integer.toHexString(i));
        }
        C0535c c0535c = new C0535c();
        m551a(c0535c);
        if (i == 1) {
            c0535c.mo1167q();
        } else {
            c0535c.mo1166p();
        }
    }

    /* renamed from: e */
    private void m555e() throws IOException {
        while (!this.f611d) {
            m552b();
            if (!this.f616i) {
                return;
            } else {
                m553c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m556a() throws IOException {
        m552b();
        if (this.f616i) {
            m553c();
            return;
        }
        int i = this.f612e;
        if (i != 1 && i != 2) {
            throw new ProtocolException("Unknown opcode: " + Integer.toHexString(i));
        }
        C0535c c0535c = new C0535c();
        m551a(c0535c);
        if (i == 1) {
            c0535c.mo1167q();
        } else {
            c0535c.mo1166p();
        }
    }
}
