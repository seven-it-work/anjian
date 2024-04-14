package android.support.transition;

import android.animation.PropertyValuesHolder;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;

/* loaded from: classes.dex */
class PropertyValuesHolderUtils {
    private static final PropertyValuesHolderUtilsImpl IMPL;

    static {
        IMPL = Build.VERSION.SDK_INT >= 21 ? new PropertyValuesHolderUtilsApi21() : new PropertyValuesHolderUtilsApi14();
    }

    PropertyValuesHolderUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PropertyValuesHolder ofPointF(Property<?, PointF> property, Path path) {
        return IMPL.ofPointF(property, path);
    }
}
