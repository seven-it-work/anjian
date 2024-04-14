package com.bumptech.glide.load.p040a;

import android.support.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.a.g */
/* loaded from: classes.dex */
public final class C0861g extends FilterInputStream {

    /* renamed from: a */
    private static final int f2453a = 2;

    /* renamed from: b */
    private static final byte[] f2454b = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};

    /* renamed from: c */
    private static final int f2455c = 29;

    /* renamed from: d */
    private static final int f2456d = 31;

    /* renamed from: e */
    private final byte f2457e;

    /* renamed from: f */
    private int f2458f;

    public C0861g(InputStream inputStream, int i) {
        super(inputStream);
        if (i >= -1 && i <= 8) {
            this.f2457e = (byte) i;
        } else {
            throw new IllegalArgumentException("Cannot add invalid orientation: " + i);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int read = (this.f2458f < 2 || this.f2458f > f2456d) ? super.read() : this.f2458f == f2456d ? this.f2457e : f2454b[this.f2458f - 2] & 255;
        if (read != -1) {
            this.f2458f++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (this.f2458f > f2456d) {
            i3 = super.read(bArr, i, i2);
        } else if (this.f2458f == f2456d) {
            bArr[i] = this.f2457e;
            i3 = 1;
        } else if (this.f2458f < 2) {
            i3 = super.read(bArr, i, 2 - this.f2458f);
        } else {
            int min = Math.min(f2456d - this.f2458f, i2);
            System.arraycopy(f2454b, this.f2458f - 2, bArr, i, min);
            i3 = min;
        }
        if (i3 > 0) {
            this.f2458f += i3;
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) throws IOException {
        long skip = super.skip(j);
        if (skip > 0) {
            this.f2458f = (int) (this.f2458f + skip);
        }
        return skip;
    }
}
