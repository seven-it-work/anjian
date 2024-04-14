package mobi.oneway.export.p196c;

import android.content.Context;
import java.io.File;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import mobi.oneway.export.p192a.C2641a;
import mobi.oneway.export.p201g.C2695g;
import mobi.oneway.export.p201g.C2696h;
import mobi.oneway.export.p201g.C2699k;
import mobi.oneway.export.p201g.C2703o;
import mobi.oneway.export.p201g.C2707s;
import org.json.JSONObject;

/* renamed from: mobi.oneway.export.c.a */
/* loaded from: classes2.dex */
class C2659a {

    /* renamed from: a */
    private File f10216a;

    /* renamed from: b */
    private ExecutorService f10217b = Executors.newFixedThreadPool(5);

    public C2659a(Context context) {
        this.f10216a = context.getDir(C2641a.f10167i, 0);
        m11968b();
    }

    /* renamed from: b */
    private void m11968b() {
        File[] listFiles;
        if (this.f10216a == null || (listFiles = this.f10216a.listFiles()) == null || listFiles.length == 0) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        for (File file : listFiles) {
            if (currentTimeMillis - file.lastModified() >= 604800000) {
                file.delete();
            }
        }
    }

    /* renamed from: a */
    public void m11969a() {
        File[] listFiles;
        if (this.f10216a == null || (listFiles = this.f10216a.listFiles()) == null || listFiles.length == 0) {
            return;
        }
        for (File file : listFiles) {
            this.f10217b.execute(new RunnableC2660b(file));
        }
    }

    /* renamed from: a */
    public void m11970a(Throwable th) {
        if (this.f10216a == null) {
            return;
        }
        try {
            String m12191a = C2695g.m12191a(th);
            File file = new File(this.f10216a, System.currentTimeMillis() + ".txt");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("createTime", C2707s.m12277b(new Date()));
            jSONObject.put("info", m12191a);
            C2699k.m12230a(jSONObject, C2703o.m12248a());
            C2699k.m12230a(jSONObject, C2703o.m12249b());
            C2696h.m12205b(file, jSONObject.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
