package com.iflytek.collector.p168a.p169a;

import android.util.Base64;
import com.iflytek.voiceads.config.SDKLogger;
import java.security.KeyFactory;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* renamed from: com.iflytek.collector.a.a.h */
/* loaded from: classes.dex */
public class C2205h {
    /* renamed from: a */
    public static RSAPublicKey m9775a(String str) {
        try {
            return (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
        } catch (Exception e) {
            SDKLogger.m9849e("loadPublicKey:" + e.getMessage());
            return null;
        }
    }

    /* renamed from: a */
    public static byte[] m9776a(byte[] bArr, RSAPublicKey rSAPublicKey) throws Exception {
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, rSAPublicKey);
        return cipher.doFinal(bArr);
    }
}
