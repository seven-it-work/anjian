package mobi.oneway.export.p193b;

import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import mobi.oneway.export.p201g.C2701m;
import mobi.oneway.export.p201g.C2706r;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: mobi.oneway.export.b.a */
/* loaded from: classes.dex */
public class C2646a {

    /* renamed from: i */
    private static C2646a f10180i;

    /* renamed from: a */
    private final String f10181a = "sp_ad_c_info";

    /* renamed from: b */
    private final String f10182b = "ld";

    /* renamed from: c */
    private final String f10183c = "rc";

    /* renamed from: d */
    private final String f10184d = "sc";

    /* renamed from: e */
    private final String f10185e = "msc";

    /* renamed from: f */
    private final String f10186f = "mrc";

    /* renamed from: g */
    private boolean f10187g;

    /* renamed from: h */
    private long f10188h;

    /* renamed from: mobi.oneway.export.b.a$a */
    /* loaded from: classes.dex */
    public enum a {
        TYPE_REQUEST,
        TYPE_SHOW
    }

    private C2646a() {
    }

    /* renamed from: a */
    public static C2646a m11919a() {
        if (f10180i == null) {
            f10180i = new C2646a();
        }
        return f10180i;
    }

    /* renamed from: a */
    private void m11920a(JSONObject jSONObject) {
        C2706r.m12254a().m12257a("sp_ad_c_info", jSONObject.toString());
    }

    /* renamed from: a */
    private void m11921a(JSONObject jSONObject, String str) {
        try {
            C2701m.m12235a((Object) "resume ad control count");
            jSONObject.put("ld", str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                Object obj = jSONObject.get(keys.next());
                if (obj instanceof JSONObject) {
                    JSONObject jSONObject2 = (JSONObject) obj;
                    jSONObject2.put("rc", 0);
                    jSONObject2.put("sc", 0);
                }
            }
            m11920a(jSONObject);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    private String m11922b(String str, String str2) {
        if (TextUtils.isEmpty(str2) || str.equals(str2)) {
            return str;
        }
        return str + "-" + str2;
    }

    /* renamed from: d */
    private JSONObject m11923d() {
        String str = (String) C2706r.m12254a().m12258b("sp_ad_c_info", "");
        return TextUtils.isEmpty(str) ? new JSONObject() : new JSONObject(str);
    }

    /* renamed from: e */
    private String m11924e() {
        return new SimpleDateFormat("yyyyMMdd").format(new Date(System.currentTimeMillis()));
    }

    /* renamed from: a */
    public void m11925a(long j) {
        this.f10188h = j;
    }

    /* renamed from: a */
    public void m11926a(String str, String str2, int i, int i2) {
        JSONObject jSONObject;
        String m11922b = m11922b(str, str2);
        try {
            JSONObject m11923d = m11923d();
            if (m11923d.has(m11922b)) {
                jSONObject = m11923d.getJSONObject(m11922b);
            } else {
                JSONObject jSONObject2 = new JSONObject();
                m11923d.put(m11922b, jSONObject2);
                jSONObject = jSONObject2;
            }
            jSONObject.put("mrc", i);
            jSONObject.put("msc", i2);
            m11920a(m11923d);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public void m11927a(a aVar, String str, String str2) {
        JSONObject jSONObject;
        try {
            String m11922b = m11922b(str, str2);
            JSONObject m11923d = m11923d();
            if (m11923d.has(m11922b)) {
                jSONObject = m11923d.getJSONObject(m11922b);
            } else {
                JSONObject jSONObject2 = new JSONObject();
                m11923d.put(m11922b, jSONObject2);
                jSONObject = jSONObject2;
            }
            if (aVar == a.TYPE_REQUEST) {
                jSONObject.put("rc", jSONObject.optInt("rc") + 1);
            }
            if (aVar == a.TYPE_SHOW) {
                jSONObject.put("sc", jSONObject.optInt("sc") + 1);
            }
            m11920a(m11923d);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public void m11928a(boolean z) {
        this.f10187g = z;
    }

    /* renamed from: a */
    public boolean m11929a(String str, String str2) {
        JSONObject m11923d;
        String m11924e = m11924e();
        String m11922b = m11922b(str, str2);
        try {
            m11923d = m11923d();
        } catch (JSONException e) {
            e.printStackTrace();
        }
        if (!m11924e.equals(m11923d.optString("ld"))) {
            m11921a(m11923d, m11924e);
            return false;
        }
        if (m11923d.has(m11922b)) {
            JSONObject jSONObject = m11923d.getJSONObject(m11922b);
            int optInt = jSONObject.optInt("rc");
            int optInt2 = jSONObject.optInt("sc");
            int optInt3 = jSONObject.optInt("mrc");
            int optInt4 = jSONObject.optInt("msc");
            C2701m.m12235a((Object) String.format("adtype=%s,maxRequest=%d,curRequest=%d;maxShow=%d,curShow=%d", m11922b, Integer.valueOf(optInt3), Integer.valueOf(optInt), Integer.valueOf(optInt4), Integer.valueOf(optInt2)));
            return (optInt3 != 0 && optInt >= optInt3) || (optInt4 != 0 && optInt2 >= optInt4);
        }
        return false;
    }

    /* renamed from: b */
    public boolean m11930b() {
        return this.f10187g;
    }

    /* renamed from: c */
    public long m11931c() {
        return this.f10188h;
    }
}
