package com.umeng.commonsdk.stateless;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.proguard.C2489bg;
import com.umeng.commonsdk.proguard.C2501e;
import com.umeng.commonsdk.statistics.common.C2536e;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Locale;
import java.util.zip.Deflater;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.umeng.commonsdk.stateless.f */
/* loaded from: classes.dex */
public class C2528f {

    /* renamed from: a */
    public static int f9723a;

    /* renamed from: b */
    private static final byte[] f9724b = {10, 1, 11, 5, 4, C2489bg.f9370m, 7, 9, 23, 3, 1, 6, 8, 12, C2489bg.f9368k, 91};

    /* renamed from: c */
    private static Object f9725c = new Object();

    /* renamed from: a */
    public static File m11241a(Context context) {
        File[] listFiles;
        File[] listFiles2;
        File file = null;
        try {
            synchronized (f9725c) {
                try {
                    C2536e.m11329a("walle", "get last envelope begin, thread is " + Thread.currentThread());
                    if (context != null && context.getApplicationContext() != null) {
                        String str = context.getApplicationContext().getFilesDir() + "/stateless";
                        if (!TextUtils.isEmpty(str)) {
                            File file2 = new File(str);
                            if (file2.isDirectory() && (listFiles = file2.listFiles()) != null && listFiles.length > 0) {
                                File file3 = null;
                                for (File file4 : listFiles) {
                                    try {
                                        if (file4 != null && file4.isDirectory() && (listFiles2 = file4.listFiles()) != null && listFiles2.length > 0) {
                                            Arrays.sort(listFiles2, new Comparator<File>() { // from class: com.umeng.commonsdk.stateless.f.1
                                                @Override // java.util.Comparator
                                                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                                                public final int compare(File file5, File file6) {
                                                    long lastModified = file5.lastModified() - file6.lastModified();
                                                    if (lastModified > 0) {
                                                        return 1;
                                                    }
                                                    return lastModified == 0 ? 0 : -1;
                                                }
                                            });
                                            File file5 = listFiles2[0];
                                            if (file5 != null && (file3 == null || file3.lastModified() > file5.lastModified())) {
                                                file3 = file5;
                                            }
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        file = file3;
                                        throw th;
                                    }
                                }
                                file = file3;
                            }
                        }
                    }
                    C2536e.m11329a("walle", "get last envelope end, thread is " + Thread.currentThread());
                    return file;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            C2501e.m10904a(context, th3);
            return file;
        }
    }

    /* renamed from: a */
    public static void m11242a(Context context, String str, int i) {
        try {
            if (str == null) {
                C2536e.m11329a("AmapLBS", "[lbs-build] fileDir not exist, thread is " + Thread.currentThread());
                return;
            }
            File file = new File(str);
            if (!file.isDirectory()) {
                C2536e.m11329a("AmapLBS", "[lbs-build] fileDir not exist, thread is " + Thread.currentThread());
                return;
            }
            synchronized (f9725c) {
                File[] listFiles = file.listFiles();
                C2536e.m11329a("AmapLBS", "[lbs-build] delete file begin " + listFiles.length + ", thread is " + Thread.currentThread());
                if (listFiles == null || listFiles.length < i) {
                    C2536e.m11329a("AmapLBS", "[lbs-build] file size < max");
                } else {
                    C2536e.m11329a("AmapLBS", "[lbs-build] file size >= max");
                    ArrayList arrayList = new ArrayList();
                    for (File file2 : listFiles) {
                        if (file2 != null) {
                            arrayList.add(file2);
                        }
                    }
                    if (arrayList.size() >= i) {
                        Collections.sort(arrayList, new Comparator<File>() { // from class: com.umeng.commonsdk.stateless.f.2
                            @Override // java.util.Comparator
                            /* renamed from: a, reason: merged with bridge method [inline-methods] */
                            public final int compare(File file3, File file4) {
                                if (file3 == null || file4 == null || file3.lastModified() >= file4.lastModified()) {
                                    return (file3 == null || file4 == null || file3.lastModified() != file4.lastModified()) ? 1 : 0;
                                }
                                return -1;
                            }
                        });
                        if (C2536e.f9760a) {
                            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                                C2536e.m11329a("AmapLBS", "[lbs-build] overrun native file is " + ((File) arrayList.get(i2)).getPath());
                            }
                        }
                        for (int i3 = 0; i3 <= arrayList.size() - i; i3++) {
                            if (arrayList.get(i3) != null) {
                                C2536e.m11329a("AmapLBS", "[lbs-build] overrun remove file is " + ((File) arrayList.get(i3)).getPath());
                                try {
                                    ((File) arrayList.get(i3)).delete();
                                    arrayList.remove(i3);
                                } catch (Exception unused) {
                                }
                            }
                        }
                    }
                }
                C2536e.m11329a("AmapLBS", "[lbs-build] delete file end " + listFiles.length + ", thread is " + Thread.currentThread());
            }
        } catch (Throwable th) {
            C2501e.m10904a(context, th);
        }
    }

    /* renamed from: a */
    public static boolean m11243a(long j, long j2) {
        return j > j2;
    }

    /* renamed from: a */
    public static boolean m11244a(Context context, String str, String str2, byte[] bArr) {
        boolean z;
        String str3;
        Object[] objArr;
        if (context == null) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                synchronized (f9725c) {
                    try {
                        C2536e.m11329a("walle", "[stateless] begin write envelope, thread is " + Thread.currentThread());
                        File file = new File(context.getFilesDir() + "/stateless");
                        if (!file.isDirectory()) {
                            file.mkdir();
                        }
                        File file2 = new File(file.getPath() + "/" + str);
                        if (!file2.isDirectory()) {
                            file2.mkdir();
                        }
                        File file3 = new File(file2.getPath() + "/" + str2);
                        if (!file3.exists()) {
                            file3.createNewFile();
                        }
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file3);
                        try {
                            fileOutputStream2.write(bArr);
                            fileOutputStream2.close();
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            z = false;
                            while (true) {
                                try {
                                    try {
                                        break;
                                    } catch (IOException e) {
                                        e = e;
                                        C2536e.m11329a("walle", "[stateless] write envelope, e is " + e.getMessage());
                                        C2501e.m10904a(context, e);
                                        if (fileOutputStream != null) {
                                            try {
                                                fileOutputStream.close();
                                            } catch (IOException e2) {
                                                e2.printStackTrace();
                                            }
                                        }
                                        str3 = "walle";
                                        objArr = new Object[]{"[stateless] end write envelope, thread id " + Thread.currentThread()};
                                        C2536e.m11329a(str3, objArr);
                                        return z;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        C2536e.m11329a("walle", "[stateless] write envelope, e is " + th.getMessage());
                                        C2501e.m10904a(context, th);
                                        if (fileOutputStream != null) {
                                            try {
                                                fileOutputStream.close();
                                            } catch (IOException e3) {
                                                e3.printStackTrace();
                                            }
                                        }
                                        str3 = "walle";
                                        objArr = new Object[]{"[stateless] end write envelope, thread id " + Thread.currentThread()};
                                        C2536e.m11329a(str3, objArr);
                                        return z;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            }
                            throw th;
                        }
                        try {
                            C2536e.m11329a("walle", "[stateless] end write envelope, thread id " + Thread.currentThread());
                            return true;
                        } catch (Throwable th4) {
                            th = th4;
                            z = true;
                            while (true) {
                                break;
                                break;
                            }
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                    }
                }
            } catch (IOException e4) {
                e = e4;
                z = false;
            } catch (Throwable th6) {
                th = th6;
                z = false;
            }
        } catch (Throwable th7) {
            if (0 != 0) {
                try {
                    fileOutputStream.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            C2536e.m11329a("walle", "[stateless] end write envelope, thread id " + Thread.currentThread());
            throw th7;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] m11245a(java.lang.String r13) throws java.io.IOException {
        /*
            java.lang.Object r0 = com.umeng.commonsdk.stateless.C2528f.f9725c
            monitor-enter(r0)
            java.lang.String r1 = "walle"
            r2 = 1
            java.lang.Object[] r3 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> Lb4
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r5 = "[stateless] begin read envelope, thread is "
            r4.<init>(r5)     // Catch: java.lang.Throwable -> Lb4
            java.lang.Thread r5 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> Lb4
            r4.append(r5)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> Lb4
            r5 = 0
            r3[r5] = r4     // Catch: java.lang.Throwable -> Lb4
            com.umeng.commonsdk.statistics.common.C2536e.m11329a(r1, r3)     // Catch: java.lang.Throwable -> Lb4
            r1 = 0
            java.io.RandomAccessFile r3 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L83 java.io.IOException -> L88
            java.lang.String r4 = "r"
            r3.<init>(r13, r4)     // Catch: java.lang.Throwable -> L83 java.io.IOException -> L88
            java.nio.channels.FileChannel r13 = r3.getChannel()     // Catch: java.lang.Throwable -> L83 java.io.IOException -> L88
            java.nio.channels.FileChannel$MapMode r7 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            r8 = 0
            long r10 = r13.size()     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            r6 = r13
            java.nio.MappedByteBuffer r1 = r6.map(r7, r8, r10)     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            java.nio.MappedByteBuffer r1 = r1.load()     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            java.io.PrintStream r3 = java.lang.System.out     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            boolean r4 = r1.isLoaded()     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            r3.println(r4)     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            long r3 = r13.size()     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            int r3 = (int) r3     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            byte[] r3 = new byte[r3]     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            int r4 = r1.remaining()     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            if (r4 <= 0) goto L5a
            int r4 = r1.remaining()     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            r1.get(r3, r5, r4)     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
        L5a:
            java.lang.String r1 = "walle"
            java.lang.Object[] r4 = new java.lang.Object[r2]     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            java.lang.String r7 = "[stateless] end read envelope, thread id "
            r6.<init>(r7)     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            java.lang.Thread r7 = java.lang.Thread.currentThread()     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            r6.append(r7)     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            java.lang.String r6 = r6.toString()     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            r4[r5] = r6     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            com.umeng.commonsdk.statistics.common.C2536e.m11329a(r1, r4)     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La8
            if (r13 == 0) goto L7f
            r13.close()     // Catch: java.io.IOException -> L7b java.lang.Throwable -> Lb4
            goto L7f
        L7b:
            r13 = move-exception
            r13.printStackTrace()     // Catch: java.lang.Throwable -> Lb4
        L7f:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb4
            return r3
        L81:
            r1 = move-exception
            goto L8c
        L83:
            r13 = move-exception
            r12 = r1
            r1 = r13
            r13 = r12
            goto La9
        L88:
            r13 = move-exception
            r12 = r1
            r1 = r13
            r13 = r12
        L8c:
            java.lang.String r3 = "walle"
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> La8
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La8
            java.lang.String r6 = "[stateless] write envelope, e is "
            r4.<init>(r6)     // Catch: java.lang.Throwable -> La8
            java.lang.String r6 = r1.getMessage()     // Catch: java.lang.Throwable -> La8
            r4.append(r6)     // Catch: java.lang.Throwable -> La8
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> La8
            r2[r5] = r4     // Catch: java.lang.Throwable -> La8
            com.umeng.commonsdk.statistics.common.C2536e.m11329a(r3, r2)     // Catch: java.lang.Throwable -> La8
            throw r1     // Catch: java.lang.Throwable -> La8
        La8:
            r1 = move-exception
        La9:
            if (r13 == 0) goto Lb3
            r13.close()     // Catch: java.io.IOException -> Laf java.lang.Throwable -> Lb4
            goto Lb3
        Laf:
            r13 = move-exception
            r13.printStackTrace()     // Catch: java.lang.Throwable -> Lb4
        Lb3:
            throw r1     // Catch: java.lang.Throwable -> Lb4
        Lb4:
            r13 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb4
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.stateless.C2528f.m11245a(java.lang.String):byte[]");
    }

    /* renamed from: a */
    public static byte[] m11246a(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        Deflater deflater = new Deflater();
        deflater.setInput(bArr);
        deflater.finish();
        byte[] bArr2 = new byte[8192];
        f9723a = 0;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            while (!deflater.finished()) {
                try {
                    int deflate = deflater.deflate(bArr2);
                    f9723a += deflate;
                    byteArrayOutputStream.write(bArr2, 0, deflate);
                } catch (Throwable th) {
                    th = th;
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    throw th;
                }
            }
            deflater.end();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream = null;
        }
    }

    /* renamed from: a */
    public static byte[] m11247a(byte[] bArr, byte[] bArr2) throws Exception {
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
        cipher.init(1, new SecretKeySpec(bArr2, "AES"), new IvParameterSpec(f9724b));
        return cipher.doFinal(bArr);
    }

    /* renamed from: b */
    public static byte[] m11248b(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public static String m11249c(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b2 : bArr) {
            stringBuffer.append(String.format("%02X", Byte.valueOf(b2)));
        }
        return stringBuffer.toString().toLowerCase(Locale.US);
    }
}
