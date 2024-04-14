package p017c;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import p017c.C0530a;

/* renamed from: c.p */
/* loaded from: classes.dex */
public final class C0548p {

    /* renamed from: a */
    static final Logger f1120a = Logger.getLogger(C0548p.class.getName());

    private C0548p() {
    }

    /* renamed from: a */
    public static InterfaceC0536d m1216a(InterfaceC0556x interfaceC0556x) {
        return new C0551s(interfaceC0556x);
    }

    /* renamed from: a */
    public static InterfaceC0537e m1217a(InterfaceC0557y interfaceC0557y) {
        return new C0552t(interfaceC0557y);
    }

    /* renamed from: a */
    public static InterfaceC0556x m1218a() {
        return new InterfaceC0556x() { // from class: c.p.3
            @Override // p017c.InterfaceC0556x
            /* renamed from: a */
            public final void mo114a(C0535c c0535c, long j) throws IOException {
                c0535c.mo1145h(j);
            }

            @Override // p017c.InterfaceC0556x, java.io.Closeable, java.lang.AutoCloseable
            public final void close() throws IOException {
            }

            @Override // p017c.InterfaceC0556x, java.io.Flushable
            public final void flush() throws IOException {
            }

            @Override // p017c.InterfaceC0556x
            public final C0558z timeout() {
                return C0558z.f1157c;
            }
        };
    }

    /* renamed from: a */
    private static InterfaceC0556x m1219a(OutputStream outputStream) {
        return m1220a(outputStream, new C0558z());
    }

