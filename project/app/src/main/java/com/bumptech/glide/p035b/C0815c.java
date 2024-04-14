package com.bumptech.glide.p035b;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.b.c */
/* loaded from: classes.dex */
public final class C0815c {

    /* renamed from: a */
    static final Charset f2247a = Charset.forName("US-ASCII");

    /* renamed from: b */
    static final Charset f2248b = Charset.forName("UTF-8");

    private C0815c() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m2191a(Reader reader) throws IOException {
        try {
            StringWriter stringWriter = new StringWriter();
            char[] cArr = new char[1024];
            while (true) {
                int read = reader.read(cArr);
                if (read == -1) {
                    return stringWriter.toString();
                }
                stringWriter.write(cArr, 0, read);
            }
        } finally {
            reader.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m2192a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m2193a(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                m2193a(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }
}
