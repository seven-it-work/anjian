package p003b.p004a.p010f;

import android.support.v7.widget.ActivityChooserView;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import p003b.p004a.C0439c;
import p003b.p004a.p010f.C0464d;
import p017c.C0535c;
import p017c.C0538f;
import p017c.C0558z;
import p017c.InterfaceC0537e;
import p017c.InterfaceC0557y;

/* renamed from: b.a.f.h */
/* loaded from: classes.dex */
final class C0468h implements Closeable {

    /* renamed from: a */
    static final Logger f425a = Logger.getLogger(C0465e.class.getName());

    /* renamed from: b */
    final InterfaceC0537e f426b;

    /* renamed from: c */
    final boolean f427c;

    /* renamed from: d */
    final C0464d.a f428d;

    /* renamed from: e */
    private final a f429e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.a.f.h$a */
    /* loaded from: classes.dex */
    public static final class a implements InterfaceC0557y {

        /* renamed from: a */
        int f430a;

        /* renamed from: b */
        byte f431b;

        /* renamed from: c */
        int f432c;

        /* renamed from: d */
        int f433d;

        /* renamed from: e */
        short f434e;

        /* renamed from: f */
        private final InterfaceC0537e f435f;

        a(InterfaceC0537e interfaceC0537e) {
            this.f435f = interfaceC0537e;
        }

