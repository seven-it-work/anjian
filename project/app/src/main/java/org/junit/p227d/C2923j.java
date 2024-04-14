package org.junit.p227d;

import java.io.File;
import java.io.IOException;

/* renamed from: org.junit.d.j */
/* loaded from: classes2.dex */
public final class C2923j extends AbstractC2918e {

    /* renamed from: a */
    private final File f10826a;

    /* renamed from: b */
    private File f10827b;

    public C2923j() {
        this((byte) 0);
    }

    private C2923j(byte b2) {
        this.f10826a = null;
    }

    /* renamed from: a */
    private static File m13143a(File file) throws IOException {
        File createTempFile = File.createTempFile("junit", "", file);
        createTempFile.delete();
        createTempFile.mkdir();
        return createTempFile;
    }

    /* renamed from: a */
    private File m13144a(String str) throws IOException {
        File file = new File(m13153f(), str);
        if (file.createNewFile()) {
            return file;
        }
        throw new IOException("a file with the name '" + str + "' already exists in the test folder");
    }

    /* renamed from: a */
    private File m13145a(String... strArr) throws IOException {
        File m13153f = m13153f();
        int i = 0;
        while (i <= 0) {
            String str = strArr[0];
            if (new File(str).getParent() != null) {
                throw new IOException("Folder name cannot consist of multiple path components separated by a file separator. Please use newFolder('MyParentFolder','MyFolder') to create hierarchies of folders");
            }
            File file = new File(m13153f, str);
            if (!file.mkdir()) {
                if (strArr.length - 1 == 0) {
                    throw new IOException("a folder with the name '" + str + "' already exists");
                }
            }
            i++;
            m13153f = file;
        }
        return m13153f;
    }

    /* renamed from: a */
    private static boolean m13146a(int i, String[] strArr) {
        return i == strArr.length - 1;
    }

    /* renamed from: b */
    private File m13147b(String str) throws IOException {
        String[] strArr = {str};
        File m13153f = m13153f();
        int i = 0;
        while (i <= 0) {
            String str2 = strArr[0];
            if (new File(str2).getParent() != null) {
                throw new IOException("Folder name cannot consist of multiple path components separated by a file separator. Please use newFolder('MyParentFolder','MyFolder') to create hierarchies of folders");
            }
            File file = new File(m13153f, str2);
            if (!file.mkdir()) {
                throw new IOException("a folder with the name '" + str2 + "' already exists");
            }
            i++;
            m13153f = file;
        }
        return m13153f;
    }

    /* renamed from: b */
    private void m13148b(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                m13148b(file2);
            }
        }
        file.delete();
    }

    /* renamed from: c */
    private void m13149c() throws IOException {
        this.f10827b = m13143a(this.f10826a);
    }

    /* renamed from: c */
    private static void m13150c(String str) throws IOException {
        if (new File(str).getParent() != null) {
            throw new IOException("Folder name cannot consist of multiple path components separated by a file separator. Please use newFolder('MyParentFolder','MyFolder') to create hierarchies of folders");
        }
    }

    /* renamed from: d */
    private File m13151d() throws IOException {
        return File.createTempFile("junit", null, m13153f());
    }

    /* renamed from: e */
    private File m13152e() throws IOException {
        return m13143a(m13153f());
    }

    /* renamed from: f */
    private File m13153f() {
        if (this.f10827b == null) {
            throw new IllegalStateException("the temporary folder has not yet been created");
        }
        return this.f10827b;
    }

    /* renamed from: g */
    private void m13154g() {
        if (this.f10827b != null) {
            m13148b(this.f10827b);
        }
    }

    @Override // org.junit.p227d.AbstractC2918e
    /* renamed from: a */
    protected final void mo13119a() throws Throwable {
        this.f10827b = m13143a(this.f10826a);
    }

    @Override // org.junit.p227d.AbstractC2918e
    /* renamed from: b */
    protected final void mo13120b() {
        if (this.f10827b != null) {
            m13148b(this.f10827b);
        }
    }
}
