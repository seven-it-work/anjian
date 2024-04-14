package com.cyjh.feedback.lib.p093e;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.cyjh.feedback.lib.e.e */
/* loaded from: classes.dex */
public final class C1468e {

    /* renamed from: a */
    private static final String f5707a = "ROOT_UTIL";

    /* renamed from: a */
    private static ArrayList<String> m6827a(String str, ArrayList<String> arrayList) {
        Process process;
        ArrayList<String> arrayList2 = new ArrayList<>();
        Process process2 = null;
        try {
            try {
                process = Runtime.getRuntime().exec(str);
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(process.getOutputStream());
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
                    Iterator<String> it = arrayList.iterator();
                    while (it.hasNext()) {
                        bufferedOutputStream.write((it.next() + " 2>&1\n").getBytes());
                    }
                    bufferedOutputStream.write("exit\n".getBytes());
                    bufferedOutputStream.flush();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            process.waitFor();
                            process.destroy();
                            return arrayList2;
                        }
                        arrayList2.add(readLine);
                    }
                } catch (IOException e) {
                    e = e;
                    process2 = process;
                    e.printStackTrace();
                    process2.destroy();
                    return arrayList2;
                } catch (InterruptedException e2) {
                    e = e2;
                    process2 = process;
                    e.printStackTrace();
                    process2.destroy();
                    return arrayList2;
                } catch (Throwable th) {
                    th = th;
                    process.destroy();
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
            } catch (InterruptedException e4) {
                e = e4;
            }
        } catch (Throwable th2) {
            th = th2;
            process = null;
        }
    }

    /* renamed from: a */
    public static boolean m6828a() {
        String str = System.getenv("PATH");
        ArrayList arrayList = new ArrayList();
        for (String str2 : str.split(":")) {
            String str3 = str2 + File.separator + "su";
            if (new File(str3).exists()) {
                arrayList.add("ls -l " + str3);
            }
        }
        ArrayList<String> m6827a = m6827a("/system/bin/sh", arrayList);
        String str4 = "";
        for (int i = 0; i < m6827a.size(); i++) {
            str4 = str4 + m6827a.get(i);
        }
        if (str4.contains("-rws")) {
            return true;
        }
        return m6830c();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized boolean m6829b() {
        /*
            Method dump skipped, instructions count: 212
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.feedback.lib.p093e.C1468e.m6829b():boolean");
    }

    /* renamed from: c */
    private static boolean m6830c() {
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

    /* renamed from: d */
    private static boolean m6831d() {
        try {
            if (!new File("/system/bin/su").exists()) {
                if (!new File("/system/xbin/su").exists()) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
