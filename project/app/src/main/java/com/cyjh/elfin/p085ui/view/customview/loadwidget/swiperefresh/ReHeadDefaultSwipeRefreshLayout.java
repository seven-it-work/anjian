package com.cyjh.elfin.p085ui.view.customview.loadwidget.swiperefresh;

import android.content.Context;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.widget.AbsListView;

/* loaded from: classes.dex */
public abstract class ReHeadDefaultSwipeRefreshLayout<T> extends ReDefaultSwipeRefreshLayout {
    public ReHeadDefaultSwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.support.v4.widget.SwipeRefreshLayout
    public boolean canChildScrollUp() {
        if (Build.VERSION.SDK_INT >= 14) {
            return ViewCompat.canScrollVertically(this.f5505a, -1);
        }
        if (!(this.f5505a instanceof AbsListView)) {
            return this.f5505a.getScrollY() > 0;
        }
        BaseListView baseListView = this.f5505a;
        return baseListView.getChildCount() > 0 && (baseListView.getFirstVisiblePosition() > 0 || baseListView.getChildAt(0).getTop() < baseListView.getPaddingTop());
    }
}
