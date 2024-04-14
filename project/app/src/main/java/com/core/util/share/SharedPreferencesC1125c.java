package com.core.util.share;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Process;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.core.util.share.c */
/* loaded from: classes.dex */
public class SharedPreferencesC1125c implements SharedPreferences {

    /* renamed from: a */
    private static Map<String, SharedPreferencesC1125c> f3849a;

    /* renamed from: b */
    private static AtomicInteger f3850b = new AtomicInteger(0);

    /* renamed from: c */
    private Context f3851c;

    /* renamed from: d */
    private String f3852d;

    /* renamed from: com.core.util.share.c$a */
    /* loaded from: classes.dex */
    public class a implements SharedPreferences.Editor {

        /* renamed from: b */
        private ArrayList<C1123a> f3854b = new ArrayList<>();

        public a() {
        }

        /* renamed from: a */
        private SharedPreferences.Editor m4179a(C1123a c1123a) {
            synchronized (this) {
                this.f3854b.add(c1123a);
            }
            return this;
        }

        /* renamed from: a */
        private ArrayList<Bundle> m4180a() {
            ArrayList<Bundle> arrayList;
            synchronized (this) {
                arrayList = new ArrayList<>(this.f3854b.size());
                Iterator<C1123a> it = this.f3854b.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().f3841q);
                }
            }
            return arrayList;
        }

        @Override // android.content.SharedPreferences.Editor
        public final void apply() {
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList(C1124b.f3848g, m4180a());
            bundle.putInt("key_op_type", 6);
            try {
                SharedPreferencesC1125c.this.f3851c.getContentResolver().call(C1124b.f3844c, C1124b.f3846e, SharedPreferencesC1125c.this.f3852d, bundle);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor clear() {
            return m4179a(new C1123a().m4164a(3));
        }

        @Override // android.content.SharedPreferences.Editor
        public final boolean commit() {
            Bundle bundle;
            Bundle bundle2 = new Bundle();
            bundle2.putParcelableArrayList(C1124b.f3848g, m4180a());
            bundle2.putInt("key_op_type", 5);
            try {
                bundle = SharedPreferencesC1125c.this.f3851c.getContentResolver().call(C1124b.f3844c, C1124b.f3846e, SharedPreferencesC1125c.this.f3852d, bundle2);
            } catch (Exception e) {
                e.printStackTrace();
                bundle = null;
            }
            if (bundle == null) {
                return false;
            }
            return bundle.getBoolean(C1124b.f3848g, false);
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putBoolean(String str, boolean z) {
            return m4179a(C1123a.m4157d(str).m4168a(z));
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putFloat(String str, float f) {
            return m4179a(C1123a.m4157d(str).m4163a(f));
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putInt(String str, int i) {
            return m4179a(C1123a.m4157d(str).m4169b(i));
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putLong(String str, long j) {
            return m4179a(C1123a.m4157d(str).m4165a(j));
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putString(String str, @Nullable String str2) {
            return m4179a(C1123a.m4157d(str).m4170b(str2));
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putStringSet(String str, @Nullable Set<String> set) {
            return m4179a(C1123a.m4157d(str).m4167a(set));
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor remove(String str) {
            return m4179a(new C1123a().m4166a(str).m4164a(4));
        }
    }

    private SharedPreferencesC1125c(Context context, String str) {
        this.f3851c = context.getApplicationContext();
        this.f3852d = str;
    }

    /* renamed from: a */
    public static SharedPreferences m4173a(@NonNull Context context, String str) {
        while (f3850b.get() == 0) {
            Bundle call = context.getContentResolver().call(C1124b.f3844c, C1124b.f3847f, "", (Bundle) null);
            int i = call != null ? call.getInt(C1124b.f3848g) : 0;
            if (i == 0) {
                return context.getSharedPreferences(str, 0);
            }
            f3850b.set(Process.myPid() == i ? 1 : -1);
        }
        return f3850b.get() > 0 ? context.getSharedPreferences(str, 0) : m4177b(context, str);
    }

    /* renamed from: a */
    private C1123a m4174a(@NonNull C1123a c1123a) {
        try {
            return new C1123a(this.f3851c.getContentResolver().call(C1124b.f3844c, C1124b.f3845d, this.f3852d, c1123a.f3841q));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    private static SharedPreferences m4177b(@NonNull Context context, String str) {
        SharedPreferencesC1125c sharedPreferencesC1125c;
        synchronized (SharedPreferencesC1125c.class) {
            if (f3849a == null) {
                f3849a = new ArrayMap();
            }
            sharedPreferencesC1125c = f3849a.get(str);
            if (sharedPreferencesC1125c == null) {
                sharedPreferencesC1125c = new SharedPreferencesC1125c(context.getApplicationContext(), str);
                f3849a.put(str, sharedPreferencesC1125c);
            }
        }
        return sharedPreferencesC1125c;
    }

    /* renamed from: c */
    private static SharedPreferences m4178c(@NonNull Context context, String str) {
        return context.getSharedPreferences(str, 0);
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("key_key", str);
        try {
            return this.f3851c.getContentResolver().call(C1124b.f3844c, C1124b.f3842a, this.f3852d, bundle).getBoolean(C1124b.f3848g);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return new a();
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        throw new UnsupportedOperationException("Not support method getAll");
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z) {
        C1123a m4174a = m4174a(C1123a.m4154c(str).m4168a(z));
        return m4174a == null ? z : m4174a.f3841q.getBoolean("key_value", z);
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f) {
        C1123a m4174a = m4174a(C1123a.m4154c(str).m4163a(f));
        return m4174a == null ? f : m4174a.f3841q.getFloat("key_value");
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i) {
        C1123a m4174a = m4174a(C1123a.m4154c(str).m4169b(i));
        return m4174a == null ? i : m4174a.f3841q.getInt("key_value", i);
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j) {
        C1123a m4174a = m4174a(C1123a.m4154c(str).m4165a(j));
        return m4174a == null ? j : m4174a.f3841q.getLong("key_value", j);
    }

    @Override // android.content.SharedPreferences
    @Nullable
    public String getString(String str, @Nullable String str2) {
        C1123a m4174a = m4174a(C1123a.m4154c(str).m4170b(str2));
        return m4174a == null ? str2 : m4174a.f3841q.getString("key_value", str2);
    }

    @Override // android.content.SharedPreferences
    @Nullable
    public Set<String> getStringSet(String str, @Nullable Set<String> set) {
        C1123a m4174a = m4174a(C1123a.m4154c(str).m4167a(set));
        if (m4174a == null) {
            return set;
        }
        ArrayList<String> stringArrayList = m4174a.f3841q.getStringArrayList("key_value");
        HashSet hashSet = stringArrayList == null ? null : new HashSet(stringArrayList);
        return hashSet == null ? set : hashSet;
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException();
    }
}
