package mobi.oneway.export.p201g;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

/* renamed from: mobi.oneway.export.g.h */
/* loaded from: classes2.dex */
public class C2696h {
    /* renamed from: a */
    private static long m12192a(long j) {
        return Math.round(j / 1024.0d);
    }

    /* renamed from: a */
    public static long m12193a(File file) {
        if (m12215f(file)) {
            return -1L;
        }
        try {
            return m12192a(file.getFreeSpace());
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        }
    }

    /* renamed from: a */
    public static String m12194a(Context context, String str, String str2) {
        InputStream open;
        InputStream inputStream = null;
        try {
            open = context.getAssets().open(str);
        } catch (Throwable th) {
            th = th;
        }
        try {
            String m12284c = C2708t.m12284c(open, str2);
            C2698j.m12229a(open);
            return m12284c;
        } catch (Throwable th2) {
            th = th2;
            inputStream = open;
            C2698j.m12229a(inputStream);
            throw th;
        }
    }

    /* renamed from: a */
    public static String m12195a(String str, String str2) {
        byte[] m12218h = m12218h(new File(str));
        return str2 == null ? new String(m12218h) : new String(m12218h, str2);
    }

    /* renamed from: a */
    public static List<String> m12196a(File file, String str) {
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(C2708t.m12283b(new FileInputStream(file), str));
            while (true) {
                try {
                    String readLine = bufferedReader2.readLine();
                    if (readLine == null) {
                        C2698j.m12229a(bufferedReader2);
                        return arrayList;
                    }
                    arrayList.add(readLine);
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    C2698j.m12229a(bufferedReader);
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: a */
    public static boolean m12197a() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    /* renamed from: a */
    public static boolean m12198a(File file, byte[] bArr) {
        BufferedOutputStream bufferedOutputStream;
        if (file == null || bArr == null) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            m12207c(file.getParent(), (String) null);
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        } catch (Throwable th) {
            th = th;
        }
        try {
            bufferedOutputStream.write(bArr);
            bufferedOutputStream.flush();
            C2698j.m12229a(bufferedOutputStream);
            return true;
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream2 = bufferedOutputStream;
            C2698j.m12229a(bufferedOutputStream2);
            throw th;
        }
    }

    /* renamed from: a */
    public static boolean m12199a(String str) {
        return m12213e(new File(str));
    }

    /* renamed from: a */
    public static boolean m12200a(String str, Object obj) {
        return obj != null && m12205b(new File(str), obj.toString());
    }

    /* renamed from: b */
    private static long m12201b(long j) {
        return Math.round((j / 1024.0d) / 1024.0d);
    }

    /* renamed from: b */
    public static long m12202b(File file) {
        if (m12215f(file)) {
            return -1L;
        }
        try {
            return m12192a(file.getTotalSpace());
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        }
    }

    /* renamed from: b */
    public static String m12203b(String str) {
        return m12219i(new File(str));
    }

    /* renamed from: b */
    public static String m12204b(String str, String str2) {
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(C2708t.m12283b(new FileInputStream(str), str2));
            try {
                String readLine = bufferedReader2.readLine();
                C2698j.m12229a(bufferedReader2);
                return readLine;
            } catch (Throwable th) {
                th = th;
                bufferedReader = bufferedReader2;
                C2698j.m12229a(bufferedReader);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: b */
    public static boolean m12205b(File file, String str) {
        return m12198a(file, str.getBytes());
    }

    /* renamed from: c */
    public static File m12206c(File file, String str) {
        if (file == null) {
            return null;
        }
        return m12207c(file.getAbsolutePath(), str);
    }

    /* renamed from: c */
    public static File m12207c(String str, String str2) {
        if (str == null) {
            return null;
        }
        File file = TextUtils.isEmpty(str2) ? new File(str) : new File(str, str2);
        if ((file.exists() && file.isDirectory()) || file.mkdirs()) {
            return file;
        }
        return null;
    }

    /* renamed from: c */
    public static String m12208c(String str) {
        return m12204b(str, (String) null);
    }

    /* renamed from: c */
    public static boolean m12209c(File file) {
        return m12213e(file) && file.isFile();
    }

    /* renamed from: d */
    public static List<String> m12210d(String str) {
        return m12196a(new File(str), (String) null);
    }

    /* renamed from: d */
    public static boolean m12211d(File file) {
        return m12213e(file) && file.isDirectory();
    }

    /* renamed from: d */
    public static boolean m12212d(String str, String str2) {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            fileInputStream = new FileInputStream(str);
            try {
                fileOutputStream = new FileOutputStream(str2);
            } catch (Throwable th) {
                th = th;
            }
            try {
                C2708t.m12280a(fileInputStream, fileOutputStream);
                C2698j.m12229a(fileInputStream, fileOutputStream);
                return true;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                C2698j.m12229a(fileInputStream, fileOutputStream2);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    /* renamed from: e */
    public static boolean m12213e(File file) {
        return file != null && file.exists();
    }

    /* renamed from: e */
    public static boolean m12214e(String str) {
        return !TextUtils.isEmpty(str) && m12220j(new File(str));
    }

    /* renamed from: f */
    public static boolean m12215f(File file) {
        return !m12213e(file);
    }

    /* renamed from: f */
    public static boolean m12216f(String str) {
        try {
            Runtime.getRuntime().exec("chmod 777 " + str);
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: g */
    public static boolean m12217g(File file) {
        return m12213e(file) && file.canRead();
    }

    /* renamed from: h */
    public static byte[] m12218h(File file) {
        BufferedInputStream bufferedInputStream;
        ByteArrayOutputStream byteArrayOutputStream = null;
        if (file == null) {
            return null;
        }
        try {
            bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            try {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(bufferedInputStream.available());
                try {
                    C2708t.m12280a(bufferedInputStream, byteArrayOutputStream2);
                    byte[] byteArray = byteArrayOutputStream2.toByteArray();
                    C2698j.m12229a(bufferedInputStream, byteArrayOutputStream2);
                    return byteArray;
                } catch (Throwable th) {
                    byteArrayOutputStream = byteArrayOutputStream2;
                    th = th;
                    C2698j.m12229a(bufferedInputStream, byteArrayOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream = null;
        }
    }

    /* renamed from: i */
    public static String m12219i(File file) {
        return m12195a(file.getAbsolutePath(), (String) null);
    }

    /* renamed from: j */
    public static boolean m12220j(File file) {
        if (file == null) {
            return false;
        }
        boolean z = true;
        if (!file.exists()) {
            return true;
        }
        if (file.isFile()) {
            try {
                return file.delete();
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        Stack stack = new Stack();
        stack.push(file);
        while (!stack.isEmpty()) {
            File[] listFiles = ((File) stack.peek()).listFiles();
            if (listFiles != null && listFiles.length != 0) {
                boolean z2 = z;
                for (File file2 : listFiles) {
                    if (!file2.isFile()) {
                        stack.push(file2);
                    } else if (!file2.delete()) {
                        z2 = false;
                    }
                }
                z = z2;
            } else if (!((File) stack.pop()).delete()) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: k */
    public static boolean m12221k(File file) {
        return file != null && file.isDirectory() && file.canRead() && file.canWrite() && file.canExecute();
    }

    /* renamed from: l */
    public static boolean m12222l(File file) {
        return file != null && m12216f(file.getAbsolutePath());
    }
}
