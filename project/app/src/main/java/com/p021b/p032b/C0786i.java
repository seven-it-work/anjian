package com.p021b.p032b;

import com.umeng.commonsdk.proguard.C2489bg;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* renamed from: com.b.b.i */
/* loaded from: classes.dex */
public class C0786i implements Serializable, Comparable<C0786i> {

    /* renamed from: a */
    static final char[] f2145a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b */
    public static final C0786i f2146b = m2072a(new byte[0]);

    /* renamed from: c */
    final byte[] f2147c;

    /* renamed from: d */
    transient int f2148d;

    /* renamed from: e */
    transient String f2149e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0786i(byte[] bArr) {
        this.f2147c = bArr;
    }

    /* renamed from: a */
    private static int m2070a(char c2) {
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

    /* renamed from: a */
    public static C0786i m2071a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        C0786i c0786i = new C0786i(str.getBytes(C0778aa.f2135a));
        c0786i.f2149e = str;
        return c0786i;
    }

    /* renamed from: a */
    public static C0786i m2072a(byte... bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("data == null");
        }
        return new C0786i((byte[]) bArr.clone());
    }

    /* renamed from: b */
    public static C0786i m2073b(String str) {
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: " + str);
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) ((m2070a(str.charAt(i2)) << 4) + m2070a(str.charAt(i2 + 1)));
        }
        return m2072a(bArr);
    }

    /* renamed from: c */
    private C0786i m2074c(String str) {
        try {
            return m2072a(MessageDigest.getInstance(str).digest(this.f2147c));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    public byte mo2075a(int i) {
        return this.f2147c[i];
    }

    /* renamed from: a */
    public C0786i mo2076a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        if (i2 > this.f2147c.length) {
            throw new IllegalArgumentException("endIndex > length(" + this.f2147c.length + ")");
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (i == 0 && i2 == this.f2147c.length) {
            return this;
        }
        byte[] bArr = new byte[i3];
        System.arraycopy(this.f2147c, i, bArr, 0, i3);
        return new C0786i(bArr);
    }

    /* renamed from: a */
    public String mo2077a() {
        String str = this.f2149e;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f2147c, C0778aa.f2135a);
        this.f2149e = str2;
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void mo2078a(C0783f c0783f) {
        c0783f.mo2040b(this.f2147c, 0, this.f2147c.length);
    }

    /* renamed from: a */
    public boolean mo2079a(int i, C0786i c0786i, int i2, int i3) {
        return c0786i.mo2080a(0, this.f2147c, 0, i3);
    }

    /* renamed from: a */
    public boolean mo2080a(int i, byte[] bArr, int i2, int i3) {
        return i >= 0 && i <= this.f2147c.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && C0778aa.m2017a(this.f2147c, i, bArr, i2, i3);
    }

    /* renamed from: b */
    public String mo2081b() {
        return C0782e.m2018a(this.f2147c);
    }

    /* renamed from: c */
    public C0786i mo2082c() {
        return m2074c("SHA-1");
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(C0786i c0786i) {
        C0786i c0786i2 = c0786i;
        int mo2086g = mo2086g();
        int mo2086g2 = c0786i2.mo2086g();
        int min = Math.min(mo2086g, mo2086g2);
        for (int i = 0; i < min; i++) {
            int mo2075a = mo2075a(i) & 255;
            int mo2075a2 = c0786i2.mo2075a(i) & 255;
            if (mo2075a != mo2075a2) {
                return mo2075a < mo2075a2 ? -1 : 1;
            }
        }
        if (mo2086g == mo2086g2) {
            return 0;
        }
        return mo2086g < mo2086g2 ? -1 : 1;
    }

    /* renamed from: d */
    public C0786i mo2083d() {
        return m2074c("SHA-256");
    }

    /* renamed from: e */
    public String mo2084e() {
        char[] cArr = new char[this.f2147c.length * 2];
        int i = 0;
        for (byte b2 : this.f2147c) {
            int i2 = i + 1;
            cArr[i] = f2145a[(b2 >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = f2145a[b2 & C2489bg.f9370m];
        }
        return new String(cArr);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C0786i) {
            C0786i c0786i = (C0786i) obj;
            if (c0786i.mo2086g() == this.f2147c.length && c0786i.mo2080a(0, this.f2147c, 0, this.f2147c.length)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public C0786i mo2085f() {
        for (int i = 0; i < this.f2147c.length; i++) {
            byte b2 = this.f2147c[i];
            if (b2 >= 65 && b2 <= 90) {
                byte[] bArr = (byte[]) this.f2147c.clone();
                bArr[i] = (byte) (b2 + 32);
                for (int i2 = i + 1; i2 < bArr.length; i2++) {
                    byte b3 = bArr[i2];
                    if (b3 >= 65 && b3 <= 90) {
                        bArr[i2] = (byte) (b3 + 32);
                    }
                }
                return new C0786i(bArr);
            }
        }
        return this;
    }

    /* renamed from: g */
    public int mo2086g() {
        return this.f2147c.length;
    }

    /* renamed from: h */
    public byte[] mo2087h() {
        return (byte[]) this.f2147c.clone();
    }

    public int hashCode() {
        int i = this.f2148d;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.f2147c);
        this.f2148d = hashCode;
        return hashCode;
    }

    public String toString() {
        String replace;
        StringBuilder sb;
        String str;
        if (this.f2147c.length == 0) {
            return "[size=0]";
        }
        String mo2077a = mo2077a();
        int length = mo2077a.length();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= length) {
                i = mo2077a.length();
                break;
            }
            if (i2 == 64) {
                break;
            }
            int codePointAt = mo2077a.codePointAt(i);
            if ((!Character.isISOControl(codePointAt) || codePointAt == 10 || codePointAt == 13) && codePointAt != 65533) {
                i2++;
                i += Character.charCount(codePointAt);
            }
        }
        i = -1;
        if (i != -1) {
            replace = mo2077a.substring(0, i).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
            if (i < mo2077a.length()) {
                sb = new StringBuilder("[size=");
                sb.append(this.f2147c.length);
                sb.append(" text=");
                sb.append(replace);
                str = "…]";
            } else {
                sb = new StringBuilder("[text=");
                sb.append(replace);
                str = "]";
            }
        } else if (this.f2147c.length <= 64) {
            sb = new StringBuilder("[hex=");
            replace = mo2084e();
            sb.append(replace);
            str = "]";
        } else {
            sb = new StringBuilder("[size=");
            sb.append(this.f2147c.length);
            sb.append(" hex=");
            replace = mo2076a(0, 64).mo2084e();
            sb.append(replace);
            str = "…]";
        }
        sb.append(str);
        return sb.toString();
    }
}
