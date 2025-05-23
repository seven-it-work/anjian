package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.appcompat.C0328R;

/* loaded from: classes.dex */
class ThemeUtils {
    private static final int[] APPCOMPAT_CHECK_ATTRS = {C0328R.attr.colorPrimary};

    ThemeUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkAppCompatTheme(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(APPCOMPAT_CHECK_ATTRS);
        boolean z = !obtainStyledAttributes.hasValue(0);
        obtainStyledAttributes.recycle();
        if (z) {
            throw new IllegalArgumentException("You need to use a Theme.AppCompat theme (or descendant) with the design library.");
        }
    }
}
