package com.goldcoast.sdk.p129c;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.Locale;

/* renamed from: com.goldcoast.sdk.c.b */
/* loaded from: classes.dex */
public final class C1778b {

    /* renamed from: a */
    private static boolean f7003a;

    /* renamed from: a */
    public static String m8098a() {
        byte[] m8100a;
        byte[] m8100a2;
        if (m8099a("ro.product.cpu.abilist64", "").length() > 0 || m8101b()) {
            return "64";
        }
        File file = new File("/system/lib/libc.so");
        boolean z = true;
        if (!file.exists() || (m8100a2 = m8100a(file)) == null || m8100a2[4] != 2) {
            File file2 = new File("/system/lib64/libc.so");
            if (!file2.exists() || (m8100a = m8100a(file2)) == null || m8100a[4] != 2) {
                z = false;
            }
        }
        return z ? "64" : "32";
    }

    /* renamed from: a */
    private static String m8099a(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "");
        } catch (Exception unused) {
            return str2;
        }
    }

    /* renamed from: a */
    private static byte[] m8100a(File file) {
        FileInputStream fileInputStream;
        try {
            if (file.exists()) {
                try {
                    fileInputStream = new FileInputStream(file);
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = null;
                }
                try {
                    byte[] bArr = new byte[16];
                    if (fileInputStream.read(bArr, 0, 16) != 16) {
                        fileInputStream.close();
                        return null;
                    }
                    try {
                        fileInputStream.close();
                        return bArr;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return bArr;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return null;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x0089 -> B:33:0x008c). Please submit an issue!!! */
    /* renamed from: b */
    private static boolean m8101b() {
        FileInputStream fileInputStream;
        BufferedReader bufferedReader;
        File file = new File("/proc/cpuinfo");
        if (!file.exists()) {
            return false;
        }
        BufferedReader bufferedReader2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream), 512);
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null && readLine.length() > 0) {
                        if (readLine.toLowerCase(Locale.US).contains("arch64")) {
                            try {
                                bufferedReader.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            try {
                                fileInputStream.close();
                                return true;
                            } catch (Exception e2) {
                                e2.printStackTrace();
                                return true;
                            }
                        }
                    }
                    try {
                        bufferedReader.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    fileInputStream.close();
                } catch (Throwable unused) {
                    bufferedReader2 = bufferedReader;
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                    if (fileInputStream == null) {
                        return false;
                    }
                    fileInputStream.close();
                    return false;
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = null;
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        return false;
    }
}
