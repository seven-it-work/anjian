package com.iflytek.collector.p168a.p169a;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.iflytek.collector.a.a.a */
/* loaded from: classes.dex */
public class C2198a {
    /* renamed from: a */
    public static SecretKeySpec m9734a() {
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            keyGenerator.init(128, new SecureRandom());
            return new SecretKeySpec(keyGenerator.generateKey().getEncoded(), "AES");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public static byte[] m9735a(byte[] bArr, byte[] bArr2) {
        try {
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(1, new SecretKeySpec(bArr2, "AES"));
            return cipher.doFinal(bArr);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
