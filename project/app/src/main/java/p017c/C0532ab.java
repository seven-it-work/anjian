package p017c;

import java.nio.charset.Charset;

/* renamed from: c.ab */
/* loaded from: classes.dex */
final class C0532ab {

    /* renamed from: a */
    public static final Charset f1080a = Charset.forName("UTF-8");

    private C0532ab() {
    }

    /* renamed from: a */
    public static int m1054a(int i) {
        return ((i & 255) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
    }

    /* renamed from: a */
    public static long m1055a(long j) {
        return ((j & (-72057594037927936L)) >>> 56) | ((j & 71776119061217280L) >>> 40) | ((j & 280375465082880L) >>> 24) | ((j & 1095216660480L) >>> 8) | ((j & 4278190080L) << 8) | ((j & 16711680) << 24) | ((j & 65280) << 40) | ((j & 255) << 56);
    }

    /* renamed from: a */
    public static short m1056a(short s) {
        int i = s & 65535;
        return (short) (((i & 255) << 8) | ((65280 & i) >>> 8));
    }

    /* renamed from: a */
    public static void m1057a(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException(String.format("size=%s offset=%s byteCount=%s", Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3)));
        }
    }

    /* renamed from: a */
    public static void m1058a(Throwable th) {
        throw th;
    }

    /* renamed from: a */
    public static boolean m1059a(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4 + i] != bArr2[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    private static <T extends Throwable> void m1060b(Throwable th) throws Throwable {
        throw th;
    }
}
