package mobi.oneway.export;

import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.io.InputStream;
import mobi.oneway.export.enums.PluginErrorType;
import mobi.oneway.export.p192a.C2641a;
import mobi.oneway.export.p192a.C2642b;
import mobi.oneway.export.p192a.C2643c;
import mobi.oneway.export.p192a.C2644d;
import mobi.oneway.export.p198e.C2671c;
import mobi.oneway.export.p201g.C2695g;
import mobi.oneway.export.p201g.C2696h;
import mobi.oneway.export.p201g.C2698j;
import mobi.oneway.export.p201g.C2701m;

/* renamed from: mobi.oneway.export.b */
/* loaded from: classes.dex */
public class C2645b {

    /* renamed from: a */
    private static ClassLoader f10179a;

    /* renamed from: a */
    public static Class m11912a(String str) {
        try {
            return m11913a().loadClass(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    /* renamed from: a */
    public static ClassLoader m11913a() {
        try {
            if (f10179a == null) {
                m11917e();
                f10179a = C2644d.m11911a() ? C2645b.class.getClassLoader() : new DexClassLoader(m11914b(), m11915c(), null, C2645b.class.getClassLoader());
            }
            return f10179a;
        } catch (Exception e) {
            C2671c.m12064a(PluginErrorType.shell_error_classloader, C2695g.m12191a((Throwable) e));
            return null;
        }
    }

    /* renamed from: b */
    private static String m11914b() {
        if (C2642b.m11898a() == null) {
            return "";
        }
        return C2642b.m11898a().getDir("plugin", 0).getPath() + File.separator + C2641a.f10168j;
    }

    /* renamed from: c */
    private static String m11915c() {
        return C2642b.m11898a() != null ? C2642b.m11898a().getDir(C2641a.f10166h, 0).getPath() : "";
    }

    /* renamed from: d */
    private static String m11916d() {
        return C2642b.m11898a() != null ? C2642b.m11898a().getDir("plugin", 0).getPath() : "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    private static void m11917e() {
        Throwable th;
        IOException e;
        InputStream inputStream;
        if (C2642b.m11898a() == null) {
            C2701m.m12245d("context is null,please invoke OnewaySdk.init method first");
            return;
        }
        m11918f();
        if (C2696h.m12199a(m11914b())) {
            return;
        }
        String str = C2643c.m11908a() + File.separator + C2643c.m11909b();
        try {
            try {
                inputStream = C2642b.m11898a().getAssets().open(str);
            } catch (IOException e2) {
                e = e2;
                inputStream = null;
            } catch (Throwable th2) {
                th = th2;
                str = null;
                C2698j.m12229a(str);
                throw th;
            }
            try {
                byte[] bArr = new byte[inputStream.available()];
                inputStream.read(bArr);
                C2696h.m12198a(new File(m11914b()), bArr);
                C2698j.m12229a(inputStream);
            } catch (IOException e3) {
                e = e3;
                C2701m.m12245d("load local default OnewaySdk failed");
                C2671c.m12064a(PluginErrorType.shell_error_assetsIo, C2695g.m12191a((Throwable) e));
                C2698j.m12229a(inputStream);
            }
        } catch (Throwable th3) {
            th = th3;
            C2698j.m12229a(str);
            throw th;
        }
    }

    /* renamed from: f */
    private static void m11918f() {
        File[] listFiles;
        File file = new File(m11916d());
        if (!C2696h.m12213e(file) || (listFiles = file.listFiles(new FileFilter() { // from class: mobi.oneway.export.b.1
            @Override // java.io.FileFilter
            public final boolean accept(File file2) {
                return file2.getName().startsWith("OnewaySdk");
            }
        })) == null) {
            return;
        }
        for (File file2 : listFiles) {
            if (!file2.getName().equals(C2641a.f10168j)) {
                C2696h.m12220j(file2);
            }
        }
    }
}
