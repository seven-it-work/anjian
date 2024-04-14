package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.util.b */
/* loaded from: classes.dex */
public final class C1077b extends FilterInputStream {

    /* renamed from: a */
    private static final String f3443a = "ContentLengthStream";

    /* renamed from: b */
    private static final int f3444b = -1;

    /* renamed from: c */
    private final long f3445c;

    /* renamed from: d */
    private int f3446d;

    private C1077b(@NonNull InputStream inputStream, long j) {
        super(inputStream);
        this.f3445c = j;
    }

    /* renamed from: a */
    private int m3443a(int i) throws IOException {
        if (i >= 0) {
            this.f3446d += i;
            return i;
        }
        if (this.f3445c - this.f3446d <= 0) {
            return i;
        }
        throw new IOException("Failed to read all expected data, expected: " + this.f3445c + ", but read: " + this.f3446d);
    }

    /* renamed from: a */
    private static int m3444a(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            if (!Log.isLoggable(f3443a, 3)) {
                return -1;
            }
            Log.d(f3443a, "failed to parse content length header: " + str, e);
            return -1;
        }
    }

    @NonNull
    /* renamed from: a */
    public static InputStream m3445a(@NonNull InputStream inputStream, long j) {
        return new C1077b(inputStream, j);
    }

    @NonNull
    /* renamed from: a */
    private static InputStream m3446a(@NonNull InputStream inputStream, @Nullable String str) {
        return m3445a(inputStream, m3444a(str));
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() throws IOException {
        return (int) Math.max(this.f3445c - this.f3446d, this.in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() throws IOException {
        int read;
        read = super.read();
        m3443a(read >= 0 ? 1 : -1);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i, int i2) throws IOException {
        return m3443a(super.read(bArr, i, i2));
    }
}
