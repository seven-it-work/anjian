package p017c;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

/* renamed from: c.w */
/* loaded from: classes.dex */
final class C0555w extends C0538f {
    final transient int[] directory;
    final transient byte[][] segments;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0555w(C0535c c0535c, int i) {
        super(null);
        C0532ab.m1057a(c0535c.f1086c, 0L, i);
        int i2 = 0;
        C0553u c0553u = c0535c.f1085b;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            if (c0553u.f1149e == c0553u.f1148d) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += c0553u.f1149e - c0553u.f1148d;
            i4++;
            c0553u = c0553u.f1152h;
        }
        this.segments = new byte[i4];
        this.directory = new int[i4 * 2];
        C0553u c0553u2 = c0535c.f1085b;
        int i5 = 0;
        while (i2 < i) {
            this.segments[i5] = c0553u2.f1147c;
            i2 += c0553u2.f1149e - c0553u2.f1148d;
            if (i2 > i) {
                i2 = i;
            }
            this.directory[i5] = i2;
            this.directory[this.segments.length + i5] = c0553u2.f1148d;
            c0553u2.f1150f = true;
            i5++;
            c0553u2 = c0553u2.f1152h;
        }
    }

    private int segment(int i) {
        int binarySearch = Arrays.binarySearch(this.directory, 0, this.segments.length, i + 1);
        return binarySearch >= 0 ? binarySearch : binarySearch ^ (-1);
    }

    private C0538f toByteString() {
        return new C0538f(toByteArray());
    }

    private Object writeReplace() {
        return toByteString();
    }

    @Override // p017c.C0538f
    public final ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // p017c.C0538f
    public final String base64() {
        return toByteString().base64();
    }

    @Override // p017c.C0538f
    public final String base64Url() {
        return toByteString().base64Url();
    }

    @Override // p017c.C0538f
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C0538f) {
            C0538f c0538f = (C0538f) obj;
            if (c0538f.size() == size() && rangeEquals(0, c0538f, 0, size())) {
                return true;
            }
        }
        return false;
    }

    @Override // p017c.C0538f
    public final byte getByte(int i) {
        C0532ab.m1057a(this.directory[this.segments.length - 1], i, 1L);
        int segment = segment(i);
        return this.segments[segment][(i - (segment == 0 ? 0 : this.directory[segment - 1])) + this.directory[this.segments.length + segment]];
    }

    @Override // p017c.C0538f
    public final int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int length = this.segments.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        while (i2 < length) {
            byte[] bArr = this.segments[i2];
            int i5 = this.directory[length + i2];
            int i6 = this.directory[i2];
            int i7 = (i6 - i3) + i5;
            while (i5 < i7) {
                i4 = (i4 * 31) + bArr[i5];
                i5++;
            }
            i2++;
            i3 = i6;
        }
        this.hashCode = i4;
        return i4;
    }

    @Override // p017c.C0538f
    public final String hex() {
        return toByteString().hex();
    }

    @Override // p017c.C0538f
    public final C0538f hmacSha1(C0538f c0538f) {
        return toByteString().hmacSha1(c0538f);
    }

    @Override // p017c.C0538f
    public final C0538f hmacSha256(C0538f c0538f) {
        return toByteString().hmacSha256(c0538f);
    }

    @Override // p017c.C0538f
    public final int indexOf(byte[] bArr, int i) {
        return toByteString().indexOf(bArr, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p017c.C0538f
    public final byte[] internalArray() {
        return toByteArray();
    }

    @Override // p017c.C0538f
    public final int lastIndexOf(byte[] bArr, int i) {
        return toByteString().lastIndexOf(bArr, i);
    }

    @Override // p017c.C0538f
    public final C0538f md5() {
        return toByteString().md5();
    }

    @Override // p017c.C0538f
    public final boolean rangeEquals(int i, C0538f c0538f, int i2, int i3) {
        if (i < 0 || i > size() - i3) {
            return false;
        }
        int segment = segment(i);
        while (i3 > 0) {
            int i4 = segment == 0 ? 0 : this.directory[segment - 1];
            int min = Math.min(i3, ((this.directory[segment] - i4) + i4) - i);
            if (!c0538f.rangeEquals(i2, this.segments[segment], (i - i4) + this.directory[this.segments.length + segment], min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            segment++;
        }
        return true;
    }

    @Override // p017c.C0538f
    public final boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > size() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int segment = segment(i);
        while (i3 > 0) {
            int i4 = segment == 0 ? 0 : this.directory[segment - 1];
            int min = Math.min(i3, ((this.directory[segment] - i4) + i4) - i);
            if (!C0532ab.m1059a(this.segments[segment], (i - i4) + this.directory[this.segments.length + segment], bArr, i2, min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            segment++;
        }
        return true;
    }

    @Override // p017c.C0538f
    public final C0538f sha1() {
        return toByteString().sha1();
    }

    @Override // p017c.C0538f
    public final C0538f sha256() {
        return toByteString().sha256();
    }

    @Override // p017c.C0538f
    public final int size() {
        return this.directory[this.segments.length - 1];
    }

    @Override // p017c.C0538f
    public final String string(Charset charset) {
        return toByteString().string(charset);
    }

    @Override // p017c.C0538f
    public final C0538f substring(int i) {
        return toByteString().substring(i);
    }

    @Override // p017c.C0538f
    public final C0538f substring(int i, int i2) {
        return toByteString().substring(i, i2);
    }

    @Override // p017c.C0538f
    public final C0538f toAsciiLowercase() {
        return toByteString().toAsciiLowercase();
    }

    @Override // p017c.C0538f
    public final C0538f toAsciiUppercase() {
        return toByteString().toAsciiUppercase();
    }

    @Override // p017c.C0538f
    public final byte[] toByteArray() {
        byte[] bArr = new byte[this.directory[this.segments.length - 1]];
        int length = this.segments.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = this.directory[length + i];
            int i4 = this.directory[i];
            System.arraycopy(this.segments[i], i3, bArr, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr;
    }

    @Override // p017c.C0538f
    public final String toString() {
        return toByteString().toString();
    }

    @Override // p017c.C0538f
    public final String utf8() {
        return toByteString().utf8();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p017c.C0538f
    public final void write(C0535c c0535c) {
        int length = this.segments.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = this.directory[length + i];
            int i4 = this.directory[i];
            C0553u c0553u = new C0553u(this.segments[i], i3, (i3 + i4) - i2);
            if (c0535c.f1085b == null) {
                c0553u.f1153i = c0553u;
                c0553u.f1152h = c0553u;
                c0535c.f1085b = c0553u;
            } else {
                c0535c.f1085b.f1153i.m1239a(c0553u);
            }
            i++;
            i2 = i4;
        }
        c0535c.f1086c += i2;
    }

    @Override // p017c.C0538f
    public final void write(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        int length = this.segments.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = this.directory[length + i];
            int i4 = this.directory[i];
            outputStream.write(this.segments[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
    }
}
