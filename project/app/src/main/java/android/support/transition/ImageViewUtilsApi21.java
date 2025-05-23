package android.support.transition;

import android.animation.Animator;
import android.graphics.Matrix;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.widget.ImageView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(21)
/* loaded from: classes.dex */
class ImageViewUtilsApi21 implements ImageViewUtilsImpl {
    private static final String TAG = "ImageViewUtilsApi21";
    private static Method sAnimateTransformMethod;
    private static boolean sAnimateTransformMethodFetched;

    private void fetchAnimateTransformMethod() {
        if (sAnimateTransformMethodFetched) {
            return;
        }
        try {
            Method declaredMethod = ImageView.class.getDeclaredMethod("animateTransform", Matrix.class);
            sAnimateTransformMethod = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
            Log.i(TAG, "Failed to retrieve animateTransform method", e);
        }
        sAnimateTransformMethodFetched = true;
    }

    @Override // android.support.transition.ImageViewUtilsImpl
    public void animateTransform(ImageView imageView, Matrix matrix) {
        fetchAnimateTransformMethod();
        if (sAnimateTransformMethod != null) {
            try {
                sAnimateTransformMethod.invoke(imageView, matrix);
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e.getCause());
            }
        }
    }

    @Override // android.support.transition.ImageViewUtilsImpl
    public void reserveEndAnimateTransform(ImageView imageView, Animator animator) {
    }

    @Override // android.support.transition.ImageViewUtilsImpl
    public void startAnimateTransform(ImageView imageView) {
    }
}
