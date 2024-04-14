package mobi.oneway.export.p201g;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: mobi.oneway.export.g.a */
/* loaded from: classes2.dex */
public class C2689a {

    /* renamed from: a */
    private static final Map<String, Cipher> f10339a = new ConcurrentHashMap();

    /* renamed from: a */
    private static String m12151a(String str, int i, boolean z) {
        char[] charArray = str.toCharArray();
        char[] cArr = new char[i];
        int i2 = !z ? 1 : 0;
        for (int i3 = 0; i3 < i; i3++) {
            cArr[i3] = charArray[(i3 * 2) + i2];
        }
        return String.valueOf(cArr);
    }

    /* renamed from: a */
    public static String m12152a(String str, String str2, String str3) {
        String[] m12156a = m12156a(str2, str3);
        return m12158c(str, m12156a[0], m12156a[1]);
    }

    /* renamed from: a */
    private static Cipher m12153a(String str, String str2, int i) {
        String str3 = str + ":" + str2 + ":" + i;
        Cipher cipher = f10339a.get(str3);
        if (cipher != null) {
            return cipher;
        }
        SecretKeySpec m12154a = m12154a(str);
        Cipher cipher2 = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher2.init(i, m12154a, new IvParameterSpec(str2.getBytes("utf-8")));
        f10339a.put(str3, cipher2);
        return cipher2;
    }

    /* renamed from: a */
    private static SecretKeySpec m12154a(String str) {
        byte[] bytes = str.getBytes("utf-8");
        byte[] bArr = new byte[16];
        for (int i = 0; i < bytes.length && i < 16; i++) {
            bArr[i] = bytes[i];
        }
        return new SecretKeySpec(bArr, "AES");
    }

    /* renamed from: a */
    private static boolean m12155a(int i) {
        return (i & 1) == 1;
    }

    /* renamed from: a */
    private static String[] m12156a(String str, String str2) {
        char charAt = str.charAt(2);
        char charAt2 = str2.charAt(5);
        String m12151a = m12151a(str2, 8, m12155a(charAt));
        String m12151a2 = m12151a(str, 8, m12155a(charAt2));
        return new String[]{m12151a + m12151a2, m12151a2 + m12151a};
    }

    /* renamed from: b */
    public static String m12157b(String str, String str2, String str3) {
        String[] m12156a = m12156a(str2, str3);
        return m12159d(str, m12156a[0], m12156a[1]);
    }

    /* renamed from: c */
    private static String m12158c(String str, String str2, String str3) {
        return new String(C2690b.m12166a(m12153a(str2, str3, 1).doFinal(str.getBytes("utf-8"))), "utf-8");
    }

    /* renamed from: d */
    private static String m12159d(String str, String str2, String str3) {
        return new String(m12153a(str2, str3, 2).doFinal(C2690b.m12172b(str.getBytes("utf-8"))));
    }
}
