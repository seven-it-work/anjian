package com.iflytek.voiceads.utils;

import android.text.TextUtils;
import android.util.Base64;
import com.iflytek.voiceads.config.SDKConstants;
import com.umeng.commonsdk.proguard.C2489bg;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.iflytek.voiceads.utils.d */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2310d {
    /* renamed from: a */
    public static synchronized String m10127a(String str) {
        String str2;
        synchronized (C2310d.class) {
            if (TextUtils.isEmpty(str)) {
                str2 = "";
            } else {
                try {
                    byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes());
                    StringBuilder sb = new StringBuilder();
                    for (byte b2 : digest) {
                        String hexString = Integer.toHexString(b2 & 255);
                        if (hexString.length() == 1) {
                            hexString = "0" + hexString;
                        }
                        sb.append(hexString);
                    }
                    str2 = sb.toString();
                } catch (NoSuchAlgorithmException e) {
                    C2313g.m10138b(SDKConstants.TAG, "md5 error:" + e.getMessage());
                    str2 = "";
                }
            }
        }
        return str2;
    }

    /* renamed from: b */
    public static String m10128b(String str) {
        try {
            byte[] bytes = "5120aba7dd8880ba".getBytes("utf-8");
            byte[] bArr = new byte[16];
            byte[] bArr2 = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, C2489bg.f9368k, C2489bg.f9369l, C2489bg.f9370m};
            for (int i = 0; i < 16; i++) {
                if (bytes.length > i) {
                    bArr[i] = bytes[i];
                } else {
                    bArr[i] = bArr2[0];
                }
            }
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(1, secretKeySpec);
            return Base64.encodeToString(cipher.doFinal(str.getBytes("utf-8")), 8);
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "getEncPrice:" + e.getMessage());
            return "";
        }
    }
}
