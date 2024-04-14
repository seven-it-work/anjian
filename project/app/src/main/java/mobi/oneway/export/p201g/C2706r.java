package mobi.oneway.export.p201g;

import android.content.SharedPreferences;
import java.util.Map;
import mobi.oneway.export.p192a.C2642b;

/* renamed from: mobi.oneway.export.g.r */
/* loaded from: classes2.dex */
public class C2706r {

    /* renamed from: a */
    private static final String f10372a = "OneWay_sp";

    /* renamed from: b */
    private String f10373b;

    public C2706r(String str) {
        this.f10373b = str;
    }

    /* renamed from: a */
    public static C2706r m12254a() {
        return m12255a(f10372a);
    }

    /* renamed from: a */
    public static C2706r m12255a(String str) {
        return new C2706r(str);
    }

    /* renamed from: d */
    private SharedPreferences m12256d() {
        return C2642b.m11898a().getSharedPreferences(this.f10373b, 0);
    }

    /* renamed from: a */
    public C2706r m12257a(String str, Object obj) {
        SharedPreferences.Editor edit = m12256d().edit();
        if (obj instanceof Boolean) {
            edit.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Float) {
            edit.putFloat(str, ((Float) obj).floatValue());
        } else if (obj instanceof Integer) {
            edit.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Long) {
            edit.putLong(str, ((Long) obj).longValue());
        } else {
            edit.putString(str, String.valueOf(obj));
        }
        edit.apply();
        return this;
    }

    /* renamed from: b */
    public Object m12258b(String str, Object obj) {
        SharedPreferences m12256d = m12256d();
        if (obj instanceof Boolean) {
            return Boolean.valueOf(m12256d.getBoolean(str, ((Boolean) obj).booleanValue()));
        }
        if (obj instanceof Float) {
            return Float.valueOf(m12256d.getFloat(str, ((Float) obj).floatValue()));
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(m12256d.getInt(str, ((Integer) obj).intValue()));
        }
        if (obj instanceof Long) {
            return Long.valueOf(m12256d.getLong(str, ((Long) obj).longValue()));
        }
        if (obj instanceof String) {
            return m12256d.getString(str, (String) obj);
        }
        return null;
    }

    /* renamed from: b */
    public Map<String, ?> m12259b() {
        return m12256d().getAll();
    }

    /* renamed from: b */
    public C2706r m12260b(String str) {
        m12256d().edit().remove(str).apply();
        return this;
    }

    /* renamed from: c */
    public C2706r m12261c() {
        m12256d().edit().clear().apply();
        return this;
    }
}
