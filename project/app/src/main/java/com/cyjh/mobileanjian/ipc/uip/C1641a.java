package com.cyjh.mobileanjian.ipc.uip;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.support.annotation.AnimatorRes;
import android.support.annotation.DrawableRes;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import com.cyjh.mqsdk.C1696R;

/* renamed from: com.cyjh.mobileanjian.ipc.uip.a */
/* loaded from: classes.dex */
public final class C1641a extends LinearLayout {

    /* renamed from: a */
    private static final int f6351a = 8;

    /* renamed from: b */
    private ViewPager f6352b;

    /* renamed from: c */
    private int f6353c;

    /* renamed from: d */
    private int f6354d;

    /* renamed from: e */
    private int f6355e;

    /* renamed from: f */
    private int f6356f;

    /* renamed from: g */
    private int f6357g;

    /* renamed from: h */
    private int f6358h;

    /* renamed from: i */
    private int f6359i;

    /* renamed from: j */
    private Animator f6360j;

    /* renamed from: k */
    private Animator f6361k;

    /* renamed from: l */
    private Animator f6362l;

    /* renamed from: m */
    private Animator f6363m;

    /* renamed from: n */
    private int f6364n;

    /* renamed from: o */
    private final ViewPager.OnPageChangeListener f6365o;

    /* renamed from: p */
    private DataSetObserver f6366p;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.mobileanjian.ipc.uip.a$a */
    /* loaded from: classes.dex */
    public class a implements Interpolator {
        private a() {
        }

