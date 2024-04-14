package com.cyjh.elfin.p085ui.view.viewpagerindicator;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;

/* renamed from: com.cyjh.elfin.ui.view.viewpagerindicator.b */
/* loaded from: classes.dex */
final class C1442b extends LinearLayout {

    /* renamed from: a */
    private static final int[] f5523a = {R.attr.divider, R.attr.showDividers, R.attr.dividerPadding};

    /* renamed from: b */
    private static final int f5524b = 0;

    /* renamed from: c */
    private static final int f5525c = 1;

    /* renamed from: d */
    private static final int f5526d = 2;

    /* renamed from: e */
    private Drawable f5527e;

    /* renamed from: f */
    private int f5528f;

    /* renamed from: g */
    private int f5529g;

    /* renamed from: h */
    private int f5530h;

    /* renamed from: i */
    private int f5531i;

    public C1442b(Context context) {
        super(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, f5523a, com.hjol.R.attr.vpiTabPageIndicatorStyle, 0);
        setDividerDrawable(obtainStyledAttributes.getDrawable(0));
        this.f5531i = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.f5530h = obtainStyledAttributes.getInteger(1, 0);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private void m6620a(Canvas canvas) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt != null && childAt.getVisibility() != 8 && m6622a(i)) {
                m6621a(canvas, childAt.getTop() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).topMargin);
            }
        }
        if (m6622a(childCount)) {
            View childAt2 = getChildAt(childCount - 1);
            m6621a(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f5529g : childAt2.getBottom());
        }
    }

    /* renamed from: a */
    private void m6621a(Canvas canvas, int i) {
        this.f5527e.setBounds(getPaddingLeft() + this.f5531i, i, (getWidth() - getPaddingRight()) - this.f5531i, this.f5529g + i);
        this.f5527e.draw(canvas);
    }

    /* renamed from: a */
    private boolean m6622a(int i) {
        if (i != 0 && i != getChildCount() && (this.f5530h & 2) != 0) {
            for (int i2 = i - 1; i2 >= 0; i2--) {
                if (getChildAt(i2).getVisibility() != 8) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: b */
    private void m6623b(Canvas canvas) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt != null && childAt.getVisibility() != 8 && m6622a(i)) {
                m6624b(canvas, childAt.getLeft() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).leftMargin);
            }
        }
        if (m6622a(childCount)) {
            View childAt2 = getChildAt(childCount - 1);
            m6624b(canvas, childAt2 == null ? (getWidth() - getPaddingRight()) - this.f5528f : childAt2.getRight());
        }
    }

    /* renamed from: b */
    private void m6624b(Canvas canvas, int i) {
        this.f5527e.setBounds(i, getPaddingTop() + this.f5531i, this.f5528f + i, (getHeight() - getPaddingBottom()) - this.f5531i);
        this.f5527e.draw(canvas);
    }

    @Override // android.view.ViewGroup
    protected final void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        int indexOfChild = indexOfChild(view);
        int orientation = getOrientation();
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (m6622a(indexOfChild)) {
            if (orientation == 1) {
                layoutParams.topMargin = this.f5529g;
            } else {
                layoutParams.leftMargin = this.f5528f;
            }
        }
        int childCount = getChildCount();
        if (indexOfChild == childCount - 1 && m6622a(childCount)) {
            if (orientation == 1) {
                layoutParams.bottomMargin = this.f5529g;
            } else {
                layoutParams.rightMargin = this.f5528f;
            }
        }
        super.measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected final void onDraw(Canvas canvas) {
        if (this.f5527e != null) {
            int i = 0;
            if (getOrientation() == 1) {
                int childCount = getChildCount();
                while (i < childCount) {
                    View childAt = getChildAt(i);
                    if (childAt != null && childAt.getVisibility() != 8 && m6622a(i)) {
                        m6621a(canvas, childAt.getTop() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).topMargin);
                    }
                    i++;
                }
                if (m6622a(childCount)) {
                    View childAt2 = getChildAt(childCount - 1);
                    m6621a(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f5529g : childAt2.getBottom());
                }
            } else {
                int childCount2 = getChildCount();
                while (i < childCount2) {
                    View childAt3 = getChildAt(i);
                    if (childAt3 != null && childAt3.getVisibility() != 8 && m6622a(i)) {
                        m6624b(canvas, childAt3.getLeft() - ((LinearLayout.LayoutParams) childAt3.getLayoutParams()).leftMargin);
                    }
                    i++;
                }
                if (m6622a(childCount2)) {
                    View childAt4 = getChildAt(childCount2 - 1);
                    m6624b(canvas, childAt4 == null ? (getWidth() - getPaddingRight()) - this.f5528f : childAt4.getRight());
                }
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.LinearLayout
    public final void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f5527e) {
            return;
        }
        this.f5527e = drawable;
        if (drawable != null) {
            this.f5528f = drawable.getIntrinsicWidth();
            this.f5529g = drawable.getIntrinsicHeight();
        } else {
            this.f5528f = 0;
            this.f5529g = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }
}
