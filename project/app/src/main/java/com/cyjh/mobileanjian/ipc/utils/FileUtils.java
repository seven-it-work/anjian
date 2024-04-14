package com.cyjh.mobileanjian.ipc.utils;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class FileUtils {
    /* renamed from: a */
    private static String m7461a(String str) {
        if (str == null || str.trim().equals("")) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(str);
        while (stringBuffer.charAt(0) == File.separatorChar) {
            stringBuffer.deleteCharAt(0);
            if (stringBuffer.length() == 0) {
                return null;
            }
        }
        while (stringBuffer.charAt(stringBuffer.length() - 1) == File.separator.charAt(0)) {
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
            if (stringBuffer.length() == 0) {
                return null;
            }
        }
        return stringBuffer.toString();
    }

    public static void copyAssetsFile(Context context, String str, String str2) {
        try {
            InputStream open = context.getAssets().open(str);
            FileOutputStream fileOutputStream = new FileOutputStream(str2);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = open.read(bArr);
                if (read <= 0) {
                    fileOutputStream.flush();
                    open.close();
                    fileOutputStream.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [int] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9, types: [java.io.FileOutputStream] */
    public static boolean copyRawFile(Context context, int i, String str) {
        InputStream inputStream = null;
        try {
            try {
                try {
                    File file = new File(str);
                    if (!file.exists()) {
                        file.createNewFile();
                    } else if (file.isDirectory()) {
                        file = new File(str + File.separator + context.getResources().getResourceName(i));
                    }
                    byte[] bArr = new byte[4096];
                    InputStream openRawResource = context.getResources().openRawResource(i);
                    try {
                        i = new FileOutputStream(file);
                        while (true) {
                            try {
                                int read = openRawResource.read(bArr);
                                if (read <= 0) {
                                    break;
                                }
                                i.write(bArr, 0, read);
                            } catch (FileNotFoundException e) {
                                inputStream = openRawResource;
                                e = e;
                                i = i;
                                e.printStackTrace();
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                if (i != 0) {
                                    i.close();
                                }
                                return false;
                            } catch (IOException e2) {
                                inputStream = openRawResource;
                                e = e2;
                                i = i;
                                e.printStackTrace();
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                if (i != 0) {
                                    i.close();
                                    return false;
                                }
                                return false;
                            } catch (Throwable th) {
                                inputStream = openRawResource;
                                th = th;
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException e3) {
                                        e3.printStackTrace();
                                        throw th;
                                    }
                                }
                                if (i != 0) {
                                    i.close();
                                }
                                throw th;
                            }
                        }
                        if (openRawResource != null) {
                            openRawResource.close();
                        }
                        i.close();
                        return true;
                    } catch (FileNotFoundException e4) {
                        inputStream = openRawResource;
                        e = e4;
                        i = 0;
                    } catch (IOException e5) {
                        inputStream = openRawResource;
                        e = e5;
                        i = 0;
                    } catch (Throwable th2) {
                        inputStream = openRawResource;
                        th = th2;
                        i = 0;
                    }
                } catch (FileNotFoundException e6) {
                    e = e6;
                    i = 0;
                } catch (IOException e7) {
                    e = e7;
                    i = 0;
                } catch (Throwable th3) {
                    th = th3;
                    i = 0;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (IOException e8) {
            e8.printStackTrace();
            return false;
        }
    }

    public static String file2Text(String str, String str2) {
        StringBuffer stringBuffer = new StringBuffer();
        File file = new File(str);
        try {
            byte[] bArr = new byte[1024];
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                stringBuffer.append(new String(bArr, 0, read, str2));
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return stringBuffer.toString();
    }

    public static String getBaseFilePath(String str) {
        int lastIndexOf;
        return (str == null || str.length() <= 0 || (lastIndexOf = str.lastIndexOf(46)) < 0 || lastIndexOf >= str.length()) ? str : str.substring(0, lastIndexOf);
    }

    public static String makeAbsolutePath(String str, String... strArr) {
        if (str == null) {
            return null;
        }
        for (String str2 : strArr) {
            if (str2 == null) {
                return null;
            }
        }
        String str3 = File.separator;
        StringBuffer stringBuffer = new StringBuffer();
        if (!str.startsWith(str3)) {
            stringBuffer.append(str3);
        }
        stringBuffer.append(str);
        if (!str.endsWith(str3)) {
            stringBuffer.append(str3);
        }
        for (String str4 : strArr) {
            String m7461a = m7461a(str4);
            if (m7461a != null) {
                stringBuffer.append(m7461a);
                stringBuffer.append(str3);
            }
        }
        if (stringBuffer.lastIndexOf(str3) == stringBuffer.length() - 1) {
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00fc A[Catch: IOException -> 0x00f7, TRY_LEAVE, TryCatch #1 {IOException -> 0x00f7, blocks: (B:75:0x00f3, B:66:0x00fc), top: B:74:0x00f3 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00f3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.nio.channels.FileChannel] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final int moveFiles(java.lang.String r17, java.lang.String r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.utils.FileUtils.moveFiles(java.lang.String, java.lang.String, boolean):int");
    }

    public static void recursionDeleteFiles(String str) {
        File[] listFiles;
        File file = new File(str);
        if (!file.isDirectory() || (listFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                recursionDeleteFiles(file2.getAbsolutePath());
            }
            file2.delete();
        }
    }

    public static void writeStringToFile(File file, String str) {
        try {
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
