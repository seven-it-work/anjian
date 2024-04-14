package com.cyjh.common.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.Nullable;
import java.util.Map;
import java.util.Set;
import net.grandcentrix.tray.AppPreferences;

/* renamed from: com.cyjh.common.util.ah */
/* loaded from: classes.dex */
public final class SharedPreferencesC1155ah implements SharedPreferences {

    /* renamed from: a */
    protected final AppPreferences f4064a;

    /* renamed from: b */
    protected final a f4065b = new a(this, 0);

    /* renamed from: com.cyjh.common.util.ah$a */
    /* loaded from: classes.dex */
    private class a implements SharedPreferences.Editor {
        private a() {
        }

        /* synthetic */ a(SharedPreferencesC1155ah sharedPreferencesC1155ah, byte b2) {
            this();
        }

        @Override // android.content.SharedPreferences.Editor
        public final void apply() {
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor clear() {
            SharedPreferencesC1155ah.this.f4064a.clear();
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final boolean commit() {
            return true;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putBoolean(String str, boolean z) {
            SharedPreferencesC1155ah.this.f4064a.put(str, z);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putFloat(String str, float f) {
            SharedPreferencesC1155ah.this.f4064a.put(str, f);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putInt(String str, int i) {
            SharedPreferencesC1155ah.this.f4064a.put(str, i);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putLong(String str, long j) {
            SharedPreferencesC1155ah.this.f4064a.put(str, j);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putString(String str, @Nullable String str2) {
            SharedPreferencesC1155ah.this.f4064a.put(str, str2);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putStringSet(String str, @Nullable Set<String> set) {
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor remove(String str) {
            SharedPreferencesC1155ah.this.f4064a.remove(str);
            return this;
        }
    }

    public SharedPreferencesC1155ah(Context context) {
        this.f4064a = new AppPreferences(context);
    }

    /* renamed from: a */
    private AppPreferences m4345a() {
        return this.f4064a;
    }

    @Override // android.content.SharedPreferences
    public final boolean contains(String str) {
        return this.f4064a.contains(str);
    }

    @Override // android.content.SharedPreferences
    public final SharedPreferences.Editor edit() {
        return this.f4065b;
    }

    @Override // android.content.SharedPreferences
    public final Map<String, ?> getAll() {
        return null;
    }

    @Override // android.content.SharedPreferences
    public final boolean getBoolean(String str, boolean z) {
        return this.f4064a.getBoolean(str, z);
    }

    @Override // android.content.SharedPreferences
    public final float getFloat(String str, float f) {
        return this.f4064a.getFloat(str, f);
    }

    @Override // android.content.SharedPreferences
    public final int getInt(String str, int i) {
        return this.f4064a.getInt(str, i);
    }

    @Override // android.content.SharedPreferences
    public final long getLong(String str, long j) {
        return this.f4064a.getLong(str, j);
    }

    @Override // android.content.SharedPreferences
    @Nullable
    public final String getString(String str, @Nullable String str2) {
        return this.f4064a.getString(str, str2);
    }

    @Override // android.content.SharedPreferences
    @Nullable
    public final Set<String> getStringSet(String str, @Nullable Set<String> set) {
        return null;
    }

    @Override // android.content.SharedPreferences
    public final void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
    }

    @Override // android.content.SharedPreferences
    public final void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
    }
}
