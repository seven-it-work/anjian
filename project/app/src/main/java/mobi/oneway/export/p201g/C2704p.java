package mobi.oneway.export.p201g;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;

/* renamed from: mobi.oneway.export.g.p */
/* loaded from: classes2.dex */
public class C2704p {
    /* renamed from: a */
    public static String m12250a(File file) {
        BufferedInputStream bufferedInputStream;
        try {
            bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        } catch (Throwable th) {
            th = th;
            bufferedInputStream = null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            byte[] bArr = new byte[1024];
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read == -1) {
                    String m12253b = m12253b(messageDigest.digest());
                    C2698j.m12229a(bufferedInputStream);
                    return m12253b;
                }
                messageDigest.update(bArr, 0, read);
            }
        } catch (Throwable th2) {
            th = th2;
            C2698j.m12229a(bufferedInputStream);
            throw th;
        }
    }

    /* renamed from: a */
    public static String m12251a(String str) {
        return m12252a(str.getBytes("utf-8"));
    }

    /* renamed from: a */
    public static String m12252a(byte[] bArr) {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(bArr, 0, bArr.length);
        return m12253b(messageDigest.digest());
    }

    /* renamed from: b */
    private static String m12253b(byte[] bArr) {
        String str = "";
        for (byte b2 : bArr) {
            int i = b2 & 255;
            if (i <= 15) {
                str = str + "0";
            }
            str = str + Integer.toHexString(i);
        }
        return str;
    }
}
