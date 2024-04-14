package com.cyjh.mobileanjian.ipc.utils;

import java.io.DataOutputStream;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class RootUtil {

    /* renamed from: a */
    private static final String f6391a = "ROOT_UTIL";

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0083, code lost:
    
        if (r1 == null) goto L32;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.util.ArrayList<java.lang.String> m7462a(java.lang.String r5, java.util.ArrayList<java.lang.String> r6) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            java.lang.Runtime r2 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L75 java.lang.InterruptedException -> L78 java.io.IOException -> L7f
            java.lang.Process r5 = r2.exec(r5)     // Catch: java.lang.Throwable -> L75 java.lang.InterruptedException -> L78 java.io.IOException -> L7f
            java.io.BufferedOutputStream r1 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            java.io.OutputStream r2 = r5.getOutputStream()     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            java.io.InputStream r4 = r5.getInputStream()     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            java.util.Iterator r6 = r6.iterator()     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
        L29:
            boolean r3 = r6.hasNext()     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            if (r3 == 0) goto L4e
            java.lang.Object r3 = r6.next()     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            r4.<init>()     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            r4.append(r3)     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            java.lang.String r3 = " 2>&1\n"
            r4.append(r3)     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            java.lang.String r3 = r4.toString()     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            byte[] r3 = r3.getBytes()     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            r1.write(r3)     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            goto L29
        L4e:
            java.lang.String r6 = "exit\n"
            byte[] r6 = r6.getBytes()     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            r1.write(r6)     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            r1.flush()     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
        L5a:
            java.lang.String r6 = r2.readLine()     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            if (r6 == 0) goto L64
            r0.add(r6)     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            goto L5a
        L64:
            r5.waitFor()     // Catch: java.lang.Throwable -> L6d java.lang.InterruptedException -> L6f java.io.IOException -> L72
            if (r5 == 0) goto L88
            r5.destroy()
            return r0
        L6d:
            r6 = move-exception
            goto L89
        L6f:
            r6 = move-exception
            r1 = r5
            goto L79
        L72:
            r6 = move-exception
            r1 = r5
            goto L80
        L75:
            r6 = move-exception
            r5 = r1
            goto L89
        L78:
            r6 = move-exception
        L79:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L75
            if (r1 == 0) goto L88
            goto L85
        L7f:
            r6 = move-exception
        L80:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L75
            if (r1 == 0) goto L88
        L85:
            r1.destroy()
        L88:
            return r0
        L89:
            if (r5 == 0) goto L8e
            r5.destroy()
        L8e:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.utils.RootUtil.m7462a(java.lang.String, java.util.ArrayList):java.util.ArrayList");
    }

    /* renamed from: a */
    private static boolean m7463a() {
        DataOutputStream dataOutputStream;
        Throwable th;
        Process process;
        DataOutputStream dataOutputStream2 = null;
        try {
            process = Runtime.getRuntime().exec("su");
            try {
                dataOutputStream = new DataOutputStream(process.getOutputStream());
                try {
                    dataOutputStream.writeBytes("exit\n");
                    dataOutputStream.flush();
                    process.waitFor();
                    try {
                        dataOutputStream.close();
                        process.destroy();
                        return true;
                    } catch (Exception unused) {
                        return true;
                    }
                } catch (Exception unused2) {
                    dataOutputStream2 = dataOutputStream;
                    if (dataOutputStream2 != null) {
                        try {
                            dataOutputStream2.close();
                        } catch (Exception unused3) {
                            return false;
                        }
                    }
                    process.destroy();
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    if (dataOutputStream != null) {
                        try {
                            dataOutputStream.close();
                        } catch (Exception unused4) {
                            throw th;
                        }
                    }
                    process.destroy();
                    throw th;
                }
            } catch (Exception unused5) {
            } catch (Throwable th3) {
                dataOutputStream = null;
                th = th3;
            }
        } catch (Exception unused6) {
            process = null;
        } catch (Throwable th4) {
            dataOutputStream = null;
            th = th4;
            process = null;
        }
    }

    public static boolean isRoot() {
        String str = System.getenv("PATH");
        new ArrayList();
        for (String str2 : str.split(":")) {
            File file = new File(str2, "su");
            if (file.exists() && file.canExecute()) {
                return true;
            }
        }
        return false;
    }
}
