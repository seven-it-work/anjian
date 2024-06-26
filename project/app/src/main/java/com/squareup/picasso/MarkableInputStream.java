package com.squareup.picasso;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
final class MarkableInputStream extends InputStream {
    private static final int DEFAULT_BUFFER_SIZE = 4096;
    private long defaultMark;

    /* renamed from: in */
    private final InputStream f8840in;
    private long limit;
    private long offset;
    private long reset;

    public MarkableInputStream(InputStream inputStream) {
        this(inputStream, 4096);
    }

    public MarkableInputStream(InputStream inputStream, int i) {
        this.defaultMark = -1L;
        this.f8840in = inputStream.markSupported() ? inputStream : new BufferedInputStream(inputStream, i);
    }

    private void setLimit(long j) {
        try {
            if (this.reset >= this.offset || this.offset > this.limit) {
                this.reset = this.offset;
                this.f8840in.mark((int) (j - this.offset));
            } else {
                this.f8840in.reset();
                this.f8840in.mark((int) (j - this.reset));
                skip(this.reset, this.offset);
            }
            this.limit = j;
        } catch (IOException e) {
            throw new IllegalStateException("Unable to mark: " + e);
        }
    }

    private void skip(long j, long j2) throws IOException {
        while (j < j2) {
            long skip = this.f8840in.skip(j2 - j);
            if (skip == 0) {
                if (read() == -1) {
                    return;
                } else {
                    skip = 1;
                }
            }
            j += skip;
        }
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        return this.f8840in.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f8840in.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.defaultMark = savePosition(i);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.f8840in.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        int read = this.f8840in.read();
        if (read != -1) {
            this.offset++;
        }
        return read;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        int read = this.f8840in.read(bArr);
        if (read != -1) {
            this.offset += read;
        }
        return read;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.f8840in.read(bArr, i, i2);
        if (read != -1) {
            this.offset += read;
        }
        return read;
    }

    @Override // java.io.InputStream
    public final void reset() throws IOException {
        reset(this.defaultMark);
    }

    public final void reset(long j) throws IOException {
        if (this.offset > this.limit || j < this.reset) {
            throw new IOException("Cannot reset");
        }
        this.f8840in.reset();
        skip(this.reset, j);
        this.offset = j;
    }

    public final long savePosition(int i) {
        long j = this.offset + i;
        if (this.limit < j) {
            setLimit(j);
        }
        return this.offset;
    }

    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        long skip = this.f8840in.skip(j);
        this.offset += skip;
        return skip;
    }
}
