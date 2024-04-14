package android.support.transition;

import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(19)
/* loaded from: classes.dex */
class ViewUtilsApi19 extends ViewUtilsApi18 {
    private static final String TAG = "ViewUtilsApi19";
    private static Method sGetTransitionAlphaMethod;
    private static boolean sGetTransitionAlphaMethodFetched;
    private static Method sSetTransitionAlphaMethod;
    private static boolean sSetTransitionAlphaMethodFetched;

    private void fetchGetTransitionAlphaMethod() {
        if (sGetTransitionAlphaMethodFetched) {
            return;
        }
        try {
            Method declaredMethod = View.class.getDeclaredMethod("getTransitionAlpha", new Class[0]);
            sGetTransitionAlphaMethod = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
            Log.i(TAG, "Failed to retrieve getTransitionAlpha method", e);
        }
        sGetTransitionAlphaMethodFetched = true;
    }

    private void fetchSetTransitionAlphaMethod() {
        if (sSetTransitionAlphaMethodFetched) {
            return;
        }
        try {
            Method declaredMethod = View.class.getDeclaredMethod("setTransitionAlpha", Float.TYPE);
            sSetTransitionAlphaMethod = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
            Log.i(TAG, "Failed to retrieve setTransitionAlpha method", e);
        }
        sSetTransitionAlphaMethodFetched = true;
    }

    @Override // android.support.transition.ViewUtilsApi14, android.support.transition.ViewUtilsImpl
    public void clearNonTransitionAlpha(@NonNull View view) {
    }

    @Override // android.support.transition.ViewUtilsApi14, android.support.transition.ViewUtilsImpl
    public float getTransitionAlpha(@NonNull View view) {
        fetchGetTransitionAlphaMethod();
        if (sGetTransitionAlphaMethod != null) {
            try {
                return ((Float) sGetTransitionAlphaMethod.invoke(view, new Object[0])).floatValue();
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e.getCause());
            }
        }
        return super.getTransitionAlpha(view);
    }

    @Override // android.support.transition.ViewUtilsApi14, android.support.transition.ViewUtilsImpl
    public void saveNonTransitionAlpha(@NonNull View view) {
    }

    @Override // android.support.transition.ViewUtilsApi14, android.support.transition.ViewUtilsImpl
    public void setTransitionAlpha(@NonNull View view, float f) {
        fetchSetTransitionAlphaMethod();
        if (sSetTransitionAlphaMethod == null) {
            view.setAlpha(f);
            return;
        }
        try {
            sSetTransitionAlphaMethod.invoke(view, Float.valueOf(f));
        } catch (IllegalAccessException unused) {
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e.getCause());
        }
    }
}
