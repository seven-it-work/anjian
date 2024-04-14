package p017c;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: c.t */
/* loaded from: classes.dex */
public final class C0552t implements InterfaceC0537e {

    /* renamed from: a */
    public final C0535c f1141a = new C0535c();

    /* renamed from: b */
    public final InterfaceC0557y f1142b;

    /* renamed from: c */
    boolean f1143c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0552t(InterfaceC0557y interfaceC0557y) {
        if (interfaceC0557y == null) {
            throw new NullPointerException("source == null");
        }
        this.f1142b = interfaceC0557y;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final int mo1087a(C0549q c0549q) throws IOException {
        if (this.f1143c) {
            throw new IllegalStateException("closed");
        }
        do {
            int m1109b = this.f1141a.m1109b(c0549q);
            if (m1109b == -1) {
                return -1;
            }
            long size = c0549q.f1126a[m1109b].size();
            if (size <= this.f1141a.f1086c) {
                this.f1141a.mo1145h(size);
                return m1109b;
            }
        } while (this.f1142b.read(this.f1141a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
        return -1;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final int mo1088a(byte[] bArr) throws IOException {
        return mo1089a(bArr, 0, bArr.length);
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final int mo1089a(byte[] bArr, int i, int i2) throws IOException {
        long j = i2;
        C0532ab.m1057a(bArr.length, i, j);
        if (this.f1141a.f1086c == 0 && this.f1142b.read(this.f1141a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.f1141a.mo1089a(bArr, i, (int) Math.min(j, this.f1141a.f1086c));
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final long mo1090a(byte b2) throws IOException {
        return mo1092a(b2, 0L, Long.MAX_VALUE);
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final long mo1091a(byte b2, long j) throws IOException {
        return mo1092a(b2, j, Long.MAX_VALUE);
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final long mo1092a(byte b2, long j, long j2) throws IOException {
        if (this.f1143c) {
            throw new IllegalStateException("closed");
        }
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j), Long.valueOf(j2)));
        }
        while (j < j2) {
            long mo1092a = this.f1141a.mo1092a(b2, j, j2);
            if (mo1092a != -1) {
                return mo1092a;
            }
            long j3 = this.f1141a.f1086c;
            if (j3 >= j2 || this.f1142b.read(this.f1141a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j = Math.max(j, j3);
        }
        return -1L;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final long mo1093a(C0538f c0538f, long j) throws IOException {
        if (this.f1143c) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long mo1093a = this.f1141a.mo1093a(c0538f, j);
            if (mo1093a != -1) {
                return mo1093a;
            }
            long j2 = this.f1141a.f1086c;
            if (this.f1142b.read(this.f1141a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j = Math.max(j, (j2 - c0538f.size()) + 1);
        }
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final long mo1094a(InterfaceC0556x interfaceC0556x) throws IOException {
        if (interfaceC0556x == null) {
            throw new IllegalArgumentException("sink == null");
        }
        long j = 0;
        while (this.f1142b.read(this.f1141a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
            long m1137f = this.f1141a.m1137f();
            if (m1137f > 0) {
                interfaceC0556x.mo114a(this.f1141a, m1137f);
                j += m1137f;
            }
        }
        if (this.f1141a.f1086c <= 0) {
            return j;
        }
        long j2 = j + this.f1141a.f1086c;
        interfaceC0556x.mo114a(this.f1141a, this.f1141a.f1086c);
        return j2;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final C0535c mo1096a() {
        return this.f1141a;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final String mo1105a(long j, Charset charset) throws IOException {
        mo1107a(j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        return this.f1141a.mo1105a(j, charset);
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final String mo1106a(Charset charset) throws IOException {
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        this.f1141a.mo1095a(this.f1142b);
        return this.f1141a.mo1106a(charset);
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final void mo1107a(long j) throws IOException {
        if (!mo1121b(j)) {
            throw new EOFException();
        }
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final boolean mo1108a(C0538f c0538f, int i) throws IOException {
        if (this.f1143c) {
            throw new IllegalStateException("closed");
        }
        if (i < 0 || c0538f.size() - 0 < i) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            long j = i2 + 0;
            if (!mo1121b(j + 1) || this.f1141a.m1122c(j) != c0538f.getByte(i2 + 0)) {
                return false;
            }
        }
        return true;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: b */
    public final long mo1110b(C0538f c0538f) throws IOException {
        return mo1093a(c0538f, 0L);
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: b */
    public final long mo1111b(C0538f c0538f, long j) throws IOException {
        if (this.f1143c) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long mo1111b = this.f1141a.mo1111b(c0538f, j);
            if (mo1111b != -1) {
                return mo1111b;
            }
            long j2 = this.f1141a.f1086c;
            if (this.f1142b.read(this.f1141a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j = Math.max(j, j2);
        }
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: b */
    public final void mo1119b(C0535c c0535c, long j) throws IOException {
        try {
            mo1107a(j);
            this.f1141a.mo1119b(c0535c, j);
        } catch (EOFException e) {
            c0535c.mo1095a((InterfaceC0557y) this.f1141a);
            throw e;
        }
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: b */
    public final void mo1120b(byte[] bArr) throws IOException {
        try {
            mo1107a(bArr.length);
            this.f1141a.mo1120b(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (this.f1141a.f1086c > 0) {
                int mo1089a = this.f1141a.mo1089a(bArr, i, (int) this.f1141a.f1086c);
                if (mo1089a == -1) {
                    throw new AssertionError();
                }
                i += mo1089a;
            }
            throw e;
        }
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: b */
    public final boolean mo1121b(long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f1143c) {
            throw new IllegalStateException("closed");
        }
        while (this.f1141a.f1086c < j) {
            if (this.f1142b.read(this.f1141a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return false;
            }
        }
        return true;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: c */
    public final long mo1123c(C0538f c0538f) throws IOException {
        return mo1111b(c0538f, 0L);
    }

    @Override // p017c.InterfaceC0557y, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f1143c) {
            return;
        }
        this.f1143c = true;
        this.f1142b.close();
        this.f1141a.m1173w();
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: d */
    public final C0538f mo1130d(long j) throws IOException {
        mo1107a(j);
        return this.f1141a.mo1130d(j);
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: d */
    public final boolean mo1131d() throws IOException {
        if (this.f1143c) {
            throw new IllegalStateException("closed");
        }
        return this.f1141a.mo1131d() && this.f1142b.read(this.f1141a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: d */
    public final boolean mo1132d(C0538f c0538f) throws IOException {
        return mo1108a(c0538f, c0538f.size());
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: e */
    public final InputStream mo1135e() {
        return new InputStream() { // from class: c.t.1
            @Override // java.io.InputStream
            public final int available() throws IOException {
                if (C0552t.this.f1143c) {
                    throw new IOException("closed");
                }
                return (int) Math.min(C0552t.this.f1141a.f1086c, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() throws IOException {
                C0552t.this.close();
            }

            @Override // java.io.InputStream
            public final int read() throws IOException {
                if (C0552t.this.f1143c) {
                    throw new IOException("closed");
                }
                if (C0552t.this.f1141a.f1086c == 0 && C0552t.this.f1142b.read(C0552t.this.f1141a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return -1;
                }
                return C0552t.this.f1141a.mo1140g() & 255;
            }

            @Override // java.io.InputStream
            public final int read(byte[] bArr, int i, int i2) throws IOException {
                if (C0552t.this.f1143c) {
                    throw new IOException("closed");
                }
                C0532ab.m1057a(bArr.length, i, i2);
                if (C0552t.this.f1141a.f1086c == 0 && C0552t.this.f1142b.read(C0552t.this.f1141a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return -1;
                }
                return C0552t.this.f1141a.mo1089a(bArr, i, i2);
            }

            public final String toString() {
                return C0552t.this + ".inputStream()";
            }
        };
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: e */
    public final String mo1136e(long j) throws IOException {
        mo1107a(j);
        return this.f1141a.mo1136e(j);
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: g */
    public final byte mo1140g() throws IOException {
        mo1107a(1L);
        return this.f1141a.mo1140g();
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: g */
    public final byte[] mo1142g(long j) throws IOException {
        mo1107a(j);
        return this.f1141a.mo1142g(j);
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: h */
    public final short mo1144h() throws IOException {
        mo1107a(2L);
        return this.f1141a.mo1144h();
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: h */
    public final void mo1145h(long j) throws IOException {
        if (this.f1143c) {
            throw new IllegalStateException("closed");
        }
        while (j > 0) {
            if (this.f1141a.f1086c == 0 && this.f1142b.read(this.f1141a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j, this.f1141a.f1086c);
            this.f1141a.mo1145h(min);
            j -= min;
        }
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: i */
    public final int mo1146i() throws IOException {
        mo1107a(4L);
        return this.f1141a.mo1146i();
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: j */
    public final long mo1149j() throws IOException {
        mo1107a(8L);
        return this.f1141a.mo1149j();
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: k */
    public final short mo1154k() throws IOException {
        mo1107a(2L);
        return C0532ab.m1056a(this.f1141a.mo1144h());
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: l */
    public final int mo1155l() throws IOException {
        mo1107a(4L);
        return C0532ab.m1054a(this.f1141a.mo1146i());
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: m */
    public final long mo1158m() throws IOException {
        mo1107a(8L);
        return C0532ab.m1055a(this.f1141a.mo1149j());
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: n */
    public final long mo1161n() throws IOException {
        byte m1122c;
        mo1107a(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!mo1121b(i2)) {
                break;
            }
            m1122c = this.f1141a.m1122c(i);
            if ((m1122c < 48 || m1122c > 57) && !(i == 0 && m1122c == 45)) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9] or '-' character but was %#x", Byte.valueOf(m1122c)));
        }
        return this.f1141a.mo1161n();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0032, code lost:
    
        if (r1 != 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0048, code lost:
    
        throw new java.lang.NumberFormatException(java.lang.String.format("Expected leading [0-9a-fA-F] character but was %#x", java.lang.Byte.valueOf(r3)));
     */
    @Override // p017c.InterfaceC0537e
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long mo1163o() throws java.io.IOException {
        /*
            r6 = this;
            r0 = 1
            r6.mo1107a(r0)
            r0 = 0
            r1 = 0
        L7:
            int r2 = r1 + 1
            long r3 = (long) r2
            boolean r3 = r6.mo1121b(r3)
            if (r3 == 0) goto L49
            c.c r3 = r6.f1141a
            long r4 = (long) r1
            byte r3 = r3.m1122c(r4)
            r4 = 48
            if (r3 < r4) goto L1f
            r4 = 57
            if (r3 <= r4) goto L30
        L1f:
            r4 = 97
            if (r3 < r4) goto L27
            r4 = 102(0x66, float:1.43E-43)
            if (r3 <= r4) goto L30
        L27:
            r4 = 65
            if (r3 < r4) goto L32
            r4 = 70
            if (r3 <= r4) goto L30
            goto L32
        L30:
            r1 = r2
            goto L7
        L32:
            if (r1 != 0) goto L49
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was %#x"
            r4 = 1
            java.lang.Object[] r4 = new java.lang.Object[r4]
            java.lang.Byte r3 = java.lang.Byte.valueOf(r3)
            r4[r0] = r3
            java.lang.String r0 = java.lang.String.format(r2, r4)
            r1.<init>(r0)
            throw r1
        L49:
            c.c r0 = r6.f1141a
            long r0 = r0.mo1163o()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p017c.C0552t.mo1163o():long");
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: p */
    public final C0538f mo1166p() throws IOException {
        this.f1141a.mo1095a(this.f1142b);
        return this.f1141a.mo1166p();
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: q */
    public final String mo1167q() throws IOException {
        this.f1141a.mo1095a(this.f1142b);
        return this.f1141a.mo1167q();
    }

    @Override // p017c.InterfaceC0537e
    @Nullable
    /* renamed from: r */
    public final String mo1168r() throws IOException {
        long mo1090a = mo1090a((byte) 10);
        if (mo1090a != -1) {
            return this.f1141a.m1139f(mo1090a);
        }
        if (this.f1141a.f1086c != 0) {
            return mo1136e(this.f1141a.f1086c);
        }
        return null;
    }

    @Override // p017c.InterfaceC0557y
    public final long read(C0535c c0535c, long j) throws IOException {
        if (c0535c == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f1143c) {
            throw new IllegalStateException("closed");
        }
        if (this.f1141a.f1086c == 0 && this.f1142b.read(this.f1141a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1L;
        }
        return this.f1141a.read(c0535c, Math.min(j, this.f1141a.f1086c));
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: s */
    public final String mo1169s() throws IOException {
        return mo1170t();
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: t */
    public final String mo1170t() throws IOException {
        long mo1092a = mo1092a((byte) 10, 0L, Long.MAX_VALUE);
        if (mo1092a != -1) {
            return this.f1141a.m1139f(mo1092a);
        }
        C0535c c0535c = new C0535c();
        this.f1141a.m1098a(c0535c, 0L, Math.min(32L, this.f1141a.f1086c));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f1141a.f1086c, Long.MAX_VALUE) + " content=" + c0535c.mo1166p().hex() + (char) 8230);
    }

    @Override // p017c.InterfaceC0557y
    public final C0558z timeout() {
        return this.f1142b.timeout();
    }

    public final String toString() {
        return "buffer(" + this.f1142b + ")";
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: u */
    public final int mo1171u() throws IOException {
        long j;
        mo1107a(1L);
        byte m1122c = this.f1141a.m1122c(0L);
        if ((m1122c & 224) == 192) {
            j = 2;
        } else {
            if ((m1122c & 240) != 224) {
                if ((m1122c & 248) == 240) {
                    j = 4;
                }
                return this.f1141a.mo1171u();
            }
            j = 3;
        }
        mo1107a(j);
        return this.f1141a.mo1171u();
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: v */
    public final byte[] mo1172v() throws IOException {
        this.f1141a.mo1095a(this.f1142b);
        return this.f1141a.mo1172v();
    }
}
