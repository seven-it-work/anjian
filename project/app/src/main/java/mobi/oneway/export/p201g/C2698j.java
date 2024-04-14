package mobi.oneway.export.p201g;

import java.io.Closeable;
import java.io.IOException;
import java.net.HttpURLConnection;

/* renamed from: mobi.oneway.export.g.j */
/* loaded from: classes2.dex */
public class C2698j {
    /* renamed from: a */
    private static void m12227a(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m12228a(HttpURLConnection httpURLConnection) {
        if (httpURLConnection == null) {
            return;
        }
        httpURLConnection.disconnect();
    }

    /* renamed from: a */
    public static void m12229a(Closeable... closeableArr) {
        if (closeableArr == null) {
            return;
        }
        for (Closeable closeable : closeableArr) {
            m12227a(closeable);
        }
    }
}
