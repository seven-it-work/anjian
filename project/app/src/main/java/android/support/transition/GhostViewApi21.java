package android.support.transition;

import android.graphics.Matrix;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.transition.GhostViewImpl;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(21)
/* loaded from: classes.dex */
class GhostViewApi21 implements GhostViewImpl {
    private static final String TAG = "GhostViewApi21";
    private static Method sAddGhostMethod;
    private static boolean sAddGhostMethodFetched;
    private static Class<?> sGhostViewClass;
    private static boolean sGhostViewClassFetched;
    private static Method sRemoveGhostMethod;
    private static boolean sRemoveGhostMethodFetched;
    private final View mGhostView;

    /* loaded from: classes.dex */
    static class Creator implements GhostViewImpl.Creator {
        @Override // android.support.transition.GhostViewImpl.Creator
        public GhostViewImpl addGhost(View view, ViewGroup viewGroup, Matrix matrix) {
            GhostViewApi21.fetchAddGhostMethod();
            if (GhostViewApi21.sAddGhostMethod != null) {
                try {
                    return new GhostViewApi21((View) GhostViewApi21.sAddGhostMethod.invoke(null, view, viewGroup, matrix));
                } catch (IllegalAccessException unused) {
                } catch (InvocationTargetException e) {
                    throw new RuntimeException(e.getCause());
                }
            }
            return null;
        }

        @Override // android.support.transition.GhostViewImpl.Creator
        public void removeGhost(View view) {
            GhostViewApi21.fetchRemoveGhostMethod();
            if (GhostViewApi21.sRemoveGhostMethod != null) {
                try {
                    GhostViewApi21.sRemoveGhostMethod.invoke(null, view);
                } catch (IllegalAccessException unused) {
                } catch (InvocationTargetException e) {
                    throw new RuntimeException(e.getCause());
                }
            }
        }
    }

    private GhostViewApi21(@NonNull View view) {
        this.mGhostView = view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void fetchAddGhostMethod() {
        if (sAddGhostMethodFetched) {
            return;
        }
        try {
            fetchGhostViewClass();
            Method declaredMethod = sGhostViewClass.getDeclaredMethod("addGhost", View.class, ViewGroup.class, Matrix.class);
            sAddGhostMethod = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
            Log.i(TAG, "Failed to retrieve addGhost method", e);
        }
        sAddGhostMethodFetched = true;
    }

    private static void fetchGhostViewClass() {
        if (sGhostViewClassFetched) {
            return;
        }
        try {
            sGhostViewClass = Class.forName("android.view.GhostView");
        } catch (ClassNotFoundException e) {
            Log.i(TAG, "Failed to retrieve GhostView class", e);
        }
        sGhostViewClassFetched = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void fetchRemoveGhostMethod() {
        if (sRemoveGhostMethodFetched) {
            return;
        }
        try {
            fetchGhostViewClass();
            Method declaredMethod = sGhostViewClass.getDeclaredMethod("removeGhost", View.class);
            sRemoveGhostMethod = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
            Log.i(TAG, "Failed to retrieve removeGhost method", e);
        }
        sRemoveGhostMethodFetched = true;
    }

    @Override // android.support.transition.GhostViewImpl
    public void reserveEndViewTransition(ViewGroup viewGroup, View view) {
    }

    @Override // android.support.transition.GhostViewImpl
    public void setVisibility(int i) {
        this.mGhostView.setVisibility(i);
    }
}
