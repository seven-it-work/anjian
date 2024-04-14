package com.hlzn.socketclient.p167f;

import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;

/* renamed from: com.hlzn.socketclient.f.g */
/* loaded from: classes.dex */
public class C2162g {

    /* renamed from: a */
    private static final String f8172a = "g";

    /* renamed from: a */
    private static String m9606a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return str.substring(str.indexOf("{"), str.lastIndexOf("}"));
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    /* renamed from: a */
    private static byte[] m9607a(InputStream inputStream) throws Exception {
        C2159d.m9593b(f8172a, "readInputStream --> ");
        byte[] bArr = new byte[1024];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                inputStream.close();
                byteArrayOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
            C2159d.m9593b(f8172a, "readInputStream --> 1");
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    /* renamed from: a */
    public static byte[] m9608a(InputStream inputStream, int i) throws Exception {
        C2159d.m9593b(f8172a, "readInputStream --> ");
        byte[] bArr = new byte[i];
        int read = inputStream.read(bArr);
        int i2 = read;
        while (read < i && i2 >= 0) {
            i2 = inputStream.read(bArr, i2, i - i2);
            if (i2 > 0) {
                read += i2;
            }
        }
        if (read < 0) {
            return new byte[0];
        }
        if (read >= i) {
            return bArr;
        }
        byte[] bArr2 = new byte[read];
        System.arraycopy(bArr, 0, bArr2, 0, read);
        return bArr2;
    }
}
