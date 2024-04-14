package com.bumptech.glide.load.p049d.p050a;

import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.d.a.v */
/* loaded from: classes.dex */
public final class C0987v extends FilterInputStream {

    /* renamed from: a */
    private volatile byte[] f3085a;

    /* renamed from: b */
    private int f3086b;

    /* renamed from: c */
    private int f3087c;

    /* renamed from: d */
    private int f3088d;

    /* renamed from: e */
    private int f3089e;

    /* renamed from: f */
    private final InterfaceC0872b f3090f;

    /* renamed from: com.bumptech.glide.load.d.a.v$a */
    /* loaded from: classes.dex */
    static class a extends IOException {
        private static final long serialVersionUID = -4338378848813561757L;

        a(String str) {
            super(str);
        }
    }

    public C0987v(@NonNull InputStream inputStream, @NonNull InterfaceC0872b interfaceC0872b) {
        this(inputStream, interfaceC0872b, (byte) 0);
    }

    @VisibleForTesting
    private C0987v(@NonNull InputStream inputStream, @NonNull InterfaceC0872b interfaceC0872b, byte b2) {
        super(inputStream);
        this.f3088d = -1;
        this.f3090f = interfaceC0872b;
        this.f3085a = (byte[]) interfaceC0872b.mo2443a(65536, byte[].class);
    }

    /* renamed from: a */
    private int m2937a(InputStream inputStream, byte[] bArr) throws IOException {
        if (this.f3088d == -1 || this.f3089e - this.f3088d >= this.f3087c) {
            int read = inputStream.read(bArr);
            if (read > 0) {
                this.f3088d = -1;
                this.f3089e = 0;
                this.f3086b = read;
            }
            return read;
        }
        if (this.f3088d == 0 && this.f3087c > bArr.length && this.f3086b == bArr.length) {
            int length = bArr.length * 2;
            if (length > this.f3087c) {
                length = this.f3087c;
            }
            byte[] bArr2 = (byte[]) this.f3090f.mo2443a(length, byte[].class);
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            this.f3085a = bArr2;
            this.f3090f.mo2448b(bArr);
            bArr = bArr2;
        } else if (this.f3088d > 0) {
            System.arraycopy(bArr, this.f3088d, bArr, 0, bArr.length - this.f3088d);
        }
        this.f3089e -= this.f3088d;
        this.f3088d = 0;
        this.f3086b = 0;
        int read2 = inputStream.read(bArr, this.f3089e, bArr.length - this.f3089e);
        this.f3086b = read2 <= 0 ? this.f3089e : this.f3089e + read2;
        return read2;
    }

    /* renamed from: c */
    private static IOException m2938c() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    /* renamed from: a */
    public final synchronized void m2939a() {
        this.f3087c = this.f3085a.length;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = this.in;
        if (this.f3085a != null && inputStream != null) {
        }
        throw m2938c();
        return (this.f3086b - this.f3089e) + inputStream.available();
    }

