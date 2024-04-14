package com.goldcoast.sdk.p129c;

import android.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.goldcoast.sdk.c.a */
/* loaded from: classes.dex */
public final class C1777a {

    /* renamed from: a */
    private static String f7002a = "";

    /* renamed from: a */
    public static String m8096a(String str) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            int blockSize = cipher.getBlockSize();
            byte[] bytes = str.getBytes();
            int length = bytes.length;
            if (length % blockSize != 0) {
                length += blockSize - (length % blockSize);
            }
            byte[] bArr = new byte[length];
            System.arraycopy(bytes, 0, bArr, 0, bytes.length);
            if (f7002a.equals("")) {
                f7002a = new String(Base64.decode("Y2NiOWRmN2IyYjA5M2E2Yw==\n".getBytes(), 0));
            }
            cipher.init(1, new SecretKeySpec(f7002a.getBytes("UTF-8"), "AES"), new IvParameterSpec(f7002a.getBytes()));
            return Base64.encodeToString(cipher.doFinal(bArr), 4).trim();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    public static String m8097b(String str) {
        if (f7002a.equals("")) {
            f7002a = new String(Base64.decode("Y2NiOWRmN2IyYjA5M2E2Yw==\n".getBytes(), 0));
        }
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, new SecretKeySpec(f7002a.getBytes("UTF-8"), "AES"), new IvParameterSpec(f7002a.getBytes()));
            return new String(cipher.doFinal(Base64.decode(str, 4)), "UTF-8");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
