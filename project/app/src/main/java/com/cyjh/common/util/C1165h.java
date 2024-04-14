package com.cyjh.common.util;

import android.util.Base64;
import com.umeng.commonsdk.proguard.C2489bg;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;

/* renamed from: com.cyjh.common.util.h */
/* loaded from: classes.dex */
public final class C1165h {

    /* renamed from: a */
    static AlgorithmParameterSpec f4073a;

    /* renamed from: b */
    private static byte[] f4074b = {C2489bg.f9368k, 24, 46, 110, 38, 102, 12, 36};

    /* renamed from: c */
    private static byte[] f4075c = {32, 47, 11, Byte.MIN_VALUE, 29, 77, 105, 21};

    /* renamed from: d */
    private static Key f4076d;

    /* renamed from: a */
    private static String m4425a(String str) throws Exception {
        m4427a(f4074b, f4075c);
        Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
        cipher.init(1, f4076d);
        byte[] bytes = str.getBytes("utf-8");
        if (bytes.length % 8 != 0) {
            byte[] bArr = new byte[(bytes.length + 8) - (bytes.length % 8)];
            System.arraycopy(bytes, 0, bArr, 0, bytes.length);
            bytes = bArr;
        }
        return Base64.encodeToString(cipher.doFinal(bytes), 0);
    }

    /* renamed from: a */
    public static String m4426a(String str, byte[] bArr) throws Exception {
        m4427a(bArr, f4075c);
        Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
        cipher.init(1, f4076d);
        byte[] bytes = str.getBytes("utf-8");
        if (bytes.length % 8 != 0) {
            byte[] bArr2 = new byte[(bytes.length + 8) - (bytes.length % 8)];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            bytes = bArr2;
        }
        return Base64.encodeToString(cipher.doFinal(bytes), 2);
    }

    /* renamed from: a */
    private static void m4427a(byte[] bArr, byte[] bArr2) {
        try {
            DESKeySpec dESKeySpec = new DESKeySpec(bArr);
            f4073a = new IvParameterSpec(bArr2);
            f4076d = SecretKeyFactory.getInstance("DES").generateSecret(dESKeySpec);
        } catch (InvalidKeyException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        } catch (InvalidKeySpecException e3) {
            e3.printStackTrace();
        }
    }

    /* renamed from: b */
    private static String m4428b(String str) throws Exception {
        m4427a(f4074b, f4075c);
        Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
        cipher.init(2, f4076d);
        return new String(cipher.doFinal(Base64.decode(str, 1)), "UTF-8").trim();
    }

    /* renamed from: b */
    public static String m4429b(String str, byte[] bArr) throws Exception {
        m4427a(bArr, f4075c);
        Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
        cipher.init(2, f4076d);
        return new String(cipher.doFinal(Base64.decode(str, 1)), "UTF-8").trim();
    }

    /* renamed from: c */
    private static String m4430c(String str, byte[] bArr) throws Exception {
        m4427a(bArr, f4075c);
        Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
        cipher.init(1, f4076d);
        byte[] bytes = str.getBytes("utf-8");
        if (bytes.length % 8 != 0) {
            byte[] bArr2 = new byte[(bytes.length + 8) - (bytes.length % 8)];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            bytes = bArr2;
        }
        return Base64.encodeToString(cipher.doFinal(bytes), 2);
    }
}
