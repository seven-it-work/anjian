package mobi.oneway.export.p199f;

import android.os.Build;
import java.lang.reflect.Field;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import mobi.oneway.export.C2640a;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.EventType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.p192a.C2641a;
import mobi.oneway.export.p192a.C2642b;
import mobi.oneway.export.p197d.C2668f;
import mobi.oneway.export.p201g.C2689a;
import mobi.oneway.export.p201g.C2693e;
import mobi.oneway.export.p201g.C2694f;
import mobi.oneway.export.p201g.C2700l;
import mobi.oneway.export.p201g.C2702n;
import org.json.JSONObject;

/* renamed from: mobi.oneway.export.f.e */
/* loaded from: classes2.dex */
public class C2685e {

    /* renamed from: g */
    private static ExecutorService f10321g = Executors.newCachedThreadPool();

    /* renamed from: a */
    private Long f10322a = 0L;

    /* renamed from: b */
    private AdType f10323b;

    /* renamed from: c */
    private String f10324c;

    /* renamed from: d */
    private C2673a f10325d;

    /* renamed from: e */
    private String f10326e;

    /* renamed from: f */
    private String f10327f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: mobi.oneway.export.f.e$a */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a */
        public EventType f10329a;

        public a(EventType eventType) {
            this.f10329a = eventType;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C2668f m12015a = new C2668f(C2641a.f10163e, C2641a.f10162d).m12015a("eventName", (Object) this.f10329a.toString()).m12015a("publishId", (Object) C2642b.m11902b()).m12015a("token", (Object) C2642b.m11906d()).m12015a("adType", Integer.valueOf(C2685e.this.f10323b.value())).m12015a("dmd", (Object) Build.MODEL).m12015a("dmk", (Object) Build.BRAND).m12015a("ip", (Object) C2702n.m12247a(C2642b.m11898a())).m12015a("osv", (Object) Build.VERSION.RELEASE);
                if (C2642b.m11905c()) {
                    m12015a.m12015a("e", Boolean.valueOf(C2642b.m11905c()));
                }
                m12015a.m12028c("POST").m12014a(C2685e.this.m12131a()).m12040n();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public C2685e(AdType adType, C2673a c2673a) {
        this.f10323b = adType;
        this.f10325d = c2673a;
        this.f10326e = c2673a.m12093g();
        this.f10327f = c2673a.m12092f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public String m12131a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("cid", C2682b.m12101a(this.f10325d.m12071a(), this.f10326e, this.f10327f));
            jSONObject.put("v", this.f10325d.m12089d());
            jSONObject.put("sv", C2640a.f10158f);
            jSONObject.put("ssv", C2694f.m12181c());
            jSONObject.put("wv", "");
            jSONObject.put("ts", System.currentTimeMillis());
            jSONObject.put("did", C2694f.m12177a());
            jSONObject.put("bdid", C2694f.m12180b());
            jSONObject.put("dos", "Android");
            jSONObject.put("ua", C2694f.m12182d());
            jSONObject.put("ct", C2694f.m12184f());
            jSONObject.put("nt", C2694f.m12185g());
            jSONObject.put("osv", Build.VERSION.RELEASE);
            jSONObject.put("dmd", Build.MODEL);
            jSONObject.put("dmk", Build.BRAND);
            jSONObject.put("aid", C2694f.m12183e());
            jSONObject.put("bssid", C2694f.m12187i());
            jSONObject.put("ssid", C2694f.m12186h());
            jSONObject.put("simopt", C2694f.m12188j());
            jSONObject.put("simoptn", C2694f.m12189k());
            jSONObject.put("lng", C2700l.m12233b());
            jSONObject.put("lat", C2700l.m12231a());
            jSONObject.put("adp", this.f10325d.m12071a());
            jSONObject.put("ip", C2702n.m12247a(C2642b.m11898a()));
            jSONObject.put("adts", this.f10322a);
            jSONObject.put("crc", this.f10325d.m12085b());
            jSONObject.put("sc", C2642b.m11907e());
            jSONObject.put("slt", this.f10325d.m12087c());
            jSONObject.put("dt", this.f10324c);
            jSONObject.put("pid", this.f10326e);
            jSONObject.put("thirdPid", this.f10327f);
            jSONObject.put("oaid", m12135c());
            return C2642b.m11905c() ? C2689a.m12152a(jSONObject.toString(), C2642b.m11906d(), C2642b.m11902b()) : jSONObject.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: b */
    private void m12134b() {
        this.f10322a = Long.valueOf(System.currentTimeMillis());
        C2682b.m12102a(this.f10325d.m12071a(), this.f10326e, this.f10327f, C2693e.m12176a(C2642b.m11902b() + "-" + this.f10323b.value() + "-" + this.f10322a).longValue());
        this.f10324c = "";
    }

    /* renamed from: c */
    private String m12135c() {
        try {
            Field declaredField = this.f10325d.m12091e().loadClass("mobi.oneway.third_common.util.oaid.OaidHolder").getDeclaredField("oaid");
            declaredField.setAccessible(true);
            return (String) declaredField.get(null);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
    
        if (r2.f10323b.equals(mobi.oneway.export.enums.AdType.splash) != false) goto L11;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m12136a(mobi.oneway.export.enums.EventType r3, java.lang.String r4) {
        /*
            r2 = this;
            mobi.oneway.export.f.a r0 = r2.f10325d
            int r0 = r0.m12071a()
            r1 = 1
            if (r0 != r1) goto La
            return
        La:
            int[] r0 = mobi.oneway.export.p199f.C2685e.AnonymousClass1.f10328a
            int r1 = r3.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L26;
                case 2: goto L1c;
                case 3: goto L29;
                case 4: goto L29;
                case 5: goto L29;
                case 6: goto L29;
                case 7: goto L29;
                case 8: goto L16;
                default: goto L15;
            }
        L15:
            goto L29
        L16:
            r2.m12134b()
            r2.f10324c = r4
            goto L29
        L1c:
            mobi.oneway.export.enums.AdType r4 = r2.f10323b
            mobi.oneway.export.enums.AdType r0 = mobi.oneway.export.enums.AdType.splash
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L29
        L26:
            r2.m12134b()
        L29:
            java.util.concurrent.ExecutorService r4 = mobi.oneway.export.p199f.C2685e.f10321g
            mobi.oneway.export.f.e$a r0 = new mobi.oneway.export.f.e$a
            r0.<init>(r3)
            r4.execute(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.oneway.export.p199f.C2685e.m12136a(mobi.oneway.export.enums.EventType, java.lang.String):void");
    }

    /* renamed from: a */
    public void m12137a(EventType eventType, OnewaySdkError onewaySdkError, String str) {
        m12136a(eventType, onewaySdkError + "--" + str);
    }
}
