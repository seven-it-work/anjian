package com.umeng.commonsdk.proguard;

import android.os.Process;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;

/* renamed from: com.umeng.commonsdk.proguard.o */
/* loaded from: classes.dex */
public class C2511o {

    /* renamed from: a */
    private static final String f9462a = "\n";

    /* renamed from: b */
    private static final byte[] f9463b = "\nexit\n".getBytes();

    /* renamed from: c */
    private static byte[] f9464c = new byte[32];

    /* JADX WARN: Code restructure failed: missing block: B:33:0x005d, code lost:
    
        if (r9 != 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x005f, code lost:
    
        m10979c(r9);
        r7 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e4, code lost:
    
        if (r7 != null) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e6, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00eb, code lost:
    
        return r7.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e0, code lost:
    
        if (r9 != 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00cf, code lost:
    
        if (r9 != 0) goto L21;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v13, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v21, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r9v13, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v21, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Type inference failed for: r9v28 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String m10975a(java.lang.String... r9) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.proguard.C2511o.m10975a(java.lang.String[]):java.lang.String");
    }

    /* renamed from: a */
    private static void m10976a(OutputStream outputStream, InputStream inputStream, InputStream inputStream2, InputStreamReader inputStreamReader, BufferedReader bufferedReader) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        if (inputStream2 != null) {
            try {
                inputStream2.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        }
        if (inputStreamReader != null) {
            try {
                inputStreamReader.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    private static void m10977a(Process process) {
        int m10978b = m10978b(process);
        if (m10978b != 0) {
            try {
                try {
                    Process.killProcess(m10978b);
                } catch (Exception unused) {
                    process.destroy();
                }
            } catch (Exception unused2) {
            }
        }
    }

    /* renamed from: b */
    private static int m10978b(Process process) {
        String obj = process.toString();
        try {
            return Integer.parseInt(obj.substring(obj.indexOf("=") + 1, obj.indexOf("]")));
        } catch (Exception unused) {
            return 0;
        }
    }

    /* renamed from: c */
    private static void m10979c(Process process) {
        if (process != null) {
            try {
                if (process.exitValue() != 0) {
                    m10977a(process);
                }
            } catch (IllegalThreadStateException unused) {
                m10977a(process);
            }
        }
    }
}
