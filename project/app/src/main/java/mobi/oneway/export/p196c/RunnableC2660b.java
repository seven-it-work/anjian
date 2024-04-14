package mobi.oneway.export.p196c;

import java.io.File;
import mobi.oneway.export.p192a.C2641a;
import mobi.oneway.export.p197d.C2668f;
import mobi.oneway.export.p201g.C2696h;

/* renamed from: mobi.oneway.export.c.b */
/* loaded from: classes2.dex */
public class RunnableC2660b implements Runnable {

    /* renamed from: a */
    private File f10218a;

    public RunnableC2660b(File file) {
        this.f10218a = file;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            new C2668f(C2641a.f10163e, C2641a.f10161c).m12014a(C2696h.m12219i(this.f10218a)).m12028c("POST").m12040n();
            this.f10218a.delete();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
