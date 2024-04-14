package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

/* renamed from: com.bumptech.glide.util.c */
/* loaded from: classes.dex */
public final class C1078c extends InputStream {

    /* renamed from: b */
    private static final Queue<C1078c> f3447b = C1086k.m3484a(0);

    /* renamed from: a */
    public IOException f3448a;

    /* renamed from: c */
    private InputStream f3449c;

    C1078c() {
    }

    @NonNull
    /* renamed from: a */
    public static C1078c m3447a(@NonNull InputStream inputStream) {
        C1078c poll;
        synchronized (f3447b) {
            poll = f3447b.poll();
        }
        if (poll == null) {
            poll = new C1078c();
        }
        poll.f3449c = inputStream;
        return poll;
    }

    /* renamed from: b */
    private static void m3448b() {
        while (!f3447b.isEmpty()) {
            f3447b.remove();
        }
    }

    /* renamed from: b */
    private void m3449b(@NonNull InputStream inputStream) {
        this.f3449c = inputStream;
    }

    @Nullable
    /* renamed from: c */
    private IOException m3450c() {
        return this.f3448a;
    }

    /* renamed from: a */
    public final void m3451a() {
        this.f3448a = null;
        this.f3449c = null;
        synchronized (f3447b) {
            f3447b.offer(this);
        }
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        return this.f3449c.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f3449c.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.f3449c.mark(i);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.f3449c.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() {
        try {
            return this.f3449c.read();
        } catch (IOException e) {
            this.f3448a = e;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        try {
            return this.f3449c.read(bArr);
        } catch (IOException e) {
            this.f3448a = e;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        try {
            return this.f3449c.read(bArr, i, i2);
        } catch (IOException e) {
            this.f3448a = e;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public final synchronized void reset() throws IOException {
        this.f3449c.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        try {
            return this.f3449c.skip(j);
        } catch (IOException e) {
            this.f3448a = e;
            return 0L;
        }
    }
}
