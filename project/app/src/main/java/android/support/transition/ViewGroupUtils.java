package android.support.transition;

import android.os.Build;
import android.support.annotation.NonNull;
import android.view.ViewGroup;

/* loaded from: classes.dex */
class ViewGroupUtils {
    private static final ViewGroupUtilsImpl IMPL;

    static {
        IMPL = Build.VERSION.SDK_INT >= 18 ? new ViewGroupUtilsApi18() : new ViewGroupUtilsApi14();
    }

    ViewGroupUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewGroupOverlayImpl getOverlay(@NonNull ViewGroup viewGroup) {
        return IMPL.getOverlay(viewGroup);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void suppressLayout(@NonNull ViewGroup viewGroup, boolean z) {
        IMPL.suppressLayout(viewGroup, z);
    }
}
