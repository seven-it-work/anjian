package org.litepal.p246g.p247a;

import android.text.TextUtils;
import com.umeng.commonsdk.proguard.C2489bg;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* renamed from: org.litepal.g.a.b */
/* loaded from: classes2.dex */
public final class C3056b {

    /* renamed from: a */
    public static String f11197a = "LitePalKey";

    /* renamed from: b */
    private static final char[] f11198b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    public static String m13947a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return C3055a.m13939a(f11197a, str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    private static char[] m13948a(byte[] bArr) {
        char[] cArr = f11198b;
        int length = bArr.length;
        char[] cArr2 = new char[length << 1];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i + 1;
            cArr2[i] = cArr[(bArr[i2] & 240) >>> 4];
            i = i3 + 1;
            cArr2[i3] = cArr[bArr[i2] & C2489bg.f9370m];
        }
        return cArr2;
    }

    /* renamed from: b */
    public static String m13949b(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return C3055a.m13944b(f11197a, str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public static String m13950c(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes(Charset.defaultCharset()));
            return new String(m13948a(messageDigest.digest()));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }
    }
}
