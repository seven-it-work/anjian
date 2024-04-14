package com.bumptech.glide.p035b;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* renamed from: com.bumptech.glide.b.b */
/* loaded from: classes.dex */
final class C0814b implements Closeable {

    /* renamed from: c */
    private static final byte f2239c = 13;

    /* renamed from: d */
    private static final byte f2240d = 10;

    /* renamed from: a */
    final Charset f2241a;

    /* renamed from: b */
    int f2242b;

    /* renamed from: e */
    private final InputStream f2243e;

    /* renamed from: f */
    private byte[] f2244f;

    /* renamed from: g */
    private int f2245g;

    public C0814b(InputStream inputStream, Charset charset) {
        this(inputStream, charset, (byte) 0);
    }

    private C0814b(InputStream inputStream, Charset charset, byte b2) {
        if (inputStream == null || charset == null) {
            throw new NullPointerException();
        }
        if (!charset.equals(C0815c.f2247a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f2243e = inputStream;
        this.f2241a = charset;
        this.f2244f = new byte[8192];
    }

    /* renamed from: b */
    private boolean m2188b() {
        return this.f2242b == -1;
    }

    /* renamed from: c */
    private void m2189c() throws IOException {
        int read = this.f2243e.read(this.f2244f, 0, this.f2244f.length);
        if (read == -1) {
            throw new EOFException();
        }
        this.f2245g = 0;
        this.f2242b = read;
    }

    /* renamed from: a */
    public final String m2190a() throws IOException {
        int i;
        int i2;
        synchronized (this.f2243e) {
            if (this.f2244f == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.f2245g >= this.f2242b) {
                m2189c();
            }
            for (int i3 = this.f2245g; i3 != this.f2242b; i3++) {
                if (this.f2244f[i3] == 10) {
                    if (i3 != this.f2245g) {
                        i2 = i3 - 1;
                        if (this.f2244f[i2] == 13) {
                            String str = new String(this.f2244f, this.f2245g, i2 - this.f2245g, this.f2241a.name());
                            this.f2245g = i3 + 1;
                            return str;
                        }
                    }
                    i2 = i3;
                    String str2 = new String(this.f2244f, this.f2245g, i2 - this.f2245g, this.f2241a.name());
                    this.f2245g = i3 + 1;
                    return str2;
                }
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((this.f2242b - this.f2245g) + 80) { // from class: com.bumptech.glide.b.b.1
                @Override // java.io.ByteArrayOutputStream
                public final String toString() {
                    try {
                        return new String(this.buf, 0, (this.count <= 0 || this.buf[this.count + (-1)] != 13) ? this.count : this.count - 1, C0814b.this.f2241a.name());
                    } catch (UnsupportedEncodingException e) {
                        throw new AssertionError(e);
                    }
                }
            };
            loop1: while (true) {
                byteArrayOutputStream.write(this.f2244f, this.f2245g, this.f2242b - this.f2245g);
                this.f2242b = -1;
                m2189c();
                i = this.f2245g;
                while (i != this.f2242b) {
                    if (this.f2244f[i] == 10) {
                        break loop1;
                    }
                    i++;
                }
            }
            if (i != this.f2245g) {
                byteArrayOutputStream.write(this.f2244f, this.f2245g, i - this.f2245g);
            }
            this.f2245g = i + 1;
            return byteArrayOutputStream.toString();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this.f2243e) {
            if (this.f2244f != null) {
                this.f2244f = null;
                this.f2243e.close();
            }
        }
    }
}
