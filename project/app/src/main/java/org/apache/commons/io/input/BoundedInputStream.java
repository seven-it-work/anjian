package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class BoundedInputStream extends InputStream {

    /* renamed from: in */
    private final InputStream f10438in;
    private long mark;
    private final long max;
    private long pos;
    private boolean propagateClose;

    public BoundedInputStream(InputStream inputStream) {
        this(inputStream, -1L);
    }

    public BoundedInputStream(InputStream inputStream, long j) {
        this.pos = 0L;
        this.mark = -1L;
        this.propagateClose = true;
        this.max = j;
        this.f10438in = inputStream;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (this.max < 0 || this.pos < this.max) {
            return this.f10438in.available();
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.propagateClose) {
            this.f10438in.close();
        }
    }

    public boolean isPropagateClose() {
        return this.propagateClose;
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        this.f10438in.mark(i);
        this.mark = this.pos;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f10438in.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.max >= 0 && this.pos >= this.max) {
            return -1;
        }
        int read = this.f10438in.read();
        this.pos++;
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.max >= 0 && this.pos >= this.max) {
            return -1;
        }
        int read = this.f10438in.read(bArr, i, (int) (this.max >= 0 ? Math.min(i2, this.max - this.pos) : i2));
        if (read == -1) {
            return -1;
        }
        this.pos += read;
        return read;
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f10438in.reset();
        this.pos = this.mark;
    }

    public void setPropagateClose(boolean z) {
        this.propagateClose = z;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        if (this.max >= 0) {
            j = Math.min(j, this.max - this.pos);
        }
        long skip = this.f10438in.skip(j);
        this.pos += skip;
        return skip;
    }

    public String toString() {
        return this.f10438in.toString();
    }
}
