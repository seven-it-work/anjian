package p017c;

import com.umeng.commonsdk.proguard.C2489bg;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.annotation.Nullable;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: c.f */
/* loaded from: classes.dex */
public class C0538f implements Serializable, Comparable<C0538f> {
    private static final long serialVersionUID = 1;
    final byte[] data;
    transient int hashCode;
    transient String utf8;
    static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final C0538f EMPTY = m1177of(new byte[0]);

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0538f(byte[] bArr) {
        this.data = bArr;
    }

    static int codePointIndexToCharIndex(String str, int i) {
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            if (i3 == i) {
                return i2;
            }
            int codePointAt = str.codePointAt(i2);
            if ((Character.isISOControl(codePointAt) && codePointAt != 10 && codePointAt != 13) || codePointAt == 65533) {
                return -1;
            }
            i3++;
            i2 += Character.charCount(codePointAt);
        }
        return str.length();
    }

    @Nullable
    public static C0538f decodeBase64(String str) {
        if (str == null) {
            throw new IllegalArgumentException("base64 == null");
        }
        byte[] m1063a = C0534b.m1063a(str);
        if (m1063a != null) {
            return new C0538f(m1063a);
        }
        return null;
    }

    public static C0538f decodeHex(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        }
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: " + str);
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) ((decodeHexDigit(str.charAt(i2)) << 4) + decodeHexDigit(str.charAt(i2 + 1)));
        }
        return m1177of(bArr);
    }

    private static int decodeHexDigit(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = 'a';
        if (c2 < 'a' || c2 > 'f') {
            c3 = 'A';
            if (c2 < 'A' || c2 > 'F') {
                throw new IllegalArgumentException("Unexpected hex digit: " + c2);
            }
        }
        return (c2 - c3) + 10;
    }

    private C0538f digest(String str) {
        try {
            return m1177of(MessageDigest.getInstance(str).digest(this.data));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    public static C0538f encodeString(String str, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        return new C0538f(str.getBytes(charset));
    }

    public static C0538f encodeUtf8(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        C0538f c0538f = new C0538f(str.getBytes(C0532ab.f1080a));
        c0538f.utf8 = str;
        return c0538f;
    }

    private C0538f hmac(String str, C0538f c0538f) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(c0538f.toByteArray(), str));
            return m1177of(mac.doFinal(this.data));
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    /* renamed from: of */
    public static C0538f m1176of(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("data == null");
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        return new C0538f(bArr);
    }

    /* renamed from: of */
    public static C0538f m1177of(byte... bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("data == null");
        }
        return new C0538f((byte[]) bArr.clone());
    }

    /* renamed from: of */
    public static C0538f m1178of(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("data == null");
        }
        C0532ab.m1057a(bArr.length, i, i2);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new C0538f(bArr2);
    }

    public static C0538f read(InputStream inputStream, int i) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + i);
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read == -1) {
                throw new EOFException();
            }
            i2 += read;
        }
        return new C0538f(bArr);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        C0538f read = read(objectInputStream, objectInputStream.readInt());
        try {
            Field declaredField = C0538f.class.getDeclaredField("data");
            declaredField.setAccessible(true);
            declaredField.set(this, read.data);
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (NoSuchFieldException unused2) {
            throw new AssertionError();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(this.data).asReadOnlyBuffer();
    }

    public String base64() {
        return C0534b.m1061a(this.data);
    }

    public String base64Url() {
        return C0534b.m1064b(this.data);
    }

    @Override // java.lang.Comparable
    public int compareTo(C0538f c0538f) {
        int size = size();
        int size2 = c0538f.size();
        int min = Math.min(size, size2);
        for (int i = 0; i < min; i++) {
            int i2 = getByte(i) & 255;
            int i3 = c0538f.getByte(i) & 255;
            if (i2 != i3) {
                return i2 < i3 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size < size2 ? -1 : 1;
    }

    public final boolean endsWith(C0538f c0538f) {
        return rangeEquals(size() - c0538f.size(), c0538f, 0, c0538f.size());
    }

    public final boolean endsWith(byte[] bArr) {
        return rangeEquals(size() - bArr.length, bArr, 0, bArr.length);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C0538f) {
            C0538f c0538f = (C0538f) obj;
            if (c0538f.size() == this.data.length && c0538f.rangeEquals(0, this.data, 0, this.data.length)) {
                return true;
            }
        }
        return false;
    }

    public byte getByte(int i) {
        return this.data[i];
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.data);
        this.hashCode = hashCode;
        return hashCode;
    }

    public String hex() {
        char[] cArr = new char[this.data.length * 2];
        int i = 0;
        for (byte b2 : this.data) {
            int i2 = i + 1;
            cArr[i] = HEX_DIGITS[(b2 >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = HEX_DIGITS[b2 & C2489bg.f9370m];
        }
        return new String(cArr);
    }

    public C0538f hmacSha1(C0538f c0538f) {
        return hmac("HmacSHA1", c0538f);
    }

    public C0538f hmacSha256(C0538f c0538f) {
        return hmac("HmacSHA256", c0538f);
    }

    public C0538f hmacSha512(C0538f c0538f) {
        return hmac("HmacSHA512", c0538f);
    }

    public final int indexOf(C0538f c0538f) {
        return indexOf(c0538f.internalArray(), 0);
    }

    public final int indexOf(C0538f c0538f, int i) {
        return indexOf(c0538f.internalArray(), i);
    }

    public final int indexOf(byte[] bArr) {
        return indexOf(bArr, 0);
    }

    public int indexOf(byte[] bArr, int i) {
        int length = this.data.length - bArr.length;
        for (int max = Math.max(i, 0); max <= length; max++) {
            if (C0532ab.m1059a(this.data, max, bArr, 0, bArr.length)) {
                return max;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] internalArray() {
        return this.data;
    }

    public final int lastIndexOf(C0538f c0538f) {
        return lastIndexOf(c0538f.internalArray(), size());
    }

    public final int lastIndexOf(C0538f c0538f, int i) {
        return lastIndexOf(c0538f.internalArray(), i);
    }

    public final int lastIndexOf(byte[] bArr) {
        return lastIndexOf(bArr, size());
    }

    public int lastIndexOf(byte[] bArr, int i) {
        for (int min = Math.min(i, this.data.length - bArr.length); min >= 0; min--) {
            if (C0532ab.m1059a(this.data, min, bArr, 0, bArr.length)) {
                return min;
            }
        }
        return -1;
    }

    public C0538f md5() {
        return digest("MD5");
    }

    public boolean rangeEquals(int i, C0538f c0538f, int i2, int i3) {
        return c0538f.rangeEquals(i2, this.data, i, i3);
    }

    public boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        return i >= 0 && i <= this.data.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && C0532ab.m1059a(this.data, i, bArr, i2, i3);
    }

    public C0538f sha1() {
        return digest("SHA-1");
    }

    public C0538f sha256() {
        return digest("SHA-256");
    }

    public C0538f sha512() {
        return digest("SHA-512");
    }

    public int size() {
        return this.data.length;
    }

    public final boolean startsWith(C0538f c0538f) {
        return rangeEquals(0, c0538f, 0, c0538f.size());
    }

    public final boolean startsWith(byte[] bArr) {
        return rangeEquals(0, bArr, 0, bArr.length);
    }

    public String string(Charset charset) {
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        return new String(this.data, charset);
    }

    public C0538f substring(int i) {
        return substring(i, this.data.length);
    }

    public C0538f substring(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        if (i2 > this.data.length) {
            throw new IllegalArgumentException("endIndex > length(" + this.data.length + ")");
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (i == 0 && i2 == this.data.length) {
            return this;
        }
        byte[] bArr = new byte[i3];
        System.arraycopy(this.data, i, bArr, 0, i3);
        return new C0538f(bArr);
    }

    public C0538f toAsciiLowercase() {
        for (int i = 0; i < this.data.length; i++) {
            byte b2 = this.data[i];
            if (b2 >= 65 && b2 <= 90) {
                byte[] bArr = (byte[]) this.data.clone();
                bArr[i] = (byte) (b2 + 32);
                for (int i2 = i + 1; i2 < bArr.length; i2++) {
                    byte b3 = bArr[i2];
                    if (b3 >= 65 && b3 <= 90) {
                        bArr[i2] = (byte) (b3 + 32);
                    }
                }
                return new C0538f(bArr);
            }
        }
        return this;
    }

    public C0538f toAsciiUppercase() {
        for (int i = 0; i < this.data.length; i++) {
            byte b2 = this.data[i];
            if (b2 >= 97 && b2 <= 122) {
                byte[] bArr = (byte[]) this.data.clone();
                bArr[i] = (byte) (b2 - 32);
                for (int i2 = i + 1; i2 < bArr.length; i2++) {
                    byte b3 = bArr[i2];
                    if (b3 >= 97 && b3 <= 122) {
                        bArr[i2] = (byte) (b3 - 32);
                    }
                }
                return new C0538f(bArr);
            }
        }
        return this;
    }

    public byte[] toByteArray() {
        return (byte[]) this.data.clone();
    }

    public String toString() {
        String replace;
        StringBuilder sb;
        String str;
        if (this.data.length == 0) {
            return "[size=0]";
        }
        String utf8 = utf8();
        int codePointIndexToCharIndex = codePointIndexToCharIndex(utf8, 64);
        if (codePointIndexToCharIndex != -1) {
            replace = utf8.substring(0, codePointIndexToCharIndex).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
            if (codePointIndexToCharIndex < utf8.length()) {
                sb = new StringBuilder("[size=");
                sb.append(this.data.length);
                sb.append(" text=");
                sb.append(replace);
                str = "…]";
            } else {
                sb = new StringBuilder("[text=");
                sb.append(replace);
                str = "]";
            }
        } else if (this.data.length <= 64) {
            sb = new StringBuilder("[hex=");
            replace = hex();
            sb.append(replace);
            str = "]";
        } else {
            sb = new StringBuilder("[size=");
            sb.append(this.data.length);
            sb.append(" hex=");
            replace = substring(0, 64).hex();
            sb.append(replace);
            str = "…]";
        }
        sb.append(str);
        return sb.toString();
    }

    public String utf8() {
        String str = this.utf8;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.data, C0532ab.f1080a);
        this.utf8 = str2;
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void write(C0535c c0535c) {
        c0535c.mo1127c(this.data, 0, this.data.length);
    }

    public void write(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        outputStream.write(this.data);
    }
}
