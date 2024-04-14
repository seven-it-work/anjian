package com.cyjh.common.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.text.TextUtils;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import org.apache.commons.io.IOUtils;

/* renamed from: com.cyjh.common.util.n */
/* loaded from: classes.dex */
public class C1171n {

    /* renamed from: a */
    private static final String f4085a = "n";

    /* renamed from: a */
    public static File m4452a(Context context, String str) {
        File file;
        try {
            file = new File(context.getFilesDir() + File.separator + str);
            try {
                if (!file.exists()) {
                    file.mkdirs();
                    return file;
                }
            } catch (Exception e) {
                e = e;
                e.printStackTrace();
                return file;
            }
        } catch (Exception e2) {
            e = e2;
            file = null;
        }
        return file;
    }

    /* renamed from: a */
    public static File m4453a(File file) {
        try {
            if (!file.exists()) {
                file.createNewFile();
                return file;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return file;
    }

    /* renamed from: a */
    public static File m4454a(String str, String str2) {
        File file;
        File file2 = null;
        try {
            File file3 = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + str);
            if (!file3.exists()) {
                file3.mkdirs();
            }
            file = new File(file3, str2);
        } catch (IOException e) {
            e = e;
        }
        try {
            if (file.exists()) {
                return file;
            }
            file.createNewFile();
            return file;
        } catch (IOException e2) {
            file2 = file;
            e = e2;
            e.printStackTrace();
            return file2;
        }
    }

    /* renamed from: a */
    public static String m4455a(Bitmap bitmap, String str) {
        try {
            File file = new File(str);
            if (!file.exists()) {
                file.getParentFile().mkdirs();
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return file.getAbsolutePath();
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public static String m4456a(File file, String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str = "utf-8";
        }
        StringBuilder sb = new StringBuilder();
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), str);
            while (true) {
                int read = inputStreamReader.read();
                if (read == -1) {
                    break;
                }
                sb.append((char) read);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        String sb2 = sb.toString();
        int indexOf = sb2.indexOf(IOUtils.LINE_SEPARATOR_WINDOWS);
        int indexOf2 = sb2.indexOf("\r");
        if (indexOf != -1) {
            str2 = IOUtils.LINE_SEPARATOR_WINDOWS;
        } else {
            if (indexOf2 == -1) {
                return sb2;
            }
            str2 = "\r";
        }
        return sb2.replaceAll(str2, "\n");
    }

    /* renamed from: a */
    public static String m4457a(String str) {
        try {
            return new String(str.getBytes("UTF-8"), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    private static String m4458a(String str, String str2, String str3) {
        if (str == null || str.length() == 0) {
            C1151ad.m4325c(f4085a, "convertEncodingFormat --> str=" + str + ",formatFrom=" + str2 + ",formatTo=" + str3);
            return str;
        }
        try {
            return new String(str.getBytes(str2), str3);
        } catch (UnsupportedEncodingException e) {
            C1151ad.m4325c(f4085a, "convertEncodingFormat --> str=" + str + ",ex=" + e.getMessage());
            e.printStackTrace();
            return str;
        }
    }

    /* renamed from: a */
    private static String m4459a(byte[] bArr) {
        StringBuilder sb = new StringBuilder("");
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static void m4460a(FileInputStream fileInputStream, FileOutputStream fileOutputStream) {
        try {
            byte[] bArr = new byte[102400];
            while (true) {
                int read = fileInputStream.read(bArr, 0, 102400);
                if (read != -1) {
                    fileInputStream.close();
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    private static void m4461a(String str, String str2, boolean z) {
        try {
            File file = new File(str);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            if (!file.exists()) {
                file.createNewFile();
                file = new File(str);
            }
            FileWriter fileWriter = new FileWriter(file, z);
            if (str2 != null && !"".equals(str2)) {
                fileWriter.write(str2);
                fileWriter.flush();
            }
            fileWriter.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static boolean m4462a(File file, String str, String str2) {
        try {
            if (TextUtils.isEmpty(str2)) {
                str2 = "UTF-8";
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), str2));
            bufferedWriter.write(str);
            bufferedWriter.flush();
            bufferedWriter.close();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: b */
    public static File m4463b(String str, String str2) {
        File file = null;
        try {
            File file2 = new File(str);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            File file3 = new File(file2, str2);
            try {
                if (file3.exists()) {
                    return file3;
                }
                file3.createNewFile();
                return file3;
            } catch (IOException e) {
                file = file3;
                e = e;
                e.printStackTrace();
                return file;
            }
        } catch (IOException e2) {
            e = e2;
        }
    }

    /* renamed from: b */
    public static String m4464b(File file) {
        return m4456a(file, (String) null);
    }

    /* renamed from: b */
    public static String m4465b(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(System.currentTimeMillis());
        String sb2 = sb.toString();
        try {
            return str.substring(str.lastIndexOf("/"));
        } catch (Exception e) {
            e.printStackTrace();
            return sb2;
        }
    }

    /* renamed from: b */
    private static void m4466b(File file, String str) {
        try {
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static boolean m4467b(File file, String str, String str2) {
        try {
            if (TextUtils.isEmpty(str2)) {
                str2 = "UTF-8";
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), str2));
            bufferedWriter.write(str);
            bufferedWriter.flush();
            bufferedWriter.close();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: c */
    public static Bitmap m4468c(String str) {
        try {
            return BitmapFactory.decodeStream(new FileInputStream(str));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    private static void m4469c(String str, String str2) {
        try {
            C1151ad.m4325c(f4085a, "copyFile --> targetFileAbsolutePath=" + str + ",toPath=" + str2);
            File file = new File(str);
            File file2 = new File(str2);
            if (!file2.isFile()) {
                file2.mkdirs();
            }
            m4460a(new FileInputStream(file), new FileOutputStream(file2));
        } catch (Exception e) {
            e.printStackTrace();
            C1151ad.m4325c(f4085a, "copyFile --> ex=" + e.getMessage());
        }
    }

    /* renamed from: c */
    public static boolean m4470c(File file) {
        String str;
        String str2;
        if (!file.exists() || !file.isFile()) {
            str = f4085a;
            str2 = "deleteSingleFile --> 文件不存在！ ";
        } else {
            if (file.delete()) {
                C1151ad.m4325c(f4085a, "deleteSingleFile --> 删除单个文件成功！");
                return true;
            }
            str = f4085a;
            str2 = "deleteSingleFile --> 删除单个文件失败！";
        }
        C1151ad.m4325c(str, str2);
        return false;
    }

    /* renamed from: c */
    private static boolean m4471c(File file, String str) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(str.getBytes());
            fileOutputStream.close();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: d */
    private static File m4472d(String str) {
        File file;
        try {
            file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + str);
            try {
                if (!file.exists()) {
                    file.mkdirs();
                    return file;
                }
            } catch (Exception e) {
                e = e;
                e.printStackTrace();
                return file;
            }
        } catch (Exception e2) {
            e = e2;
            file = null;
        }
        return file;
    }

    /* renamed from: d */
    public static String m4473d(File file) {
        if (!file.isFile()) {
            return null;
        }
        byte[] bArr = new byte[1024];
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                int read = fileInputStream.read(bArr, 0, 1024);
                if (read == -1) {
                    fileInputStream.close();
                    return m4459a(messageDigest.digest());
                }
                messageDigest.update(bArr, 0, read);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: e */
    private static boolean m4474e(String str) {
        String str2;
        StringBuilder sb;
        String str3;
        File file = new File(str);
        if (!file.exists() || !file.isFile()) {
            str2 = f4085a;
            sb = new StringBuilder("deleteSingleFile --> 删除单个文件失败: ");
            sb.append(str);
            str3 = "不存在！";
        } else {
            if (file.delete()) {
                C1151ad.m4325c(f4085a, "deleteSingleFile --> 删除单个文件 " + str + "成功！");
                return true;
            }
            str2 = f4085a;
            sb = new StringBuilder("deleteSingleFile --> 删除单个文件 ");
            sb.append(str);
            str3 = "失败！";
        }
        sb.append(str3);
        C1151ad.m4325c(str2, sb.toString());
        return false;
    }

    /* renamed from: f */
    private static boolean m4475f(String str) {
        String str2;
        String str3;
        try {
            if (str.endsWith(File.separator)) {
                str = str + File.separator;
            }
            File file = new File(str);
            if (!file.exists() || !file.isDirectory()) {
                return false;
            }
            File[] listFiles = file.listFiles();
            for (File file2 : listFiles) {
                String absolutePath = file2.getAbsolutePath();
                File file3 = new File(absolutePath);
                if (!file3.exists() || !file3.isFile()) {
                    str2 = f4085a;
                    str3 = "deleteSingleFile --> 删除单个文件失败: " + absolutePath + "不存在！";
                } else if (file3.delete()) {
                    str2 = f4085a;
                    str3 = "deleteSingleFile --> 删除单个文件 " + absolutePath + "成功！";
                } else {
                    str2 = f4085a;
                    str3 = "deleteSingleFile --> 删除单个文件 " + absolutePath + "失败！";
                }
                C1151ad.m4325c(str2, str3);
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: g */
    private static boolean m4476g(String str) {
        try {
            return new File(str).exists();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
