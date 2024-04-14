package p003b.p004a.p011g;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import p017c.C0548p;
import p017c.InterfaceC0556x;
import p017c.InterfaceC0557y;

/* renamed from: b.a.g.a */
/* loaded from: classes.dex */
public interface InterfaceC0476a {

    /* renamed from: a */
    public static final InterfaceC0476a f491a = new InterfaceC0476a() { // from class: b.a.g.a.1
        @Override // p003b.p004a.p011g.InterfaceC0476a
        /* renamed from: a */
        public final InterfaceC0557y mo454a(File file) throws FileNotFoundException {
            return C0548p.m1222a(file);
        }

        @Override // p003b.p004a.p011g.InterfaceC0476a
        /* renamed from: a */
        public final void mo455a(File file, File file2) throws IOException {
            mo458d(file2);
            if (file.renameTo(file2)) {
                return;
            }
            throw new IOException("failed to rename " + file + " to " + file2);
        }

        @Override // p003b.p004a.p011g.InterfaceC0476a
        /* renamed from: b */
        public final InterfaceC0556x mo456b(File file) throws FileNotFoundException {
            try {
                return C0548p.m1227b(file);
            } catch (FileNotFoundException unused) {
                file.getParentFile().mkdirs();
                return C0548p.m1227b(file);
            }
        }

        @Override // p003b.p004a.p011g.InterfaceC0476a
        /* renamed from: c */
        public final InterfaceC0556x mo457c(File file) throws FileNotFoundException {
            try {
                return C0548p.m1231c(file);
            } catch (FileNotFoundException unused) {
                file.getParentFile().mkdirs();
                return C0548p.m1231c(file);
            }
        }

        @Override // p003b.p004a.p011g.InterfaceC0476a
        /* renamed from: d */
        public final void mo458d(File file) throws IOException {
            if (file.delete() || !file.exists()) {
                return;
            }
            throw new IOException("failed to delete " + file);
        }

        @Override // p003b.p004a.p011g.InterfaceC0476a
        /* renamed from: e */
        public final boolean mo459e(File file) {
            return file.exists();
        }

        @Override // p003b.p004a.p011g.InterfaceC0476a
        /* renamed from: f */
        public final long mo460f(File file) {
            return file.length();
        }

        @Override // p003b.p004a.p011g.InterfaceC0476a
        /* renamed from: g */
        public final void mo461g(File file) throws IOException {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                throw new IOException("not a readable directory: " + file);
            }
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    mo461g(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete " + file2);
                }
            }
        }
    };

    /* renamed from: a */
    InterfaceC0557y mo454a(File file) throws FileNotFoundException;

    /* renamed from: a */
    void mo455a(File file, File file2) throws IOException;

    /* renamed from: b */
    InterfaceC0556x mo456b(File file) throws FileNotFoundException;

    /* renamed from: c */
    InterfaceC0556x mo457c(File file) throws FileNotFoundException;

    /* renamed from: d */
    void mo458d(File file) throws IOException;

    /* renamed from: e */
    boolean mo459e(File file);

    /* renamed from: f */
    long mo460f(File file);

    /* renamed from: g */
    void mo461g(File file) throws IOException;
}
