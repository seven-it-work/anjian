package com.cyjh.mobileanjian.ipc.uip;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.v4.view.GravityCompat;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import com.cyjh.mqsdk.C1696R;
import java.util.ArrayList;
import java.util.List;
import mobi.oneway.export.p197d.InterfaceC2667e;

@TargetApi(14)
/* renamed from: com.cyjh.mobileanjian.ipc.uip.b */
/* loaded from: classes.dex */
public final class C1642b extends ViewGroup {

    /* renamed from: a */
    private int f6370a;

    /* renamed from: b */
    private final List<List<View>> f6371b;

    /* renamed from: c */
    private final List<Integer> f6372c;

    /* renamed from: d */
    private final List<Integer> f6373d;

    /* renamed from: com.cyjh.mobileanjian.ipc.uip.b$a */
    /* loaded from: classes.dex */
    public static class a extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f6374a;

        public a(int i, int i2) {
            super(i, i2);
            this.f6374a = -1;
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f6374a = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1696R.styleable.FlowLayout_Layout);
            try {
                this.f6374a = obtainStyledAttributes.getInt(C1696R.styleable.FlowLayout_Layout_android_layout_gravity, -1);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f6374a = -1;
        }
    }

    public C1642b(Context context) {
        this(context, (byte) 0);
    }

    private C1642b(Context context, byte b2) {
        this(context, (char) 0);
    }

    private C1642b(Context context, char c2) {
        super(context, null, 0);
        this.f6370a = (m7454b() ? GravityCompat.START : 3) | 48;
        this.f6371b = new ArrayList();
        this.f6372c = new ArrayList();
        this.f6373d = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C1696R.styleable.FlowLayout, 0, 0);
        try {
            int i = obtainStyledAttributes.getInt(C1696R.styleable.FlowLayout_android_gravity, -1);
            if (i > 0) {
                setGravity(i);
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a */
    private static a m7451a() {
        return new a(-1, -1);
    }

    /* renamed from: a */
    private a m7452a(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    /* renamed from: a */
    private static a m7453a(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    /* renamed from: b */
    private static boolean m7454b() {
        return Build.VERSION.SDK_INT >= 14;
    }

    @Override // android.view.ViewGroup
    protected final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof a);
    }

    @Override // android.view.ViewGroup
    protected final /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new a(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected final /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    public final int getGravity() {
        return this.f6370a;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        List<View> list;
        int i8;
        int i9;
        int i10;
        C1642b c1642b = this;
        c1642b.f6371b.clear();
        c1642b.f6372c.clear();
        c1642b.f6373d.clear();
        int width = getWidth();
        int height = getHeight();
        int paddingTop = getPaddingTop();
        ArrayList arrayList = new ArrayList();
        int i11 = c1642b.f6370a & 7;
        float f = i11 != 1 ? i11 != 5 ? 0.0f : 1.0f : 0.5f;
        int i12 = paddingTop;
        ArrayList arrayList2 = arrayList;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (true) {
            i5 = 8;
            if (i13 >= getChildCount()) {
                break;
            }
            View childAt = c1642b.getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                a aVar = (a) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth() + aVar.leftMargin + aVar.rightMargin;
                int measuredHeight = childAt.getMeasuredHeight() + aVar.bottomMargin + aVar.topMargin;
                if (i15 + measuredWidth > width) {
                    c1642b.f6372c.add(Integer.valueOf(i14));
                    c1642b.f6371b.add(arrayList2);
                    c1642b.f6373d.add(Integer.valueOf(((int) ((width - i15) * f)) + getPaddingLeft()));
                    i12 += i14;
                    arrayList2 = new ArrayList();
                    i14 = 0;
                    i15 = 0;
                }
                i15 += measuredWidth;
                i14 = Math.max(i14, measuredHeight);
                arrayList2.add(childAt);
            }
            i13++;
        }
        c1642b.f6372c.add(Integer.valueOf(i14));
        c1642b.f6371b.add(arrayList2);
        c1642b.f6373d.add(Integer.valueOf(((int) ((width - i15) * f)) + getPaddingLeft()));
        int i16 = i12 + i14;
        int i17 = c1642b.f6370a & 112;
        int i18 = i17 != 16 ? i17 != 80 ? 0 : height - i16 : (height - i16) / 2;
        int size = c1642b.f6371b.size();
        int paddingTop2 = getPaddingTop();
        int i19 = 0;
        while (i19 < size) {
            int intValue = c1642b.f6372c.get(i19).intValue();
            List<View> list2 = c1642b.f6371b.get(i19);
            int intValue2 = c1642b.f6373d.get(i19).intValue();
            int size2 = list2.size();
            int i20 = intValue2;
            int i21 = 0;
            while (i21 < size2) {
                View view = list2.get(i21);
                if (view.getVisibility() != i5) {
                    a aVar2 = (a) view.getLayoutParams();
                    if (aVar2.height == -1) {
                        if (aVar2.width == -1) {
                            i9 = i15;
                        } else if (aVar2.width >= 0) {
                            i9 = aVar2.width;
                        } else {
                            i9 = i15;
                            i10 = Integer.MIN_VALUE;
                            view.measure(View.MeasureSpec.makeMeasureSpec(i9, i10), View.MeasureSpec.makeMeasureSpec((intValue - aVar2.topMargin) - aVar2.bottomMargin, InterfaceC2667e.f10237e));
                        }
                        i10 = InterfaceC2667e.f10237e;
                        view.measure(View.MeasureSpec.makeMeasureSpec(i9, i10), View.MeasureSpec.makeMeasureSpec((intValue - aVar2.topMargin) - aVar2.bottomMargin, InterfaceC2667e.f10237e));
                    }
                    int measuredWidth2 = view.getMeasuredWidth();
                    int measuredHeight2 = view.getMeasuredHeight();
                    if (Gravity.isVertical(aVar2.f6374a)) {
                        int i22 = aVar2.f6374a;
                        if (i22 != 80) {
                            switch (i22) {
                                case 16:
                                case 17:
                                    i8 = (((intValue - measuredHeight2) - aVar2.topMargin) - aVar2.bottomMargin) / 2;
                                    break;
                            }
                        } else {
                            i8 = ((intValue - measuredHeight2) - aVar2.topMargin) - aVar2.bottomMargin;
                        }
                        i6 = size;
                        i7 = i15;
                        list = list2;
                        view.layout(aVar2.leftMargin + i20, aVar2.topMargin + paddingTop2 + i8 + i18, i20 + measuredWidth2 + aVar2.leftMargin, measuredHeight2 + paddingTop2 + aVar2.topMargin + i8 + i18);
                        i20 += measuredWidth2 + aVar2.leftMargin + aVar2.rightMargin;
                    }
                    i8 = 0;
                    i6 = size;
                    i7 = i15;
                    list = list2;
                    view.layout(aVar2.leftMargin + i20, aVar2.topMargin + paddingTop2 + i8 + i18, i20 + measuredWidth2 + aVar2.leftMargin, measuredHeight2 + paddingTop2 + aVar2.topMargin + i8 + i18);
                    i20 += measuredWidth2 + aVar2.leftMargin + aVar2.rightMargin;
                } else {
                    i6 = size;
                    i7 = i15;
                    list = list2;
                }
                i21++;
                size = i6;
                i15 = i7;
                list2 = list;
                i5 = 8;
            }
            paddingTop2 += intValue;
            i19++;
            c1642b = this;
            i5 = 8;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0097  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final void onMeasure(int r21, int r22) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.uip.C1642b.onMeasure(int, int):void");
    }

    @TargetApi(14)
    public final void setGravity(int i) {
        if (this.f6370a != i) {
            if ((8388615 & i) == 0) {
                i |= m7454b() ? GravityCompat.START : 3;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.f6370a = i;
            requestLayout();
        }
    }
}
