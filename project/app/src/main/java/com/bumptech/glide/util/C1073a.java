package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.bumptech.glide.util.a */
/* loaded from: classes.dex */
public final class C1073a {

    /* renamed from: a */
    private static final int f3424a = 16384;

    /* renamed from: b */
    private static final AtomicReference<byte[]> f3425b = new AtomicReference<>();

    /* renamed from: com.bumptech.glide.util.a$a */
    /* loaded from: classes.dex */
    private static class a extends InputStream {

        /* renamed from: a */
        private static final int f3426a = -1;

        /* renamed from: b */
        @NonNull
        private final ByteBuffer f3427b;

        /* renamed from: c */
        private int f3428c = -1;

        a(@NonNull ByteBuffer byteBuffer) {
            this.f3427b = byteBuffer;
        }

        @Override // java.io.InputStream
        public final int available() {
            return this.f3427b.remaining();
        }

        @Override // java.io.InputStream
        public final synchronized void mark(int i) {
            this.f3428c = this.f3427b.position();
        }

        @Override // java.io.InputStream
        public final boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public final int read() {
            if (this.f3427b.hasRemaining()) {
                return this.f3427b.get();
            }
            return -1;
        }

        @Override // java.io.InputStream
        public final int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
            if (!this.f3427b.hasRemaining()) {
                return -1;
            }
            int min = Math.min(i2, available());
            this.f3427b.get(bArr, i, min);
            return min;
        }

        @Override // java.io.InputStream
        public final synchronized void reset() throws IOException {
            if (this.f3428c == -1) {
                throw new IOException("Cannot reset to unset mark position");
            }
            this.f3427b.position(this.f3428c);
        }

        @Override // java.io.InputStream
        public final long skip(long j) throws IOException {
            if (!this.f3427b.hasRemaining()) {
                return -1L;
            }
            long min = Math.min(j, available());
            this.f3427b.position((int) (this.f3427b.position() + min));
            return min;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.util.a$b */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a */
        final int f3435a;

        /* renamed from: b */
        final int f3436b;

        /* renamed from: c */
        final byte[] f3437c;

        b(@NonNull byte[] bArr, int i, int i2) {
            this.f3437c = bArr;
            this.f3435a = i;
            this.f3436b = i2;
        }
    }

    private C1073a() {
    }

    @NonNull
    /* renamed from: a */
    public static ByteBuffer m3417a(@NonNull File file) throws IOException {
        RandomAccessFile randomAccessFile;
        FileChannel channel;
        FileChannel fileChannel = null;
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new IOException("File too large to map into memory");
            }
            if (length == 0) {
                throw new IOException("File unsuitable for memory mapping");
            }
            randomAccessFile = new RandomAccessFile(file, "r");
            try {
                channel = randomAccessFile.getChannel();
            } catch (Throwable th) {
                th = th;
            }
            try {
                MappedByteBuffer load = channel.map(FileChannel.MapMode.READ_ONLY, 0L, length).load();
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException unused) {
                    }
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
                return load;
            } catch (Throwable th2) {
                fileChannel = channel;
                th = th2;
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile == null) {
                    throw th;
                }
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
        }
    }

    @NonNull
    /* renamed from: a */
    private static ByteBuffer m3418a(@NonNull InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        byte[] andSet = f3425b.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[16384];
        }
        while (true) {
            int read = inputStream.read(andSet);
            if (read < 0) {
                f3425b.set(andSet);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return (ByteBuffer) ByteBuffer.allocateDirect(byteArray.length).put(byteArray).position(0);
            }
            byteArrayOutputStream.write(andSet, 0, read);
        }
    }

    /* renamed from: a */
    public static void m3419a(@NonNull ByteBuffer byteBuffer, @NonNull File file) throws IOException {
        FileChannel fileChannel;
        RandomAccessFile randomAccessFile;
        byteBuffer.position(0);
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                fileChannel = randomAccessFile.getChannel();
            } catch (Throwable th) {
                th = th;
                fileChannel = null;
            }
        } catch (Throwable th2) {
            th = th2;
            fileChannel = null;
            randomAccessFile = null;
        }
        try {
            fileChannel.write(byteBuffer);
            fileChannel.force(false);
            fileChannel.close();
            randomAccessFile.close();
            if (fileChannel != null) {
                try {
                    fileChannel.close();
                } catch (IOException unused) {
                }
            }
            try {
                randomAccessFile.close();
            } catch (IOException unused2) {
            }
        } catch (Throwable th3) {
            th = th3;
            if (fileChannel != null) {
                try {
                    fileChannel.close();
                } catch (IOException unused3) {
                }
            }
            if (randomAccessFile == null) {
                throw th;
            }
            try {
                randomAccessFile.close();
                throw th;
            } catch (IOException unused4) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private static void m3420a(@NonNull ByteBuffer byteBuffer, @NonNull OutputStream outputStream) throws IOException {
        b m3423c = m3423c(byteBuffer);
        if (m3423c != null) {
            outputStream.write(m3423c.f3437c, m3423c.f3435a, m3423c.f3435a + m3423c.f3436b);
            return;
        }
        byte[] andSet = f3425b.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[16384];
        }
        while (byteBuffer.remaining() > 0) {
            int min = Math.min(byteBuffer.remaining(), andSet.length);
            byteBuffer.get(andSet, 0, min);
            outputStream.write(andSet, 0, min);
        }
        f3425b.set(andSet);
    }

    @NonNull
    /* renamed from: a */
    public static byte[] m3421a(@NonNull ByteBuffer byteBuffer) {
        b m3423c = m3423c(byteBuffer);
        if (m3423c != null && m3423c.f3435a == 0 && m3423c.f3436b == m3423c.f3437c.length) {
            return byteBuffer.array();
        }
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[asReadOnlyBuffer.limit()];
        asReadOnlyBuffer.position(0);
        asReadOnlyBuffer.get(bArr);
        return bArr;
    }

    @NonNull
    /* renamed from: b */
    public static InputStream m3422b(@NonNull ByteBuffer byteBuffer) {
        return new a(byteBuffer);
    }

    @Nullable
    /* renamed from: c */
    private static b m3423c(@NonNull ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new b(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }
}
