package com.p021b.p022a.p023a.p028e;

import android.support.v7.widget.ActivityChooserView;
import com.p021b.p022a.p023a.C0650c;
import com.p021b.p032b.C0786i;
import com.p021b.p032b.InterfaceC0785h;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.a.a.e.y */
/* loaded from: classes.dex */
public final class C0709y implements Closeable {

    /* renamed from: a */
    static final Logger f1729a = Logger.getLogger(C0691g.class.getName());

    /* renamed from: b */
    final C0689e f1730b;

    /* renamed from: c */
    private final InterfaceC0785h f1731c;

    /* renamed from: d */
    private final C0710z f1732d;

    /* renamed from: e */
    private final boolean f1733e;

    public C0709y(InterfaceC0785h interfaceC0785h, boolean z) {
        this.f1731c = interfaceC0785h;
        this.f1733e = z;
        this.f1732d = new C0710z(this.f1731c);
        this.f1730b = new C0689e(this.f1732d);
    }

    /* renamed from: a */
    private static int m1772a(int i, byte b2, short s) {
        if ((b2 & 8) != 0) {
            i--;
        }
        if (s > i) {
            throw C0691g.m1750b("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i));
        }
        return (short) (i - s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m1773a(InterfaceC0785h interfaceC0785h) {
        return (interfaceC0785h.mo2048e() & 255) | ((interfaceC0785h.mo2048e() & 255) << 16) | ((interfaceC0785h.mo2048e() & 255) << 8);
    }

    /* renamed from: a */
    private List<C0687c> m1774a(int i, short s, byte b2, int i2) {
        C0710z c0710z = this.f1732d;
        this.f1732d.f1737d = i;
        c0710z.f1734a = i;
        this.f1732d.f1738e = s;
        this.f1732d.f1735b = b2;
        this.f1732d.f1736c = i2;
        this.f1730b.m1739a();
        return this.f1730b.m1740b();
    }

    /* renamed from: a */
    private void m1775a() {
        this.f1731c.mo2054g();
        this.f1731c.mo2048e();
    }

    /* renamed from: a */
    public final void m1776a(InterfaceC0673aa interfaceC0673aa) {
        if (this.f1733e) {
            if (!m1777a(true, interfaceC0673aa)) {
                throw C0691g.m1750b("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        C0786i mo2044c = this.f1731c.mo2044c(C0691g.f1647a.mo2086g());
        if (f1729a.isLoggable(Level.FINE)) {
            f1729a.fine(C0650c.m1606a("<< CONNECTION %s", mo2044c.mo2084e()));
        }
        if (!C0691g.f1647a.equals(mo2044c)) {
            throw C0691g.m1750b("Expected a connection header but was %s", mo2044c.mo2077a());
        }
    }

    /* renamed from: a */
    public final boolean m1777a(boolean z, InterfaceC0673aa interfaceC0673aa) {
        InterfaceC0785h interfaceC0785h;
        long j;
        try {
            this.f1731c.mo2034a(9L);
            int m1773a = m1773a(this.f1731c);
            if (m1773a < 0 || m1773a > 16384) {
                throw C0691g.m1750b("FRAME_SIZE_ERROR: %s", Integer.valueOf(m1773a));
            }
            byte mo2048e = (byte) (this.f1731c.mo2048e() & 255);
            if (z && mo2048e != 4) {
                throw C0691g.m1750b("Expected a SETTINGS frame but was %s", Byte.valueOf(mo2048e));
            }
            byte mo2048e2 = (byte) (this.f1731c.mo2048e() & 255);
            int mo2054g = this.f1731c.mo2054g() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            if (f1729a.isLoggable(Level.FINE)) {
                f1729a.fine(C0691g.m1749a(true, mo2054g, m1773a, mo2048e, mo2048e2));
            }
            switch (mo2048e) {
                case 0:
                    boolean z2 = (mo2048e2 & 1) != 0;
                    if ((mo2048e2 & 32) != 0) {
                        throw C0691g.m1750b("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
                    }
                    short mo2048e3 = (mo2048e2 & 8) != 0 ? (short) (this.f1731c.mo2048e() & 255) : (short) 0;
                    interfaceC0673aa.mo1670a(z2, mo2054g, this.f1731c, m1772a(m1773a, mo2048e2, mo2048e3));
                    interfaceC0785h = this.f1731c;
                    j = mo2048e3;
                    break;
                case 1:
                    if (mo2054g == 0) {
                        throw C0691g.m1750b("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
                    }
                    boolean z3 = (mo2048e2 & 1) != 0;
                    short mo2048e4 = (mo2048e2 & 8) != 0 ? (short) (this.f1731c.mo2048e() & 255) : (short) 0;
                    if ((mo2048e2 & 32) != 0) {
                        m1775a();
                        m1773a -= 5;
                    }
                    interfaceC0673aa.mo1671a(z3, mo2054g, m1774a(m1772a(m1773a, mo2048e2, mo2048e4), mo2048e4, mo2048e2, mo2054g));
                    return true;
                case 2:
                    if (m1773a != 5) {
                        throw C0691g.m1750b("TYPE_PRIORITY length: %d != 5", Integer.valueOf(m1773a));
                    }
                    if (mo2054g == 0) {
                        throw C0691g.m1750b("TYPE_PRIORITY streamId == 0", new Object[0]);
                    }
                    m1775a();
                    return true;
                case 3:
                    if (m1773a != 4) {
                        throw C0691g.m1750b("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(m1773a));
                    }
                    if (mo2054g == 0) {
                        throw C0691g.m1750b("TYPE_RST_STREAM streamId == 0", new Object[0]);
                    }
                    int mo2054g2 = this.f1731c.mo2054g();
                    EnumC0686b m1727a = EnumC0686b.m1727a(mo2054g2);
                    if (m1727a == null) {
                        throw C0691g.m1750b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(mo2054g2));
                    }
                    interfaceC0673aa.mo1665a(mo2054g, m1727a);
                    return true;
                case 4:
                    if (mo2054g != 0) {
                        throw C0691g.m1750b("TYPE_SETTINGS streamId != 0", new Object[0]);
                    }
                    if ((mo2048e2 & 1) != 0) {
                        if (m1773a != 0) {
                            throw C0691g.m1750b("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                        }
                        return true;
                    }
                    if (m1773a % 6 != 0) {
                        throw C0691g.m1750b("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(m1773a));
                    }
                    C0684al c0684al = new C0684al();
                    for (int i = 0; i < m1773a; i += 6) {
                        short mo2052f = this.f1731c.mo2052f();
                        int mo2054g3 = this.f1731c.mo2054g();
                        switch (mo2052f) {
                            case 2:
                                if (mo2054g3 != 0 && mo2054g3 != 1) {
                                    throw C0691g.m1750b("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                                }
                                break;
                            case 3:
                                mo2052f = 4;
                                break;
                            case 4:
                                mo2052f = 7;
                                if (mo2054g3 < 0) {
                                    throw C0691g.m1750b("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                                }
                                break;
                            case 5:
                                if (mo2054g3 < 16384 || mo2054g3 > 16777215) {
                                    throw C0691g.m1750b("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(mo2054g3));
                                }
                                break;
                                break;
                        }
                        c0684al.m1720a(mo2052f, mo2054g3);
                    }
                    interfaceC0673aa.mo1668a(c0684al);
                    return true;
                case 5:
                    if (mo2054g == 0) {
                        throw C0691g.m1750b("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
                    }
                    short mo2048e5 = (mo2048e2 & 8) != 0 ? (short) (this.f1731c.mo2048e() & 255) : (short) 0;
                    interfaceC0673aa.mo1667a(this.f1731c.mo2054g() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, m1774a(m1772a(m1773a - 4, mo2048e2, mo2048e5), mo2048e5, mo2048e2, mo2054g));
                    return true;
                case 6:
                    if (m1773a != 8) {
                        throw C0691g.m1750b("TYPE_PING length != 8: %s", Integer.valueOf(m1773a));
                    }
                    if (mo2054g != 0) {
                        throw C0691g.m1750b("TYPE_PING streamId != 0", new Object[0]);
                    }
                    interfaceC0673aa.mo1669a((mo2048e2 & 1) != 0, this.f1731c.mo2054g(), this.f1731c.mo2054g());
                    return true;
                case 7:
                    if (m1773a < 8) {
                        throw C0691g.m1750b("TYPE_GOAWAY length < 8: %s", Integer.valueOf(m1773a));
                    }
                    if (mo2054g != 0) {
                        throw C0691g.m1750b("TYPE_GOAWAY streamId != 0", new Object[0]);
                    }
                    int mo2054g4 = this.f1731c.mo2054g();
                    int mo2054g5 = this.f1731c.mo2054g();
                    int i2 = m1773a - 8;
                    if (EnumC0686b.m1727a(mo2054g5) == null) {
                        throw C0691g.m1750b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(mo2054g5));
                    }
                    C0786i c0786i = C0786i.f2146b;
                    if (i2 > 0) {
                        c0786i = this.f1731c.mo2044c(i2);
                    }
                    interfaceC0673aa.mo1666a(mo2054g4, c0786i);
                    return true;
                case 8:
                    if (m1773a != 4) {
                        throw C0691g.m1750b("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(m1773a));
                    }
                    long mo2054g6 = this.f1731c.mo2054g() & 2147483647L;
                    if (mo2054g6 == 0) {
                        throw C0691g.m1750b("windowSizeIncrement was 0", Long.valueOf(mo2054g6));
                    }
                    interfaceC0673aa.mo1664a(mo2054g, mo2054g6);
                    return true;
                default:
                    interfaceC0785h = this.f1731c;
                    j = m1773a;
                    break;
            }
            interfaceC0785h.mo2053f(j);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f1731c.close();
    }
}
