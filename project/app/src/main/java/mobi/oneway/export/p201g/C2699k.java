package mobi.oneway.export.p201g;

import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: mobi.oneway.export.g.k */
/* loaded from: classes2.dex */
public class C2699k {
    /* renamed from: a */
    public static void m12230a(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null || jSONObject2 == null) {
            return;
        }
        try {
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                jSONObject.put(next, jSONObject2.get(next));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
