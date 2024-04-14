package android.support.transition;

import android.animation.LayoutTransition;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(14)
/* loaded from: classes.dex */
class ViewGroupUtilsApi14 implements ViewGroupUtilsImpl {
    private static final int LAYOUT_TRANSITION_CHANGING = 4;
    private static final String TAG = "ViewGroupUtilsApi14";
    private static Method sCancelMethod;
    private static boolean sCancelMethodFetched;
    private static LayoutTransition sEmptyLayoutTransition;
    private static Field sLayoutSuppressedField;
    private static boolean sLayoutSuppressedFieldFetched;

    private static void cancelLayoutTransition(LayoutTransition layoutTransition) {
        if (!sCancelMethodFetched) {
            try {
                Method declaredMethod = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                sCancelMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
                Log.i(TAG, "Failed to access cancel method by reflection");
            }
            sCancelMethodFetched = true;
        }
        if (sCancelMethod != null) {
            try {
                sCancelMethod.invoke(layoutTransition, new Object[0]);
            } catch (IllegalAccessException unused2) {
                Log.i(TAG, "Failed to access cancel method by reflection");
            } catch (InvocationTargetException unused3) {
                Log.i(TAG, "Failed to invoke cancel method by reflection");
            }
        }
    }

    @Override // android.support.transition.ViewGroupUtilsImpl
    public ViewGroupOverlayImpl getOverlay(@NonNull ViewGroup viewGroup) {
        return ViewGroupOverlayApi14.createFrom(viewGroup);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    @Override // android.support.transition.ViewGroupUtilsImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void suppressLayout(@android.support.annotation.NonNull android.view.ViewGroup r6, boolean r7) {
        /*
            r5 = this;
            android.animation.LayoutTransition r0 = android.support.transition.ViewGroupUtilsApi14.sEmptyLayoutTransition
            r1 = 1
            r2 = 0
            r3 = 0
            if (r0 != 0) goto L28
            android.support.transition.ViewGroupUtilsApi14$1 r0 = new android.support.transition.ViewGroupUtilsApi14$1
            r0.<init>()
            android.support.transition.ViewGroupUtilsApi14.sEmptyLayoutTransition = r0
            r4 = 2
            r0.setAnimator(r4, r3)
            android.animation.LayoutTransition r0 = android.support.transition.ViewGroupUtilsApi14.sEmptyLayoutTransition
            r0.setAnimator(r2, r3)
            android.animation.LayoutTransition r0 = android.support.transition.ViewGroupUtilsApi14.sEmptyLayoutTransition
            r0.setAnimator(r1, r3)
            android.animation.LayoutTransition r0 = android.support.transition.ViewGroupUtilsApi14.sEmptyLayoutTransition
            r4 = 3
            r0.setAnimator(r4, r3)
            android.animation.LayoutTransition r0 = android.support.transition.ViewGroupUtilsApi14.sEmptyLayoutTransition
            r4 = 4
            r0.setAnimator(r4, r3)
        L28:
            if (r7 == 0) goto L48
            android.animation.LayoutTransition r7 = r6.getLayoutTransition()
            if (r7 == 0) goto L42
            boolean r0 = r7.isRunning()
            if (r0 == 0) goto L39
            cancelLayoutTransition(r7)
        L39:
            android.animation.LayoutTransition r0 = android.support.transition.ViewGroupUtilsApi14.sEmptyLayoutTransition
            if (r7 == r0) goto L42
            int r0 = android.support.transition.C0128R.id.transition_layout_save
            r6.setTag(r0, r7)
        L42:
            android.animation.LayoutTransition r7 = android.support.transition.ViewGroupUtilsApi14.sEmptyLayoutTransition
            r6.setLayoutTransition(r7)
            return
        L48:
            r6.setLayoutTransition(r3)
            boolean r7 = android.support.transition.ViewGroupUtilsApi14.sLayoutSuppressedFieldFetched
            if (r7 != 0) goto L66
            java.lang.Class<android.view.ViewGroup> r7 = android.view.ViewGroup.class
            java.lang.String r0 = "mLayoutSuppressed"
            java.lang.reflect.Field r7 = r7.getDeclaredField(r0)     // Catch: java.lang.NoSuchFieldException -> L5d
            android.support.transition.ViewGroupUtilsApi14.sLayoutSuppressedField = r7     // Catch: java.lang.NoSuchFieldException -> L5d
            r7.setAccessible(r1)     // Catch: java.lang.NoSuchFieldException -> L5d
            goto L64
        L5d:
            java.lang.String r7 = "ViewGroupUtilsApi14"
            java.lang.String r0 = "Failed to access mLayoutSuppressed field by reflection"
            android.util.Log.i(r7, r0)
        L64:
            android.support.transition.ViewGroupUtilsApi14.sLayoutSuppressedFieldFetched = r1
        L66:
            java.lang.reflect.Field r7 = android.support.transition.ViewGroupUtilsApi14.sLayoutSuppressedField
            if (r7 == 0) goto L83
            java.lang.reflect.Field r7 = android.support.transition.ViewGroupUtilsApi14.sLayoutSuppressedField     // Catch: java.lang.IllegalAccessException -> L7c
            boolean r7 = r7.getBoolean(r6)     // Catch: java.lang.IllegalAccessException -> L7c
            if (r7 == 0) goto L7a
            java.lang.reflect.Field r0 = android.support.transition.ViewGroupUtilsApi14.sLayoutSuppressedField     // Catch: java.lang.IllegalAccessException -> L78
            r0.setBoolean(r6, r2)     // Catch: java.lang.IllegalAccessException -> L78
            goto L7a
        L78:
            r2 = r7
            goto L7c
        L7a:
            r2 = r7
            goto L83
        L7c:
            java.lang.String r7 = "ViewGroupUtilsApi14"
            java.lang.String r0 = "Failed to get mLayoutSuppressed field by reflection"
            android.util.Log.i(r7, r0)
        L83:
            if (r2 == 0) goto L88
            r6.requestLayout()
        L88:
            int r7 = android.support.transition.C0128R.id.transition_layout_save
            java.lang.Object r7 = r6.getTag(r7)
            android.animation.LayoutTransition r7 = (android.animation.LayoutTransition) r7
            if (r7 == 0) goto L9a
            int r0 = android.support.transition.C0128R.id.transition_layout_save
            r6.setTag(r0, r3)
            r6.setLayoutTransition(r7)
        L9a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.ViewGroupUtilsApi14.suppressLayout(android.view.ViewGroup, boolean):void");
    }
}
