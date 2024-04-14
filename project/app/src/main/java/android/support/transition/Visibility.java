package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.transition.AnimatorUtilsApi14;
import android.support.transition.Transition;
import android.support.v4.content.res.TypedArrayUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public abstract class Visibility extends Transition {
    public static final int MODE_IN = 1;
    public static final int MODE_OUT = 2;
    private static final String PROPNAME_SCREEN_LOCATION = "android:visibility:screenLocation";
    private int mMode;
    static final String PROPNAME_VISIBILITY = "android:visibility:visibility";
    private static final String PROPNAME_PARENT = "android:visibility:parent";
    private static final String[] sTransitionProperties = {PROPNAME_VISIBILITY, PROPNAME_PARENT};

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DisappearListener extends AnimatorListenerAdapter implements AnimatorUtilsApi14.AnimatorPauseListenerCompat, Transition.TransitionListener {
        boolean mCanceled = false;
        private final int mFinalVisibility;
        private boolean mLayoutSuppressed;
        private final ViewGroup mParent;
        private final boolean mSuppressLayout;
        private final View mView;

        DisappearListener(View view, int i, boolean z) {
            this.mView = view;
            this.mFinalVisibility = i;
            this.mParent = (ViewGroup) view.getParent();
            this.mSuppressLayout = z;
            suppressLayout(true);
        }

        private void hideViewWhenNotCanceled() {
            if (!this.mCanceled) {
                ViewUtils.setTransitionVisibility(this.mView, this.mFinalVisibility);
                if (this.mParent != null) {
                    this.mParent.invalidate();
                }
            }
            suppressLayout(false);
        }

        private void suppressLayout(boolean z) {
            if (!this.mSuppressLayout || this.mLayoutSuppressed == z || this.mParent == null) {
                return;
            }
            this.mLayoutSuppressed = z;
            ViewGroupUtils.suppressLayout(this.mParent, z);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.mCanceled = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            hideViewWhenNotCanceled();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, android.support.transition.AnimatorUtilsApi14.AnimatorPauseListenerCompat
        public void onAnimationPause(Animator animator) {
            if (this.mCanceled) {
                return;
            }
            ViewUtils.setTransitionVisibility(this.mView, this.mFinalVisibility);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, android.support.transition.AnimatorUtilsApi14.AnimatorPauseListenerCompat
        public void onAnimationResume(Animator animator) {
            if (this.mCanceled) {
                return;
            }
            ViewUtils.setTransitionVisibility(this.mView, 0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        @Override // android.support.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
        }

        @Override // android.support.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            hideViewWhenNotCanceled();
            transition.removeListener(this);
        }

        @Override // android.support.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            suppressLayout(false);
        }

        @Override // android.support.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            suppressLayout(true);
        }

        @Override // android.support.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface Mode {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class VisibilityInfo {
        ViewGroup mEndParent;
        int mEndVisibility;
        boolean mFadeIn;
        ViewGroup mStartParent;
        int mStartVisibility;
        boolean mVisibilityChange;

        private VisibilityInfo() {
        }
    }

    public Visibility() {
        this.mMode = 3;
    }

    public Visibility(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMode = 3;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.VISIBILITY_TRANSITION);
        int namedInt = TypedArrayUtils.getNamedInt(obtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionVisibilityMode", 0, 0);
        obtainStyledAttributes.recycle();
        if (namedInt != 0) {
            setMode(namedInt);
        }
    }

    private void captureValues(TransitionValues transitionValues) {
        transitionValues.values.put(PROPNAME_VISIBILITY, Integer.valueOf(transitionValues.view.getVisibility()));
        transitionValues.values.put(PROPNAME_PARENT, transitionValues.view.getParent());
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put(PROPNAME_SCREEN_LOCATION, iArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0083, code lost:
    
        if (r0.mEndVisibility == 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008d, code lost:
    
        if (r0.mStartParent == null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x009f, code lost:
    
        if (r0.mStartVisibility == 0) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private android.support.transition.Visibility.VisibilityInfo getVisibilityChangeInfo(android.support.transition.TransitionValues r7, android.support.transition.TransitionValues r8) {
        /*
            r6 = this;
            android.support.transition.Visibility$VisibilityInfo r0 = new android.support.transition.Visibility$VisibilityInfo
            r1 = 0
            r0.<init>()
            r2 = 0
            r0.mVisibilityChange = r2
            r0.mFadeIn = r2
            r3 = -1
            if (r7 == 0) goto L35
            java.util.Map<java.lang.String, java.lang.Object> r4 = r7.values
            java.lang.String r5 = "android:visibility:visibility"
            boolean r4 = r4.containsKey(r5)
            if (r4 == 0) goto L35
            java.util.Map<java.lang.String, java.lang.Object> r4 = r7.values
            java.lang.String r5 = "android:visibility:visibility"
            java.lang.Object r4 = r4.get(r5)
            java.lang.Integer r4 = (java.lang.Integer) r4
            int r4 = r4.intValue()
            r0.mStartVisibility = r4
            java.util.Map<java.lang.String, java.lang.Object> r4 = r7.values
            java.lang.String r5 = "android:visibility:parent"
            java.lang.Object r4 = r4.get(r5)
            android.view.ViewGroup r4 = (android.view.ViewGroup) r4
            r0.mStartParent = r4
            goto L39
        L35:
            r0.mStartVisibility = r3
            r0.mStartParent = r1
        L39:
            if (r8 == 0) goto L60
            java.util.Map<java.lang.String, java.lang.Object> r4 = r8.values
            java.lang.String r5 = "android:visibility:visibility"
            boolean r4 = r4.containsKey(r5)
            if (r4 == 0) goto L60
            java.util.Map<java.lang.String, java.lang.Object> r1 = r8.values
            java.lang.String r3 = "android:visibility:visibility"
            java.lang.Object r1 = r1.get(r3)
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r1 = r1.intValue()
            r0.mEndVisibility = r1
            java.util.Map<java.lang.String, java.lang.Object> r1 = r8.values
            java.lang.String r3 = "android:visibility:parent"
            java.lang.Object r1 = r1.get(r3)
            android.view.ViewGroup r1 = (android.view.ViewGroup) r1
            goto L62
        L60:
            r0.mEndVisibility = r3
        L62:
            r0.mEndParent = r1
            r1 = 1
            if (r7 == 0) goto L90
            if (r8 == 0) goto L90
            int r7 = r0.mStartVisibility
            int r8 = r0.mEndVisibility
            if (r7 != r8) goto L76
            android.view.ViewGroup r7 = r0.mStartParent
            android.view.ViewGroup r8 = r0.mEndParent
            if (r7 != r8) goto L76
            return r0
        L76:
            int r7 = r0.mStartVisibility
            int r8 = r0.mEndVisibility
            if (r7 == r8) goto L86
            int r7 = r0.mStartVisibility
            if (r7 != 0) goto L81
            goto La1
        L81:
            int r7 = r0.mEndVisibility
            if (r7 != 0) goto La4
            goto L96
        L86:
            android.view.ViewGroup r7 = r0.mEndParent
            if (r7 != 0) goto L8b
            goto La1
        L8b:
            android.view.ViewGroup r7 = r0.mStartParent
            if (r7 != 0) goto La4
            goto L96
        L90:
            if (r7 != 0) goto L9b
            int r7 = r0.mEndVisibility
            if (r7 != 0) goto L9b
        L96:
            r0.mFadeIn = r1
        L98:
            r0.mVisibilityChange = r1
            return r0
        L9b:
            if (r8 != 0) goto La4
            int r7 = r0.mStartVisibility
            if (r7 != 0) goto La4
        La1:
            r0.mFadeIn = r2
            goto L98
        La4:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.Visibility.getVisibilityChangeInfo(android.support.transition.TransitionValues, android.support.transition.TransitionValues):android.support.transition.Visibility$VisibilityInfo");
    }

    @Override // android.support.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // android.support.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // android.support.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        VisibilityInfo visibilityChangeInfo = getVisibilityChangeInfo(transitionValues, transitionValues2);
        if (!visibilityChangeInfo.mVisibilityChange) {
            return null;
        }
        if (visibilityChangeInfo.mStartParent == null && visibilityChangeInfo.mEndParent == null) {
            return null;
        }
        return visibilityChangeInfo.mFadeIn ? onAppear(viewGroup, transitionValues, visibilityChangeInfo.mStartVisibility, transitionValues2, visibilityChangeInfo.mEndVisibility) : onDisappear(viewGroup, transitionValues, visibilityChangeInfo.mStartVisibility, transitionValues2, visibilityChangeInfo.mEndVisibility);
    }

    public int getMode() {
        return this.mMode;
    }

    @Override // android.support.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    @Override // android.support.transition.Transition
    public boolean isTransitionRequired(TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null && transitionValues2 == null) {
            return false;
        }
        if (transitionValues != null && transitionValues2 != null && transitionValues2.values.containsKey(PROPNAME_VISIBILITY) != transitionValues.values.containsKey(PROPNAME_VISIBILITY)) {
            return false;
        }
        VisibilityInfo visibilityChangeInfo = getVisibilityChangeInfo(transitionValues, transitionValues2);
        return visibilityChangeInfo.mVisibilityChange && (visibilityChangeInfo.mStartVisibility == 0 || visibilityChangeInfo.mEndVisibility == 0);
    }

    public boolean isVisible(TransitionValues transitionValues) {
        if (transitionValues == null) {
            return false;
        }
        return ((Integer) transitionValues.values.get(PROPNAME_VISIBILITY)).intValue() == 0 && ((View) transitionValues.values.get(PROPNAME_PARENT)) != null;
    }

    public Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int i, TransitionValues transitionValues2, int i2) {
        if ((this.mMode & 1) != 1 || transitionValues2 == null) {
            return null;
        }
        if (transitionValues == null) {
            View view = (View) transitionValues2.view.getParent();
            if (getVisibilityChangeInfo(getMatchedTransitionValues(view, false), getTransitionValues(view, false)).mVisibilityChange) {
                return null;
            }
        }
        return onAppear(viewGroup, transitionValues2.view, transitionValues, transitionValues2);
    }

    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0075 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00dc A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.animation.Animator onDisappear(android.view.ViewGroup r7, android.support.transition.TransitionValues r8, int r9, android.support.transition.TransitionValues r10, int r11) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.Visibility.onDisappear(android.view.ViewGroup, android.support.transition.TransitionValues, int, android.support.transition.TransitionValues, int):android.animation.Animator");
    }

    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    public void setMode(int i) {
        if ((i & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.mMode = i;
    }
}
