package com.cyjh.common.util;

import com.umeng.commonsdk.proguard.C2489bg;
import java.security.MessageDigest;

/* renamed from: com.cyjh.common.util.u */
/* loaded from: classes.dex */
public final class C1198u {
    /* renamed from: a */
    public static final String m5223a(String str) {
        if (str == null) {
            return null;
        }
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            byte[] bytes = str.getBytes();
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bytes);
            byte[] digest = messageDigest.digest();
            char[] cArr2 = new char[digest.length * 2];
            int i = 0;
            for (byte b2 : digest) {
                int i2 = i + 1;
                cArr2[i] = cArr[(b2 >>> 4) & 15];
                i = i2 + 1;
                cArr2[i2] = cArr[b2 & C2489bg.f9370m];
            }
            return new String(cArr2);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
