package p003b.p004a.p015k;

import p017c.C0538f;

/* renamed from: b.a.k.b */
/* loaded from: classes.dex */
public final class C0489b {

    /* renamed from: a */
    static final String f584a = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";

    /* renamed from: b */
    static final int f585b = 128;

    /* renamed from: c */
    static final int f586c = 64;

    /* renamed from: d */
    static final int f587d = 32;

    /* renamed from: e */
    static final int f588e = 16;

    /* renamed from: f */
    static final int f589f = 15;

    /* renamed from: g */
    static final int f590g = 8;

    /* renamed from: h */
    static final int f591h = 128;

    /* renamed from: i */
    static final int f592i = 127;

    /* renamed from: j */
    static final int f593j = 0;

    /* renamed from: k */
    static final int f594k = 1;

    /* renamed from: l */
    static final int f595l = 2;

    /* renamed from: m */
    static final int f596m = 8;

    /* renamed from: n */
    static final int f597n = 9;

    /* renamed from: o */
    static final int f598o = 10;

    /* renamed from: p */
    static final long f599p = 125;

    /* renamed from: q */
    static final long f600q = 123;

    /* renamed from: r */
    static final int f601r = 126;

    /* renamed from: s */
    static final long f602s = 65535;

    /* renamed from: t */
    static final int f603t = 127;

    /* renamed from: u */
    static final int f604u = 1001;

    /* renamed from: v */
    static final int f605v = 1002;

    /* renamed from: w */
    static final int f606w = 1005;

    /* renamed from: x */
    static final int f607x = 1006;

    private C0489b() {
        throw new AssertionError("No instances.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m547a(int i) {
        StringBuilder sb;
        if (i < 1000 || i >= 5000) {
            sb = new StringBuilder("Code must be in range [1000,5000): ");
            sb.append(i);
        } else {
            if ((i < 1004 || i > 1006) && (i < 1012 || i > 2999)) {
                return null;
            }
            sb = new StringBuilder("Code ");
            sb.append(i);
            sb.append(" is reserved and may not be used.");
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static String m548a(String str) {
        return C0538f.encodeUtf8(str + f584a).sha1().base64();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m549a(byte[] bArr, long j, byte[] bArr2, long j2) {
        int length = bArr2.length;
        int i = 0;
        while (i < j) {
            bArr[i] = (byte) (bArr2[(int) (j2 % length)] ^ bArr[i]);
            i++;
            j2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m550b(int i) {
        String m547a = m547a(i);
        if (m547a != null) {
            throw new IllegalArgumentException(m547a);
        }
    }
}
