package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.ActivityChooserView;
import android.support.v7.widget.RecyclerView;
import android.util.DisplayMetrics;
import android.view.View;

/* loaded from: classes.dex */
public class PagerSnapHelper extends SnapHelper {
    private static final int MAX_SCROLL_ON_FLING_DURATION = 100;

    @Nullable
    private OrientationHelper mHorizontalHelper;

    @Nullable
    private OrientationHelper mVerticalHelper;

    private int distanceToCenter(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view, OrientationHelper orientationHelper) {
        return (orientationHelper.getDecoratedStart(view) + (orientationHelper.getDecoratedMeasurement(view) / 2)) - (layoutManager.getClipToPadding() ? orientationHelper.getStartAfterPadding() + (orientationHelper.getTotalSpace() / 2) : orientationHelper.getEnd() / 2);
    }

    @Nullable
    private View findCenterView(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int childCount = layoutManager.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int startAfterPadding = layoutManager.getClipToPadding() ? orientationHelper.getStartAfterPadding() + (orientationHelper.getTotalSpace() / 2) : orientationHelper.getEnd() / 2;
        int i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = layoutManager.getChildAt(i2);
            int abs = Math.abs((orientationHelper.getDecoratedStart(childAt) + (orientationHelper.getDecoratedMeasurement(childAt) / 2)) - startAfterPadding);
            if (abs < i) {
                view = childAt;
                i = abs;
            }
        }
        return view;
    }

    @Nullable
    private View findStartView(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int childCount = layoutManager.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = layoutManager.getChildAt(i2);
            int decoratedStart = orientationHelper.getDecoratedStart(childAt);
            if (decoratedStart < i) {
                view = childAt;
                i = decoratedStart;
            }
        }
        return view;
    }

    @NonNull
    private OrientationHelper getHorizontalHelper(@NonNull RecyclerView.LayoutManager layoutManager) {
        if (this.mHorizontalHelper == null || this.mHorizontalHelper.mLayoutManager != layoutManager) {
            this.mHorizontalHelper = OrientationHelper.createHorizontalHelper(layoutManager);
        }
        return this.mHorizontalHelper;
    }

    @NonNull
    private OrientationHelper getVerticalHelper(@NonNull RecyclerView.LayoutManager layoutManager) {
        if (this.mVerticalHelper == null || this.mVerticalHelper.mLayoutManager != layoutManager) {
            this.mVerticalHelper = OrientationHelper.createVerticalHelper(layoutManager);
        }
        return this.mVerticalHelper;
    }

    @Override // android.support.v7.widget.SnapHelper
    @Nullable
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        int[] iArr = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            iArr[0] = distanceToCenter(layoutManager, view, getHorizontalHelper(layoutManager));
        } else {
            iArr[0] = 0;
        }
        if (layoutManager.canScrollVertically()) {
            iArr[1] = distanceToCenter(layoutManager, view, getVerticalHelper(layoutManager));
            return iArr;
        }
        iArr[1] = 0;
        return iArr;
    }

    @Override // android.support.v7.widget.SnapHelper
    protected LinearSmoothScroller createSnapScroller(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) {
            return new LinearSmoothScroller(this.mRecyclerView.getContext()) { // from class: android.support.v7.widget.PagerSnapHelper.1
                @Override // android.support.v7.widget.LinearSmoothScroller
                protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                    return 100.0f / displayMetrics.densityDpi;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.support.v7.widget.LinearSmoothScroller
                public int calculateTimeForScrolling(int i) {
                    return Math.min(100, super.calculateTimeForScrolling(i));
                }

                @Override // android.support.v7.widget.LinearSmoothScroller, android.support.v7.widget.RecyclerView.SmoothScroller
                protected void onTargetFound(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
                    int[] calculateDistanceToFinalSnap = PagerSnapHelper.this.calculateDistanceToFinalSnap(PagerSnapHelper.this.mRecyclerView.getLayoutManager(), view);
                    int i = calculateDistanceToFinalSnap[0];
                    int i2 = calculateDistanceToFinalSnap[1];
                    int calculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i), Math.abs(i2)));
                    if (calculateTimeForDeceleration > 0) {
                        action.update(i, i2, calculateTimeForDeceleration, this.mDecelerateInterpolator);
                    }
                }
            };
        }
        return null;
    }

    @Override // android.support.v7.widget.SnapHelper
    @Nullable
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper horizontalHelper;
        if (layoutManager.canScrollVertically()) {
            horizontalHelper = getVerticalHelper(layoutManager);
        } else {
            if (!layoutManager.canScrollHorizontally()) {
                return null;
            }
            horizontalHelper = getHorizontalHelper(layoutManager);
        }
        return findCenterView(layoutManager, horizontalHelper);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005f  */
    @Override // android.support.v7.widget.SnapHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int findTargetSnapPosition(android.support.v7.widget.RecyclerView.LayoutManager r6, int r7, int r8) {
        /*
            r5 = this;
            int r0 = r6.getItemCount()
            r1 = -1
            if (r0 != 0) goto L8
            return r1
        L8:
            r2 = 0
            boolean r3 = r6.canScrollVertically()
            if (r3 == 0) goto L18
            android.support.v7.widget.OrientationHelper r2 = r5.getVerticalHelper(r6)
        L13:
            android.view.View r2 = r5.findStartView(r6, r2)
            goto L23
        L18:
            boolean r3 = r6.canScrollHorizontally()
            if (r3 == 0) goto L23
            android.support.v7.widget.OrientationHelper r2 = r5.getHorizontalHelper(r6)
            goto L13
        L23:
            if (r2 != 0) goto L26
            return r1
        L26:
            int r2 = r6.getPosition(r2)
            if (r2 != r1) goto L2d
            return r1
        L2d:
            boolean r1 = r6.canScrollHorizontally()
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L3b
            if (r7 <= 0) goto L39
        L37:
            r7 = 1
            goto L3e
        L39:
            r7 = 0
            goto L3e
        L3b:
            if (r8 <= 0) goto L39
            goto L37
        L3e:
            boolean r8 = r6 instanceof android.support.v7.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
            if (r8 == 0) goto L59
            android.support.v7.widget.RecyclerView$SmoothScroller$ScrollVectorProvider r6 = (android.support.v7.widget.RecyclerView.SmoothScroller.ScrollVectorProvider) r6
            int r0 = r0 - r4
            android.graphics.PointF r6 = r6.computeScrollVectorForPosition(r0)
            if (r6 == 0) goto L59
            float r8 = r6.x
            r0 = 0
            int r8 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r8 < 0) goto L58
            float r6 = r6.y
            int r6 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r6 >= 0) goto L59
        L58:
            r3 = 1
        L59:
            if (r3 == 0) goto L5f
            if (r7 == 0) goto L5e
            int r2 = r2 - r4
        L5e:
            return r2
        L5f:
            if (r7 == 0) goto L62
            int r2 = r2 + r4
        L62:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.PagerSnapHelper.findTargetSnapPosition(android.support.v7.widget.RecyclerView$LayoutManager, int, int):int");
    }
}
