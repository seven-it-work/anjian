package org.litepal.p246g.p247a;

import android.util.Base64;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: org.litepal.g.a.a */
/* loaded from: classes2.dex */
public final class C3055a {

    /* renamed from: a */
    public static boolean f11191a = false;

    /* renamed from: b */
    private static final String f11192b = "AESCrypt";

    /* renamed from: c */
    private static final String f11193c = "AES/CBC/PKCS7Padding";

    /* renamed from: d */
    private static final String f11194d = "UTF-8";

    /* renamed from: e */
    private static final String f11195e = "SHA-256";

    /* renamed from: f */
    private static final byte[] f11196f = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    private C3055a() {
    }

    /* renamed from: a */
    public static String m13939a(String str, String str2) throws GeneralSecurityException {
        try {
            SecretKeySpec m13941a = m13941a(str);
            m13946c("message", str2);
            byte[] bArr = f11196f;
            byte[] bytes = str2.getBytes("UTF-8");
            Cipher cipher = Cipher.getInstance(f11193c);
            cipher.init(1, m13941a, new IvParameterSpec(bArr));
            byte[] doFinal = cipher.doFinal(bytes);
            m13942a("cipherText", doFinal);
            String encodeToString = Base64.encodeToString(doFinal, 2);
            m13946c("Base64.NO_WRAP", encodeToString);
            return encodeToString;
        } catch (UnsupportedEncodingException e) {
            if (f11191a) {
                Log.e(f11192b, "UnsupportedEncodingException ", e);
            }
            throw new GeneralSecurityException(e);
        }
    }

    /* renamed from: a */
    private static String m13940a(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] cArr2 = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            cArr2[i3] = cArr[i2 >>> 4];
            cArr2[i3 + 1] = cArr[i2 & 15];
        }
        return new String(cArr2);
    }

    /* renamed from: a */
    private static SecretKeySpec m13941a(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest messageDigest = MessageDigest.getInstance(f11195e);
        byte[] bytes = str.getBytes("UTF-8");
        messageDigest.update(bytes, 0, bytes.length);
        byte[] digest = messageDigest.digest();
        m13942a("SHA-256 key ", digest);
        return new SecretKeySpec(digest, "AES");
    }

    /* renamed from: a */
    private static void m13942a(String str, byte[] bArr) {
        if (f11191a) {
            Log.d(f11192b, str + "[" + bArr.length + "] [" + m13940a(bArr) + "]");
        }
    }

    /* renamed from: a */
    private static byte[] m13943a(SecretKeySpec secretKeySpec, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        Cipher cipher = Cipher.getInstance(f11193c);
        cipher.init(1, secretKeySpec, new IvParameterSpec(bArr));
        byte[] doFinal = cipher.doFinal(bArr2);
        m13942a("cipherText", doFinal);
        return doFinal;
    }

    /* renamed from: b */
    public static String m13944b(String str, String str2) throws GeneralSecurityException {
        try {
            SecretKeySpec m13941a = m13941a(str);
            m13946c("base64EncodedCipherText", str2);
            byte[] decode = Base64.decode(str2, 2);
            m13942a("decodedCipherText", decode);
            byte[] bArr = f11196f;
            Cipher cipher = Cipher.getInstance(f11193c);
            cipher.init(2, m13941a, new IvParameterSpec(bArr));
            byte[] doFinal = cipher.doFinal(decode);
            m13942a("decryptedBytes", doFinal);
            m13942a("decryptedBytes", doFinal);
            String str3 = new String(doFinal, "UTF-8");
            m13946c("message", str3);
            return str3;
        } catch (UnsupportedEncodingException e) {
            if (f11191a) {
                Log.e(f11192b, "UnsupportedEncodingException ", e);
            }
            throw new GeneralSecurityException(e);
        }
    }

    /* renamed from: b */
    private static byte[] m13945b(SecretKeySpec secretKeySpec, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        Cipher cipher = Cipher.getInstance(f11193c);
        cipher.init(2, secretKeySpec, new IvParameterSpec(bArr));
        byte[] doFinal = cipher.doFinal(bArr2);
        m13942a("decryptedBytes", doFinal);
        return doFinal;
    }

    /* renamed from: c */
    private static void m13946c(String str, String str2) {
        if (f11191a) {
            Log.d(f11192b, str + "[" + str2.length() + "] [" + str2 + "]");
        }
    }
}
