package com.umeng.analytics.pro;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.pro.C2434i;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.umeng.analytics.pro.m */
/* loaded from: classes.dex */
public class C2438m {

    /* renamed from: a */
    private static final String f9155a = "fs_lc_tl";

    /* renamed from: e */
    private static final String f9156e = "-1";

    /* renamed from: f */
    private static Context f9157f;

    /* renamed from: b */
    private final int f9158b;

    /* renamed from: c */
    private final int f9159c;

    /* renamed from: d */
    private final int f9160d;

    /* renamed from: g */
    private JSONObject f9161g;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.analytics.pro.m$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        private static final C2438m f9162a = new C2438m();

        private a() {
        }
    }

    private C2438m() {
        this.f9158b = 128;
        this.f9159c = 256;
        this.f9160d = 10;
        this.f9161g = null;
        try {
            if (this.f9161g == null) {
                m10590b(f9157f);
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public static C2438m m10584a(Context context) {
        if (f9157f == null && context != null) {
            f9157f = context.getApplicationContext();
        }
        return a.f9162a;
    }

    /* renamed from: a */
    private JSONObject m10585a(Map<String, Object> map) {
        JSONArray jSONArray;
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                try {
                    String key = entry.getKey();
                    if (key != null) {
                        String subStr = HelperUtils.subStr(key, 128);
                        Object value = entry.getValue();
                        if (value != null) {
                            int i = 0;
                            if (value.getClass().isArray()) {
                                if (value instanceof int[]) {
                                    int[] iArr = (int[]) value;
                                    jSONArray = new JSONArray();
                                    while (i < iArr.length) {
                                        jSONArray.put(iArr[i]);
                                        i++;
                                    }
                                } else if (value instanceof double[]) {
                                    double[] dArr = (double[]) value;
                                    jSONArray = new JSONArray();
                                    while (i < dArr.length) {
                                        jSONArray.put(dArr[i]);
                                        i++;
                                    }
                                } else if (value instanceof long[]) {
                                    long[] jArr = (long[]) value;
                                    jSONArray = new JSONArray();
                                    while (i < jArr.length) {
                                        jSONArray.put(jArr[i]);
                                        i++;
                                    }
                                } else if (value instanceof float[]) {
                                    float[] fArr = (float[]) value;
                                    jSONArray = new JSONArray();
                                    while (i < fArr.length) {
                                        jSONArray.put(fArr[i]);
                                        i++;
                                    }
                                } else if (value instanceof short[]) {
                                    short[] sArr = (short[]) value;
                                    jSONArray = new JSONArray();
                                    while (i < sArr.length) {
                                        jSONArray.put((int) sArr[i]);
                                        i++;
                                    }
                                }
                            } else if (value instanceof List) {
                                List list = (List) value;
                                jSONArray = new JSONArray();
                                while (i < list.size()) {
                                    Object obj = list.get(i);
                                    if ((obj instanceof String) || (obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Short)) {
                                        jSONArray.put(list.get(i));
                                    }
                                    i++;
                                }
                                if (jSONArray.length() > 0) {
                                }
                            } else {
                                if (value instanceof String) {
                                    value = HelperUtils.subStr(value.toString(), 256);
                                } else if (!(value instanceof Long) && !(value instanceof Integer) && !(value instanceof Float) && !(value instanceof Double) && !(value instanceof Short)) {
                                    MLog.m11269e("The param has not support type. please check !");
                                }
                                jSONObject.put(subStr, value);
                            }
                            jSONObject.put(subStr, jSONArray);
                        }
                    }
                } catch (Exception e) {
                    MLog.m11273e(e);
                }
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    /* renamed from: a */
    private void m10586a() {
        try {
            String imprintProperty = UMEnvelopeBuild.imprintProperty(f9157f, "track_list", "");
            if (TextUtils.isEmpty(imprintProperty)) {
                return;
            }
            String[] split = imprintProperty.split("!");
            JSONObject jSONObject = new JSONObject();
            int i = 0;
            if (this.f9161g != null) {
                for (String str : split) {
                    String subStr = HelperUtils.subStr(str, 128);
                    if (this.f9161g.has(subStr)) {
                        jSONObject.put(subStr, this.f9161g.get(subStr));
                    }
                }
            }
            this.f9161g = new JSONObject();
            if (split.length >= 10) {
                while (i < 10) {
                    m10587a(split[i], jSONObject);
                    i++;
                }
            } else {
                while (i < split.length) {
                    m10587a(split[i], jSONObject);
                    i++;
                }
            }
            m10593c(f9157f);
        } catch (Exception unused) {
        }
    }

    /* renamed from: a */
    private void m10587a(String str, JSONObject jSONObject) throws JSONException {
        String subStr = HelperUtils.subStr(str, 128);
        m10588a(subStr, jSONObject.has(subStr) ? ((Boolean) jSONObject.get(subStr)).booleanValue() : false);
    }

    /* renamed from: a */
    private void m10588a(String str, boolean z) {
        try {
            if (C2427b.f8953T.equals(str) || C2427b.f8951R.equals(str) || "id".equals(str) || "ts".equals(str) || this.f9161g.has(str)) {
                return;
            }
            this.f9161g.put(str, z);
        } catch (Exception unused) {
        }
    }

    /* renamed from: a */
    private boolean m10589a(String str) {
        if (str != null) {
            try {
                int length = str.trim().getBytes().length;
                if (length > 0 && length <= 128) {
                    return true;
                }
            } catch (Exception unused) {
                return false;
            }
        }
        MLog.m11269e("Event id is empty or too long in tracking Event");
        return false;
    }

    /* renamed from: b */
    private void m10590b(Context context) {
        try {
            String string = PreferenceWrapper.getDefault(context).getString(f9155a, null);
            if (!TextUtils.isEmpty(string)) {
                this.f9161g = new JSONObject(string);
            }
            m10586a();
        } catch (Exception unused) {
        }
    }

    /* renamed from: b */
    private boolean m10591b(String str) {
        if (str == null) {
            return true;
        }
        try {
            if (str.trim().getBytes().length <= 256) {
                return true;
            }
            MLog.m11269e("Event label or value is empty or too long in tracking Event");
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: b */
    private boolean m10592b(Map<String, Object> map) {
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    for (Map.Entry<String, Object> entry : map.entrySet()) {
                        if (!m10589a(entry.getKey())) {
                            MLog.m11269e("map has NULL key. please check!");
                            return false;
                        }
                        if (entry.getValue() == null) {
                            return false;
                        }
                        if ((entry.getValue() instanceof String) && !m10591b(entry.getValue().toString())) {
                            return false;
                        }
                    }
                    return true;
                }
            } catch (Exception unused) {
                return true;
            }
        }
        MLog.m11269e("map is null or empty in onEvent");
        return false;
    }

    /* renamed from: c */
    private void m10593c(Context context) {
        try {
            if (this.f9161g != null) {
                PreferenceWrapper.getDefault(f9157f).edit().putString(f9155a, this.f9161g.toString()).commit();
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public void m10594a(Object obj) {
        try {
            C2434i.d dVar = (C2434i.d) obj;
            String m10567c = dVar.m10567c();
            Map<String, Object> m10565a = dVar.m10565a();
            String m10566b = dVar.m10566b();
            long m10568d = dVar.m10568d();
            if (TextUtils.isEmpty(m10567c)) {
                return;
            }
            String subStr = HelperUtils.subStr(m10567c, 128);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(C2427b.f8961aa, subStr);
            jSONObject.put("_$!ts", m10568d);
            String m10612c = C2440o.m10600a().m10612c();
            if (TextUtils.isEmpty(m10612c)) {
                m10612c = f9156e;
            }
            jSONObject.put("__ii", m10612c);
            if (!TextUtils.isEmpty(m10566b)) {
                try {
                    JSONObject jSONObject2 = new JSONObject(m10566b);
                    if (jSONObject2.length() > 0) {
                        jSONObject.put(C2427b.f8962ab, jSONObject2);
                    }
                } catch (JSONException unused) {
                }
            }
            m10586a();
            if (m10565a != null) {
                JSONObject m10585a = m10585a(m10565a);
                if (m10585a.length() > 0) {
                    Iterator<String> keys = m10585a.keys();
                    while (keys.hasNext()) {
                        try {
                            String next = keys.next();
                            if (Arrays.asList(C2427b.f8977aq).contains(next)) {
                                MLog.m11269e("the key in map about track interface is invalid.  ");
                            } else {
                                jSONObject.put(next, m10585a.get(next));
                            }
                        } catch (Throwable th) {
                            MLog.m11273e(th);
                        }
                    }
                }
            }
            if (this.f9161g != null && this.f9161g.has(subStr) && !((Boolean) this.f9161g.get(subStr)).booleanValue()) {
                jSONObject.put(C2427b.f8953T, 1);
                this.f9161g.put(subStr, true);
                m10593c(f9157f);
            }
            C2434i.m10520a(f9157f).m10547a(jSONObject, 0, false);
        } catch (Throwable unused2) {
        }
    }

    /* renamed from: a */
    public void m10595a(String str, String str2, long j, int i) {
        try {
            if (m10589a(str) && m10591b(str2)) {
                if (Arrays.asList(C2427b.f8976ap).contains(str)) {
                    MLog.m11269e("the id is valid!");
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", str);
                jSONObject.put("ts", System.currentTimeMillis());
                if (j > 0) {
                    jSONObject.put(C2427b.f8951R, j);
                }
                jSONObject.put("__t", C2432g.f9067a);
                if (str2 == null) {
                    str2 = "";
                }
                jSONObject.put(str, str2);
                String m10612c = C2440o.m10600a().m10612c();
                if (TextUtils.isEmpty(m10612c)) {
                    m10612c = f9156e;
                }
                jSONObject.put("__i", m10612c);
                UMWorkDispatch.sendEvent(f9157f, 4097, CoreProtocol.getInstance(f9157f), jSONObject);
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public void m10596a(String str, Map<String, Object> map) {
        try {
            if (m10589a(str)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", str);
                jSONObject.put("ts", System.currentTimeMillis());
                jSONObject.put(C2427b.f8951R, 0);
                jSONObject.put("__t", C2432g.f9068b);
                Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
                for (int i = 0; i < 10 && it.hasNext(); i++) {
                    Map.Entry<String, Object> next = it.next();
                    if (!C2427b.f8953T.equals(next.getKey()) && !C2427b.f8951R.equals(next.getKey()) && !"id".equals(next.getKey()) && !"ts".equals(next.getKey())) {
                        Object value = next.getValue();
                        if ((value instanceof String) || (value instanceof Integer) || (value instanceof Long)) {
                            jSONObject.put(next.getKey(), value);
                        }
                    }
                }
                String m10612c = C2440o.m10600a().m10612c();
                if (TextUtils.isEmpty(m10612c)) {
                    m10612c = f9156e;
                }
                jSONObject.put("__i", m10612c);
                UMWorkDispatch.sendEvent(f9157f, 4098, CoreProtocol.getInstance(f9157f), jSONObject);
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public void m10597a(String str, Map<String, Object> map, long j) {
        try {
            if (m10589a(str) && m10592b(map)) {
                if (Arrays.asList(C2427b.f8976ap).contains(str)) {
                    MLog.m11269e("the id is valid!");
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", str);
                jSONObject.put("ts", System.currentTimeMillis());
                if (j > 0) {
                    jSONObject.put(C2427b.f8951R, j);
                }
                jSONObject.put("__t", C2432g.f9067a);
                Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
                for (int i = 0; i < 10 && it.hasNext(); i++) {
                    Map.Entry<String, Object> next = it.next();
                    if (Arrays.asList(C2427b.f8976ap).contains(next.getKey())) {
                        MLog.m11269e("the key in map is invalid.  ");
                    } else {
                        Object value = next.getValue();
                        if ((value instanceof String) || (value instanceof Integer) || (value instanceof Long)) {
                            jSONObject.put(next.getKey(), value);
                        }
                    }
                }
                String m10612c = C2440o.m10600a().m10612c();
                if (TextUtils.isEmpty(m10612c)) {
                    m10612c = f9156e;
                }
                jSONObject.put("__i", m10612c);
                UMWorkDispatch.sendEvent(f9157f, 4097, CoreProtocol.getInstance(f9157f), jSONObject);
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public void m10598a(List<String> list) {
        if (list != null) {
            try {
                if (list.size() <= 0) {
                    return;
                }
                m10586a();
                if (this.f9161g != null) {
                    if (this.f9161g.length() >= 5) {
                        MLog.m11263d("already setFistLaunchEvent, igone.");
                        return;
                    }
                    for (int i = 0; i < list.size(); i++) {
                        if (this.f9161g.length() >= 5) {
                            MLog.m11263d(" add setFistLaunchEvent over.");
                            return;
                        }
                        m10588a(HelperUtils.subStr(list.get(i), 128), false);
                    }
                    m10593c(f9157f);
                    return;
                }
                this.f9161g = new JSONObject();
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (this.f9161g == null) {
                        this.f9161g = new JSONObject();
                    } else if (this.f9161g.length() >= 5) {
                        break;
                    }
                    String str = list.get(i2);
                    if (!TextUtils.isEmpty(str)) {
                        m10588a(HelperUtils.subStr(str, 128), false);
                    }
                }
                m10593c(f9157f);
            } catch (Exception unused) {
            }
        }
    }
}
