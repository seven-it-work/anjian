package com.cyjh.common.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import p000a.p001a.p002a.C0000a;

/* renamed from: com.cyjh.common.util.b */
/* loaded from: classes.dex */
public final class C1159b {

    /* renamed from: a */
    private static final int f4069a = 1024;

    /* renamed from: a */
    public static String m4348a(byte[] bArr) throws Exception {
        return new String(C0000a.m6a(bArr));
    }

    /* renamed from: a */
    private static void m4349a(String str, String str2) throws Exception {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(C0000a.m11b(str2.getBytes()));
        File file = new File(str);
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        file.createNewFile();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = byteArrayInputStream.read(bArr);
            if (read == -1) {
                fileOutputStream.close();
                byteArrayInputStream.close();
                return;
            } else {
                fileOutputStream.write(bArr, 0, read);
                fileOutputStream.flush();
            }
        }
    }

    /* renamed from: a */
    private static void m4350a(byte[] bArr, String str) throws Exception {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        File file = new File(str);
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        file.createNewFile();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte[] bArr2 = new byte[1024];
        while (true) {
            int read = byteArrayInputStream.read(bArr2);
            if (read == -1) {
                fileOutputStream.close();
                byteArrayInputStream.close();
                return;
            } else {
                fileOutputStream.write(bArr2, 0, read);
                fileOutputStream.flush();
            }
        }
    }

    /* renamed from: a */
    private static byte[] m4351a(String str) throws Exception {
        return C0000a.m11b(str.getBytes());
    }

    /* renamed from: b */
    private static String m4352b(String str) throws Exception {
        byte[] bArr = new byte[0];
        File file = new File(str);
        if (file.exists()) {
            FileInputStream fileInputStream = new FileInputStream(file);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(2048);
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr2);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr2, 0, read);
                byteArrayOutputStream.flush();
            }
            byteArrayOutputStream.close();
            fileInputStream.close();
            bArr = byteArrayOutputStream.toByteArray();
        }
        return m4348a(bArr);
    }

    /* renamed from: c */
    private static byte[] m4353c(String str) throws Exception {
        byte[] bArr = new byte[0];
        File file = new File(str);
        if (!file.exists()) {
            return bArr;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(2048);
        byte[] bArr2 = new byte[1024];
        while (true) {
            int read = fileInputStream.read(bArr2);
            if (read == -1) {
                byteArrayOutputStream.close();
                fileInputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr2, 0, read);
            byteArrayOutputStream.flush();
        }
    }
}
