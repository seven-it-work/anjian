package android.support.transition;

import android.graphics.Matrix;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(21)
/* loaded from: classes.dex */
class ViewUtilsApi21 extends ViewUtilsApi19 {
    private static final String TAG = "ViewUtilsApi21";
    private static Method sSetAnimationMatrixMethod;
    private static boolean sSetAnimationMatrixMethodFetched;
    private static Method sTransformMatrixToGlobalMethod;
    private static boolean sTransformMatrixToGlobalMethodFetched;
    private static Method sTransformMatrixToLocalMethod;
    private static boolean sTransformMatrixToLocalMethodFetched;

    private void fetchSetAnimationMatrix() {
        if (sSetAnimationMatrixMethodFetched) {
            return;
        }
        try {
            Method declaredMethod = View.class.getDeclaredMethod("setAnimationMatrix", Matrix.class);
            sSetAnimationMatrixMethod = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
            Log.i(TAG, "Failed to retrieve setAnimationMatrix method", e);
        }
        sSetAnimationMatrixMethodFetched = true;
    }

    private void fetchTransformMatrixToGlobalMethod() {
        if (sTransformMatrixToGlobalMethodFetched) {
            return;
        }
        try {
            Method declaredMethod = View.class.getDeclaredMethod("transformMatrixToGlobal", Matrix.class);
            sTransformMatrixToGlobalMethod = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
            Log.i(TAG, "Failed to retrieve transformMatrixToGlobal method", e);
        }
        sTransformMatrixToGlobalMethodFetched = true;
    }

    private void fetchTransformMatrixToLocalMethod() {
        if (sTransformMatrixToLocalMethodFetched) {
            return;
        }
        try {
            Method declaredMethod = View.class.getDeclaredMethod("transformMatrixToLocal", Matrix.class);
            sTransformMatrixToLocalMethod = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
            Log.i(TAG, "Failed to retrieve transformMatrixToLocal method", e);
        }
        sTransformMatrixToLocalMethodFetched = true;
    }

    @Override // android.support.transition.ViewUtilsApi14, android.support.transition.ViewUtilsImpl
    public void setAnimationMatrix(@NonNull View view, Matrix matrix) {
        fetchSetAnimationMatrix();
        if (sSetAnimationMatrixMethod != null) {
            try {
                sSetAnimationMatrixMethod.invoke(view, matrix);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e.getCause());
            } catch (InvocationTargetException unused) {
            }
        }
    }

    @Override // android.support.transition.ViewUtilsApi14, android.support.transition.ViewUtilsImpl
    public void transformMatrixToGlobal(@NonNull View view, @NonNull Matrix matrix) {
        fetchTransformMatrixToGlobalMethod();
        if (sTransformMatrixToGlobalMethod != null) {
            try {
                sTransformMatrixToGlobalMethod.invoke(view, matrix);
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e.getCause());
            }
        }
    }

    @Override // android.support.transition.ViewUtilsApi14, android.support.transition.ViewUtilsImpl
    public void transformMatrixToLocal(@NonNull View view, @NonNull Matrix matrix) {
        fetchTransformMatrixToLocalMethod();
        if (sTransformMatrixToLocalMethod != null) {
            try {
                sTransformMatrixToLocalMethod.invoke(view, matrix);
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e.getCause());
            }
        }
    }
}
