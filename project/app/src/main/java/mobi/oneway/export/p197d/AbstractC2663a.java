package mobi.oneway.export.p197d;

import mobi.oneway.export.p197d.C2668f;
import org.json.JSONObject;

/* renamed from: mobi.oneway.export.d.a */
/* loaded from: classes2.dex */
public abstract class AbstractC2663a<Data> implements C2668f.b {
    /* renamed from: a */
    public abstract void m11973a(int i, String str);

    /* renamed from: a */
    public abstract void m11974a(Data data);

    @Override // mobi.oneway.export.p197d.C2668f.b
    /* renamed from: a */
    public void mo11975a(Throwable th, C2664b c2664b) {
        m11973a(-1, "请求失败，请稍后再试");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // mobi.oneway.export.p197d.C2668f.b
    /* renamed from: a */
    public void mo11976a(C2664b c2664b) {
        try {
            JSONObject m11989e = c2664b.m11989e();
            int optInt = m11989e.optInt("code", -1);
            String optString = m11989e.optString("message", "请求失败");
            Object obj = m11989e.get("data");
            if (optInt == 0) {
                m11974a((AbstractC2663a<Data>) obj);
            } else {
                m11973a(optInt, optString);
            }
        } catch (Throwable unused) {
            m11973a(-1, "请求失败，请稍后再试");
        }
    }
}
