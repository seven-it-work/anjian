package p003b;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import javax.annotation.Nullable;
import p003b.p004a.C0439c;
import p017c.C0535c;
import p017c.InterfaceC0537e;

/* renamed from: b.af */
/* loaded from: classes.dex */
public abstract class AbstractC0497af implements Closeable {
    private Reader reader;

    /* renamed from: b.af$a */
    /* loaded from: classes.dex */
    static final class a extends Reader {

        /* renamed from: a */
        private final InterfaceC0537e f690a;

        /* renamed from: b */
        private final Charset f691b;

        /* renamed from: c */
        private boolean f692c;

        /* renamed from: d */
        private Reader f693d;

        a(InterfaceC0537e interfaceC0537e, Charset charset) {
            this.f690a = interfaceC0537e;
            this.f691b = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            this.f692c = true;
            if (this.f693d != null) {
                this.f693d.close();
            } else {
                this.f690a.close();
            }
        }

        @Override // java.io.Reader
        public final int read(char[] cArr, int i, int i2) throws IOException {
            if (this.f692c) {
                throw new IOException("Stream closed");
            }
            Reader reader = this.f693d;
            if (reader == null) {
                InputStreamReader inputStreamReader = new InputStreamReader(this.f690a.mo1135e(), C0439c.m139a(this.f690a, this.f691b));
                this.f693d = inputStreamReader;
                reader = inputStreamReader;
            }
            return reader.read(cArr, i, i2);
        }
    }

    private Charset charset() {
        C0526x contentType = contentType();
        return contentType != null ? contentType.m960a(C0439c.f167e) : C0439c.f167e;
    }

    public static AbstractC0497af create(@Nullable final C0526x c0526x, final long j, final InterfaceC0537e interfaceC0537e) {
        if (interfaceC0537e == null) {
            throw new NullPointerException("source == null");
        }
        return new AbstractC0497af() { // from class: b.af.1
            @Override // p003b.AbstractC0497af
            public final long contentLength() {
                return j;
            }

            @Override // p003b.AbstractC0497af
            @Nullable
            public final C0526x contentType() {
                return C0526x.this;
            }

            @Override // p003b.AbstractC0497af
            public final InterfaceC0537e source() {
                return interfaceC0537e;
            }
        };
    }

    public static AbstractC0497af create(@Nullable C0526x c0526x, String str) {
        Charset charset = C0439c.f167e;
        if (c0526x != null && (charset = c0526x.m960a((Charset) null)) == null) {
            charset = C0439c.f167e;
            c0526x = C0526x.m956a(c0526x + "; charset=utf-8");
        }
        C0535c mo1117b = new C0535c().mo1117b(str, charset);
        return create(c0526x, mo1117b.f1086c, mo1117b);
    }

    public static AbstractC0497af create(@Nullable C0526x c0526x, byte[] bArr) {
        return create(c0526x, bArr.length, new C0535c().mo1129d(bArr));
    }

    public final InputStream byteStream() {
        return source().mo1135e();
    }

    public final byte[] bytes() throws IOException {
        long contentLength = contentLength();
        if (contentLength > 2147483647L) {
            throw new IOException("Cannot buffer entire body for content length: " + contentLength);
        }
        InterfaceC0537e source = source();
        try {
            byte[] mo1172v = source.mo1172v();
            C0439c.m144a(source);
            if (contentLength == -1 || contentLength == mo1172v.length) {
                return mo1172v;
            }
            throw new IOException("Content-Length (" + contentLength + ") and stream length (" + mo1172v.length + ") disagree");
        } catch (Throwable th) {
            C0439c.m144a(source);
            throw th;
        }
    }

    public final Reader charStream() {
        Reader reader = this.reader;
        if (reader != null) {
            return reader;
        }
        a aVar = new a(source(), charset());
        this.reader = aVar;
        return aVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        C0439c.m144a(source());
    }

    public abstract long contentLength();

    @Nullable
    public abstract C0526x contentType();

    public abstract InterfaceC0537e source();

    public final String string() throws IOException {
        InterfaceC0537e source = source();
        try {
            return source.mo1106a(C0439c.m139a(source, charset()));
        } finally {
            C0439c.m144a(source);
        }
    }
}
