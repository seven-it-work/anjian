package mobi.oneway.export.p197d;

import java.io.File;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* renamed from: mobi.oneway.export.d.b */
/* loaded from: classes2.dex */
public class C2664b {

    /* renamed from: a */
    private C2668f f10222a;

    /* renamed from: b */
    private int f10223b;

    /* renamed from: c */
    private byte[] f10224c;

    /* renamed from: d */
    private Map<String, List<String>> f10225d;

    /* renamed from: e */
    private Throwable f10226e;

    /* renamed from: f */
    private long f10227f;

    /* renamed from: g */
    private File f10228g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2664b(C2668f c2668f) {
        m11984a(c2668f);
    }

    /* renamed from: a */
    public String m11977a() {
        return m11992h().m12032f();
    }

    /* renamed from: a */
    public String m11978a(String str) {
        List<String> list;
        if (this.f10225d == null || (list = this.f10225d.get(str)) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    /* renamed from: a */
    public C2664b m11979a(Throwable th) {
        this.f10226e = th;
        return this;
    }

    /* renamed from: a */
    public void m11980a(int i) {
        this.f10223b = i;
    }

    /* renamed from: a */
    public void m11981a(long j) {
        this.f10227f = j;
    }

    /* renamed from: a */
    public void m11982a(File file) {
        this.f10228g = file;
    }

    /* renamed from: a */
    public void m11983a(Map<String, List<String>> map) {
        this.f10225d = map;
    }

    /* renamed from: a */
    public void m11984a(C2668f c2668f) {
        this.f10222a = c2668f;
    }

    /* renamed from: a */
    public void m11985a(byte[] bArr) {
        this.f10224c = bArr;
    }

    /* renamed from: b */
    public boolean m11986b() {
        return this.f10226e == null;
    }

    /* renamed from: c */
    public byte[] m11987c() {
        return this.f10224c;
    }

    /* renamed from: d */
    public String m11988d() {
        if (this.f10224c == null) {
            return null;
        }
        return new String(this.f10224c);
    }

    /* renamed from: e */
    public JSONObject m11989e() {
        return new JSONObject(m11988d());
    }

    /* renamed from: f */
    public long m11990f() {
        if (this.f10224c != null) {
            return this.f10224c.length;
        }
        if (this.f10228g != null) {
            return this.f10228g.length();
        }
        return -1L;
    }

    /* renamed from: g */
    public File m11991g() {
        return this.f10228g;
    }

    /* renamed from: h */
    public C2668f m11992h() {
        return this.f10222a;
    }

    /* renamed from: i */
    public Map<String, List<String>> m11993i() {
        return this.f10225d;
    }

    /* renamed from: j */
    public long m11994j() {
        return this.f10227f;
    }

    /* renamed from: k */
    public boolean m11995k() {
        return this.f10222a != null && this.f10222a.m12031e();
    }

    /* renamed from: l */
    public int m11996l() {
        return this.f10223b;
    }

    /* renamed from: m */
    public Throwable m11997m() {
        return this.f10226e;
    }
}