    /* renamed from: a */
    private static InterfaceC0556x m1220a(final OutputStream outputStream, final C0558z c0558z) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        if (c0558z == null) {
            throw new IllegalArgumentException("timeout == null");
        }
        return new InterfaceC0556x() { // from class: c.p.1
            @Override // p017c.InterfaceC0556x
            /* renamed from: a */
            public final void mo114a(C0535c c0535c, long j) throws IOException {
                C0532ab.m1057a(c0535c.f1086c, 0L, j);
                while (j > 0) {
                    C0558z.this.mo1188f();
                    C0553u c0553u = c0535c.f1085b;
                    int min = (int) Math.min(j, c0553u.f1149e - c0553u.f1148d);
                    outputStream.write(c0553u.f1147c, c0553u.f1148d, min);
                    c0553u.f1148d += min;
                    long j2 = min;
                    long j3 = j - j2;
                    c0535c.f1086c -= j2;
                    if (c0553u.f1148d == c0553u.f1149e) {
                        c0535c.f1085b = c0553u.m1238a();
                        C0554v.m1242a(c0553u);
                    }
                    j = j3;
                }
            }

            @Override // p017c.InterfaceC0556x, java.io.Closeable, java.lang.AutoCloseable
            public final void close() throws IOException {
                outputStream.close();
            }

            @Override // p017c.InterfaceC0556x, java.io.Flushable
            public final void flush() throws IOException {
                outputStream.flush();
            }

            @Override // p017c.InterfaceC0556x
            public final C0558z timeout() {
                return C0558z.this;
            }

            public final String toString() {
                return "sink(" + outputStream + ")";
            }
        };
    }

    /* renamed from: a */
    public static InterfaceC0556x m1221a(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        C0530a m1230c = m1230c(socket);
        return new C0530a.AnonymousClass1(m1220a(socket.getOutputStream(), m1230c));
    }

    /* renamed from: a */
    public static InterfaceC0557y m1222a(File file) throws FileNotFoundException {
        if (file == null) {
            throw new IllegalArgumentException("file == null");
        }
        return m1223a(new FileInputStream(file));
    }

    /* renamed from: a */
    public static InterfaceC0557y m1223a(InputStream inputStream) {
        return m1224a(inputStream, new C0558z());
    }

    /* renamed from: a */
    private static InterfaceC0557y m1224a(final InputStream inputStream, final C0558z c0558z) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (c0558z == null) {
            throw new IllegalArgumentException("timeout == null");
        }
        return new InterfaceC0557y() { // from class: c.p.2
            @Override // p017c.InterfaceC0557y, java.io.Closeable, java.lang.AutoCloseable
            public final void close() throws IOException {
                inputStream.close();
            }

            @Override // p017c.InterfaceC0557y
            public final long read(C0535c c0535c, long j) throws IOException {
                if (j < 0) {
                    throw new IllegalArgumentException("byteCount < 0: " + j);
                }
                if (j == 0) {
                    return 0L;
                }
                try {
                    C0558z.this.mo1188f();
                    C0553u m1141g = c0535c.m1141g(1);
                    int read = inputStream.read(m1141g.f1147c, m1141g.f1149e, (int) Math.min(j, 8192 - m1141g.f1149e));
                    if (read == -1) {
                        return -1L;
                    }
                    m1141g.f1149e += read;
                    long j2 = read;
                    c0535c.f1086c += j2;
                    return j2;
                } catch (AssertionError e) {
                    if (C0548p.m1226a(e)) {
                        throw new IOException(e);
                    }
                    throw e;
                }
            }

            @Override // p017c.InterfaceC0557y
            public final C0558z timeout() {
                return C0558z.this;
            }

            public final String toString() {
                return "source(" + inputStream + ")";
            }
        };
    }

    @IgnoreJRERequirement
    /* renamed from: a */
    private static InterfaceC0557y m1225a(Path path, OpenOption... openOptionArr) throws IOException {
        if (path == null) {
            throw new IllegalArgumentException("path == null");
        }
        return m1223a(Files.newInputStream(path, openOptionArr));
    }

    /* renamed from: a */
    static boolean m1226a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: b */
    public static InterfaceC0556x m1227b(File file) throws FileNotFoundException {
        if (file == null) {
            throw new IllegalArgumentException("file == null");
        }
        return m1219a(new FileOutputStream(file));
    }

    @IgnoreJRERequirement
    /* renamed from: b */
    private static InterfaceC0556x m1228b(Path path, OpenOption... openOptionArr) throws IOException {
        if (path == null) {
            throw new IllegalArgumentException("path == null");
        }
        return m1219a(Files.newOutputStream(path, openOptionArr));
    }

    /* renamed from: b */
    public static InterfaceC0557y m1229b(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        C0530a m1230c = m1230c(socket);
        return new C0530a.AnonymousClass2(m1224a(socket.getInputStream(), m1230c));
    }

    /* renamed from: c */
    private static C0530a m1230c(final Socket socket) {
        return new C0530a() { // from class: c.p.4
            @Override // p017c.C0530a
            /* renamed from: a */
            protected final IOException mo405a(@Nullable IOException iOException) {
                SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
                if (iOException != null) {
                    socketTimeoutException.initCause(iOException);
                }
                return socketTimeoutException;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // p017c.C0530a
            /* renamed from: a */
            protected final void mo406a() {
                Level level;
                StringBuilder sb;
                Logger logger;
                Exception exc;
                try {
                    socket.close();
                } catch (AssertionError e) {
                    if (!C0548p.m1226a(e)) {
                        throw e;
                    }
                    Logger logger2 = C0548p.f1120a;
                    level = Level.WARNING;
                    sb = new StringBuilder("Failed to close timed out socket ");
                    exc = e;
                    logger = logger2;
                    sb.append(socket);
                    logger.log(level, sb.toString(), (Throwable) exc);
                } catch (Exception e2) {
                    Logger logger3 = C0548p.f1120a;
                    level = Level.WARNING;
                    sb = new StringBuilder("Failed to close timed out socket ");
                    exc = e2;
                    logger = logger3;
                    sb.append(socket);
                    logger.log(level, sb.toString(), (Throwable) exc);
                }
            }
        };
    }

    /* renamed from: c */
    public static InterfaceC0556x m1231c(File file) throws FileNotFoundException {
        if (file == null) {
            throw new IllegalArgumentException("file == null");
        }
        return m1219a(new FileOutputStream(file, true));
    }
}
