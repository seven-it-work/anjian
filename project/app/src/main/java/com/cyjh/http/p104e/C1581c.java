package com.cyjh.http.p104e;

import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1159b;
import com.cyjh.common.util.C1165h;
import com.cyjh.common.util.C1203z;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
import p000a.p001a.p002a.C0000a;

/* renamed from: com.cyjh.http.e.c */
/* loaded from: classes.dex */
public final class C1581c {
    /* renamed from: a */
    public static String m7060a(String str) {
        try {
            String m4201f = C1132a.m4201f();
            byte[] bytes = str.getBytes("utf-8");
            PrivateKey generatePrivate = KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(C0000a.m11b(m4201f.getBytes())));
            Signature signature = Signature.getInstance(C1203z.f4279b);
            signature.initSign(generatePrivate);
            signature.update(bytes);
            return C1159b.m4348a(signature.sign());
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: a */
    public static String m7061a(String str, int i) {
        return (str.startsWith(InterfaceC1133a.f3978b) || str.startsWith(InterfaceC1133a.f3981d)) ? C1132a.f3882a[i] : str.startsWith("http://api") ? C1132a.f3885d[i] : C1132a.f3884c[i];
    }

    /* renamed from: a */
    public static String m7062a(String str, String str2, int i) {
        try {
            return C1165h.m4429b(str2, m7061a(str, i).getBytes());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m7063a(String str, String str2) {
        return true;
    }

    /* renamed from: b */
    private static String m7064b(String str, String str2, int i) throws Exception {
        return C1165h.m4426a(str2, m7061a(str, i).getBytes());
    }
}
