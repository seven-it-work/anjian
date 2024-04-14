package mobi.oneway.export.p191Ad;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;
import mobi.oneway.export.C2640a;
import mobi.oneway.export.p192a.C2642b;
import mobi.oneway.export.p196c.C2661c;
import mobi.oneway.export.p198e.C2669a;
import mobi.oneway.export.p198e.C2670b;
import mobi.oneway.export.p201g.C2701m;

/* loaded from: classes.dex */
public class OnewaySdk {

    /* renamed from: a */
    private static AtomicBoolean f10152a = new AtomicBoolean(false);

    public static void checkSdkConfigured() {
        if (isConfigured()) {
            return;
        }
        C2701m.m12245d(" OnewaySdk.configure method has not invoked first ");
    }

    public static void configure(Context context, String str) {
        if (!f10152a.compareAndSet(false, true)) {
            C2701m.m12245d("config method has been called");
            return;
        }
        if (context == null) {
            C2701m.m12245d("Context must not be null");
            return;
        }
        C2642b.m11900a(str);
        C2642b.m11899a(context.getApplicationContext());
        C2661c.m11971a().m11972a(context);
        C2670b.m12055a().m12059b();
        new C2669a(str).start();
    }

    public static String getVersion() {
        return C2640a.f10158f;
    }

    public static boolean isConfigured() {
        return f10152a.get();
    }

    public static void setDebugMode(boolean z) {
        C2701m.m12238a(z);
    }
}
