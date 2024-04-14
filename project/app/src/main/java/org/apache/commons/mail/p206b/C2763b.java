package org.apache.commons.mail.p206b;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.MimeMessage;

/* renamed from: org.apache.commons.mail.b.b */
/* loaded from: classes2.dex */
public final class C2763b {
    private C2763b() {
    }

    /* renamed from: a */
    private static MimeMessage m12466a(Session session, File file) throws MessagingException, IOException {
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                MimeMessage m12467a = m12467a(session, fileInputStream2);
                fileInputStream2.close();
                return m12467a;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: a */
    private static MimeMessage m12467a(Session session, InputStream inputStream) throws MessagingException {
        return new MimeMessage(session, inputStream);
    }

    /* renamed from: a */
    private static MimeMessage m12468a(Session session, String str) throws MessagingException, IOException {
        ByteArrayInputStream byteArrayInputStream;
        ByteArrayInputStream byteArrayInputStream2 = null;
        try {
            byteArrayInputStream = new ByteArrayInputStream(str.getBytes());
        } catch (Throwable th) {
            th = th;
        }
        try {
            MimeMessage m12467a = m12467a(session, byteArrayInputStream);
            byteArrayInputStream.close();
            return m12467a;
        } catch (Throwable th2) {
            th = th2;
            byteArrayInputStream2 = byteArrayInputStream;
            if (byteArrayInputStream2 != null) {
                byteArrayInputStream2.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    private static MimeMessage m12469a(Session session, byte[] bArr) throws MessagingException, IOException {
        ByteArrayInputStream byteArrayInputStream = null;
        try {
            ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArr);
            try {
                MimeMessage mimeMessage = new MimeMessage(session, byteArrayInputStream2);
                byteArrayInputStream2.close();
                return mimeMessage;
            } catch (Throwable th) {
                th = th;
                byteArrayInputStream = byteArrayInputStream2;
                if (byteArrayInputStream != null) {
                    byteArrayInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: a */
    private static void m12470a(MimeMessage mimeMessage, File file) throws MessagingException, IOException {
        FileOutputStream fileOutputStream = null;
        try {
            if (!file.getParentFile().exists() && !file.getParentFile().mkdirs()) {
                throw new IOException("Failed to create the following parent directories: " + file.getParentFile());
            }
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                mimeMessage.writeTo(fileOutputStream2);
                fileOutputStream2.flush();
                fileOutputStream2.close();
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
