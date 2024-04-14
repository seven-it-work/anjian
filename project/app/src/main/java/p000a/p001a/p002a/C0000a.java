package p000a.p001a.p002a;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

/* renamed from: a.a.a.a */
/* loaded from: classes.dex */
public final class C0000a {
    /* renamed from: a */
    private static String m0a(String str) throws RuntimeException {
        try {
            return new String(m6a(str.getBytes()), "ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("ASCII is not supported!", e);
        }
    }

    /* renamed from: a */
    private static String m1a(String str, String str2) throws RuntimeException {
        try {
            try {
                return new String(m6a(str.getBytes(str2)), "ASCII");
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException("ASCII is not supported!", e);
            }
        } catch (UnsupportedEncodingException e2) {
            StringBuffer stringBuffer = new StringBuffer("Unsupported charset: ");
            stringBuffer.append(str2);
            throw new RuntimeException(stringBuffer.toString(), e2);
        }
    }

    /* renamed from: a */
    private static void m2a(File file, File file2) throws IOException {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        try {
            m5a(fileInputStream, fileOutputStream, 0);
            try {
                fileOutputStream.close();
            } catch (Throwable unused) {
            }
            try {
                fileInputStream.close();
            } catch (Throwable unused2) {
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (Throwable unused3) {
                }
            }
            if (fileInputStream == null) {
                throw th;
            }
            try {
                fileInputStream.close();
                throw th;
            } catch (Throwable unused4) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private static void m3a(File file, File file2, int i) throws IOException {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        try {
            m5a(fileInputStream, fileOutputStream, i);
            try {
                fileOutputStream.close();
            } catch (Throwable unused) {
            }
            try {
                fileInputStream.close();
            } catch (Throwable unused2) {
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (Throwable unused3) {
                }
            }
            if (fileInputStream == null) {
                throw th;
            }
            try {
                fileInputStream.close();
                throw th;
            } catch (Throwable unused4) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private static void m4a(InputStream inputStream, OutputStream outputStream) throws IOException {
        m5a(inputStream, outputStream, 0);
    }

    /* renamed from: a */
    private static void m5a(InputStream inputStream, OutputStream outputStream, int i) throws IOException {
        C0002c c0002c = new C0002c(outputStream, i);
        m12c(inputStream, c0002c);
        c0002c.m15a();
    }

    /* renamed from: a */
    public static byte[] m6a(byte[] bArr) throws RuntimeException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                m5a(byteArrayInputStream, byteArrayOutputStream, 0);
                try {
                    byteArrayInputStream.close();
                } catch (Throwable unused) {
                }
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable unused2) {
                }
                return byteArrayOutputStream.toByteArray();
            } catch (IOException e) {
                throw new RuntimeException("Unexpected I/O error", e);
            }
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable unused3) {
            }
            try {
                byteArrayOutputStream.close();
                throw th;
            } catch (Throwable unused4) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private static String m7b(String str) throws RuntimeException {
        try {
            return new String(m11b(str.getBytes("ASCII")));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("ASCII is not supported!", e);
        }
    }

    /* renamed from: b */
    private static String m8b(String str, String str2) throws RuntimeException {
        try {
            try {
                return new String(m11b(str.getBytes("ASCII")), str2);
            } catch (UnsupportedEncodingException e) {
                StringBuffer stringBuffer = new StringBuffer("Unsupported charset: ");
                stringBuffer.append(str2);
                throw new RuntimeException(stringBuffer.toString(), e);
            }
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("ASCII is not supported!", e2);
        }
    }

    /* renamed from: b */
    private static void m9b(File file, File file2) throws IOException {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        try {
            m10b(fileInputStream, fileOutputStream);
            try {
                fileOutputStream.close();
            } catch (Throwable unused) {
            }
            try {
                fileInputStream.close();
            } catch (Throwable unused2) {
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (Throwable unused3) {
                }
            }
            if (fileInputStream == null) {
                throw th;
            }
            try {
                fileInputStream.close();
                throw th;
            } catch (Throwable unused4) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private static void m10b(InputStream inputStream, OutputStream outputStream) throws IOException {
        m12c(new C0001b(inputStream), outputStream);
    }

    /* renamed from: b */
    public static byte[] m11b(byte[] bArr) throws RuntimeException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                m10b(byteArrayInputStream, byteArrayOutputStream);
                try {
                    byteArrayInputStream.close();
                } catch (Throwable unused) {
                }
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable unused2) {
                }
                return byteArrayOutputStream.toByteArray();
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable unused3) {
                }
                try {
                    byteArrayOutputStream.close();
                    throw th;
                } catch (Throwable unused4) {
                    throw th;
                }
            }
        } catch (IOException e) {
            throw new RuntimeException("Unexpected I/O error", e);
        }
    }

    /* renamed from: c */
    private static void m12c(InputStream inputStream, OutputStream outputStream) throws IOException {
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

    /* renamed from: c */
    private static byte[] m13c(byte[] bArr) throws RuntimeException {
        return m6a(bArr);
    }
}
