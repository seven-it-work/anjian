package net.grandcentrix.tray.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import net.grandcentrix.tray.core.TrayStorage;

/* loaded from: classes2.dex */
public abstract class AbstractTrayPreference<T extends TrayStorage> extends Preferences<TrayItem, T> {
    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractTrayPreference(@NonNull T t, int i) {
        super(t, i);
    }

    private void throwForNullValue(@Nullable String str, Class<?> cls, @NonNull String str2) throws WrongTypeException {
        if (str == null) {
            throw new WrongTypeException("The value for key <" + str2 + "> is null. You obviously saved this value as String and try to access it with type " + cls.getSimpleName() + " which cannot be null.  Always use getString(key, defaultValue) when accessing data you saved with put(String).");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public void annex(T t) {
        ((TrayStorage) getStorage()).annex(t);
        TrayLog.m12288v("annexed " + t + " to " + this);
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public boolean getBoolean(@NonNull String str) throws ItemNotFoundException {
        return Boolean.parseBoolean(getString(str));
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public boolean getBoolean(@NonNull String str, boolean z) {
        try {
            return getBoolean(str);
        } catch (ItemNotFoundException unused) {
            return z;
        }
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public float getFloat(@NonNull String str) throws ItemNotFoundException {
        String string = getString(str);
        throwForNullValue(string, Float.class, str);
        try {
            return Float.parseFloat(string);
        } catch (NumberFormatException e) {
            throw new WrongTypeException(e);
        }
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public float getFloat(@NonNull String str, float f) {
        try {
            return getFloat(str);
        } catch (ItemNotFoundException unused) {
            return f;
        }
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public int getInt(@NonNull String str) throws ItemNotFoundException {
        String string = getString(str);
        throwForNullValue(string, Integer.class, str);
        try {
            return Integer.parseInt(string);
        } catch (NumberFormatException e) {
            throw new WrongTypeException(e);
        }
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public int getInt(@NonNull String str, int i) {
        try {
            return getInt(str);
        } catch (ItemNotFoundException unused) {
            return i;
        }
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public long getLong(@NonNull String str) throws ItemNotFoundException {
        String string = getString(str);
        throwForNullValue(string, Long.class, str);
        try {
            return Long.parseLong(string);
        } catch (NumberFormatException e) {
            throw new WrongTypeException(e);
        }
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public long getLong(@NonNull String str, long j) {
        try {
            return getLong(str);
        } catch (ItemNotFoundException unused) {
            return j;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String getName() {
        return ((TrayStorage) getStorage()).getModuleName();
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public String getString(@NonNull String str) throws ItemNotFoundException {
        TrayItem pref = getPref(str);
        if (pref == null) {
            throw new ItemNotFoundException("Value for Key <%s> not found", str);
        }
        return pref.value();
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    @Nullable
    public String getString(@NonNull String str, String str2) {
        try {
            return getString(str);
        } catch (ItemNotFoundException unused) {
            return str2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void registerOnTrayPreferenceChangeListener(@NonNull OnTrayPreferenceChangeListener onTrayPreferenceChangeListener) {
        ((TrayStorage) getStorage()).registerOnTrayPreferenceChangeListener(onTrayPreferenceChangeListener);
    }

    public String toString() {
        return getClass().getSimpleName() + "(@" + Integer.toHexString(hashCode()) + "){name=" + getName() + "}";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void unregisterOnTrayPreferenceChangeListener(@NonNull OnTrayPreferenceChangeListener onTrayPreferenceChangeListener) {
        ((TrayStorage) getStorage()).unregisterOnTrayPreferenceChangeListener(onTrayPreferenceChangeListener);
    }
}
