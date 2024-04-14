package android.support.v4.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.cyjh.common.util.C1176s;

/* loaded from: classes.dex */
public class Pair<F, S> {

    @Nullable
    public final F first;

    @Nullable
    public final S second;

    public Pair(@Nullable F f, @Nullable S s) {
        this.first = f;
        this.second = s;
    }

    @NonNull
    public static <A, B> Pair<A, B> create(@Nullable A a2, @Nullable B b2) {
        return new Pair<>(a2, b2);
    }

    private static boolean objectsEqual(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return objectsEqual(pair.first, this.first) && objectsEqual(pair.second, this.second);
    }

    public int hashCode() {
        return (this.first == null ? 0 : this.first.hashCode()) ^ (this.second != null ? this.second.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + String.valueOf(this.first) + C1176s.a.f4108a + String.valueOf(this.second) + "}";
    }
}
