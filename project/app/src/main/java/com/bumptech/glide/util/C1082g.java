package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.util.g */
/* loaded from: classes.dex */
public final class C1082g extends FilterInputStream {

    /* renamed from: a */
    private static final int f3456a = Integer.MIN_VALUE;

    /* renamed from: b */
    private static final int f3457b = -1;

    /* renamed from: c */
    private int f3458c;

    public C1082g(@NonNull InputStream inputStream) {
        super(inputStream);
        this.f3458c = Integer.MIN_VALUE;
    }

    /* renamed from: a */
    private long m3465a(long j) {
        if (this.f3458c == 0) {
            return -1L;
        }
        return (this.f3458c == Integer.MIN_VALUE || j <= ((long) this.f3458c)) ? j : this.f3458c;
    }

    /* renamed from: b */
    private void m3466b(long j) {
        if (this.f3458c == Integer.MIN_VALUE || j == -1) {
            return;
        }
        this.f3458c = (int) (this.f3458c - j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        return this.f3458c == Integer.MIN_VALUE ? super.available() : Math.min(this.f3458c, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i) {
        super.mark(i);
        this.f3458c = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (m3465a(1L) == -1) {
            return -1;
        }
        int read = super.read();
        m3466b(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int m3465a = (int) m3465a(i2);
        if (m3465a == -1) {
            return -1;
        }
        int read = super.read(bArr, i, m3465a);
        m3466b(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() throws IOException {
        super.reset();
        this.f3458c = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) throws IOException {
        long m3465a = m3465a(j);
        if (m3465a == -1) {
            return 0L;
        }
        long skip = super.skip(m3465a);
        m3466b(skip);
        return skip;
    }
}
