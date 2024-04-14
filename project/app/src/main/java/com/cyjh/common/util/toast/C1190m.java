package com.cyjh.common.util.toast;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import mobi.oneway.export.p197d.InterfaceC2667e;

/* renamed from: com.cyjh.common.util.toast.m */
/* loaded from: classes.dex */
public final class C1190m {

    /* renamed from: com.cyjh.common.util.toast.m$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void m4955a();
    }

    private C1190m() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0008. Please report as an issue. */
    /* renamed from: a */
    private static float m4946a(float f, int i) {
        float f2;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        switch (i) {
            case 0:
                return f;
            case 1:
                f2 = displayMetrics.density;
                return f * f2;
            case 2:
                f2 = displayMetrics.scaledDensity;
                return f * f2;
            case 3:
                f *= displayMetrics.xdpi;
                f2 = 0.013888889f;
                return f * f2;
            case 4:
                f2 = displayMetrics.xdpi;
                return f * f2;
            case 5:
                f *= displayMetrics.xdpi;
                f2 = 0.03937008f;
                return f * f2;
            default:
                return 0.0f;
        }
    }

    /* renamed from: a */
    private static int m4947a(float f) {
        return (int) ((f * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: a */
    private static int m4948a(View view) {
        return m4953c(view)[0];
    }

    /* renamed from: a */
    private static void m4949a(final View view, final a aVar) {
        view.post(new Runnable() { // from class: com.cyjh.common.util.toast.m.1
            @Override // java.lang.Runnable
            public final void run() {
            }
        });
    }

    /* renamed from: b */
    private static int m4950b(float f) {
        return (int) ((f / Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: b */
    private static int m4951b(View view) {
        return m4953c(view)[1];
    }

    /* renamed from: c */
    private static int m4952c(float f) {
        return (int) ((f * Resources.getSystem().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    /* renamed from: c */
    private static int[] m4953c(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -2);
        }
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(0, 0, layoutParams.width);
        int i = layoutParams.height;
        view.measure(childMeasureSpec, i > 0 ? View.MeasureSpec.makeMeasureSpec(i, InterfaceC2667e.f10237e) : View.MeasureSpec.makeMeasureSpec(0, 0));
        return new int[]{view.getMeasuredWidth(), view.getMeasuredHeight()};
    }

    /* renamed from: d */
    private static int m4954d(float f) {
        return (int) ((f / Resources.getSystem().getDisplayMetrics().scaledDensity) + 0.5f);
    }
}
