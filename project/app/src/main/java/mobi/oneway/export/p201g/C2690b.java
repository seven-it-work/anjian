package mobi.oneway.export.p201g;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

/* renamed from: mobi.oneway.export.g.b */
/* loaded from: classes2.dex */
public class C2690b {
    /* renamed from: a */
    public static String m12160a(String str) {
        return new String(m12166a(str.getBytes("utf-8")), "ASCII");
    }

    /* renamed from: a */
    public static String m12161a(String str, String str2) {
        try {
            try {
                return new String(m12166a(str.getBytes(str2)), "ASCII");
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException("ASCII is not supported!", e);
            }
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("Unsupported charset: " + str2, e2);
        }
    }

    /* renamed from: a */
    public static void m12162a(File file, File file2) {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                try {
                    m12164a(fileInputStream, fileOutputStream2);
                    C2698j.m12229a(fileOutputStream2);
                    C2698j.m12229a(fileInputStream);
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    C2698j.m12229a(fileOutputStream);
                    C2698j.m12229a(fileInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    /* renamed from: a */
    public static void m12163a(File file, File file2, int i) {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                try {
                    m12165a(fileInputStream, fileOutputStream2, i);
                    C2698j.m12229a(fileOutputStream2);
                    C2698j.m12229a(fileInputStream);
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    C2698j.m12229a(fileOutputStream);
                    C2698j.m12229a(fileInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    /* renamed from: a */
    public static void m12164a(InputStream inputStream, OutputStream outputStream) {
        m12165a(inputStream, outputStream, 0);
    }

    /* renamed from: a */
    public static void m12165a(InputStream inputStream, OutputStream outputStream, int i) {
        C2692d c2692d = new C2692d(outputStream, i);
        m12173c(inputStream, c2692d);
        c2692d.m12175a();
    }

    /* renamed from: a */
    public static byte[] m12166a(byte[] bArr) {
        return m12167a(bArr, 0);
    }

    /* renamed from: a */
    public static byte[] m12167a(byte[] bArr, int i) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                m12165a(byteArrayInputStream, byteArrayOutputStream, i);
                C2698j.m12229a(byteArrayInputStream, byteArrayOutputStream);
                return byteArrayOutputStream.toByteArray();
            } catch (IOException e) {
                throw new RuntimeException("Unexpected I/O error", e);
            }
        } catch (Throwable th) {
            C2698j.m12229a(byteArrayInputStream, byteArrayOutputStream);
            throw th;
        }
    }

    /* renamed from: b */
    public static String m12168b(String str) {
        try {
            return new String(m12172b(str.getBytes("ASCII")));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("ASCII is not supported!", e);
        }
    }

    /* renamed from: b */
    public static String m12169b(String str, String str2) {
        try {
            try {
                return new String(m12172b(str.getBytes("ASCII")), str2);
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException("Unsupported charset: " + str2, e);
            }
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("ASCII is not supported!", e2);
        }
    }

    /* renamed from: b */
    public static void m12170b(File file, File file2) {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                try {
                    m12171b(fileInputStream, fileOutputStream2);
                    C2698j.m12229a(fileOutputStream2);
                    C2698j.m12229a(fileInputStream);
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    C2698j.m12229a(fileOutputStream);
                    C2698j.m12229a(fileInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    /* renamed from: b */
    public static void m12171b(InputStream inputStream, OutputStream outputStream) {
        m12173c(new C2691c(inputStream), outputStream);
    }

    /* renamed from: b */
    public static byte[] m12172b(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                m12171b(byteArrayInputStream, byteArrayOutputStream);
                C2698j.m12229a(byteArrayInputStream);
                C2698j.m12229a(byteArrayOutputStream);
                return byteArrayOutputStream.toByteArray();
            } catch (IOException e) {
                throw new RuntimeException("Unexpected I/O error", e);
            }
        } catch (Throwable th) {
            C2698j.m12229a(byteArrayInputStream);
            C2698j.m12229a(byteArrayOutputStream);
            throw th;
        }
    }

    /* renamed from: c */
    private static void m12173c(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }
}
