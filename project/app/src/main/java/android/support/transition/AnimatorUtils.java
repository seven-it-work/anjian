package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Build;
import android.support.annotation.NonNull;

/* loaded from: classes.dex */
class AnimatorUtils {
    private static final AnimatorUtilsImpl IMPL;

    static {
        IMPL = Build.VERSION.SDK_INT >= 19 ? new AnimatorUtilsApi19() : new AnimatorUtilsApi14();
    }

    AnimatorUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void addPauseListener(@NonNull Animator animator, @NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        IMPL.addPauseListener(animator, animatorListenerAdapter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void pause(@NonNull Animator animator) {
        IMPL.pause(animator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void resume(@NonNull Animator animator) {
        IMPL.resume(animator);
    }
}
