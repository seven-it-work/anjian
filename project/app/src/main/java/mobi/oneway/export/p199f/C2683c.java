package mobi.oneway.export.p199f;

import java.util.ArrayList;
import java.util.List;
import mobi.oneway.export.p193b.C2646a;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: mobi.oneway.export.f.c */
/* loaded from: classes2.dex */
public class C2683c {

    /* renamed from: a */
    private String f10309a;

    /* renamed from: b */
    private List<a> f10310b;

    /* renamed from: mobi.oneway.export.f.c$a */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a */
        private int f10311a;

        /* renamed from: b */
        private String f10312b;

        /* renamed from: c */
        private int f10313c;

        /* renamed from: d */
        private int f10314d;

        /* renamed from: e */
        private int f10315e;

        /* renamed from: f */
        private int f10316f;

        /* renamed from: g */
        private int f10317g;

        public a(String str, JSONObject jSONObject) {
            this.f10311a = jSONObject.optInt("adp");
            this.f10312b = jSONObject.optString("pid");
            this.f10313c = jSONObject.optInt("dayReqLimit");
            this.f10314d = jSONObject.optInt("dayShowLimit");
            this.f10315e = jSONObject.optInt("fsc");
            this.f10316f = jSONObject.optInt("hvcb");
            this.f10317g = jSONObject.optInt("ocb");
            C2646a.m11919a().m11926a(str, this.f10312b, this.f10313c, this.f10314d);
        }

        /* renamed from: a */
        public int m12107a() {
            return this.f10311a;
        }

        /* renamed from: a */
        public void m12108a(int i) {
            this.f10311a = i;
        }

        /* renamed from: a */
        public void m12109a(String str) {
            this.f10312b = str;
        }

        /* renamed from: b */
        public String m12110b() {
            return this.f10312b;
        }

        /* renamed from: b */
        public void m12111b(int i) {
            this.f10313c = i;
        }

        /* renamed from: c */
        public int m12112c() {
            return this.f10313c;
        }

        /* renamed from: c */
        public void m12113c(int i) {
            this.f10314d = i;
        }

        /* renamed from: d */
        public int m12114d() {
            return this.f10314d;
        }

        /* renamed from: d */
        public void m12115d(int i) {
            this.f10315e = i;
        }

        /* renamed from: e */
        public int m12116e() {
            return this.f10315e;
        }

        /* renamed from: e */
        public void m12117e(int i) {
            this.f10316f = i;
        }

        /* renamed from: f */
        public int m12118f() {
            return this.f10316f;
        }

        /* renamed from: f */
        public void m12119f(int i) {
            this.f10317g = i;
        }

        /* renamed from: g */
        public int m12120g() {
            return this.f10317g;
        }
    }

    public C2683c(JSONObject jSONObject) {
        this.f10309a = jSONObject.optString("pid");
        JSONArray optJSONArray = jSONObject.optJSONArray("pidConfigs");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return;
        }
        this.f10310b = new ArrayList();
        for (int i = 0; i < optJSONArray.length(); i++) {
            this.f10310b.add(new a(this.f10309a, optJSONArray.optJSONObject(i)));
        }
    }

    /* renamed from: a */
    public String m12103a() {
        return this.f10309a;
    }

    /* renamed from: a */
    public void m12104a(String str) {
        this.f10309a = str;
    }

    /* renamed from: a */
    public void m12105a(List<a> list) {
        this.f10310b = list;
    }

    /* renamed from: b */
    public List<a> m12106b() {
        return this.f10310b;
    }
}
