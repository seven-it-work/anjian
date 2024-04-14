package com.goldcoast.sdk.p129c;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.regex.Pattern;

/* renamed from: com.goldcoast.sdk.c.e */
/* loaded from: classes.dex */
public final class C1781e {

    /* renamed from: a */
    private static Method f7010a;

    /* renamed from: b */
    private static final Pattern f7011b;

    static {
        try {
            Method method = Class.forName("android.os.FileUtils").getMethod("setPermissions", String.class, Integer.TYPE, Integer.TYPE, Integer.TYPE);
            f7010a = method;
            method.setAccessible(true);
        } catch (Exception unused) {
        }
        f7011b = Pattern.compile("[\\w%+,./=_-]+");
    }

    /* renamed from: a */
    public static int m8113a(File file) {
        try {
            return ((Integer) f7010a.invoke(null, file.getAbsolutePath(), 493, -1, -1)).intValue();
        } catch (Exception unused) {
            return -1;
        }
    }

    /* renamed from: a */
    public static int m8114a(String str, int i) {
        try {
            return ((Integer) f7010a.invoke(null, str, Integer.valueOf(i), -1, -1)).intValue();
        } catch (Exception unused) {
            return -1;
        }
    }

    /* renamed from: a */
    public static void m8115a(String[] strArr, File file) {
        try {
            FileWriter fileWriter = new FileWriter(file);
            StringBuilder sb = new StringBuilder("#!/system/bin/sh\n");
            for (String str : strArr) {
                sb.append(String.format("%s\n", str));
            }
            fileWriter.write(sb.toString());
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static boolean m8116a(File file, File file2) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                return m8117a(fileInputStream, file2);
            } finally {
                fileInputStream.close();
            }
        } catch (IOException unused) {
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m8117a(InputStream inputStream, File file) {
        FileOutputStream fileOutputStream;
        if (file.exists()) {
            file.delete();
        }
        try {
            file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read < 0) {
                        fileOutputStream.flush();
                        fileOutputStream.getFD().sync();
                        fileOutputStream.close();
                        return true;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                        return false;
                    } catch (IOException e3) {
                        e3.printStackTrace();
                        return false;
                    }
                }
                return false;
            }
        } catch (Exception e4) {
            e = e4;
            fileOutputStream = null;
        }
    }
}
