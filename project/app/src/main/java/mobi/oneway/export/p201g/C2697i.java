package mobi.oneway.export.p201g;

import java.io.IOException;
import java.net.URL;
import org.json.JSONObject;

/* renamed from: mobi.oneway.export.g.i */
/* loaded from: classes2.dex */
public class C2697i {

    /* renamed from: a */
    static final String f10354a = "POST";

    /* renamed from: b */
    static final String f10355b = "GET";

    /* renamed from: c */
    static final String f10356c = "HEAD";

    /* renamed from: d */
    static final String f10357d = "Content-Type";

    /* renamed from: e */
    static final String f10358e = "application/json";

    /* renamed from: f */
    static final long f10359f = 15000;

    /* renamed from: g */
    private String f10360g;

    /* renamed from: h */
    private String f10361h;

    /* renamed from: i */
    private long f10362i;

    /* renamed from: a */
    public C2697i m12223a(long j) {
        this.f10362i = j;
        return this;
    }

    /* renamed from: a */
    public C2697i m12224a(String str) {
        this.f10360g = str;
        return this;
    }

    /* renamed from: a */
    public JSONObject m12225a() {
        JSONObject jSONObject = new JSONObject();
        m12226b("GET");
        try {
            new URL(this.f10360g).openConnection();
            return jSONObject;
        } catch (IOException e) {
            e.printStackTrace();
            return jSONObject;
        }
    }

    /* renamed from: b */
    public C2697i m12226b(String str) {
        this.f10361h = str;
        return this;
    }
}
