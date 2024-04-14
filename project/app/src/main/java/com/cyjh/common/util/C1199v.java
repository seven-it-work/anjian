package com.cyjh.common.util;

import android.util.Base64;
import android.util.Log;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* renamed from: com.cyjh.common.util.v */
/* loaded from: classes.dex */
public final class C1199v {

    /* renamed from: a */
    public static final String f4252a = "RSA";

    /* renamed from: b */
    public static final String f4253b = "RSA/ECB/NoPadding";

    /* renamed from: c */
    public static final String f4254c = "1";

    /* renamed from: d */
    public static final String f4255d = "2";

    /* renamed from: e */
    public static final int f4256e = 2048;

    /* renamed from: f */
    public static final String f4257f = "MANUTD is the greatest club in the world";

    /* renamed from: a */
    private static String m5224a(PrivateKey privateKey, byte[] bArr) {
        try {
            Cipher cipher = Cipher.getInstance(f4253b);
            cipher.init(2, privateKey);
            return new String(cipher.doFinal(bArr));
        } catch (InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    private static KeyPair m5225a() throws Exception {
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
        keyPairGenerator.initialize(2048);
        return keyPairGenerator.generateKeyPair();
    }

    /* renamed from: a */
    private static PublicKey m5226a(byte[] bArr) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArr));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    private static RSAPublicKey m5227a(String str) throws Exception {
        try {
            return (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
        } catch (NullPointerException unused) {
            throw new Exception("公钥数据为空");
        } catch (NoSuchAlgorithmException unused2) {
            throw new Exception("无此算法");
        } catch (InvalidKeySpecException unused3) {
            throw new Exception("公钥非法");
        }
    }

    /* renamed from: a */
    private static byte[] m5228a(PublicKey publicKey, byte[] bArr) {
        try {
            Cipher cipher = Cipher.getInstance(f4253b);
            cipher.init(1, publicKey);
            return cipher.doFinal(bArr);
        } catch (InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    private static String m5229b(PublicKey publicKey, byte[] bArr) {
        try {
            Cipher cipher = Cipher.getInstance(f4253b);
            cipher.init(2, publicKey);
            return new String(cipher.doFinal(bArr));
        } catch (InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    private static PublicKey m5230b(byte[] bArr) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new PKCS8EncodedKeySpec(bArr));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    private static Map<String, byte[]> m5231b() {
        try {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
            keyPairGenerator.initialize(2048);
            KeyPair generateKeyPair = keyPairGenerator.generateKeyPair();
            RSAPublicKey rSAPublicKey = (RSAPublicKey) generateKeyPair.getPublic();
            RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) generateKeyPair.getPrivate();
            HashMap hashMap = new HashMap();
            hashMap.put("1", rSAPublicKey.getEncoded());
            hashMap.put("2", rSAPrivateKey.getEncoded());
            Log.e("ffff", "fuck.1...     " + Base64.encodeToString(rSAPublicKey.getEncoded(), 2));
            Log.e("ffff", "fuck.2...     " + Base64.encodeToString(rSAPrivateKey.getEncoded(), 2));
            return hashMap;
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }
}
