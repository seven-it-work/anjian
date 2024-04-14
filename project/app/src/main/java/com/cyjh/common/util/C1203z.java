package com.cyjh.common.util;

import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
import p000a.p001a.p002a.C0000a;

/* renamed from: com.cyjh.common.util.z */
/* loaded from: classes.dex */
public final class C1203z {

    /* renamed from: a */
    public static final String f4278a = "RSA";

    /* renamed from: b */
    public static final String f4279b = "SHA256withRSA";

    /* renamed from: c */
    private static final String f4280c = "RSAPublicKey";

    /* renamed from: d */
    private static final String f4281d = "RSAPrivateKey";

    /* renamed from: e */
    private static final int f4282e = 117;

    /* renamed from: f */
    private static final int f4283f = 128;

    /* renamed from: a */
    private static String m5254a(byte[] bArr, String str) throws Exception {
        PrivateKey generatePrivate = KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(C0000a.m11b(str.getBytes())));
        Signature signature = Signature.getInstance(f4279b);
        signature.initSign(generatePrivate);
        signature.update(bArr);
        return C1159b.m4348a(signature.sign());
    }

    /* renamed from: a */
    private static boolean m5255a(byte[] bArr, String str, String str2) throws Exception {
        return true;
    }
}
