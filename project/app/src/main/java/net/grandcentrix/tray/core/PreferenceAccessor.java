package net.grandcentrix.tray.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Collection;

/* loaded from: classes2.dex */
public interface PreferenceAccessor<T> {
    boolean clear();

    boolean contains(String str);

    Collection<T> getAll();

    boolean getBoolean(@NonNull String str) throws ItemNotFoundException;

    boolean getBoolean(@NonNull String str, boolean z);

    float getFloat(@NonNull String str) throws ItemNotFoundException, WrongTypeException;

    float getFloat(@NonNull String str, float f) throws WrongTypeException;

    int getInt(@NonNull String str) throws ItemNotFoundException, WrongTypeException;

    int getInt(@NonNull String str, int i) throws WrongTypeException;

    long getLong(@NonNull String str) throws ItemNotFoundException, WrongTypeException;

    long getLong(@NonNull String str, long j) throws WrongTypeException;

    @Nullable
    T getPref(@NonNull String str);

    @Nullable
    String getString(@NonNull String str) throws ItemNotFoundException;

    @Nullable
    String getString(@NonNull String str, @Nullable String str2);

    boolean put(@NonNull String str, float f);

    boolean put(@NonNull String str, int i);

    boolean put(@NonNull String str, long j);

    boolean put(@NonNull String str, @Nullable String str2);

    boolean put(@NonNull String str, boolean z);

    boolean remove(@NonNull String str);

    boolean wipe();
}
