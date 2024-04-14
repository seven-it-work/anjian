package android.support.design.widget;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    private static final float DEFAULT_ALPHA_END_DISTANCE = 0.5f;
    private static final float DEFAULT_ALPHA_START_DISTANCE = 0.0f;
    private static final float DEFAULT_DRAG_DISMISS_THRESHOLD = 0.5f;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    public static final int SWIPE_DIRECTION_ANY = 2;
    public static final int SWIPE_DIRECTION_END_TO_START = 1;
    public static final int SWIPE_DIRECTION_START_TO_END = 0;
    private boolean mInterceptingEvents;
    OnDismissListener mListener;
    private boolean mSensitivitySet;
    ViewDragHelper mViewDragHelper;
    private float mSensitivity = 0.0f;
    int mSwipeDirection = 2;
    float mDragDismissThreshold = 0.5f;
    float mAlphaStartSwipeDistance = 0.0f;
    float mAlphaEndSwipeDistance = 0.5f;
    private final ViewDragHelper.Callback mDragCallback = new ViewDragHelper.Callback() { // from class: android.support.design.widget.SwipeDismissBehavior.1
        private static final int INVALID_POINTER_ID = -1;
        private int mActivePointerId = -1;
        private int mOriginalCapturedViewLeft;

        private boolean shouldDismiss(View view, float f) {
            if (f == 0.0f) {
                return Math.abs(view.getLeft() - this.mOriginalCapturedViewLeft) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.mDragDismissThreshold);
            }
            boolean z = ViewCompat.getLayoutDirection(view) == 1;
            if (SwipeDismissBehavior.this.mSwipeDirection == 2) {
                return true;
            }
            if (SwipeDismissBehavior.this.mSwipeDirection == 0) {
                return z ? f < 0.0f : f > 0.0f;
            }
            if (SwipeDismissBehavior.this.mSwipeDirection == 1) {
                if (z) {
                    return f > 0.0f;
                }
                if (f < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x001c, code lost:
        
            r5 = r2.mOriginalCapturedViewLeft;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
        
            if (r5 != false) goto L10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:6:0x0010, code lost:
        
            if (r5 != false) goto L9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x0012, code lost:
        
            r5 = r2.mOriginalCapturedViewLeft - r3.getWidth();
            r3 = r2.mOriginalCapturedViewLeft;
         */
        @Override // android.support.v4.widget.ViewDragHelper.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public int clampViewPositionHorizontal(android.view.View r3, int r4, int r5) {
            /*
                r2 = this;
                int r5 = android.support.v4.view.ViewCompat.getLayoutDirection(r3)
                r0 = 1
                if (r5 != r0) goto L9
                r5 = 1
                goto La
            L9:
                r5 = 0
            La:
                android.support.design.widget.SwipeDismissBehavior r1 = android.support.design.widget.SwipeDismissBehavior.this
                int r1 = r1.mSwipeDirection
                if (r1 != 0) goto L26
                if (r5 == 0) goto L1c
            L12:
                int r5 = r2.mOriginalCapturedViewLeft
                int r3 = r3.getWidth()
                int r5 = r5 - r3
                int r3 = r2.mOriginalCapturedViewLeft
                goto L37
            L1c:
                int r5 = r2.mOriginalCapturedViewLeft
            L1e:
                int r0 = r2.mOriginalCapturedViewLeft
                int r3 = r3.getWidth()
                int r3 = r3 + r0
                goto L37
            L26:
                android.support.design.widget.SwipeDismissBehavior r1 = android.support.design.widget.SwipeDismissBehavior.this
                int r1 = r1.mSwipeDirection
                if (r1 != r0) goto L2f
                if (r5 == 0) goto L12
                goto L1c
            L2f:
                int r5 = r2.mOriginalCapturedViewLeft
                int r0 = r3.getWidth()
                int r5 = r5 - r0
                goto L1e
            L37:
                int r3 = android.support.design.widget.SwipeDismissBehavior.clamp(r5, r4, r3)
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.SwipeDismissBehavior.C00811.clampViewPositionHorizontal(android.view.View, int, int):int");
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewCaptured(View view, int i) {
            this.mActivePointerId = i;
            this.mOriginalCapturedViewLeft = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            if (SwipeDismissBehavior.this.mListener != null) {
                SwipeDismissBehavior.this.mListener.onDragStateChanged(i);
            }
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            float width = this.mOriginalCapturedViewLeft + (view.getWidth() * SwipeDismissBehavior.this.mAlphaStartSwipeDistance);
            float width2 = this.mOriginalCapturedViewLeft + (view.getWidth() * SwipeDismissBehavior.this.mAlphaEndSwipeDistance);
            float f = i;
            if (f <= width) {
                view.setAlpha(1.0f);
            } else if (f >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.clamp(0.0f, 1.0f - SwipeDismissBehavior.fraction(width, width2, f), 1.0f));
            }
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f, float f2) {
            int i;
            boolean z;
            this.mActivePointerId = -1;
            int width = view.getWidth();
            if (shouldDismiss(view, f)) {
                i = view.getLeft() < this.mOriginalCapturedViewLeft ? this.mOriginalCapturedViewLeft - width : this.mOriginalCapturedViewLeft + width;
                z = true;
            } else {
                i = this.mOriginalCapturedViewLeft;
                z = false;
            }
            if (SwipeDismissBehavior.this.mViewDragHelper.settleCapturedViewAt(i, view.getTop())) {
                ViewCompat.postOnAnimation(view, new SettleRunnable(view, z));
            } else {
                if (!z || SwipeDismissBehavior.this.mListener == null) {
                    return;
                }
                SwipeDismissBehavior.this.mListener.onDismiss(view);
            }
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i) {
            return this.mActivePointerId == -1 && SwipeDismissBehavior.this.canSwipeDismissView(view);
        }
    };

    /* loaded from: classes.dex */
    public interface OnDismissListener {
        void onDismiss(View view);

        void onDragStateChanged(int i);
    }

    /* loaded from: classes.dex */
    private class SettleRunnable implements Runnable {
        private final boolean mDismiss;
        private final View mView;

        SettleRunnable(View view, boolean z) {
            this.mView = view;
            this.mDismiss = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SwipeDismissBehavior.this.mViewDragHelper != null && SwipeDismissBehavior.this.mViewDragHelper.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.mView, this);
            } else {
                if (!this.mDismiss || SwipeDismissBehavior.this.mListener == null) {
                    return;
                }
                SwipeDismissBehavior.this.mListener.onDismiss(this.mView);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    private @interface SwipeDirection {
    }

    static float clamp(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    static int clamp(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    private void ensureViewDragHelper(ViewGroup viewGroup) {
        if (this.mViewDragHelper == null) {
            this.mViewDragHelper = this.mSensitivitySet ? ViewDragHelper.create(viewGroup, this.mSensitivity, this.mDragCallback) : ViewDragHelper.create(viewGroup, this.mDragCallback);
        }
    }

    static float fraction(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    public boolean canSwipeDismissView(@NonNull View view) {
        return true;
    }

    public int getDragState() {
        if (this.mViewDragHelper != null) {
            return this.mViewDragHelper.getViewDragState();
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002f A[RETURN] */
    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onInterceptTouchEvent(android.support.design.widget.CoordinatorLayout r5, V r6, android.view.MotionEvent r7) {
        /*
            r4 = this;
            boolean r0 = r4.mInterceptingEvents
            int r1 = r7.getActionMasked()
            r2 = 3
            r3 = 0
            if (r1 == r2) goto L21
            switch(r1) {
                case 0: goto Le;
                case 1: goto L21;
                default: goto Ld;
            }
        Ld:
            goto L23
        Le:
            float r0 = r7.getX()
            int r0 = (int) r0
            float r1 = r7.getY()
            int r1 = (int) r1
            boolean r6 = r5.isPointInChildBounds(r6, r0, r1)
            r4.mInterceptingEvents = r6
            boolean r0 = r4.mInterceptingEvents
            goto L23
        L21:
            r4.mInterceptingEvents = r3
        L23:
            if (r0 == 0) goto L2f
            r4.ensureViewDragHelper(r5)
            android.support.v4.widget.ViewDragHelper r5 = r4.mViewDragHelper
            boolean r5 = r5.shouldInterceptTouchEvent(r7)
            return r5
        L2f:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.SwipeDismissBehavior.onInterceptTouchEvent(android.support.design.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (this.mViewDragHelper == null) {
            return false;
        }
        this.mViewDragHelper.processTouchEvent(motionEvent);
        return true;
    }

    public void setDragDismissDistance(float f) {
        this.mDragDismissThreshold = clamp(0.0f, f, 1.0f);
    }

    public void setEndAlphaSwipeDistance(float f) {
        this.mAlphaEndSwipeDistance = clamp(0.0f, f, 1.0f);
    }

    public void setListener(OnDismissListener onDismissListener) {
        this.mListener = onDismissListener;
    }

    public void setSensitivity(float f) {
        this.mSensitivity = f;
        this.mSensitivitySet = true;
    }

    public void setStartAlphaSwipeDistance(float f) {
        this.mAlphaStartSwipeDistance = clamp(0.0f, f, 1.0f);
    }

    public void setSwipeDirection(int i) {
        this.mSwipeDirection = i;
    }
}