        /* renamed from: a */
        private void m377a() throws IOException {
            int i = this.f432c;
            int m363a = C0468h.m363a(this.f435f);
            this.f433d = m363a;
            this.f430a = m363a;
            byte mo1140g = (byte) (this.f435f.mo1140g() & 255);
            this.f431b = (byte) (this.f435f.mo1140g() & 255);
            if (C0468h.f425a.isLoggable(Level.FINE)) {
                C0468h.f425a.fine(C0465e.m311a(true, this.f432c, this.f430a, mo1140g, this.f431b));
            }
            this.f432c = this.f435f.mo1146i() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            if (mo1140g != 9) {
                throw C0465e.m312b("%s != TYPE_CONTINUATION", Byte.valueOf(mo1140g));
            }
            if (this.f432c != i) {
                throw C0465e.m312b("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }

        @Override // p017c.InterfaceC0557y, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
        }

        @Override // p017c.InterfaceC0557y
        public final long read(C0535c c0535c, long j) throws IOException {
            while (this.f433d == 0) {
                this.f435f.mo1145h(this.f434e);
                this.f434e = (short) 0;
                if ((this.f431b & 4) != 0) {
                    return -1L;
                }
                int i = this.f432c;
                int m363a = C0468h.m363a(this.f435f);
                this.f433d = m363a;
                this.f430a = m363a;
                byte mo1140g = (byte) (this.f435f.mo1140g() & 255);
                this.f431b = (byte) (this.f435f.mo1140g() & 255);
                if (C0468h.f425a.isLoggable(Level.FINE)) {
                    C0468h.f425a.fine(C0465e.m311a(true, this.f432c, this.f430a, mo1140g, this.f431b));
                }
                this.f432c = this.f435f.mo1146i() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                if (mo1140g != 9) {
                    throw C0465e.m312b("%s != TYPE_CONTINUATION", Byte.valueOf(mo1140g));
                }
                if (this.f432c != i) {
                    throw C0465e.m312b("TYPE_CONTINUATION streamId changed", new Object[0]);
                }
            }
            long read = this.f435f.read(c0535c, Math.min(j, this.f433d));
            if (read == -1) {
                return -1L;
            }
            this.f433d = (int) (this.f433d - read);
            return read;
        }

        @Override // p017c.InterfaceC0557y
        public final C0558z timeout() {
            return this.f435f.timeout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.a.f.h$b */
    /* loaded from: classes.dex */
    public interface b {
        /* renamed from: a */
        void mo351a();

        /* renamed from: a */
        void mo352a(int i, long j);

        /* renamed from: a */
        void mo353a(int i, EnumC0462b enumC0462b);

        /* renamed from: a */
        void mo354a(int i, C0538f c0538f);

        /* renamed from: a */
        void mo355a(int i, List<C0463c> list) throws IOException;

        /* renamed from: a */
        void mo356a(C0474n c0474n);

        /* renamed from: a */
        void mo357a(boolean z, int i, int i2);

        /* renamed from: a */
        void mo358a(boolean z, int i, InterfaceC0537e interfaceC0537e, int i2) throws IOException;

        /* renamed from: a */
        void mo359a(boolean z, int i, List<C0463c> list);

        /* renamed from: c */
        void mo360c();

        /* renamed from: d */
        void mo361d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0468h(InterfaceC0537e interfaceC0537e, boolean z) {
        this.f426b = interfaceC0537e;
        this.f427c = z;
        this.f429e = new a(this.f426b);
        this.f428d = new C0464d.a(this.f429e);
    }

    /* renamed from: a */
    private static int m362a(int i, byte b2, short s) throws IOException {
        if ((b2 & 8) != 0) {
            i--;
        }
        if (s > i) {
            throw C0465e.m312b("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i));
        }
        return (short) (i - s);
    }

    /* renamed from: a */
    static int m363a(InterfaceC0537e interfaceC0537e) throws IOException {
        return (interfaceC0537e.mo1140g() & 255) | ((interfaceC0537e.mo1140g() & 255) << 16) | ((interfaceC0537e.mo1140g() & 255) << 8);
    }

    /* renamed from: a */
    private List<C0463c> m364a(int i, short s, byte b2, int i2) throws IOException {
        C0463c c0463c;
        List<C0463c> list;
        C0463c c0463c2;
        a aVar = this.f429e;
        this.f429e.f433d = i;
        aVar.f430a = i;
        this.f429e.f434e = s;
        this.f429e.f431b = b2;
        this.f429e.f432c = i2;
        C0464d.a aVar2 = this.f428d;
        while (!aVar2.f304b.mo1131d()) {
            int mo1140g = aVar2.f304b.mo1140g() & 255;
            if (mo1140g == 128) {
                throw new IOException("index == 0");
            }
            if ((mo1140g & 128) == 128) {
                int m296a = aVar2.m296a(mo1140g, 127) - 1;
                if (C0464d.a.m284c(m296a)) {
                    aVar2.f303a.add(C0464d.f297a[m296a]);
                } else {
                    int m295a = aVar2.m295a(m296a - C0464d.f297a.length);
                    if (m295a < 0 || m295a > aVar2.f307e.length - 1) {
                        throw new IOException("Header index too large " + (m296a + 1));
                    }
                    aVar2.f303a.add(aVar2.f307e[m295a]);
                }
            } else {
                if (mo1140g == 64) {
                    c0463c = new C0463c(C0464d.m281a(aVar2.m299b()), aVar2.m299b());
                } else if ((mo1140g & 64) == 64) {
                    c0463c = new C0463c(aVar2.m300b(aVar2.m296a(mo1140g, 63) - 1), aVar2.m299b());
                } else if ((mo1140g & 32) == 32) {
                    aVar2.f306d = aVar2.m296a(mo1140g, 31);
                    if (aVar2.f306d < 0 || aVar2.f306d > aVar2.f305c) {
                        throw new IOException("Invalid dynamic table size update " + aVar2.f306d);
                    }
                    aVar2.m297a();
                } else {
                    if (mo1140g == 16 || mo1140g == 0) {
                        C0538f m281a = C0464d.m281a(aVar2.m299b());
                        C0538f m299b = aVar2.m299b();
                        list = aVar2.f303a;
                        c0463c2 = new C0463c(m281a, m299b);
                    } else {
                        C0538f m300b = aVar2.m300b(aVar2.m296a(mo1140g, 15) - 1);
                        C0538f m299b2 = aVar2.m299b();
                        list = aVar2.f303a;
                        c0463c2 = new C0463c(m300b, m299b2);
                    }
                    list.add(c0463c2);
                }
                aVar2.m298a(c0463c);
            }
        }
        C0464d.a aVar3 = this.f428d;
        ArrayList arrayList = new ArrayList(aVar3.f303a);
        aVar3.f303a.clear();
        return arrayList;
    }

    /* renamed from: a */
    private void m365a() throws IOException {
        this.f426b.mo1146i();
        this.f426b.mo1140g();
    }

    /* renamed from: a */
    private void m366a(int i, int i2) throws IOException {
        if (i != 5) {
            throw C0465e.m312b("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i));
        }
        if (i2 == 0) {
            throw C0465e.m312b("TYPE_PRIORITY streamId == 0", new Object[0]);
        }
        m365a();
    }

    /* renamed from: a */
    private void m367a(b bVar) throws IOException {
        if (this.f427c) {
            if (!m376a(true, bVar)) {
                throw C0465e.m312b("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        C0538f mo1130d = this.f426b.mo1130d(C0465e.f323a.size());
        if (f425a.isLoggable(Level.FINE)) {
            f425a.fine(C0439c.m138a("<< CONNECTION %s", mo1130d.hex()));
        }
        if (!C0465e.f323a.equals(mo1130d)) {
            throw C0465e.m312b("Expected a connection header but was %s", mo1130d.utf8());
        }
    }

    /* renamed from: a */
    private void m368a(b bVar, int i, byte b2, int i2) throws IOException {
        if (i2 == 0) {
            throw C0465e.m312b("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        }
        boolean z = (b2 & 1) != 0;
        short mo1140g = (b2 & 8) != 0 ? (short) (this.f426b.mo1140g() & 255) : (short) 0;
        if ((b2 & 32) != 0) {
            m365a();
            i -= 5;
        }
        bVar.mo359a(z, i2, m364a(m362a(i, b2, mo1140g), mo1140g, b2, i2));
    }

    /* renamed from: a */
    private void m369a(b bVar, int i, int i2) throws IOException {
        if (i != 4) {
            throw C0465e.m312b("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
        }
        if (i2 == 0) {
            throw C0465e.m312b("TYPE_RST_STREAM streamId == 0", new Object[0]);
        }
        int mo1146i = this.f426b.mo1146i();
        EnumC0462b fromHttp2 = EnumC0462b.fromHttp2(mo1146i);
        if (fromHttp2 == null) {
            throw C0465e.m312b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(mo1146i));
        }
        bVar.mo353a(i2, fromHttp2);
    }

    /* renamed from: b */
    private void m370b(b bVar, int i, byte b2, int i2) throws IOException {
        if (i2 == 0) {
            throw C0465e.m312b("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        }
        boolean z = (b2 & 1) != 0;
        if ((b2 & 32) != 0) {
            throw C0465e.m312b("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        }
        short mo1140g = (b2 & 8) != 0 ? (short) (this.f426b.mo1140g() & 255) : (short) 0;
        bVar.mo358a(z, i2, this.f426b, m362a(i, b2, mo1140g));
        this.f426b.mo1145h(mo1140g);
    }

    /* renamed from: b */
    private void m371b(b bVar, int i, int i2) throws IOException {
        if (i < 8) {
            throw C0465e.m312b("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
        }
        if (i2 != 0) {
            throw C0465e.m312b("TYPE_GOAWAY streamId != 0", new Object[0]);
        }
        int mo1146i = this.f426b.mo1146i();
        int mo1146i2 = this.f426b.mo1146i();
        int i3 = i - 8;
        if (EnumC0462b.fromHttp2(mo1146i2) == null) {
            throw C0465e.m312b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(mo1146i2));
        }
        C0538f c0538f = C0538f.EMPTY;
        if (i3 > 0) {
            c0538f = this.f426b.mo1130d(i3);
        }
        bVar.mo354a(mo1146i, c0538f);
    }

    /* renamed from: c */
    private void m372c(b bVar, int i, byte b2, int i2) throws IOException {
        if (i2 != 0) {
            throw C0465e.m312b("TYPE_SETTINGS streamId != 0", new Object[0]);
        }
        if ((b2 & 1) != 0) {
            if (i != 0) {
                throw C0465e.m312b("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            }
            return;
        }
        if (i % 6 != 0) {
            throw C0465e.m312b("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
        }
        C0474n c0474n = new C0474n();
        for (int i3 = 0; i3 < i; i3 += 6) {
            short mo1144h = this.f426b.mo1144h();
            int mo1146i = this.f426b.mo1146i();
            switch (mo1144h) {
                case 2:
                    if (mo1146i != 0 && mo1146i != 1) {
                        throw C0465e.m312b("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                    }
                    break;
                case 3:
                    mo1144h = 4;
                    break;
                case 4:
                    mo1144h = 7;
                    if (mo1146i < 0) {
                        throw C0465e.m312b("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                    }
                    break;
                case 5:
                    if (mo1146i < 16384 || mo1146i > 16777215) {
                        throw C0465e.m312b("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(mo1146i));
                    }
                    break;
                    break;
            }
            c0474n.m450a(mo1144h, mo1146i);
        }
        bVar.mo356a(c0474n);
    }

    /* renamed from: c */
    private void m373c(b bVar, int i, int i2) throws IOException {
        if (i != 4) {
            throw C0465e.m312b("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
        }
        long mo1146i = this.f426b.mo1146i() & 2147483647L;
        if (mo1146i == 0) {
            throw C0465e.m312b("windowSizeIncrement was 0", Long.valueOf(mo1146i));
        }
        bVar.mo352a(i2, mo1146i);
    }

    /* renamed from: d */
    private void m374d(b bVar, int i, byte b2, int i2) throws IOException {
        if (i2 == 0) {
            throw C0465e.m312b("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        }
        short mo1140g = (b2 & 8) != 0 ? (short) (this.f426b.mo1140g() & 255) : (short) 0;
        bVar.mo355a(this.f426b.mo1146i() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, m364a(m362a(i - 4, b2, mo1140g), mo1140g, b2, i2));
    }

    /* renamed from: e */
    private void m375e(b bVar, int i, byte b2, int i2) throws IOException {
        if (i != 8) {
            throw C0465e.m312b("TYPE_PING length != 8: %s", Integer.valueOf(i));
        }
        if (i2 != 0) {
            throw C0465e.m312b("TYPE_PING streamId != 0", new Object[0]);
        }
        bVar.mo357a((b2 & 1) != 0, this.f426b.mo1146i(), this.f426b.mo1146i());
    }

    /* renamed from: a */
    public final boolean m376a(boolean z, b bVar) throws IOException {
        InterfaceC0537e interfaceC0537e;
        long j;
        try {
            this.f426b.mo1107a(9L);
            int m363a = m363a(this.f426b);
            if (m363a < 0 || m363a > 16384) {
                throw C0465e.m312b("FRAME_SIZE_ERROR: %s", Integer.valueOf(m363a));
            }
            byte mo1140g = (byte) (this.f426b.mo1140g() & 255);
            if (z && mo1140g != 4) {
                throw C0465e.m312b("Expected a SETTINGS frame but was %s", Byte.valueOf(mo1140g));
            }
            byte mo1140g2 = (byte) (this.f426b.mo1140g() & 255);
            int mo1146i = this.f426b.mo1146i() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            if (f425a.isLoggable(Level.FINE)) {
                f425a.fine(C0465e.m311a(true, mo1146i, m363a, mo1140g, mo1140g2));
            }
            switch (mo1140g) {
                case 0:
                    if (mo1146i == 0) {
                        throw C0465e.m312b("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
                    }
                    boolean z2 = (mo1140g2 & 1) != 0;
                    if ((mo1140g2 & 32) != 0) {
                        throw C0465e.m312b("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
                    }
                    short mo1140g3 = (mo1140g2 & 8) != 0 ? (short) (this.f426b.mo1140g() & 255) : (short) 0;
                    bVar.mo358a(z2, mo1146i, this.f426b, m362a(m363a, mo1140g2, mo1140g3));
                    interfaceC0537e = this.f426b;
                    j = mo1140g3;
                    break;
                case 1:
                    if (mo1146i == 0) {
                        throw C0465e.m312b("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
                    }
                    boolean z3 = (mo1140g2 & 1) != 0;
                    short mo1140g4 = (mo1140g2 & 8) != 0 ? (short) (this.f426b.mo1140g() & 255) : (short) 0;
                    if ((mo1140g2 & 32) != 0) {
                        m365a();
                        m363a -= 5;
                    }
                    bVar.mo359a(z3, mo1146i, m364a(m362a(m363a, mo1140g2, mo1140g4), mo1140g4, mo1140g2, mo1146i));
                    return true;
                case 2:
                    if (m363a != 5) {
                        throw C0465e.m312b("TYPE_PRIORITY length: %d != 5", Integer.valueOf(m363a));
                    }
                    if (mo1146i == 0) {
                        throw C0465e.m312b("TYPE_PRIORITY streamId == 0", new Object[0]);
                    }
                    m365a();
                    return true;
                case 3:
                    if (m363a != 4) {
                        throw C0465e.m312b("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(m363a));
                    }
                    if (mo1146i == 0) {
                        throw C0465e.m312b("TYPE_RST_STREAM streamId == 0", new Object[0]);
                    }
                    int mo1146i2 = this.f426b.mo1146i();
                    EnumC0462b fromHttp2 = EnumC0462b.fromHttp2(mo1146i2);
                    if (fromHttp2 == null) {
                        throw C0465e.m312b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(mo1146i2));
                    }
                    bVar.mo353a(mo1146i, fromHttp2);
                    return true;
                case 4:
                    if (mo1146i != 0) {
                        throw C0465e.m312b("TYPE_SETTINGS streamId != 0", new Object[0]);
                    }
                    if ((mo1140g2 & 1) != 0) {
                        if (m363a != 0) {
                            throw C0465e.m312b("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                        }
                        return true;
                    }
                    if (m363a % 6 != 0) {
                        throw C0465e.m312b("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(m363a));
                    }
                    C0474n c0474n = new C0474n();
                    for (int i = 0; i < m363a; i += 6) {
                        short mo1144h = this.f426b.mo1144h();
                        int mo1146i3 = this.f426b.mo1146i();
                        switch (mo1144h) {
                            case 2:
                                if (mo1146i3 != 0 && mo1146i3 != 1) {
                                    throw C0465e.m312b("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                                }
                                break;
                            case 3:
                                mo1144h = 4;
                                break;
                            case 4:
                                mo1144h = 7;
                                if (mo1146i3 < 0) {
                                    throw C0465e.m312b("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                                }
                                break;
                            case 5:
                                if (mo1146i3 < 16384 || mo1146i3 > 16777215) {
                                    throw C0465e.m312b("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(mo1146i3));
                                }
                                break;
                                break;
                        }
                        c0474n.m450a(mo1144h, mo1146i3);
                    }
                    bVar.mo356a(c0474n);
                    return true;
                case 5:
                    if (mo1146i == 0) {
                        throw C0465e.m312b("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
                    }
                    short mo1140g5 = (mo1140g2 & 8) != 0 ? (short) (this.f426b.mo1140g() & 255) : (short) 0;
                    bVar.mo355a(this.f426b.mo1146i() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, m364a(m362a(m363a - 4, mo1140g2, mo1140g5), mo1140g5, mo1140g2, mo1146i));
                    return true;
                case 6:
                    if (m363a != 8) {
                        throw C0465e.m312b("TYPE_PING length != 8: %s", Integer.valueOf(m363a));
                    }
                    if (mo1146i != 0) {
                        throw C0465e.m312b("TYPE_PING streamId != 0", new Object[0]);
                    }
                    bVar.mo357a((mo1140g2 & 1) != 0, this.f426b.mo1146i(), this.f426b.mo1146i());
                    return true;
                case 7:
                    if (m363a < 8) {
                        throw C0465e.m312b("TYPE_GOAWAY length < 8: %s", Integer.valueOf(m363a));
                    }
                    if (mo1146i != 0) {
                        throw C0465e.m312b("TYPE_GOAWAY streamId != 0", new Object[0]);
                    }
                    int mo1146i4 = this.f426b.mo1146i();
                    int mo1146i5 = this.f426b.mo1146i();
                    int i2 = m363a - 8;
                    if (EnumC0462b.fromHttp2(mo1146i5) == null) {
                        throw C0465e.m312b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(mo1146i5));
                    }
                    C0538f c0538f = C0538f.EMPTY;
                    if (i2 > 0) {
                        c0538f = this.f426b.mo1130d(i2);
                    }
                    bVar.mo354a(mo1146i4, c0538f);
                    return true;
                case 8:
                    if (m363a != 4) {
                        throw C0465e.m312b("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(m363a));
                    }
                    long mo1146i6 = this.f426b.mo1146i() & 2147483647L;
                    if (mo1146i6 == 0) {
                        throw C0465e.m312b("windowSizeIncrement was 0", Long.valueOf(mo1146i6));
                    }
                    bVar.mo352a(mo1146i, mo1146i6);
                    return true;
                default:
                    interfaceC0537e = this.f426b;
                    j = m363a;
                    break;
            }
            interfaceC0537e.mo1145h(j);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f426b.close();
    }
}
