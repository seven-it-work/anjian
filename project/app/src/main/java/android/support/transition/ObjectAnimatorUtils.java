package android.support.transition;

import android.animation.ObjectAnimator;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;

/* loaded from: classes.dex */
class ObjectAnimatorUtils {
    private static final ObjectAnimatorUtilsImpl IMPL;

    static {
        IMPL = Build.VERSION.SDK_INT >= 21 ? new ObjectAnimatorUtilsApi21() : new ObjectAnimatorUtilsApi14();
    }

    ObjectAnimatorUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> ObjectAnimator ofPointF(T t, Property<T, PointF> property, Path path) {
        return IMPL.ofPointF(t, property, path);
    }
}
