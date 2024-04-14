package com.bumptech.glide.load.p040a;

import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import java.io.IOException;
import java.io.OutputStream;

/* renamed from: com.bumptech.glide.load.a.c */
/* loaded from: classes.dex */
public final class C0857c extends OutputStream {

    /* renamed from: a */
    @NonNull
    private final OutputStream f2446a;

    /* renamed from: b */
    private byte[] f2447b;

    /* renamed from: c */
    private InterfaceC0872b f2448c;

    /* renamed from: d */
    private int f2449d;

    public C0857c(@NonNull OutputStream outputStream, @NonNull InterfaceC0872b interfaceC0872b) {
        this(outputStream, interfaceC0872b, (byte) 0);
    }

    @VisibleForTesting
    private C0857c(@NonNull OutputStream outputStream, InterfaceC0872b interfaceC0872b, byte b2) {
        this.f2446a = outputStream;
        this.f2448c = interfaceC0872b;
        this.f2447b = (byte[]) interfaceC0872b.mo2443a(65536, byte[].class);
    }

    /* renamed from: a */
    private void m2406a() throws IOException {
        if (this.f2449d > 0) {
            this.f2446a.write(this.f2447b, 0, this.f2449d);
            this.f2449d = 0;
        }
    }

    /* renamed from: b */
    private void m2407b() throws IOException {
        if (this.f2449d == this.f2447b.length) {
            m2406a();
        }
    }

    /* renamed from: c */
    private void m2408c() {
        if (this.f2447b != null) {
            this.f2448c.mo2448b(this.f2447b);
            this.f2447b = null;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        try {
            flush();
            this.f2446a.close();
            if (this.f2447b != null) {
                this.f2448c.mo2448b(this.f2447b);
                this.f2447b = null;
            }
        } catch (Throwable th) {
            this.f2446a.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        m2406a();
        this.f2446a.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        byte[] bArr = this.f2447b;
        int i2 = this.f2449d;
        this.f2449d = i2 + 1;
        bArr[i2] = (byte) i;
        m2407b();
    }

    @Override // java.io.OutputStream
    public final void write(@NonNull byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        do {
            int i4 = i2 - i3;
            int i5 = i + i3;
            if (this.f2449d == 0 && i4 >= this.f2447b.length) {
                this.f2446a.write(bArr, i5, i4);
                return;
            }
            int min = Math.min(i4, this.f2447b.length - this.f2449d);
            System.arraycopy(bArr, i5, this.f2447b, this.f2449d, min);
            this.f2449d += min;
            i3 += min;
            m2407b();
        } while (i3 < i2);
    }
}
