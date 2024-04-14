package p003b.p004a.p006b;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import p017c.C0535c;

/* renamed from: b.a.b.a */
/* loaded from: classes.dex */
final class C0437a {

    /* renamed from: a */
    private static final int f140a = 8192;

    /* renamed from: b */
    private final byte[] f141b = new byte[8192];

    /* renamed from: c */
    private final ByteBuffer f142c = ByteBuffer.wrap(this.f141b);

    /* renamed from: d */
    private final FileChannel f143d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0437a(FileChannel fileChannel) {
        this.f143d = fileChannel;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final void m122a(long j, C0535c c0535c, long j2) throws IOException {
        long write;
        if (j2 < 0 || j2 > c0535c.f1086c) {
            throw new IndexOutOfBoundsException();
        }
        while (j2 > 0) {
            try {
                int min = (int) Math.min((long) PlaybackStateCompat.ACTION_PLAY_FROM_URI, j2);
                c0535c.mo1089a(this.f141b, 0, min);
                this.f142c.limit(min);
                while (true) {
                    write = j + this.f143d.write(this.f142c, j);
                    if (!this.f142c.hasRemaining()) {
                        break;
                    } else {
                        j = write;
                    }
                }
                this.f142c.clear();
                j2 -= min;
                j = write;
            } catch (Throwable th) {
                this.f142c.clear();
                throw th;
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public final void m123b(long j, C0535c c0535c, long j2) throws IOException {
        if (j2 < 0) {
            throw new IndexOutOfBoundsException();
        }
        while (j2 > 0) {
            try {
                this.f142c.limit((int) Math.min((long) PlaybackStateCompat.ACTION_PLAY_FROM_URI, j2));
                if (this.f143d.read(this.f142c, j) == -1) {
                    throw new EOFException();
                }
                int position = this.f142c.position();
                c0535c.mo1127c(this.f141b, 0, position);
                long j3 = position;
                this.f142c.clear();
                j2 -= j3;
                j += j3;
            } catch (Throwable th) {
                this.f142c.clear();
                throw th;
            }
        }
    }
}
