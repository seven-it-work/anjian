package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.design.C0035R;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.math.MathUtils;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    private static final float HIDE_FRICTION = 0.1f;
    private static final float HIDE_THRESHOLD = 0.5f;
    public static final int PEEK_HEIGHT_AUTO = -1;
    public static final int STATE_COLLAPSED = 4;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_EXPANDED = 3;
    public static final int STATE_HIDDEN = 5;
    public static final int STATE_SETTLING = 2;
    int mActivePointerId;
    private BottomSheetCallback mCallback;
    private final ViewDragHelper.Callback mDragCallback;
    boolean mHideable;
    private boolean mIgnoreEvents;
    private int mInitialY;
    private int mLastNestedScrollDy;
    int mMaxOffset;
    private float mMaximumVelocity;
    int mMinOffset;
    private boolean mNestedScrolled;
    WeakReference<View> mNestedScrollingChildRef;
    int mParentHeight;
    private int mPeekHeight;
    private boolean mPeekHeightAuto;
    private int mPeekHeightMin;
    private boolean mSkipCollapsed;
    int mState;
    boolean mTouchingScrollingChild;
    private VelocityTracker mVelocityTracker;
    ViewDragHelper mViewDragHelper;
    WeakReference<V> mViewRef;

    /* loaded from: classes.dex */
    public static abstract class BottomSheetCallback {
        public abstract void onSlide(@NonNull View view, float f);

        public abstract void onStateChanged(@NonNull View view, int i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.design.widget.BottomSheetBehavior.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        final int state;

        public SavedState(Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
        }

        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.state = i;
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.state);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class SettleRunnable implements Runnable {
        private final int mTargetState;
        private final View mView;

        SettleRunnable(View view, int i) {
            this.mView = view;
            this.mTargetState = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BottomSheetBehavior.this.mViewDragHelper == null || !BottomSheetBehavior.this.mViewDragHelper.continueSettling(true)) {
                BottomSheetBehavior.this.setStateInternal(this.mTargetState);
            } else {
                ViewCompat.postOnAnimation(this.mView, this);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface State {
    }

    public BottomSheetBehavior() {
        this.mState = 4;
        this.mDragCallback = new ViewDragHelper.Callback() { // from class: android.support.design.widget.BottomSheetBehavior.2
            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public int clampViewPositionHorizontal(View view, int i, int i2) {
                return view.getLeft();
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public int clampViewPositionVertical(View view, int i, int i2) {
                return MathUtils.clamp(i, BottomSheetBehavior.this.mMinOffset, BottomSheetBehavior.this.mHideable ? BottomSheetBehavior.this.mParentHeight : BottomSheetBehavior.this.mMaxOffset);
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public int getViewVerticalDragRange(View view) {
                return (BottomSheetBehavior.this.mHideable ? BottomSheetBehavior.this.mParentHeight : BottomSheetBehavior.this.mMaxOffset) - BottomSheetBehavior.this.mMinOffset;
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public void onViewDragStateChanged(int i) {
                if (i == 1) {
                    BottomSheetBehavior.this.setStateInternal(1);
                }
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
                BottomSheetBehavior.this.dispatchOnSlide(i2);
            }

            /* JADX WARN: Code restructure failed: missing block: B:19:0x003c, code lost:
            
                if (java.lang.Math.abs(r5 - r3.this$0.mMinOffset) < java.lang.Math.abs(r5 - r3.this$0.mMaxOffset)) goto L4;
             */
            /* JADX WARN: Removed duplicated region for block: B:6:0x0051  */
            /* JADX WARN: Removed duplicated region for block: B:9:0x0062  */
            @Override // android.support.v4.widget.ViewDragHelper.Callback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void onViewReleased(android.view.View r4, float r5, float r6) {
                /*
                    r3 = this;
                    r5 = 0
                    int r0 = (r6 > r5 ? 1 : (r6 == r5 ? 0 : -1))
                    r1 = 4
                    r2 = 3
                    if (r0 >= 0) goto Ld
                L7:
                    android.support.design.widget.BottomSheetBehavior r5 = android.support.design.widget.BottomSheetBehavior.this
                    int r5 = r5.mMinOffset
                    r1 = 3
                    goto L43
                Ld:
                    android.support.design.widget.BottomSheetBehavior r0 = android.support.design.widget.BottomSheetBehavior.this
                    boolean r0 = r0.mHideable
                    if (r0 == 0) goto L21
                    android.support.design.widget.BottomSheetBehavior r0 = android.support.design.widget.BottomSheetBehavior.this
                    boolean r0 = r0.shouldHide(r4, r6)
                    if (r0 == 0) goto L21
                    android.support.design.widget.BottomSheetBehavior r5 = android.support.design.widget.BottomSheetBehavior.this
                    int r5 = r5.mParentHeight
                    r1 = 5
                    goto L43
                L21:
                    int r5 = (r6 > r5 ? 1 : (r6 == r5 ? 0 : -1))
                    if (r5 != 0) goto L3f
                    int r5 = r4.getTop()
                    android.support.design.widget.BottomSheetBehavior r6 = android.support.design.widget.BottomSheetBehavior.this
                    int r6 = r6.mMinOffset
                    int r6 = r5 - r6
                    int r6 = java.lang.Math.abs(r6)
                    android.support.design.widget.BottomSheetBehavior r0 = android.support.design.widget.BottomSheetBehavior.this
                    int r0 = r0.mMaxOffset
                    int r5 = r5 - r0
                    int r5 = java.lang.Math.abs(r5)
                    if (r6 >= r5) goto L3f
                    goto L7
                L3f:
                    android.support.design.widget.BottomSheetBehavior r5 = android.support.design.widget.BottomSheetBehavior.this
                    int r5 = r5.mMaxOffset
                L43:
                    android.support.design.widget.BottomSheetBehavior r6 = android.support.design.widget.BottomSheetBehavior.this
                    android.support.v4.widget.ViewDragHelper r6 = r6.mViewDragHelper
                    int r0 = r4.getLeft()
                    boolean r5 = r6.settleCapturedViewAt(r0, r5)
                    if (r5 == 0) goto L62
                    android.support.design.widget.BottomSheetBehavior r5 = android.support.design.widget.BottomSheetBehavior.this
                    r6 = 2
                    r5.setStateInternal(r6)
                    android.support.design.widget.BottomSheetBehavior$SettleRunnable r5 = new android.support.design.widget.BottomSheetBehavior$SettleRunnable
                    android.support.design.widget.BottomSheetBehavior r6 = android.support.design.widget.BottomSheetBehavior.this
                    r5.<init>(r4, r1)
                    android.support.v4.view.ViewCompat.postOnAnimation(r4, r5)
                    return
                L62:
                    android.support.design.widget.BottomSheetBehavior r4 = android.support.design.widget.BottomSheetBehavior.this
                    r4.setStateInternal(r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.BottomSheetBehavior.C00612.onViewReleased(android.view.View, float, float):void");
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public boolean tryCaptureView(View view, int i) {
                View view2;
                if (BottomSheetBehavior.this.mState == 1 || BottomSheetBehavior.this.mTouchingScrollingChild) {
                    return false;
                }
                return ((BottomSheetBehavior.this.mState == 3 && BottomSheetBehavior.this.mActivePointerId == i && (view2 = BottomSheetBehavior.this.mNestedScrollingChildRef.get()) != null && view2.canScrollVertically(-1)) || BottomSheetBehavior.this.mViewRef == null || BottomSheetBehavior.this.mViewRef.get() != view) ? false : true;
            }
        };
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mState = 4;
        this.mDragCallback = new ViewDragHelper.Callback() { // from class: android.support.design.widget.BottomSheetBehavior.2
            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public int clampViewPositionHorizontal(View view, int i, int i2) {
                return view.getLeft();
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public int clampViewPositionVertical(View view, int i, int i2) {
                return MathUtils.clamp(i, BottomSheetBehavior.this.mMinOffset, BottomSheetBehavior.this.mHideable ? BottomSheetBehavior.this.mParentHeight : BottomSheetBehavior.this.mMaxOffset);
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public int getViewVerticalDragRange(View view) {
                return (BottomSheetBehavior.this.mHideable ? BottomSheetBehavior.this.mParentHeight : BottomSheetBehavior.this.mMaxOffset) - BottomSheetBehavior.this.mMinOffset;
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public void onViewDragStateChanged(int i) {
                if (i == 1) {
                    BottomSheetBehavior.this.setStateInternal(1);
                }
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
                BottomSheetBehavior.this.dispatchOnSlide(i2);
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public void onViewReleased(View view, float f, float f2) {
                /*  JADX ERROR: Method code generation error
                    java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                    	at jadx.core.codegen.RegionGen.declareVars(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:61)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(Unknown Source)
                    	at java.base/java.util.ArrayList.forEach(Unknown Source)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(Unknown Source)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Unknown Source)
                    */
                /*
                    this = this;
                    r5 = 0
                    int r0 = (r6 > r5 ? 1 : (r6 == r5 ? 0 : -1))
                    r1 = 4
                    r2 = 3
                    if (r0 >= 0) goto Ld
                L7:
                    android.support.design.widget.BottomSheetBehavior r5 = android.support.design.widget.BottomSheetBehavior.this
                    int r5 = r5.mMinOffset
                    r1 = 3
                    goto L43
                Ld:
                    android.support.design.widget.BottomSheetBehavior r0 = android.support.design.widget.BottomSheetBehavior.this
                    boolean r0 = r0.mHideable
                    if (r0 == 0) goto L21
                    android.support.design.widget.BottomSheetBehavior r0 = android.support.design.widget.BottomSheetBehavior.this
                    boolean r0 = r0.shouldHide(r4, r6)
                    if (r0 == 0) goto L21
                    android.support.design.widget.BottomSheetBehavior r5 = android.support.design.widget.BottomSheetBehavior.this
                    int r5 = r5.mParentHeight
                    r1 = 5
                    goto L43
                L21:
                    int r5 = (r6 > r5 ? 1 : (r6 == r5 ? 0 : -1))
                    if (r5 != 0) goto L3f
                    int r5 = r4.getTop()
                    android.support.design.widget.BottomSheetBehavior r6 = android.support.design.widget.BottomSheetBehavior.this
                    int r6 = r6.mMinOffset
                    int r6 = r5 - r6
                    int r6 = java.lang.Math.abs(r6)
                    android.support.design.widget.BottomSheetBehavior r0 = android.support.design.widget.BottomSheetBehavior.this
                    int r0 = r0.mMaxOffset
                    int r5 = r5 - r0
                    int r5 = java.lang.Math.abs(r5)
                    if (r6 >= r5) goto L3f
                    goto L7
                L3f:
                    android.support.design.widget.BottomSheetBehavior r5 = android.support.design.widget.BottomSheetBehavior.this
                    int r5 = r5.mMaxOffset
                L43:
                    android.support.design.widget.BottomSheetBehavior r6 = android.support.design.widget.BottomSheetBehavior.this
                    android.support.v4.widget.ViewDragHelper r6 = r6.mViewDragHelper
                    int r0 = r4.getLeft()
                    boolean r5 = r6.settleCapturedViewAt(r0, r5)
                    if (r5 == 0) goto L62
                    android.support.design.widget.BottomSheetBehavior r5 = android.support.design.widget.BottomSheetBehavior.this
                    r6 = 2
                    r5.setStateInternal(r6)
                    android.support.design.widget.BottomSheetBehavior$SettleRunnable r5 = new android.support.design.widget.BottomSheetBehavior$SettleRunnable
                    android.support.design.widget.BottomSheetBehavior r6 = android.support.design.widget.BottomSheetBehavior.this
                    r5.<init>(r4, r1)
                    android.support.v4.view.ViewCompat.postOnAnimation(r4, r5)
                    return
                L62:
                    android.support.design.widget.BottomSheetBehavior r4 = android.support.design.widget.BottomSheetBehavior.this
                    r4.setStateInternal(r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.BottomSheetBehavior.C00612.onViewReleased(android.view.View, float, float):void");
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public boolean tryCaptureView(View view, int i) {
                View view2;
                if (BottomSheetBehavior.this.mState == 1 || BottomSheetBehavior.this.mTouchingScrollingChild) {
                    return false;
                }
                return ((BottomSheetBehavior.this.mState == 3 && BottomSheetBehavior.this.mActivePointerId == i && (view2 = BottomSheetBehavior.this.mNestedScrollingChildRef.get()) != null && view2.canScrollVertically(-1)) || BottomSheetBehavior.this.mViewRef == null || BottomSheetBehavior.this.mViewRef.get() != view) ? false : true;
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0035R.styleable.BottomSheetBehavior_Layout);
        TypedValue peekValue = obtainStyledAttributes.peekValue(C0035R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
        setPeekHeight((peekValue == null || peekValue.data != -1) ? obtainStyledAttributes.getDimensionPixelSize(C0035R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1) : peekValue.data);
        setHideable(obtainStyledAttributes.getBoolean(C0035R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        setSkipCollapsed(obtainStyledAttributes.getBoolean(C0035R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        obtainStyledAttributes.recycle();
        this.mMaximumVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    public static <V extends View> BottomSheetBehavior<V> from(V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (behavior instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) behavior;
        }
        throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
    }

    private float getYVelocity() {
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
        return this.mVelocityTracker.getYVelocity(this.mActivePointerId);
    }

    private void reset() {
        this.mActivePointerId = -1;
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    void dispatchOnSlide(int i) {
        V v = this.mViewRef.get();
        if (v == null || this.mCallback == null) {
            return;
        }
        if (i > this.mMaxOffset) {
            this.mCallback.onSlide(v, (this.mMaxOffset - i) / (this.mParentHeight - this.mMaxOffset));
        } else {
            this.mCallback.onSlide(v, (this.mMaxOffset - i) / (this.mMaxOffset - this.mMinOffset));
        }
    }

    @VisibleForTesting
    View findScrollingChild(View view) {
        if (ViewCompat.isNestedScrollingEnabled(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View findScrollingChild = findScrollingChild(viewGroup.getChildAt(i));
            if (findScrollingChild != null) {
                return findScrollingChild;
            }
        }
        return null;
    }

    public final int getPeekHeight() {
        if (this.mPeekHeightAuto) {
            return -1;
        }
        return this.mPeekHeight;
    }

    @VisibleForTesting
    int getPeekHeightMin() {
        return this.mPeekHeightMin;
    }

    public boolean getSkipCollapsed() {
        return this.mSkipCollapsed;
    }

    public final int getState() {
        return this.mState;
    }

    public boolean isHideable() {
        return this.mHideable;
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            this.mIgnoreEvents = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            reset();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        if (actionMasked != 3) {
            switch (actionMasked) {
                case 0:
                    int x = (int) motionEvent.getX();
                    this.mInitialY = (int) motionEvent.getY();
                    View view = this.mNestedScrollingChildRef != null ? this.mNestedScrollingChildRef.get() : null;
                    if (view != null && coordinatorLayout.isPointInChildBounds(view, x, this.mInitialY)) {
                        this.mActivePointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                        this.mTouchingScrollingChild = true;
                    }
                    this.mIgnoreEvents = this.mActivePointerId == -1 && !coordinatorLayout.isPointInChildBounds(v, x, this.mInitialY);
                    break;
            }
            if (this.mIgnoreEvents && this.mViewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
                return true;
            }
            View view2 = this.mNestedScrollingChildRef.get();
            return (actionMasked == 2 || view2 == null || this.mIgnoreEvents || this.mState == 1 || coordinatorLayout.isPointInChildBounds(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || Math.abs(((float) this.mInitialY) - motionEvent.getY()) <= ((float) this.mViewDragHelper.getTouchSlop())) ? false : true;
        }
        this.mTouchingScrollingChild = false;
        this.mActivePointerId = -1;
        if (this.mIgnoreEvents) {
            this.mIgnoreEvents = false;
            return false;
        }
        if (this.mIgnoreEvents) {
        }
        View view22 = this.mNestedScrollingChildRef.get();
        if (actionMasked == 2) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0092  */
    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onLayoutChild(android.support.design.widget.CoordinatorLayout r6, V r7, int r8) {
        /*
            r5 = this;
            boolean r0 = android.support.v4.view.ViewCompat.getFitsSystemWindows(r6)
            r1 = 1
            if (r0 == 0) goto L10
            boolean r0 = android.support.v4.view.ViewCompat.getFitsSystemWindows(r7)
            if (r0 != 0) goto L10
            android.support.v4.view.ViewCompat.setFitsSystemWindows(r7, r1)
        L10:
            int r0 = r7.getTop()
            r6.onLayoutChild(r7, r8)
            int r8 = r6.getHeight()
            r5.mParentHeight = r8
            boolean r8 = r5.mPeekHeightAuto
            if (r8 == 0) goto L43
            int r8 = r5.mPeekHeightMin
            if (r8 != 0) goto L31
            android.content.res.Resources r8 = r6.getResources()
            int r2 = android.support.design.C0035R.dimen.design_bottom_sheet_peek_height_min
            int r8 = r8.getDimensionPixelSize(r2)
            r5.mPeekHeightMin = r8
        L31:
            int r8 = r5.mPeekHeightMin
            int r2 = r5.mParentHeight
            int r3 = r6.getWidth()
            int r3 = r3 * 9
            int r3 = r3 / 16
            int r2 = r2 - r3
            int r8 = java.lang.Math.max(r8, r2)
            goto L45
        L43:
            int r8 = r5.mPeekHeight
        L45:
            r2 = 0
            int r3 = r5.mParentHeight
            int r4 = r7.getHeight()
            int r3 = r3 - r4
            int r2 = java.lang.Math.max(r2, r3)
            r5.mMinOffset = r2
            int r2 = r5.mParentHeight
            int r2 = r2 - r8
            int r8 = r5.mMinOffset
            int r8 = java.lang.Math.max(r2, r8)
            r5.mMaxOffset = r8
            int r8 = r5.mState
            r2 = 3
            if (r8 != r2) goto L69
            int r8 = r5.mMinOffset
        L65:
            android.support.v4.view.ViewCompat.offsetTopAndBottom(r7, r8)
            goto L8e
        L69:
            boolean r8 = r5.mHideable
            if (r8 == 0) goto L75
            int r8 = r5.mState
            r2 = 5
            if (r8 != r2) goto L75
            int r8 = r5.mParentHeight
            goto L65
        L75:
            int r8 = r5.mState
            r2 = 4
            if (r8 != r2) goto L7d
            int r8 = r5.mMaxOffset
            goto L65
        L7d:
            int r8 = r5.mState
            if (r8 == r1) goto L86
            int r8 = r5.mState
            r2 = 2
            if (r8 != r2) goto L8e
        L86:
            int r8 = r7.getTop()
            int r0 = r0 - r8
            android.support.v4.view.ViewCompat.offsetTopAndBottom(r7, r0)
        L8e:
            android.support.v4.widget.ViewDragHelper r8 = r5.mViewDragHelper
            if (r8 != 0) goto L9a
            android.support.v4.widget.ViewDragHelper$Callback r8 = r5.mDragCallback
            android.support.v4.widget.ViewDragHelper r6 = android.support.v4.widget.ViewDragHelper.create(r6, r8)
            r5.mViewDragHelper = r6
        L9a:
            java.lang.ref.WeakReference r6 = new java.lang.ref.WeakReference
            r6.<init>(r7)
            r5.mViewRef = r6
            java.lang.ref.WeakReference r6 = new java.lang.ref.WeakReference
            android.view.View r7 = r5.findScrollingChild(r7)
            r6.<init>(r7)
            r5.mNestedScrollingChildRef = r6
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.BottomSheetBehavior.onLayoutChild(android.support.design.widget.CoordinatorLayout, android.view.View, int):boolean");
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
        if (view == this.mNestedScrollingChildRef.get()) {
            return this.mState != 3 || super.onNestedPreFling(coordinatorLayout, v, view, f, f2);
        }
        return false;
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr) {
        int i3;
        if (view != this.mNestedScrollingChildRef.get()) {
            return;
        }
        int top = v.getTop();
        int i4 = top - i2;
        if (i2 > 0) {
            if (i4 < this.mMinOffset) {
                iArr[1] = top - this.mMinOffset;
                ViewCompat.offsetTopAndBottom(v, -iArr[1]);
                i3 = 3;
                setStateInternal(i3);
            } else {
                iArr[1] = i2;
                ViewCompat.offsetTopAndBottom(v, -i2);
                setStateInternal(1);
            }
        } else if (i2 < 0 && !view.canScrollVertically(-1)) {
            if (i4 <= this.mMaxOffset || this.mHideable) {
                iArr[1] = i2;
                ViewCompat.offsetTopAndBottom(v, -i2);
                setStateInternal(1);
            } else {
                iArr[1] = top - this.mMaxOffset;
                ViewCompat.offsetTopAndBottom(v, -iArr[1]);
                i3 = 4;
                setStateInternal(i3);
            }
        }
        dispatchOnSlide(v.getTop());
        this.mLastNestedScrollDy = i2;
        this.mNestedScrolled = true;
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v, savedState.getSuperState());
        this.mState = (savedState.state == 1 || savedState.state == 2) ? 4 : savedState.state;
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v), this.mState);
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        this.mLastNestedScrollDy = 0;
        this.mNestedScrolled = false;
        return (i & 2) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x004f, code lost:
    
        if (java.lang.Math.abs(r4 - r3.mMinOffset) < java.lang.Math.abs(r4 - r3.mMaxOffset)) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006e  */
    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onStopNestedScroll(android.support.design.widget.CoordinatorLayout r4, V r5, android.view.View r6) {
        /*
            r3 = this;
            int r4 = r5.getTop()
            int r0 = r3.mMinOffset
            r1 = 3
            if (r4 != r0) goto Ld
            r3.setStateInternal(r1)
            return
        Ld:
            java.lang.ref.WeakReference<android.view.View> r4 = r3.mNestedScrollingChildRef
            if (r4 == 0) goto L74
            java.lang.ref.WeakReference<android.view.View> r4 = r3.mNestedScrollingChildRef
            java.lang.Object r4 = r4.get()
            if (r6 != r4) goto L74
            boolean r4 = r3.mNestedScrolled
            if (r4 != 0) goto L1e
            return
        L1e:
            int r4 = r3.mLastNestedScrollDy
            r6 = 4
            if (r4 <= 0) goto L26
        L23:
            int r4 = r3.mMinOffset
            goto L55
        L26:
            boolean r4 = r3.mHideable
            if (r4 == 0) goto L38
            float r4 = r3.getYVelocity()
            boolean r4 = r3.shouldHide(r5, r4)
            if (r4 == 0) goto L38
            int r4 = r3.mParentHeight
            r1 = 5
            goto L55
        L38:
            int r4 = r3.mLastNestedScrollDy
            if (r4 != 0) goto L52
            int r4 = r5.getTop()
            int r0 = r3.mMinOffset
            int r0 = r4 - r0
            int r0 = java.lang.Math.abs(r0)
            int r2 = r3.mMaxOffset
            int r4 = r4 - r2
            int r4 = java.lang.Math.abs(r4)
            if (r0 >= r4) goto L52
            goto L23
        L52:
            int r4 = r3.mMaxOffset
            r1 = 4
        L55:
            android.support.v4.widget.ViewDragHelper r6 = r3.mViewDragHelper
            int r0 = r5.getLeft()
            boolean r4 = r6.smoothSlideViewTo(r5, r0, r4)
            if (r4 == 0) goto L6e
            r4 = 2
            r3.setStateInternal(r4)
            android.support.design.widget.BottomSheetBehavior$SettleRunnable r4 = new android.support.design.widget.BottomSheetBehavior$SettleRunnable
            r4.<init>(r5, r1)
            android.support.v4.view.ViewCompat.postOnAnimation(r5, r4)
            goto L71
        L6e:
            r3.setStateInternal(r1)
        L71:
            r4 = 0
            r3.mNestedScrolled = r4
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.BottomSheetBehavior.onStopNestedScroll(android.support.design.widget.CoordinatorLayout, android.view.View, android.view.View):void");
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.mState == 1 && actionMasked == 0) {
            return true;
        }
        if (this.mViewDragHelper != null) {
            this.mViewDragHelper.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            reset();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        if (actionMasked == 2 && !this.mIgnoreEvents && Math.abs(this.mInitialY - motionEvent.getY()) > this.mViewDragHelper.getTouchSlop()) {
            this.mViewDragHelper.captureChildView(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.mIgnoreEvents;
    }

    public void setBottomSheetCallback(BottomSheetCallback bottomSheetCallback) {
        this.mCallback = bottomSheetCallback;
    }

    public void setHideable(boolean z) {
        this.mHideable = z;
    }

    public final void setPeekHeight(int i) {
        V v;
        boolean z = true;
        if (i == -1) {
            if (!this.mPeekHeightAuto) {
                this.mPeekHeightAuto = true;
            }
            z = false;
        } else {
            if (this.mPeekHeightAuto || this.mPeekHeight != i) {
                this.mPeekHeightAuto = false;
                this.mPeekHeight = Math.max(0, i);
                this.mMaxOffset = this.mParentHeight - i;
            }
            z = false;
        }
        if (!z || this.mState != 4 || this.mViewRef == null || (v = this.mViewRef.get()) == null) {
            return;
        }
        v.requestLayout();
    }

    public void setSkipCollapsed(boolean z) {
        this.mSkipCollapsed = z;
    }

    public final void setState(final int i) {
        if (i == this.mState) {
            return;
        }
        if (this.mViewRef == null) {
            if (i == 4 || i == 3 || (this.mHideable && i == 5)) {
                this.mState = i;
                return;
            }
            return;
        }
        final V v = this.mViewRef.get();
        if (v == null) {
            return;
        }
        ViewParent parent = v.getParent();
        if (parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(v)) {
            v.post(new Runnable() { // from class: android.support.design.widget.BottomSheetBehavior.1
                @Override // java.lang.Runnable
                public void run() {
                    BottomSheetBehavior.this.startSettlingAnimation(v, i);
                }
            });
        } else {
            startSettlingAnimation(v, i);
        }
    }

    void setStateInternal(int i) {
        if (this.mState == i) {
            return;
        }
        this.mState = i;
        V v = this.mViewRef.get();
        if (v == null || this.mCallback == null) {
            return;
        }
        this.mCallback.onStateChanged(v, i);
    }

    boolean shouldHide(View view, float f) {
        if (this.mSkipCollapsed) {
            return true;
        }
        return view.getTop() >= this.mMaxOffset && Math.abs((((float) view.getTop()) + (f * 0.1f)) - ((float) this.mMaxOffset)) / ((float) this.mPeekHeight) > HIDE_THRESHOLD;
    }

    void startSettlingAnimation(View view, int i) {
        int i2;
        if (i == 4) {
            i2 = this.mMaxOffset;
        } else if (i == 3) {
            i2 = this.mMinOffset;
        } else {
            if (!this.mHideable || i != 5) {
                throw new IllegalArgumentException("Illegal state argument: " + i);
            }
            i2 = this.mParentHeight;
        }
        if (!this.mViewDragHelper.smoothSlideViewTo(view, view.getLeft(), i2)) {
            setStateInternal(i);
        } else {
            setStateInternal(2);
            ViewCompat.postOnAnimation(view, new SettleRunnable(view, i));
        }
    }
}
