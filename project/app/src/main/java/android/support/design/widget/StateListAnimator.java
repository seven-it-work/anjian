package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import java.util.ArrayList;

/* loaded from: classes.dex */
final class StateListAnimator {
    private final ArrayList<Tuple> mTuples = new ArrayList<>();
    private Tuple mLastMatch = null;
    ValueAnimator mRunningAnimator = null;
    private final Animator.AnimatorListener mAnimationListener = new AnimatorListenerAdapter() { // from class: android.support.design.widget.StateListAnimator.1
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (StateListAnimator.this.mRunningAnimator == animator) {
                StateListAnimator.this.mRunningAnimator = null;
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Tuple {
        final ValueAnimator mAnimator;
        final int[] mSpecs;

        Tuple(int[] iArr, ValueAnimator valueAnimator) {
            this.mSpecs = iArr;
            this.mAnimator = valueAnimator;
        }
    }

    private void cancel() {
        if (this.mRunningAnimator != null) {
            this.mRunningAnimator.cancel();
            this.mRunningAnimator = null;
        }
    }

    private void start(Tuple tuple) {
        this.mRunningAnimator = tuple.mAnimator;
        this.mRunningAnimator.start();
    }

    public final void addState(int[] iArr, ValueAnimator valueAnimator) {
        Tuple tuple = new Tuple(iArr, valueAnimator);
        valueAnimator.addListener(this.mAnimationListener);
        this.mTuples.add(tuple);
    }

    public final void jumpToCurrentState() {
        if (this.mRunningAnimator != null) {
            this.mRunningAnimator.end();
            this.mRunningAnimator = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setState(int[] iArr) {
        Tuple tuple;
        int size = this.mTuples.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                tuple = null;
                break;
            }
            tuple = this.mTuples.get(i);
            if (StateSet.stateSetMatches(tuple.mSpecs, iArr)) {
                break;
            } else {
                i++;
            }
        }
        if (tuple == this.mLastMatch) {
            return;
        }
        if (this.mLastMatch != null) {
            cancel();
        }
        this.mLastMatch = tuple;
        if (tuple != null) {
            start(tuple);
        }
    }
}
