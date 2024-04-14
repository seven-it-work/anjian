package p017c;

import android.support.v4.media.session.PlaybackStateCompat;
import com.umeng.commonsdk.amap.UMAmapConfig;
import com.umeng.commonsdk.proguard.C2489bg;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: c.c */
/* loaded from: classes.dex */
public final class C0535c implements InterfaceC0536d, InterfaceC0537e, Cloneable {

    /* renamed from: a */
    static final int f1083a = 65533;

    /* renamed from: d */
    private static final byte[] f1084d = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: b */
    @Nullable
    C0553u f1085b;

    /* renamed from: c */
    public long f1086c;

    /* renamed from: A */
    private C0535c m1065A() {
        return this;
    }

    /* renamed from: B */
    private List<Integer> m1066B() {
        if (this.f1085b == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(this.f1085b.f1149e - this.f1085b.f1148d));
        C0553u c0553u = this.f1085b;
        while (true) {
            c0553u = c0553u.f1152h;
            if (c0553u == this.f1085b) {
                return arrayList;
            }
            arrayList.add(Integer.valueOf(c0553u.f1149e - c0553u.f1148d));
        }
    }

    /* renamed from: C */
    private C0538f m1067C() {
        return m1081c("MD5");
    }

    /* renamed from: D */
    private C0538f m1068D() {
        return m1081c("SHA-1");
    }

    /* renamed from: E */
    private C0538f m1069E() {
        return m1081c("SHA-256");
    }

    /* renamed from: F */
    private C0538f m1070F() {
        return m1081c("SHA-512");
    }

    /* renamed from: G */
    private C0538f m1071G() {
        if (this.f1086c <= 2147483647L) {
            int i = (int) this.f1086c;
            return i == 0 ? C0538f.EMPTY : new C0555w(this, i);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f1086c);
    }

    /* renamed from: a */
    private C0535c m1072a(InputStream inputStream) throws IOException {
        m1078a(inputStream, Long.MAX_VALUE, true);
        return this;
    }

    /* renamed from: a */
    private C0535c m1073a(InputStream inputStream, long j) throws IOException {
        if (j >= 0) {
            m1078a(inputStream, j, false);
            return this;
        }
        throw new IllegalArgumentException("byteCount < 0: " + j);
    }

    /* renamed from: a */
    private C0535c m1074a(OutputStream outputStream) throws IOException {
        long j = this.f1086c;
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        C0532ab.m1057a(this.f1086c, 0L, j);
        if (j != 0) {
            C0553u c0553u = this.f1085b;
            long j2 = 0;
            while (j2 >= c0553u.f1149e - c0553u.f1148d) {
                long j3 = j2 - (c0553u.f1149e - c0553u.f1148d);
                c0553u = c0553u.f1152h;
                j2 = j3;
            }
            while (j > 0) {
                int min = (int) Math.min(c0553u.f1149e - r2, j);
                outputStream.write(c0553u.f1147c, (int) (c0553u.f1148d + j2), min);
                c0553u = c0553u.f1152h;
                j2 = 0;
                j -= min;
            }
        }
        return this;
    }

