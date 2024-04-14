package com.iflytek.voiceads.utils;

import android.util.Base64;
import com.iflytek.voiceads.config.SDKConstants;
import java.security.KeyFactory;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* loaded from: assets/AdDex.4.0.1.dex */
public class Encoder {
    private static final String ALGORITHM = "RSA";
    private static final String TRANSFORMATION = "RSA/ECB/PKCS1Padding";

    static {
        System.loadLibrary("iflyads");
    }

    public static byte[] encryptByPublicKey(String str, String str2) {
        try {
            RSAPublicKey loadPublicKey = loadPublicKey(str2);
            if (loadPublicKey != null) {
                return encryptByPublicKey(str.getBytes("utf-8"), loadPublicKey);
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "encryptByPublicKey:" + e.getMessage());
        }
        return null;
    }

    private static byte[] encryptByPublicKey(byte[] bArr, RSAPublicKey rSAPublicKey) throws Exception {
        Cipher cipher = Cipher.getInstance(TRANSFORMATION);
        cipher.init(1, rSAPublicKey);
        return cipher.doFinal(bArr);
    }

    private static RSAPublicKey loadPublicKey(String str) {
        try {
            return (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "loadPublicKey:" + e.getMessage());
            return null;
        }
    }

    public static native byte[] packageData();
}
