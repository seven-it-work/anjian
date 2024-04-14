package com.cyjh.common.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* renamed from: com.cyjh.common.util.ak */
/* loaded from: classes.dex */
public class C1158ak {

    /* renamed from: a */
    private static final String f4067a = "ak";

    /* renamed from: b */
    private static final int f4068b = 512;

    /* renamed from: a */
    public static boolean m4347a(File file, File file2) {
        boolean z;
        C1151ad.m4325c(f4067a, "unzipFile --> zipFile= " + file + ",destDir=" + file2);
        if (file == null || file2 == null) {
            return false;
        }
        try {
            ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(file));
            byte[] bArr = new byte[512];
            z = false;
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        break;
                    }
                    if (nextEntry.isDirectory()) {
                        File file3 = new File(file2.getAbsolutePath() + File.separator + nextEntry.getName());
                        if (!file3.exists()) {
                            file3.mkdirs();
                            C1151ad.m4325c(f4067a, "unzipFile --> mkdirs: " + file3.getCanonicalPath());
                        }
                    }
                    File m4453a = C1171n.m4453a(new File(file2.getAbsolutePath(), nextEntry.getName()));
                    FileOutputStream fileOutputStream = new FileOutputStream(m4453a);
                    while (true) {
                        int read = zipInputStream.read(bArr, 0, 512);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                    fileOutputStream.close();
                    z = true;
                    C1151ad.m4325c(f4067a, "unzipFile --> success: fileName=" + m4453a.getName());
                } catch (Exception e) {
                    e = e;
                    C1151ad.m4325c(f4067a, "unzipFile --> exception: " + e.getMessage());
                    e.printStackTrace();
                    return z;
                }
            }
        } catch (Exception e2) {
            e = e2;
            z = false;
        }
        return z;
    }
}
