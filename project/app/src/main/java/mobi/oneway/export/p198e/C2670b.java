package mobi.oneway.export.p198e;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: mobi.oneway.export.e.b */
/* loaded from: classes2.dex */
public class C2670b {

    /* renamed from: a */
    private static List<Runnable> f10274a;

    /* renamed from: c */
    private static C2670b f10275c;

    /* renamed from: d */
    private static Handler f10276d = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    private volatile boolean f10277b;

    private C2670b() {
    }

    /* renamed from: a */
    public static C2670b m12055a() {
        if (f10275c == null) {
            f10275c = new C2670b();
        }
        return f10275c;
    }

    /* renamed from: e */
    private static void m12056e() {
        if (f10274a == null) {
            return;
        }
        Iterator<Runnable> it = f10274a.iterator();
        while (it.hasNext()) {
            f10276d.post(it.next());
        }
        f10274a.clear();
    }

    /* renamed from: f */
    private void m12057f() {
        if (f10274a == null) {
            f10274a = new ArrayList();
        }
    }

    /* renamed from: a */
    public void m12058a(Runnable runnable) {
        try {
            if (this.f10277b) {
                f10276d.post(runnable);
            } else {
                m12057f();
                f10274a.add(runnable);
            }
        } catch (Exception unused) {
        }
    }

    /* renamed from: b */
    public void m12059b() {
        this.f10277b = false;
        m12057f();
    }

    /* renamed from: b */
    public void m12060b(Runnable runnable) {
        try {
            f10274a.remove(runnable);
        } catch (Exception unused) {
        }
    }

    /* renamed from: c */
    public void m12061c() {
        this.f10277b = true;
        m12056e();
    }

    /* renamed from: c */
    public void m12062c(Runnable runnable) {
        f10276d.post(runnable);
    }

    /* renamed from: d */
    public boolean m12063d() {
        return this.f10277b;
    }
}