        /* synthetic */ a(C1641a c1641a, byte b2) {
            this();
        }

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            return Math.abs(1.0f - f);
        }
    }

    public C1641a(Context context) {
        super(context);
        this.f6353c = -1;
        this.f6354d = -1;
        this.f6355e = -1;
        this.f6356f = C1696R.animator.no_animator;
        this.f6357g = 0;
        this.f6358h = C1696R.drawable.ci_blue_point;
        this.f6359i = C1696R.drawable.ci_gray_point;
        this.f6364n = -1;
        this.f6365o = new ViewPager.OnPageChangeListener() { // from class: com.cyjh.mobileanjian.ipc.uip.a.1
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public final void onPageScrollStateChanged(int i) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public final void onPageScrolled(int i, float f, int i2) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public final void onPageSelected(int i) {
                View childAt;
                if (C1641a.this.f6352b.getAdapter() == null || C1641a.this.f6352b.getAdapter().getCount() <= 0) {
                    return;
                }
                if (C1641a.this.f6361k.isRunning()) {
                    C1641a.this.f6361k.end();
                    C1641a.this.f6361k.cancel();
                }
                if (C1641a.this.f6360j.isRunning()) {
                    C1641a.this.f6360j.end();
                    C1641a.this.f6360j.cancel();
                }
                if (C1641a.this.f6364n >= 0 && (childAt = C1641a.this.getChildAt(C1641a.this.f6364n)) != null) {
                    childAt.setBackgroundResource(C1641a.this.f6359i);
                    C1641a.this.f6361k.setTarget(childAt);
                    C1641a.this.f6361k.start();
                }
                View childAt2 = C1641a.this.getChildAt(i);
                if (childAt2 != null) {
                    childAt2.setBackgroundResource(C1641a.this.f6358h);
                    C1641a.this.f6360j.setTarget(childAt2);
                    C1641a.this.f6360j.start();
                }
                C1641a.this.f6364n = i;
            }
        };
        this.f6366p = new DataSetObserver() { // from class: com.cyjh.mobileanjian.ipc.uip.a.2
            @Override // android.database.DataSetObserver
            public final void onChanged() {
                int count;
                C1641a c1641a;
                int i;
                super.onChanged();
                if (C1641a.this.f6352b == null || (count = C1641a.this.f6352b.getAdapter().getCount()) == C1641a.this.getChildCount()) {
                    return;
                }
                if (C1641a.this.f6364n < count) {
                    c1641a = C1641a.this;
                    i = C1641a.this.f6352b.getCurrentItem();
                } else {
                    c1641a = C1641a.this;
                    i = -1;
                }
                c1641a.f6364n = i;
                C1641a.this.m7435a();
            }
        };
        m7440a(context, (AttributeSet) null);
    }

    private C1641a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6353c = -1;
        this.f6354d = -1;
        this.f6355e = -1;
        this.f6356f = C1696R.animator.no_animator;
        this.f6357g = 0;
        this.f6358h = C1696R.drawable.ci_blue_point;
        this.f6359i = C1696R.drawable.ci_gray_point;
        this.f6364n = -1;
        this.f6365o = new ViewPager.OnPageChangeListener() { // from class: com.cyjh.mobileanjian.ipc.uip.a.1
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public final void onPageScrollStateChanged(int i) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public final void onPageScrolled(int i, float f, int i2) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public final void onPageSelected(int i) {
                View childAt;
                if (C1641a.this.f6352b.getAdapter() == null || C1641a.this.f6352b.getAdapter().getCount() <= 0) {
                    return;
                }
                if (C1641a.this.f6361k.isRunning()) {
                    C1641a.this.f6361k.end();
                    C1641a.this.f6361k.cancel();
                }
                if (C1641a.this.f6360j.isRunning()) {
                    C1641a.this.f6360j.end();
                    C1641a.this.f6360j.cancel();
                }
                if (C1641a.this.f6364n >= 0 && (childAt = C1641a.this.getChildAt(C1641a.this.f6364n)) != null) {
                    childAt.setBackgroundResource(C1641a.this.f6359i);
                    C1641a.this.f6361k.setTarget(childAt);
                    C1641a.this.f6361k.start();
                }
                View childAt2 = C1641a.this.getChildAt(i);
                if (childAt2 != null) {
                    childAt2.setBackgroundResource(C1641a.this.f6358h);
                    C1641a.this.f6360j.setTarget(childAt2);
                    C1641a.this.f6360j.start();
                }
                C1641a.this.f6364n = i;
            }
        };
        this.f6366p = new DataSetObserver() { // from class: com.cyjh.mobileanjian.ipc.uip.a.2
            @Override // android.database.DataSetObserver
            public final void onChanged() {
                int count;
                C1641a c1641a;
                int i;
                super.onChanged();
                if (C1641a.this.f6352b == null || (count = C1641a.this.f6352b.getAdapter().getCount()) == C1641a.this.getChildCount()) {
                    return;
                }
                if (C1641a.this.f6364n < count) {
                    c1641a = C1641a.this;
                    i = C1641a.this.f6352b.getCurrentItem();
                } else {
                    c1641a = C1641a.this;
                    i = -1;
                }
                c1641a.f6364n = i;
                C1641a.this.m7435a();
            }
        };
        m7440a(context, attributeSet);
    }

    private C1641a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6353c = -1;
        this.f6354d = -1;
        this.f6355e = -1;
        this.f6356f = C1696R.animator.no_animator;
        this.f6357g = 0;
        this.f6358h = C1696R.drawable.ci_blue_point;
        this.f6359i = C1696R.drawable.ci_gray_point;
        this.f6364n = -1;
        this.f6365o = new ViewPager.OnPageChangeListener() { // from class: com.cyjh.mobileanjian.ipc.uip.a.1
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public final void onPageScrollStateChanged(int i2) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public final void onPageScrolled(int i2, float f, int i22) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public final void onPageSelected(int i2) {
                View childAt;
                if (C1641a.this.f6352b.getAdapter() == null || C1641a.this.f6352b.getAdapter().getCount() <= 0) {
                    return;
                }
                if (C1641a.this.f6361k.isRunning()) {
                    C1641a.this.f6361k.end();
                    C1641a.this.f6361k.cancel();
                }
                if (C1641a.this.f6360j.isRunning()) {
                    C1641a.this.f6360j.end();
                    C1641a.this.f6360j.cancel();
                }
                if (C1641a.this.f6364n >= 0 && (childAt = C1641a.this.getChildAt(C1641a.this.f6364n)) != null) {
                    childAt.setBackgroundResource(C1641a.this.f6359i);
                    C1641a.this.f6361k.setTarget(childAt);
                    C1641a.this.f6361k.start();
                }
                View childAt2 = C1641a.this.getChildAt(i2);
                if (childAt2 != null) {
                    childAt2.setBackgroundResource(C1641a.this.f6358h);
                    C1641a.this.f6360j.setTarget(childAt2);
                    C1641a.this.f6360j.start();
                }
                C1641a.this.f6364n = i2;
            }
        };
        this.f6366p = new DataSetObserver() { // from class: com.cyjh.mobileanjian.ipc.uip.a.2
            @Override // android.database.DataSetObserver
            public final void onChanged() {
                int count;
                C1641a c1641a;
                int i2;
                super.onChanged();
                if (C1641a.this.f6352b == null || (count = C1641a.this.f6352b.getAdapter().getCount()) == C1641a.this.getChildCount()) {
                    return;
                }
                if (C1641a.this.f6364n < count) {
                    c1641a = C1641a.this;
                    i2 = C1641a.this.f6352b.getCurrentItem();
                } else {
                    c1641a = C1641a.this;
                    i2 = -1;
                }
                c1641a.f6364n = i2;
                C1641a.this.m7435a();
            }
        };
        m7440a(context, attributeSet);
    }

    @TargetApi(21)
    private C1641a(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f6353c = -1;
        this.f6354d = -1;
        this.f6355e = -1;
        this.f6356f = C1696R.animator.no_animator;
        this.f6357g = 0;
        this.f6358h = C1696R.drawable.ci_blue_point;
        this.f6359i = C1696R.drawable.ci_gray_point;
        this.f6364n = -1;
        this.f6365o = new ViewPager.OnPageChangeListener() { // from class: com.cyjh.mobileanjian.ipc.uip.a.1
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public final void onPageScrollStateChanged(int i22) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public final void onPageScrolled(int i22, float f, int i222) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public final void onPageSelected(int i22) {
                View childAt;
                if (C1641a.this.f6352b.getAdapter() == null || C1641a.this.f6352b.getAdapter().getCount() <= 0) {
                    return;
                }
                if (C1641a.this.f6361k.isRunning()) {
                    C1641a.this.f6361k.end();
                    C1641a.this.f6361k.cancel();
                }
                if (C1641a.this.f6360j.isRunning()) {
                    C1641a.this.f6360j.end();
                    C1641a.this.f6360j.cancel();
                }
                if (C1641a.this.f6364n >= 0 && (childAt = C1641a.this.getChildAt(C1641a.this.f6364n)) != null) {
                    childAt.setBackgroundResource(C1641a.this.f6359i);
                    C1641a.this.f6361k.setTarget(childAt);
                    C1641a.this.f6361k.start();
                }
                View childAt2 = C1641a.this.getChildAt(i22);
                if (childAt2 != null) {
                    childAt2.setBackgroundResource(C1641a.this.f6358h);
                    C1641a.this.f6360j.setTarget(childAt2);
                    C1641a.this.f6360j.start();
                }
                C1641a.this.f6364n = i22;
            }
        };
        this.f6366p = new DataSetObserver() { // from class: com.cyjh.mobileanjian.ipc.uip.a.2
            @Override // android.database.DataSetObserver
            public final void onChanged() {
                int count;
                C1641a c1641a;
                int i22;
                super.onChanged();
                if (C1641a.this.f6352b == null || (count = C1641a.this.f6352b.getAdapter().getCount()) == C1641a.this.getChildCount()) {
                    return;
                }
                if (C1641a.this.f6364n < count) {
                    c1641a = C1641a.this;
                    i22 = C1641a.this.f6352b.getCurrentItem();
                } else {
                    c1641a = C1641a.this;
                    i22 = -1;
                }
                c1641a.f6364n = i22;
                C1641a.this.m7435a();
            }
        };
        m7440a(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7435a() {
        int i;
        Animator animator;
        removeAllViews();
        int count = this.f6352b.getAdapter().getCount();
        if (count <= 0) {
            return;
        }
        int currentItem = this.f6352b.getCurrentItem();
        int orientation = getOrientation();
        for (int i2 = 0; i2 < count; i2++) {
            if (currentItem == i2) {
                i = this.f6358h;
                animator = this.f6362l;
            } else {
                i = this.f6359i;
                animator = this.f6363m;
            }
            m7438a(orientation, i, animator);
        }
    }

    /* renamed from: a */
    private void m7436a(int i, int i2, int i3) {
        int i4 = C1696R.animator.scale_with_alpha;
        int i5 = C1696R.drawable.white_radius;
        int i6 = C1696R.drawable.white_radius;
        this.f6354d = i;
        this.f6355e = i2;
        this.f6353c = i3;
        this.f6356f = i4;
        this.f6357g = 0;
        this.f6358h = i5;
        this.f6359i = i6;
        m7439a(getContext());
    }

    /* renamed from: a */
    private void m7437a(int i, int i2, int i3, @AnimatorRes int i4, @DrawableRes int i5, @DrawableRes int i6) {
        this.f6354d = i;
        this.f6355e = i2;
        this.f6353c = i3;
        this.f6356f = i4;
        this.f6357g = 0;
        this.f6358h = i5;
        this.f6359i = i6;
        m7439a(getContext());
    }

    /* renamed from: a */
    private void m7438a(int i, @DrawableRes int i2, Animator animator) {
        if (animator.isRunning()) {
            animator.end();
            animator.cancel();
        }
        View view = new View(getContext());
        view.setBackgroundResource(i2);
        addView(view, this.f6354d, this.f6355e);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (i == 0) {
            layoutParams.leftMargin = this.f6353c;
            layoutParams.rightMargin = this.f6353c;
        } else {
            layoutParams.topMargin = this.f6353c;
            layoutParams.bottomMargin = this.f6353c;
        }
        view.setLayoutParams(layoutParams);
        animator.setTarget(view);
        animator.start();
    }

    /* renamed from: a */
    private void m7439a(Context context) {
        this.f6354d = this.f6354d < 0 ? m7450a(8.0f) : this.f6354d;
        this.f6355e = this.f6355e < 0 ? m7450a(8.0f) : this.f6355e;
        this.f6353c = this.f6353c < 0 ? m7450a(8.0f) : this.f6353c;
        this.f6356f = this.f6356f == 0 ? C1696R.animator.scale_with_alpha : this.f6356f;
        this.f6360j = m7441b(context);
        this.f6362l = m7441b(context);
        this.f6362l.setDuration(0L);
        this.f6361k = m7444c(context);
        this.f6363m = m7444c(context);
        this.f6363m.setDuration(0L);
        this.f6358h = this.f6358h == 0 ? C1696R.drawable.white_radius : this.f6358h;
        this.f6359i = this.f6359i == 0 ? this.f6358h : this.f6359i;
    }

    /* renamed from: a */
    private void m7440a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1696R.styleable.CircleIndicator);
            this.f6354d = obtainStyledAttributes.getDimensionPixelSize(C1696R.styleable.CircleIndicator_ci_width, -1);
            this.f6355e = obtainStyledAttributes.getDimensionPixelSize(C1696R.styleable.CircleIndicator_ci_height, -1);
            this.f6353c = obtainStyledAttributes.getDimensionPixelSize(C1696R.styleable.CircleIndicator_ci_margin, -1);
            this.f6356f = obtainStyledAttributes.getResourceId(C1696R.styleable.CircleIndicator_ci_animator, C1696R.animator.scale_with_alpha);
            this.f6357g = obtainStyledAttributes.getResourceId(C1696R.styleable.CircleIndicator_ci_animator_reverse, 0);
            this.f6358h = obtainStyledAttributes.getResourceId(C1696R.styleable.CircleIndicator_ci_drawable, C1696R.drawable.white_radius);
            this.f6359i = obtainStyledAttributes.getResourceId(C1696R.styleable.CircleIndicator_ci_drawable_unselected, this.f6358h);
            setOrientation(obtainStyledAttributes.getInt(C1696R.styleable.CircleIndicator_ci_orientation, -1) == 1 ? 1 : 0);
            int i = obtainStyledAttributes.getInt(C1696R.styleable.CircleIndicator_ci_gravity, -1);
            if (i < 0) {
                i = 17;
            }
            setGravity(i);
            obtainStyledAttributes.recycle();
        }
        m7439a(context);
    }

    /* renamed from: b */
    private Animator m7441b(Context context) {
        return AnimatorInflater.loadAnimator(context, this.f6356f);
    }

    /* renamed from: b */
    private void m7443b(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1696R.styleable.CircleIndicator);
        this.f6354d = obtainStyledAttributes.getDimensionPixelSize(C1696R.styleable.CircleIndicator_ci_width, -1);
        this.f6355e = obtainStyledAttributes.getDimensionPixelSize(C1696R.styleable.CircleIndicator_ci_height, -1);
        this.f6353c = obtainStyledAttributes.getDimensionPixelSize(C1696R.styleable.CircleIndicator_ci_margin, -1);
        this.f6356f = obtainStyledAttributes.getResourceId(C1696R.styleable.CircleIndicator_ci_animator, C1696R.animator.scale_with_alpha);
        this.f6357g = obtainStyledAttributes.getResourceId(C1696R.styleable.CircleIndicator_ci_animator_reverse, 0);
        this.f6358h = obtainStyledAttributes.getResourceId(C1696R.styleable.CircleIndicator_ci_drawable, C1696R.drawable.white_radius);
        this.f6359i = obtainStyledAttributes.getResourceId(C1696R.styleable.CircleIndicator_ci_drawable_unselected, this.f6358h);
        setOrientation(obtainStyledAttributes.getInt(C1696R.styleable.CircleIndicator_ci_orientation, -1) == 1 ? 1 : 0);
        int i = obtainStyledAttributes.getInt(C1696R.styleable.CircleIndicator_ci_gravity, -1);
        if (i < 0) {
            i = 17;
        }
        setGravity(i);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: c */
    private Animator m7444c(Context context) {
        if (this.f6357g != 0) {
            return AnimatorInflater.loadAnimator(context, this.f6357g);
        }
        Animator loadAnimator = AnimatorInflater.loadAnimator(context, this.f6356f);
        loadAnimator.setInterpolator(new a(this, (byte) 0));
        return loadAnimator;
    }

    /* renamed from: a */
    public final int m7450a(float f) {
        return (int) ((f * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public final DataSetObserver getDataSetObserver() {
        return this.f6366p;
    }

    @Deprecated
    public final void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        if (this.f6352b == null) {
            throw new NullPointerException("can not find Viewpager , setViewPager first");
        }
        this.f6352b.removeOnPageChangeListener(onPageChangeListener);
        this.f6352b.addOnPageChangeListener(onPageChangeListener);
    }

    public final void setViewPager(ViewPager viewPager) {
        this.f6352b = viewPager;
        if (this.f6352b == null || this.f6352b.getAdapter() == null) {
            return;
        }
        this.f6364n = -1;
        m7435a();
        this.f6352b.removeOnPageChangeListener(this.f6365o);
        this.f6352b.addOnPageChangeListener(this.f6365o);
        this.f6365o.onPageSelected(this.f6352b.getCurrentItem());
    }
}
