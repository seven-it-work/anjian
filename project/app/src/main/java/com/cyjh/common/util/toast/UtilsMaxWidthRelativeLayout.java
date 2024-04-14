package com.cyjh.common.util.toast;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.View;
import android.view.WindowManager;
import android.widget.RelativeLayout;

/* loaded from: classes.dex */
public class UtilsMaxWidthRelativeLayout extends RelativeLayout {

    /* renamed from: a */
    private static final int f4127a = (int) ((Resources.getSystem().getDisplayMetrics().density * 80.0f) + 0.5f);

    public UtilsMaxWidthRelativeLayout(Context context) {
        super(context);
    }

    public UtilsMaxWidthRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public UtilsMaxWidthRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        WindowManager windowManager = (WindowManager) C1194q.m5135a().getSystemService("window");
        if (windowManager == null) {
            i3 = -1;
        } else {
            Point point = new Point();
            windowManager.getDefaultDisplay().getSize(point);
            i3 = point.x;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3 - f4127a, Integer.MIN_VALUE), i2);
    }
}