    /* renamed from: b */
    public final synchronized void m2940b() {
        if (this.f3085a != null) {
            this.f3090f.mo2448b(this.f3085a);
            this.f3085a = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f3085a != null) {
            this.f3090f.mo2448b(this.f3085a);
            this.f3085a = null;
        }
        InputStream inputStream = this.in;
        this.in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i) {
        this.f3087c = Math.max(this.f3087c, i);
        this.f3088d = this.f3089e;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() throws IOException {
        byte[] bArr = this.f3085a;
        InputStream inputStream = this.in;
        if (bArr != null && inputStream != null) {
            if (this.f3089e >= this.f3086b && m2937a(inputStream, bArr) == -1) {
                return -1;
            }
            if (bArr != this.f3085a && (bArr = this.f3085a) == null) {
                throw m2938c();
            }
            if (this.f3086b - this.f3089e <= 0) {
                return -1;
            }
            int i = this.f3089e;
            this.f3089e = i + 1;
            return bArr[i] & 255;
        }
        throw m2938c();
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x008f A[Catch: all -> 0x0098, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0005, B:6:0x0009, B:12:0x000f, B:14:0x0013, B:15:0x0017, B:16:0x0018, B:18:0x001e, B:21:0x002c, B:23:0x0038, B:27:0x0046, B:29:0x004b, B:31:0x004e, B:35:0x008f, B:49:0x005b, B:51:0x0065, B:53:0x0069, B:56:0x006d, B:57:0x0071, B:58:0x0072, B:61:0x0080, B:62:0x007b, B:69:0x0027), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x008d A[SYNTHETIC] */
    @Override // java.io.FilterInputStream, java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized int read(@android.support.annotation.NonNull byte[] r6, int r7, int r8) throws java.io.IOException {
        /*
            r5 = this;
            monitor-enter(r5)
            byte[] r0 = r5.f3085a     // Catch: java.lang.Throwable -> L98
            if (r0 != 0) goto La
            java.io.IOException r6 = m2938c()     // Catch: java.lang.Throwable -> L98
            throw r6     // Catch: java.lang.Throwable -> L98
        La:
            if (r8 != 0) goto Lf
            r6 = 0
            monitor-exit(r5)
            return r6
        Lf:
            java.io.InputStream r1 = r5.in     // Catch: java.lang.Throwable -> L98
            if (r1 != 0) goto L18
            java.io.IOException r6 = m2938c()     // Catch: java.lang.Throwable -> L98
            throw r6     // Catch: java.lang.Throwable -> L98
        L18:
            int r2 = r5.f3089e     // Catch: java.lang.Throwable -> L98
            int r3 = r5.f3086b     // Catch: java.lang.Throwable -> L98
            if (r2 >= r3) goto L45
            int r2 = r5.f3086b     // Catch: java.lang.Throwable -> L98
            int r3 = r5.f3089e     // Catch: java.lang.Throwable -> L98
            int r2 = r2 - r3
            if (r2 < r8) goto L27
            r2 = r8
            goto L2c
        L27:
            int r2 = r5.f3086b     // Catch: java.lang.Throwable -> L98
            int r3 = r5.f3089e     // Catch: java.lang.Throwable -> L98
            int r2 = r2 - r3
        L2c:
            int r3 = r5.f3089e     // Catch: java.lang.Throwable -> L98
            java.lang.System.arraycopy(r0, r3, r6, r7, r2)     // Catch: java.lang.Throwable -> L98
            int r3 = r5.f3089e     // Catch: java.lang.Throwable -> L98
            int r3 = r3 + r2
            r5.f3089e = r3     // Catch: java.lang.Throwable -> L98
            if (r2 == r8) goto L43
            int r3 = r1.available()     // Catch: java.lang.Throwable -> L98
            if (r3 != 0) goto L3f
            goto L43
        L3f:
            int r7 = r7 + r2
            int r2 = r8 - r2
            goto L46
        L43:
            monitor-exit(r5)
            return r2
        L45:
            r2 = r8
        L46:
            int r3 = r5.f3088d     // Catch: java.lang.Throwable -> L98
            r4 = -1
            if (r3 != r4) goto L5b
            int r3 = r0.length     // Catch: java.lang.Throwable -> L98
            if (r2 < r3) goto L5b
            int r3 = r1.read(r6, r7, r2)     // Catch: java.lang.Throwable -> L98
            if (r3 != r4) goto L8a
            if (r2 != r8) goto L58
            monitor-exit(r5)
            return r4
        L58:
            int r8 = r8 - r2
            monitor-exit(r5)
            return r8
        L5b:
            int r3 = r5.m2937a(r1, r0)     // Catch: java.lang.Throwable -> L98
            if (r3 != r4) goto L65
            if (r2 != r8) goto L58
            monitor-exit(r5)
            return r4
        L65:
            byte[] r3 = r5.f3085a     // Catch: java.lang.Throwable -> L98
            if (r0 == r3) goto L72
            byte[] r0 = r5.f3085a     // Catch: java.lang.Throwable -> L98
            if (r0 != 0) goto L72
            java.io.IOException r6 = m2938c()     // Catch: java.lang.Throwable -> L98
            throw r6     // Catch: java.lang.Throwable -> L98
        L72:
            int r3 = r5.f3086b     // Catch: java.lang.Throwable -> L98
            int r4 = r5.f3089e     // Catch: java.lang.Throwable -> L98
            int r3 = r3 - r4
            if (r3 < r2) goto L7b
            r3 = r2
            goto L80
        L7b:
            int r3 = r5.f3086b     // Catch: java.lang.Throwable -> L98
            int r4 = r5.f3089e     // Catch: java.lang.Throwable -> L98
            int r3 = r3 - r4
        L80:
            int r4 = r5.f3089e     // Catch: java.lang.Throwable -> L98
            java.lang.System.arraycopy(r0, r4, r6, r7, r3)     // Catch: java.lang.Throwable -> L98
            int r4 = r5.f3089e     // Catch: java.lang.Throwable -> L98
            int r4 = r4 + r3
            r5.f3089e = r4     // Catch: java.lang.Throwable -> L98
        L8a:
            int r2 = r2 - r3
            if (r2 != 0) goto L8f
            monitor-exit(r5)
            return r8
        L8f:
            int r4 = r1.available()     // Catch: java.lang.Throwable -> L98
            if (r4 != 0) goto L96
            goto L58
        L96:
            int r7 = r7 + r3
            goto L46
        L98:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.p049d.p050a.C0987v.read(byte[], int, int):int");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() throws IOException {
        if (this.f3085a == null) {
            throw new IOException("Stream is closed");
        }
        if (-1 == this.f3088d) {
            throw new a("Mark has been invalidated, pos: " + this.f3089e + " markLimit: " + this.f3087c);
        }
        this.f3089e = this.f3088d;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j) throws IOException {
        if (j < 1) {
            return 0L;
        }
        byte[] bArr = this.f3085a;
        if (bArr == null) {
            throw m2938c();
        }
        InputStream inputStream = this.in;
        if (inputStream == null) {
            throw m2938c();
        }
        if (this.f3086b - this.f3089e >= j) {
            this.f3089e = (int) (this.f3089e + j);
            return j;
        }
        long j2 = this.f3086b - this.f3089e;
        this.f3089e = this.f3086b;
        if (this.f3088d == -1 || j > this.f3087c) {
            return j2 + inputStream.skip(j - j2);
        }
        if (m2937a(inputStream, bArr) == -1) {
            return j2;
        }
        if (this.f3086b - this.f3089e >= j - j2) {
            this.f3089e = (int) ((this.f3089e + j) - j2);
            return j;
        }
        long j3 = (j2 + this.f3086b) - this.f3089e;
        this.f3089e = this.f3086b;
        return j3;
    }
}