    /* renamed from: a */
    private C0535c m1075a(OutputStream outputStream, long j) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        C0532ab.m1057a(this.f1086c, 0L, j);
        C0553u c0553u = this.f1085b;
        while (j > 0) {
            int min = (int) Math.min(j, c0553u.f1149e - c0553u.f1148d);
            outputStream.write(c0553u.f1147c, c0553u.f1148d, min);
            c0553u.f1148d += min;
            long j2 = min;
            this.f1086c -= j2;
            long j3 = j - j2;
            if (c0553u.f1148d == c0553u.f1149e) {
                C0553u m1238a = c0553u.m1238a();
                this.f1085b = m1238a;
                C0554v.m1242a(c0553u);
                c0553u = m1238a;
            }
            j = j3;
        }
        return this;
    }

    /* renamed from: a */
    private C0535c m1076a(OutputStream outputStream, long j, long j2) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        C0532ab.m1057a(this.f1086c, 0L, j2);
        if (j2 == 0) {
            return this;
        }
        C0553u c0553u = this.f1085b;
        while (j >= c0553u.f1149e - c0553u.f1148d) {
            long j3 = j - (c0553u.f1149e - c0553u.f1148d);
            c0553u = c0553u.f1152h;
            j = j3;
        }
        while (j2 > 0) {
            int min = (int) Math.min(c0553u.f1149e - r9, j2);
            outputStream.write(c0553u.f1147c, (int) (c0553u.f1148d + j), min);
            c0553u = c0553u.f1152h;
            j = 0;
            j2 -= min;
        }
        return this;
    }

    /* renamed from: a */
    private C0538f m1077a(String str, C0538f c0538f) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(c0538f.toByteArray(), str));
            if (this.f1085b != null) {
                mac.update(this.f1085b.f1147c, this.f1085b.f1148d, this.f1085b.f1149e - this.f1085b.f1148d);
                C0553u c0553u = this.f1085b;
                while (true) {
                    c0553u = c0553u.f1152h;
                    if (c0553u == this.f1085b) {
                        break;
                    }
                    mac.update(c0553u.f1147c, c0553u.f1148d, c0553u.f1149e - c0553u.f1148d);
                }
            }
            return C0538f.m1177of(mac.doFinal());
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    /* renamed from: a */
    private void m1078a(InputStream inputStream, long j, boolean z) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        while (true) {
            if (j <= 0 && !z) {
                return;
            }
            C0553u m1141g = m1141g(1);
            int read = inputStream.read(m1141g.f1147c, m1141g.f1149e, (int) Math.min(j, 8192 - m1141g.f1149e));
            if (read == -1) {
                if (!z) {
                    throw new EOFException();
                }
                return;
            } else {
                m1141g.f1149e += read;
                long j2 = read;
                this.f1086c += j2;
                j -= j2;
            }
        }
    }

    /* renamed from: a */
    private static boolean m1079a(C0553u c0553u, int i, C0538f c0538f, int i2, int i3) {
        int i4 = c0553u.f1149e;
        byte[] bArr = c0553u.f1147c;
        while (i2 < i3) {
            if (i == i4) {
                c0553u = c0553u.f1152h;
                byte[] bArr2 = c0553u.f1147c;
                bArr = bArr2;
                i = c0553u.f1148d;
                i4 = c0553u.f1149e;
            }
            if (bArr[i] != c0538f.getByte(i2)) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    /* renamed from: b */
    private C0535c m1080b(OutputStream outputStream) throws IOException {
        long j = this.f1086c;
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        C0532ab.m1057a(this.f1086c, 0L, j);
        C0553u c0553u = this.f1085b;
        while (j > 0) {
            int min = (int) Math.min(j, c0553u.f1149e - c0553u.f1148d);
            outputStream.write(c0553u.f1147c, c0553u.f1148d, min);
            c0553u.f1148d += min;
            long j2 = min;
            this.f1086c -= j2;
            long j3 = j - j2;
            if (c0553u.f1148d == c0553u.f1149e) {
                C0553u m1238a = c0553u.m1238a();
                this.f1085b = m1238a;
                C0554v.m1242a(c0553u);
                c0553u = m1238a;
            }
            j = j3;
        }
        return this;
    }

    /* renamed from: c */
    private C0538f m1081c(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            if (this.f1085b != null) {
                messageDigest.update(this.f1085b.f1147c, this.f1085b.f1148d, this.f1085b.f1149e - this.f1085b.f1148d);
                C0553u c0553u = this.f1085b;
                while (true) {
                    c0553u = c0553u.f1152h;
                    if (c0553u == this.f1085b) {
                        break;
                    }
                    messageDigest.update(c0553u.f1147c, c0553u.f1148d, c0553u.f1149e - c0553u.f1148d);
                }
            }
            return C0538f.m1177of(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    /* renamed from: f */
    private C0538f m1082f(C0538f c0538f) {
        return m1077a("HmacSHA1", c0538f);
    }

    /* renamed from: g */
    private C0538f m1083g(C0538f c0538f) {
        return m1077a("HmacSHA256", c0538f);
    }

    /* renamed from: h */
    private C0538f m1084h(C0538f c0538f) {
        return m1077a("HmacSHA512", c0538f);
    }

    /* renamed from: n */
    private C0538f m1085n(int i) {
        return i == 0 ? C0538f.EMPTY : new C0555w(this, i);
    }

    /* renamed from: z */
    private long m1086z() {
        return this.f1086c;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final int mo1087a(C0549q c0549q) {
        C0553u c0553u = this.f1085b;
        if (c0553u == null) {
            return c0549q.indexOf(C0538f.EMPTY);
        }
        C0538f[] c0538fArr = c0549q.f1126a;
        int length = c0538fArr.length;
        for (int i = 0; i < length; i++) {
            C0538f c0538f = c0538fArr[i];
            if (this.f1086c >= c0538f.size() && m1079a(c0553u, c0553u.f1148d, c0538f, 0, c0538f.size())) {
                try {
                    mo1145h(c0538f.size());
                    return i;
                } catch (EOFException e) {
                    throw new AssertionError(e);
                }
            }
        }
        return -1;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final int mo1088a(byte[] bArr) {
        return mo1089a(bArr, 0, bArr.length);
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final int mo1089a(byte[] bArr, int i, int i2) {
        C0532ab.m1057a(bArr.length, i, i2);
        C0553u c0553u = this.f1085b;
        if (c0553u == null) {
            return -1;
        }
        int min = Math.min(i2, c0553u.f1149e - c0553u.f1148d);
        System.arraycopy(c0553u.f1147c, c0553u.f1148d, bArr, i, min);
        c0553u.f1148d += min;
        this.f1086c -= min;
        if (c0553u.f1148d == c0553u.f1149e) {
            this.f1085b = c0553u.m1238a();
            C0554v.m1242a(c0553u);
        }
        return min;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final long mo1090a(byte b2) {
        return mo1092a(b2, 0L, Long.MAX_VALUE);
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final long mo1091a(byte b2, long j) {
        return mo1092a(b2, j, Long.MAX_VALUE);
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final long mo1092a(byte b2, long j, long j2) {
        C0553u c0553u;
        long j3 = 0;
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f1086c), Long.valueOf(j), Long.valueOf(j2)));
        }
        long j4 = j2 > this.f1086c ? this.f1086c : j2;
        if (j == j4 || (c0553u = this.f1085b) == null) {
            return -1L;
        }
        if (this.f1086c - j >= j) {
            while (true) {
                long j5 = j3 + (c0553u.f1149e - c0553u.f1148d);
                if (j5 >= j) {
                    break;
                }
                c0553u = c0553u.f1152h;
                j3 = j5;
            }
        } else {
            j3 = this.f1086c;
            while (j3 > j) {
                c0553u = c0553u.f1153i;
                j3 -= c0553u.f1149e - c0553u.f1148d;
            }
        }
        long j6 = j;
        while (j3 < j4) {
            byte[] bArr = c0553u.f1147c;
            int min = (int) Math.min(c0553u.f1149e, (c0553u.f1148d + j4) - j3);
            for (int i = (int) ((c0553u.f1148d + j6) - j3); i < min; i++) {
                if (bArr[i] == b2) {
                    return (i - c0553u.f1148d) + j3;
                }
            }
            long j7 = j3 + (c0553u.f1149e - c0553u.f1148d);
            c0553u = c0553u.f1152h;
            j6 = j7;
            j3 = j6;
        }
        return -1L;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final long mo1093a(C0538f c0538f, long j) throws IOException {
        if (c0538f.size() == 0) {
            throw new IllegalArgumentException("bytes is empty");
        }
        long j2 = 0;
        if (j < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        C0553u c0553u = this.f1085b;
        long j3 = -1;
        if (c0553u == null) {
            return -1L;
        }
        if (this.f1086c - j >= j) {
            while (true) {
                long j4 = j2 + (c0553u.f1149e - c0553u.f1148d);
                if (j4 >= j) {
                    break;
                }
                c0553u = c0553u.f1152h;
                j2 = j4;
            }
        } else {
            j2 = this.f1086c;
            while (j2 > j) {
                c0553u = c0553u.f1153i;
                j2 -= c0553u.f1149e - c0553u.f1148d;
            }
        }
        byte b2 = c0538f.getByte(0);
        int size = c0538f.size();
        long j5 = (this.f1086c - size) + 1;
        long j6 = j;
        while (j2 < j5) {
            byte[] bArr = c0553u.f1147c;
            int min = (int) Math.min(c0553u.f1149e, (c0553u.f1148d + j5) - j2);
            for (int i = (int) ((c0553u.f1148d + j6) - j2); i < min; i++) {
                if (bArr[i] == b2 && m1079a(c0553u, i + 1, c0538f, 1, size)) {
                    return (i - c0553u.f1148d) + j2;
                }
            }
            j6 = j2 + (c0553u.f1149e - c0553u.f1148d);
            c0553u = c0553u.f1152h;
            j2 = j6;
            j3 = -1;
        }
        return j3;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final long mo1094a(InterfaceC0556x interfaceC0556x) throws IOException {
        long j = this.f1086c;
        if (j > 0) {
            interfaceC0556x.mo114a(this, j);
        }
        return j;
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: a */
    public final long mo1095a(InterfaceC0557y interfaceC0557y) throws IOException {
        if (interfaceC0557y == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long read = interfaceC0557y.read(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (read == -1) {
                return j;
            }
            j += read;
        }
    }

    @Override // p017c.InterfaceC0536d, p017c.InterfaceC0537e
    /* renamed from: a */
    public final C0535c mo1096a() {
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // p017c.InterfaceC0536d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0535c mo1159m(int i) {
        int i2;
        int i3;
        if (i >= 128) {
            if (i < 2048) {
                i3 = (i >> 6) | 192;
            } else {
                if (i < 65536) {
                    if (i >= 55296 && i <= 57343) {
                        mo1157l(63);
                        return this;
                    }
                    i2 = (i >> 12) | 224;
                } else {
                    if (i > 1114111) {
                        throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
                    }
                    mo1157l((i >> 18) | 240);
                    i2 = ((i >> 12) & 63) | 128;
                }
                mo1157l(i2);
                i3 = ((i >> 6) & 63) | 128;
            }
            mo1157l(i3);
            i = (i & 63) | 128;
        }
        mo1157l(i);
        return this;
    }

    /* renamed from: a */
    public final C0535c m1098a(C0535c c0535c, long j, long j2) {
        if (c0535c == null) {
            throw new IllegalArgumentException("out == null");
        }
        C0532ab.m1057a(this.f1086c, j, j2);
        if (j2 == 0) {
            return this;
        }
        c0535c.f1086c += j2;
        C0553u c0553u = this.f1085b;
        while (j >= c0553u.f1149e - c0553u.f1148d) {
            long j3 = j - (c0553u.f1149e - c0553u.f1148d);
            c0553u = c0553u.f1152h;
            j = j3;
        }
        while (j2 > 0) {
            C0553u c0553u2 = new C0553u(c0553u);
            c0553u2.f1148d = (int) (c0553u2.f1148d + j);
            c0553u2.f1149e = Math.min(c0553u2.f1148d + ((int) j2), c0553u2.f1149e);
            if (c0535c.f1085b == null) {
                c0553u2.f1153i = c0553u2;
                c0553u2.f1152h = c0553u2;
                c0535c.f1085b = c0553u2;
            } else {
                c0535c.f1085b.f1153i.m1239a(c0553u2);
            }
            c0553u = c0553u.f1152h;
            j = 0;
            j2 -= c0553u2.f1149e - c0553u2.f1148d;
        }
        return this;
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0535c mo1134e(C0538f c0538f) {
        if (c0538f == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        c0538f.write(this);
        return this;
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0535c mo1114b(String str) {
        return mo1115b(str, 0, str.length());
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0535c mo1115b(String str, int i, int i2) {
        char charAt;
        int i3;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + i);
        }
        if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        }
        if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        }
        while (i < i2) {
            char charAt2 = str.charAt(i);
            if (charAt2 < 128) {
                C0553u m1141g = m1141g(1);
                byte[] bArr = m1141g.f1147c;
                int i4 = m1141g.f1149e - i;
                int min = Math.min(i2, 8192 - i4);
                int i5 = i + 1;
                bArr[i + i4] = (byte) charAt2;
                while (true) {
                    i = i5;
                    if (i >= min || (charAt = str.charAt(i)) >= 128) {
                        break;
                    }
                    i5 = i + 1;
                    bArr[i + i4] = (byte) charAt;
                }
                int i6 = (i4 + i) - m1141g.f1149e;
                m1141g.f1149e += i6;
                this.f1086c += i6;
            } else {
                if (charAt2 < 2048) {
                    i3 = (charAt2 >> 6) | 192;
                } else if (charAt2 < 55296 || charAt2 > 57343) {
                    mo1157l((charAt2 >> '\f') | 224);
                    i3 = ((charAt2 >> 6) & 63) | 128;
                } else {
                    int i7 = i + 1;
                    char charAt3 = i7 < i2 ? str.charAt(i7) : (char) 0;
                    if (charAt2 > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                        mo1157l(63);
                        i = i7;
                    } else {
                        int i8 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + 65536;
                        mo1157l((i8 >> 18) | 240);
                        mo1157l(((i8 >> 12) & 63) | 128);
                        mo1157l(((i8 >> 6) & 63) | 128);
                        mo1157l((i8 & 63) | 128);
                        i += 2;
                    }
                }
                mo1157l(i3);
                mo1157l((charAt2 & '?') | 128);
                i++;
            }
        }
        return this;
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0535c mo1116b(String str, int i, int i2, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i);
        }
        if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        }
        if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        }
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (charset.equals(C0532ab.f1080a)) {
            return mo1115b(str, i, i2);
        }
        byte[] bytes = str.substring(i, i2).getBytes(charset);
        return mo1127c(bytes, 0, bytes.length);
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0535c mo1117b(String str, Charset charset) {
        return mo1116b(str, 0, str.length(), charset);
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: a */
    public final InterfaceC0536d mo1104a(InterfaceC0557y interfaceC0557y, long j) throws IOException {
        while (j > 0) {
            long read = interfaceC0557y.read(this, j);
            if (read == -1) {
                throw new EOFException();
            }
            j -= read;
        }
        return this;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final String mo1105a(long j, Charset charset) throws EOFException {
        C0532ab.m1057a(this.f1086c, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        if (j == 0) {
            return "";
        }
        C0553u c0553u = this.f1085b;
        if (c0553u.f1148d + j > c0553u.f1149e) {
            return new String(mo1142g(j), charset);
        }
        String str = new String(c0553u.f1147c, c0553u.f1148d, (int) j, charset);
        c0553u.f1148d = (int) (c0553u.f1148d + j);
        this.f1086c -= j;
        if (c0553u.f1148d == c0553u.f1149e) {
            this.f1085b = c0553u.m1238a();
            C0554v.m1242a(c0553u);
        }
        return str;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final String mo1106a(Charset charset) {
        try {
            return mo1105a(this.f1086c, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final void mo1107a(long j) throws EOFException {
        if (this.f1086c < j) {
            throw new EOFException();
        }
    }

    @Override // p017c.InterfaceC0556x
    /* renamed from: a */
    public final void mo114a(C0535c c0535c, long j) {
        C0553u m1241a;
        if (c0535c == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (c0535c == this) {
            throw new IllegalArgumentException("source == this");
        }
        C0532ab.m1057a(c0535c.f1086c, 0L, j);
        while (j > 0) {
            if (j < c0535c.f1085b.f1149e - c0535c.f1085b.f1148d) {
                C0553u c0553u = this.f1085b != null ? this.f1085b.f1153i : null;
                if (c0553u != null && c0553u.f1151g) {
                    if ((j + c0553u.f1149e) - (c0553u.f1150f ? 0 : c0553u.f1148d) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                        c0535c.f1085b.m1240a(c0553u, (int) j);
                        c0535c.f1086c -= j;
                        this.f1086c += j;
                        return;
                    }
                }
                C0553u c0553u2 = c0535c.f1085b;
                int i = (int) j;
                if (i <= 0 || i > c0553u2.f1149e - c0553u2.f1148d) {
                    throw new IllegalArgumentException();
                }
                if (i >= 1024) {
                    m1241a = new C0553u(c0553u2);
                } else {
                    m1241a = C0554v.m1241a();
                    System.arraycopy(c0553u2.f1147c, c0553u2.f1148d, m1241a.f1147c, 0, i);
                }
                m1241a.f1149e = m1241a.f1148d + i;
                c0553u2.f1148d += i;
                c0553u2.f1153i.m1239a(m1241a);
                c0535c.f1085b = m1241a;
            }
            C0553u c0553u3 = c0535c.f1085b;
            long j2 = c0553u3.f1149e - c0553u3.f1148d;
            c0535c.f1085b = c0553u3.m1238a();
            if (this.f1085b == null) {
                this.f1085b = c0553u3;
                C0553u c0553u4 = this.f1085b;
                C0553u c0553u5 = this.f1085b;
                C0553u c0553u6 = this.f1085b;
                c0553u5.f1153i = c0553u6;
                c0553u4.f1152h = c0553u6;
            } else {
                C0553u m1239a = this.f1085b.f1153i.m1239a(c0553u3);
                if (m1239a.f1153i == m1239a) {
                    throw new IllegalStateException();
                }
                if (m1239a.f1153i.f1151g) {
                    int i2 = m1239a.f1149e - m1239a.f1148d;
                    if (i2 <= (8192 - m1239a.f1153i.f1149e) + (m1239a.f1153i.f1150f ? 0 : m1239a.f1153i.f1148d)) {
                        m1239a.m1240a(m1239a.f1153i, i2);
                        m1239a.m1238a();
                        C0554v.m1242a(m1239a);
                    }
                }
            }
            c0535c.f1086c -= j2;
            this.f1086c += j2;
            j -= j2;
        }
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: a */
    public final boolean mo1108a(C0538f c0538f, int i) {
        if (i < 0 || this.f1086c - 0 < i || c0538f.size() - 0 < i) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (m1122c(i2 + 0) != c0538f.getByte(i2 + 0)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final int m1109b(C0549q c0549q) {
        C0553u c0553u = this.f1085b;
        C0538f[] c0538fArr = c0549q.f1126a;
        int length = c0538fArr.length;
        int i = 0;
        while (i < length) {
            C0538f c0538f = c0538fArr[i];
            int min = (int) Math.min(this.f1086c, c0538f.size());
            if (min == 0 || m1079a(c0553u, c0553u.f1148d, c0538f, 0, min)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: b */
    public final long mo1110b(C0538f c0538f) throws IOException {
        return mo1093a(c0538f, 0L);
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: b */
    public final long mo1111b(C0538f c0538f, long j) {
        int i;
        long j2 = 0;
        if (j < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        C0553u c0553u = this.f1085b;
        if (c0553u == null) {
            return -1L;
        }
        if (this.f1086c - j >= j) {
            while (true) {
                long j3 = j2 + (c0553u.f1149e - c0553u.f1148d);
                if (j3 >= j) {
                    break;
                }
                c0553u = c0553u.f1152h;
                j2 = j3;
            }
        } else {
            j2 = this.f1086c;
            while (j2 > j) {
                c0553u = c0553u.f1153i;
                j2 -= c0553u.f1149e - c0553u.f1148d;
            }
        }
        if (c0538f.size() == 2) {
            byte b2 = c0538f.getByte(0);
            byte b3 = c0538f.getByte(1);
            while (j2 < this.f1086c) {
                byte[] bArr = c0553u.f1147c;
                i = (int) ((c0553u.f1148d + j) - j2);
                int i2 = c0553u.f1149e;
                while (i < i2) {
                    byte b4 = bArr[i];
                    if (b4 != b2 && b4 != b3) {
                        i++;
                    }
                    return (i - c0553u.f1148d) + j2;
                }
                long j4 = j2 + (c0553u.f1149e - c0553u.f1148d);
                c0553u = c0553u.f1152h;
                j = j4;
                j2 = j;
            }
            return -1L;
        }
        byte[] internalArray = c0538f.internalArray();
        while (j2 < this.f1086c) {
            byte[] bArr2 = c0553u.f1147c;
            i = (int) ((c0553u.f1148d + j) - j2);
            int i3 = c0553u.f1149e;
            while (i < i3) {
                byte b5 = bArr2[i];
                for (byte b6 : internalArray) {
                    if (b5 == b6) {
                        return (i - c0553u.f1148d) + j2;
                    }
                }
                i++;
            }
            long j5 = j2 + (c0553u.f1149e - c0553u.f1148d);
            c0553u = c0553u.f1152h;
            j = j5;
            j2 = j;
        }
        return -1L;
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C0535c mo1157l(int i) {
        C0553u m1141g = m1141g(1);
        byte[] bArr = m1141g.f1147c;
        int i2 = m1141g.f1149e;
        m1141g.f1149e = i2 + 1;
        bArr[i2] = (byte) i;
        this.f1086c++;
        return this;
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C0535c mo1127c(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = i2;
        C0532ab.m1057a(bArr.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            C0553u m1141g = m1141g(1);
            int min = Math.min(i3 - i, 8192 - m1141g.f1149e);
            System.arraycopy(bArr, i, m1141g.f1147c, m1141g.f1149e, min);
            i += min;
            m1141g.f1149e += min;
        }
        this.f1086c += j;
        return this;
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: b */
    public final OutputStream mo1118b() {
        return new OutputStream() { // from class: c.c.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public final void flush() {
            }

            public final String toString() {
                return C0535c.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public final void write(int i) {
                C0535c.this.mo1157l((int) ((byte) i));
            }

            @Override // java.io.OutputStream
            public final void write(byte[] bArr, int i, int i2) {
                C0535c.this.mo1127c(bArr, i, i2);
            }
        };
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: b */
    public final void mo1119b(C0535c c0535c, long j) throws EOFException {
        if (this.f1086c < j) {
            c0535c.mo114a(this, this.f1086c);
            throw new EOFException();
        }
        c0535c.mo114a(this, j);
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: b */
    public final void mo1120b(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int mo1089a = mo1089a(bArr, i, bArr.length - i);
            if (mo1089a == -1) {
                throw new EOFException();
            }
            i += mo1089a;
        }
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: b */
    public final boolean mo1121b(long j) {
        return this.f1086c >= j;
    }

    /* renamed from: c */
    public final byte m1122c(long j) {
        C0532ab.m1057a(this.f1086c, j, 1L);
        C0553u c0553u = this.f1085b;
        while (true) {
            long j2 = c0553u.f1149e - c0553u.f1148d;
            if (j < j2) {
                return c0553u.f1147c[c0553u.f1148d + ((int) j)];
            }
            c0553u = c0553u.f1152h;
            j -= j2;
        }
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: c */
    public final long mo1123c(C0538f c0538f) {
        return mo1111b(c0538f, 0L);
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final C0535c mo1153k(int i) {
        C0553u m1141g = m1141g(2);
        byte[] bArr = m1141g.f1147c;
        int i2 = m1141g.f1149e;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        m1141g.f1149e = i3 + 1;
        this.f1086c += 2;
        return this;
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final C0535c mo1129d(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        return mo1127c(bArr, 0, bArr.length);
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: c */
    public final InterfaceC0536d mo1126c() {
        return this;
    }

    @Override // p017c.InterfaceC0556x, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final C0535c mo1151j(int i) {
        return mo1153k((int) C0532ab.m1056a((short) i));
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: d */
    public final C0538f mo1130d(long j) throws EOFException {
        return new C0538f(mo1142g(j));
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: d */
    public final boolean mo1131d() {
        return this.f1086c == 0;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: d */
    public final boolean mo1132d(C0538f c0538f) {
        return mo1108a(c0538f, c0538f.size());
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final C0535c mo1148i(int i) {
        C0553u m1141g = m1141g(4);
        byte[] bArr = m1141g.f1147c;
        int i2 = m1141g.f1149e;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        m1141g.f1149e = i5 + 1;
        this.f1086c += 4;
        return this;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: e */
    public final InputStream mo1135e() {
        return new InputStream() { // from class: c.c.2
            @Override // java.io.InputStream
            public final int available() {
                return (int) Math.min(C0535c.this.f1086c, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }

            @Override // java.io.InputStream
            public final int read() {
                if (C0535c.this.f1086c > 0) {
                    return C0535c.this.mo1140g() & 255;
                }
                return -1;
            }

            @Override // java.io.InputStream
            public final int read(byte[] bArr, int i, int i2) {
                return C0535c.this.mo1089a(bArr, i, i2);
            }

            public final String toString() {
                return C0535c.this + ".inputStream()";
            }
        };
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: e */
    public final String mo1136e(long j) throws EOFException {
        return mo1105a(j, C0532ab.f1080a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0535c)) {
            return false;
        }
        C0535c c0535c = (C0535c) obj;
        if (this.f1086c != c0535c.f1086c) {
            return false;
        }
        long j = 0;
        if (this.f1086c == 0) {
            return true;
        }
        C0553u c0553u = this.f1085b;
        C0553u c0553u2 = c0535c.f1085b;
        int i = c0553u.f1148d;
        int i2 = c0553u2.f1148d;
        while (j < this.f1086c) {
            long min = Math.min(c0553u.f1149e - i, c0553u2.f1149e - i2);
            int i3 = i2;
            int i4 = i;
            int i5 = 0;
            while (i5 < min) {
                int i6 = i4 + 1;
                int i7 = i3 + 1;
                if (c0553u.f1147c[i4] != c0553u2.f1147c[i3]) {
                    return false;
                }
                i5++;
                i4 = i6;
                i3 = i7;
            }
            if (i4 == c0553u.f1149e) {
                c0553u = c0553u.f1152h;
                i = c0553u.f1148d;
            } else {
                i = i4;
            }
            if (i3 == c0553u2.f1149e) {
                c0553u2 = c0553u2.f1152h;
                i2 = c0553u2.f1148d;
            } else {
                i2 = i3;
            }
            j += min;
        }
        return true;
    }

    /* renamed from: f */
    public final long m1137f() {
        long j = this.f1086c;
        if (j == 0) {
            return 0L;
        }
        C0553u c0553u = this.f1085b.f1153i;
        return (c0553u.f1149e >= 8192 || !c0553u.f1151g) ? j : j - (c0553u.f1149e - c0553u.f1148d);
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final C0535c mo1143h(int i) {
        return mo1148i(C0532ab.m1054a(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final String m1139f(long j) throws EOFException {
        String mo1136e;
        long j2 = 1;
        if (j > 0) {
            long j3 = j - 1;
            if (m1122c(j3) == 13) {
                mo1136e = mo1136e(j3);
                j2 = 2;
                mo1145h(j2);
                return mo1136e;
            }
        }
        mo1136e = mo1136e(j);
        mo1145h(j2);
        return mo1136e;
    }

    @Override // p017c.InterfaceC0536d, p017c.InterfaceC0556x, java.io.Flushable
    public final void flush() {
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: g */
    public final byte mo1140g() {
        if (this.f1086c == 0) {
            throw new IllegalStateException("size == 0");
        }
        C0553u c0553u = this.f1085b;
        int i = c0553u.f1148d;
        int i2 = c0553u.f1149e;
        int i3 = i + 1;
        byte b2 = c0553u.f1147c[i];
        this.f1086c--;
        if (i3 != i2) {
            c0553u.f1148d = i3;
            return b2;
        }
        this.f1085b = c0553u.m1238a();
        C0554v.m1242a(c0553u);
        return b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final C0553u m1141g(int i) {
        if (i <= 0 || i > 8192) {
            throw new IllegalArgumentException();
        }
        if (this.f1085b != null) {
            C0553u c0553u = this.f1085b.f1153i;
            return (c0553u.f1149e + i > 8192 || !c0553u.f1151g) ? c0553u.m1239a(C0554v.m1241a()) : c0553u;
        }
        this.f1085b = C0554v.m1241a();
        C0553u c0553u2 = this.f1085b;
        C0553u c0553u3 = this.f1085b;
        C0553u c0553u4 = this.f1085b;
        c0553u3.f1153i = c0553u4;
        c0553u2.f1152h = c0553u4;
        return c0553u4;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: g */
    public final byte[] mo1142g(long j) throws EOFException {
        C0532ab.m1057a(this.f1086c, 0L, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        byte[] bArr = new byte[(int) j];
        mo1120b(bArr);
        return bArr;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: h */
    public final short mo1144h() {
        if (this.f1086c < 2) {
            throw new IllegalStateException("size < 2: " + this.f1086c);
        }
        C0553u c0553u = this.f1085b;
        int i = c0553u.f1148d;
        int i2 = c0553u.f1149e;
        if (i2 - i < 2) {
            return (short) (((mo1140g() & 255) << 8) | (mo1140g() & 255));
        }
        byte[] bArr = c0553u.f1147c;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 8) | (bArr[i3] & 255);
        this.f1086c -= 2;
        if (i4 == i2) {
            this.f1085b = c0553u.m1238a();
            C0554v.m1242a(c0553u);
        } else {
            c0553u.f1148d = i4;
        }
        return (short) i5;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: h */
    public final void mo1145h(long j) throws EOFException {
        while (j > 0) {
            if (this.f1085b == null) {
                throw new EOFException();
            }
            int min = (int) Math.min(j, this.f1085b.f1149e - this.f1085b.f1148d);
            long j2 = min;
            this.f1086c -= j2;
            long j3 = j - j2;
            this.f1085b.f1148d += min;
            if (this.f1085b.f1148d == this.f1085b.f1149e) {
                C0553u c0553u = this.f1085b;
                this.f1085b = c0553u.m1238a();
                C0554v.m1242a(c0553u);
            }
            j = j3;
        }
    }

    public final int hashCode() {
        C0553u c0553u = this.f1085b;
        if (c0553u == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = c0553u.f1149e;
            for (int i3 = c0553u.f1148d; i3 < i2; i3++) {
                i = (i * 31) + c0553u.f1147c[i3];
            }
            c0553u = c0553u.f1152h;
        } while (c0553u != this.f1085b);
        return i;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: i */
    public final int mo1146i() {
        if (this.f1086c < 4) {
            throw new IllegalStateException("size < 4: " + this.f1086c);
        }
        C0553u c0553u = this.f1085b;
        int i = c0553u.f1148d;
        int i2 = c0553u.f1149e;
        if (i2 - i < 4) {
            return ((mo1140g() & 255) << 24) | ((mo1140g() & 255) << 16) | ((mo1140g() & 255) << 8) | (mo1140g() & 255);
        }
        byte[] bArr = c0553u.f1147c;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16);
        int i6 = i4 + 1;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        int i8 = i6 + 1;
        int i9 = i7 | (bArr[i6] & 255);
        this.f1086c -= 4;
        if (i8 != i2) {
            c0553u.f1148d = i8;
            return i9;
        }
        this.f1085b = c0553u.m1238a();
        C0554v.m1242a(c0553u);
        return i9;
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public final C0535c mo1165p(long j) {
        C0553u m1141g = m1141g(8);
        byte[] bArr = m1141g.f1147c;
        int i = m1141g.f1149e;
        int i2 = i + 1;
        bArr[i] = (byte) ((j >>> 56) & 255);
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((j >>> 48) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((j >>> 40) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((j >>> 32) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((j >>> 24) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((j >>> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((j >>> 8) & 255);
        bArr[i8] = (byte) (j & 255);
        m1141g.f1149e = i8 + 1;
        this.f1086c += 8;
        return this;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: j */
    public final long mo1149j() {
        if (this.f1086c < 8) {
            throw new IllegalStateException("size < 8: " + this.f1086c);
        }
        C0553u c0553u = this.f1085b;
        int i = c0553u.f1148d;
        int i2 = c0553u.f1149e;
        if (i2 - i < 8) {
            return ((mo1146i() & 4294967295L) << 32) | (mo1146i() & 4294967295L);
        }
        byte[] bArr = c0553u.f1147c;
        long j = (bArr[i] & 255) << 56;
        long j2 = j | ((bArr[r9] & 255) << 48);
        long j3 = j2 | ((bArr[r2] & 255) << 40);
        long j4 = j3 | ((bArr[r9] & 255) << 32) | ((bArr[r2] & 255) << 24);
        long j5 = j4 | ((bArr[r7] & 255) << 16);
        long j6 = j5 | ((bArr[r2] & 255) << 8);
        int i3 = i + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1;
        long j7 = j6 | (bArr[r7] & 255);
        this.f1086c -= 8;
        if (i3 != i2) {
            c0553u.f1148d = i3;
            return j7;
        }
        this.f1085b = c0553u.m1238a();
        C0554v.m1242a(c0553u);
        return j7;
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public final C0535c mo1164o(long j) {
        return mo1165p(C0532ab.m1055a(j));
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public final C0535c mo1162n(long j) {
        if (j == 0) {
            return mo1157l(48);
        }
        boolean z = false;
        int i = 1;
        if (j < 0) {
            j = -j;
            if (j < 0) {
                return mo1114b("-9223372036854775808");
            }
            z = true;
        }
        if (j >= 100000000) {
            i = j < 1000000000000L ? j < 10000000000L ? j < 1000000000 ? 9 : 10 : j < 100000000000L ? 11 : 12 : j < 1000000000000000L ? j < 10000000000000L ? 13 : j < 100000000000000L ? 14 : 15 : j < 100000000000000000L ? j < 10000000000000000L ? 16 : 17 : j < 1000000000000000000L ? 18 : 19;
        } else if (j >= UMAmapConfig.AMAP_CACHE_WRITE_TIME) {
            i = j < 1000000 ? j < 100000 ? 5 : 6 : j < 10000000 ? 7 : 8;
        } else if (j >= 100) {
            i = j < 1000 ? 3 : 4;
        } else if (j >= 10) {
            i = 2;
        }
        if (z) {
            i++;
        }
        C0553u m1141g = m1141g(i);
        byte[] bArr = m1141g.f1147c;
        int i2 = m1141g.f1149e + i;
        while (j != 0) {
            i2--;
            bArr[i2] = f1084d[(int) (j % 10)];
            j /= 10;
        }
        if (z) {
            bArr[i2 - 1] = 45;
        }
        m1141g.f1149e += i;
        this.f1086c += i;
        return this;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: k */
    public final short mo1154k() {
        return C0532ab.m1056a(mo1144h());
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: l */
    public final int mo1155l() {
        return C0532ab.m1054a(mo1146i());
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public final C0535c mo1160m(long j) {
        if (j == 0) {
            return mo1157l(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        C0553u m1141g = m1141g(numberOfTrailingZeros);
        byte[] bArr = m1141g.f1147c;
        int i = m1141g.f1149e;
        for (int i2 = (m1141g.f1149e + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = f1084d[(int) (j & 15)];
            j >>>= 4;
        }
        m1141g.f1149e += numberOfTrailingZeros;
        this.f1086c += numberOfTrailingZeros;
        return this;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: m */
    public final long mo1158m() {
        return C0532ab.m1055a(mo1149j());
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00cb A[EDGE_INSN: B:51:0x00cb->B:45:0x00cb BREAK  A[LOOP:0: B:7:0x0018->B:50:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c1  */
    @Override // p017c.InterfaceC0537e
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long mo1161n() {
        /*
            Method dump skipped, instructions count: 215
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p017c.C0535c.mo1161n():long");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ab A[EDGE_INSN: B:43:0x00ab->B:40:0x00ab BREAK  A[LOOP:0: B:7:0x0015->B:42:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a3  */
    @Override // p017c.InterfaceC0537e
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long mo1163o() {
        /*
            r17 = this;
            r0 = r17
            long r1 = r0.f1086c
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 != 0) goto L12
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "size == 0"
            r1.<init>(r2)
            throw r1
        L12:
            r1 = 0
            r5 = r3
            r2 = 0
        L15:
            c.u r7 = r0.f1085b
            byte[] r8 = r7.f1147c
            int r9 = r7.f1148d
            int r10 = r7.f1149e
        L1d:
            if (r9 >= r10) goto L97
            r11 = r8[r9]
            r12 = 48
            if (r11 < r12) goto L2c
            r12 = 57
            if (r11 > r12) goto L2c
            int r12 = r11 + (-48)
            goto L44
        L2c:
            r12 = 97
            if (r11 < r12) goto L39
            r12 = 102(0x66, float:1.43E-43)
            if (r11 > r12) goto L39
            int r12 = r11 + (-97)
        L36:
            int r12 = r12 + 10
            goto L44
        L39:
            r12 = 65
            if (r11 < r12) goto L7c
            r12 = 70
            if (r11 > r12) goto L7c
            int r12 = r11 + (-65)
            goto L36
        L44:
            r13 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r15 = r5 & r13
            int r13 = (r15 > r3 ? 1 : (r15 == r3 ? 0 : -1))
            if (r13 == 0) goto L71
            c.c r1 = new c.c
            r1.<init>()
            c.c r1 = r1.mo1160m(r5)
            c.c r1 = r1.mo1157l(r11)
            java.lang.NumberFormatException r2 = new java.lang.NumberFormatException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Number too large: "
            r3.<init>(r4)
            java.lang.String r1 = r1.mo1167q()
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r2.<init>(r1)
            throw r2
        L71:
            r11 = 4
            long r5 = r5 << r11
            long r11 = (long) r12
            long r13 = r5 | r11
            int r9 = r9 + 1
            int r1 = r1 + 1
            r5 = r13
            goto L1d
        L7c:
            if (r1 != 0) goto L96
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Expected leading [0-9a-fA-F] character but was 0x"
            r2.<init>(r3)
            java.lang.String r3 = java.lang.Integer.toHexString(r11)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r1
        L96:
            r2 = 1
        L97:
            if (r9 != r10) goto La3
            c.u r8 = r7.m1238a()
            r0.f1085b = r8
            p017c.C0554v.m1242a(r7)
            goto La5
        La3:
            r7.f1148d = r9
        La5:
            if (r2 != 0) goto Lab
            c.u r7 = r0.f1085b
            if (r7 != 0) goto L15
        Lab:
            long r2 = r0.f1086c
            long r7 = (long) r1
            long r9 = r2 - r7
            r0.f1086c = r9
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: p017c.C0535c.mo1163o():long");
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: p */
    public final C0538f mo1166p() {
        return new C0538f(mo1172v());
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: q */
    public final String mo1167q() {
        try {
            return mo1105a(this.f1086c, C0532ab.f1080a);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // p017c.InterfaceC0537e
    @Nullable
    /* renamed from: r */
    public final String mo1168r() throws EOFException {
        long mo1090a = mo1090a((byte) 10);
        if (mo1090a != -1) {
            return m1139f(mo1090a);
        }
        if (this.f1086c != 0) {
            return mo1136e(this.f1086c);
        }
        return null;
    }

    @Override // p017c.InterfaceC0557y
    public final long read(C0535c c0535c, long j) {
        if (c0535c == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f1086c == 0) {
            return -1L;
        }
        if (j > this.f1086c) {
            j = this.f1086c;
        }
        c0535c.mo114a(this, j);
        return j;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: s */
    public final String mo1169s() throws EOFException {
        return mo1170t();
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: t */
    public final String mo1170t() throws EOFException {
        long mo1092a = mo1092a((byte) 10, 0L, Long.MAX_VALUE);
        if (mo1092a != -1) {
            return m1139f(mo1092a);
        }
        if (Long.MAX_VALUE < this.f1086c && m1122c(9223372036854775806L) == 13 && m1122c(Long.MAX_VALUE) == 10) {
            return m1139f(Long.MAX_VALUE);
        }
        C0535c c0535c = new C0535c();
        m1098a(c0535c, 0L, Math.min(32L, this.f1086c));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f1086c, Long.MAX_VALUE) + " content=" + c0535c.mo1166p().hex() + (char) 8230);
    }

    @Override // p017c.InterfaceC0556x
    public final C0558z timeout() {
        return C0558z.f1157c;
    }

    public final String toString() {
        if (this.f1086c <= 2147483647L) {
            int i = (int) this.f1086c;
            return (i == 0 ? C0538f.EMPTY : new C0555w(this, i)).toString();
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f1086c);
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: u */
    public final int mo1171u() throws EOFException {
        int i;
        int i2;
        int i3;
        if (this.f1086c == 0) {
            throw new EOFException();
        }
        byte m1122c = m1122c(0L);
        if ((m1122c & 128) == 0) {
            i = m1122c & Byte.MAX_VALUE;
            i2 = 1;
            i3 = 0;
        } else if ((m1122c & 224) == 192) {
            i = m1122c & 31;
            i2 = 2;
            i3 = 128;
        } else if ((m1122c & 240) == 224) {
            i = m1122c & C2489bg.f9370m;
            i2 = 3;
            i3 = 2048;
        } else {
            if ((m1122c & 248) != 240) {
                mo1145h(1L);
                return f1083a;
            }
            i = m1122c & 7;
            i2 = 4;
            i3 = 65536;
        }
        long j = i2;
        if (this.f1086c < j) {
            throw new EOFException("size < " + i2 + ": " + this.f1086c + " (to read code point prefixed 0x" + Integer.toHexString(m1122c) + ")");
        }
        for (int i4 = 1; i4 < i2; i4++) {
            long j2 = i4;
            byte m1122c2 = m1122c(j2);
            if ((m1122c2 & 192) != 128) {
                mo1145h(j2);
                return f1083a;
            }
            i = (i << 6) | (m1122c2 & 63);
        }
        mo1145h(j);
        return i > 1114111 ? f1083a : ((i < 55296 || i > 57343) && i >= i3) ? i : f1083a;
    }

    @Override // p017c.InterfaceC0537e
    /* renamed from: v */
    public final byte[] mo1172v() {
        try {
            return mo1142g(this.f1086c);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: w */
    public final void m1173w() {
        try {
            mo1145h(this.f1086c);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: x, reason: merged with bridge method [inline-methods] */
    public final C0535c clone() {
        C0535c c0535c = new C0535c();
        if (this.f1086c == 0) {
            return c0535c;
        }
        c0535c.f1085b = new C0553u(this.f1085b);
        C0553u c0553u = c0535c.f1085b;
        C0553u c0553u2 = c0535c.f1085b;
        C0553u c0553u3 = c0535c.f1085b;
        c0553u2.f1153i = c0553u3;
        c0553u.f1152h = c0553u3;
        C0553u c0553u4 = this.f1085b;
        while (true) {
            c0553u4 = c0553u4.f1152h;
            if (c0553u4 == this.f1085b) {
                c0535c.f1086c = this.f1086c;
                return c0535c;
            }
            c0535c.f1085b.f1153i.m1239a(new C0553u(c0553u4));
        }
    }

    @Override // p017c.InterfaceC0536d
    /* renamed from: y */
    public final /* bridge */ /* synthetic */ InterfaceC0536d mo1175y() throws IOException {
        return this;
    }
}
