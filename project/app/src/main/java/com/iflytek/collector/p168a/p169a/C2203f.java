package com.iflytek.collector.p168a.p169a;

import com.iflytek.voiceads.config.SDKLogger;

/* renamed from: com.iflytek.collector.a.a.f */
/* loaded from: classes.dex */
public class C2203f {
    /* renamed from: a */
    private static byte[] m9758a(int i) {
        return new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    /* renamed from: a */
    public static byte[] m9759a(byte[] bArr) {
        try {
            byte[] encoded = C2198a.m9734a().getEncoded();
            byte[] m9735a = bArr != null ? C2198a.m9735a(m9760b(bArr), encoded) : null;
            byte[] m9776a = C2205h.m9776a(encoded, C2205h.m9775a("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCt8H0BF3SquJmk6xIo2bTldgvtazLIeSbR4cle\np7zeUAtI/mC7UgFl8xXFCTemVambyQFnM5GsZOI1BpAMJO7N/YHRX7hvCZG6D0rEXQEdKXhKFIBQ\nmOYRYZP042vWRcKZ6iQLdLYmyg6tIzjYVfH0f6YX8OLIU7fy0TA/c88rzwIDAQAB"));
            if (m9776a == null || m9735a == null) {
                return null;
            }
            int length = m9776a.length;
            int length2 = m9735a.length;
            byte[] bArr2 = new byte[length + length2 + 10];
            bArr2[0] = 1;
            System.arraycopy(m9758a(length), 0, bArr2, 1, 4);
            System.arraycopy(m9776a, 0, bArr2, 5, length);
            int i = length + 5;
            bArr2[i] = 3;
            int i2 = i + 1;
            System.arraycopy(m9758a(length2), 0, bArr2, i2, 4);
            System.arraycopy(m9735a, 0, bArr2, i2 + 4, length2);
            return bArr2;
        } catch (Exception unused) {
            SDKLogger.m9850e("Collector", "encrypt error");
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x004b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static byte[] m9760b(byte[] r4) {
        /*
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream
            r1.<init>()
            java.util.zip.GZIPOutputStream r2 = new java.util.zip.GZIPOutputStream     // Catch: java.lang.Throwable -> L2f java.io.IOException -> L32
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L2f java.io.IOException -> L32
            r2.write(r4)     // Catch: java.io.IOException -> L2d java.lang.Throwable -> L48
            r2.finish()     // Catch: java.io.IOException -> L2d java.lang.Throwable -> L48
            int r4 = android.os.Build.VERSION.SDK_INT     // Catch: java.io.IOException -> L2d java.lang.Throwable -> L48
            r3 = 19
            if (r4 >= r3) goto L1d
            r2.flush()     // Catch: java.io.IOException -> L2d java.lang.Throwable -> L48
        L1d:
            byte[] r4 = r1.toByteArray()     // Catch: java.io.IOException -> L2d java.lang.Throwable -> L48
            r2.close()     // Catch: java.io.IOException -> L28
            r1.close()     // Catch: java.io.IOException -> L28
            return r4
        L28:
            r0 = move-exception
            r0.printStackTrace()
            return r4
        L2d:
            r4 = move-exception
            goto L34
        L2f:
            r4 = move-exception
            r2 = r0
            goto L49
        L32:
            r4 = move-exception
            r2 = r0
        L34:
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L48
            if (r2 == 0) goto L3f
            r2.close()     // Catch: java.io.IOException -> L3d
            goto L3f
        L3d:
            r4 = move-exception
            goto L43
        L3f:
            r1.close()     // Catch: java.io.IOException -> L3d
            goto L46
        L43:
            r4.printStackTrace()
        L46:
            r4 = r0
            return r4
        L48:
            r4 = move-exception
        L49:
            if (r2 == 0) goto L51
            r2.close()     // Catch: java.io.IOException -> L4f
            goto L51
        L4f:
            r0 = move-exception
            goto L55
        L51:
            r1.close()     // Catch: java.io.IOException -> L4f
            goto L58
        L55:
            r0.printStackTrace()
        L58:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.collector.p168a.p169a.C2203f.m9760b(byte[]):byte[]");
    }
}
