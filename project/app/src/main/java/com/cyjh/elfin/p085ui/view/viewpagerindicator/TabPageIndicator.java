package com.cyjh.elfin.p085ui.view.viewpagerindicator;

import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.hjol.R;
import mobi.oneway.export.p197d.InterfaceC2667e;

/* loaded from: classes.dex */
public class TabPageIndicator extends HorizontalScrollView implements PageIndicator {

    /* renamed from: a */
    private static final CharSequence f5509a = "";

    /* renamed from: b */
    private Runnable f5510b;

    /* renamed from: c */
    private final View.OnClickListener f5511c;

    /* renamed from: d */
    private final C1442b f5512d;

    /* renamed from: e */
    private ViewPager f5513e;

    /* renamed from: f */
    private ViewPager.OnPageChangeListener f5514f;

    /* renamed from: g */
    private int f5515g;

    /* renamed from: h */
    private int f5516h;

    /* renamed from: i */
    private InterfaceC1439a f5517i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.ui.view.viewpagerindicator.TabPageIndicator$2 */
    /* loaded from: classes.dex */
    public final class RunnableC14382 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ View f5519a;

        RunnableC14382(View view) {
            this.f5519a = view;
        }

        @Override // java.lang.Runnable
        public final void run() {
            TabPageIndicator.this.smoothScrollTo(this.f5519a.getLeft() - ((TabPageIndicator.this.getWidth() - this.f5519a.getWidth()) / 2), 0);
            TabPageIndicator.m6613c(TabPageIndicator.this);
        }
    }

    /* renamed from: com.cyjh.elfin.ui.view.viewpagerindicator.TabPageIndicator$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1439a {
        /* renamed from: a */
        void m6615a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.elfin.ui.view.viewpagerindicator.TabPageIndicator$b */
    /* loaded from: classes.dex */
    public class C1440b extends TextView {

        /* renamed from: a */
        int f5521a;

        public C1440b(Context context) {
            super(context, null, R.attr.vpiTabPageIndicatorStyle);
        }

        /* renamed from: a */
        private int m6616a() {
            return this.f5521a;
        }

        @Override // android.widget.TextView, android.view.View
        public final void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (TabPageIndicator.this.f5515g <= 0 || getMeasuredWidth() <= TabPageIndicator.this.f5515g) {
                return;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(TabPageIndicator.this.f5515g, InterfaceC2667e.f10237e), i2);
        }
    }

    public TabPageIndicator(Context context) {
        this(context, null);
    }

    public TabPageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5511c = new View.OnClickListener() { // from class: com.cyjh.elfin.ui.view.viewpagerindicator.TabPageIndicator.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int currentItem = TabPageIndicator.this.f5513e.getCurrentItem();
                int i = ((C1440b) view).f5521a;
                TabPageIndicator.this.f5513e.setCurrentItem(i);
                if (currentItem != i || TabPageIndicator.this.f5517i == null) {
                    return;
                }
                InterfaceC1439a unused = TabPageIndicator.this.f5517i;
            }
        };
        setHorizontalScrollBarEnabled(false);
        this.f5512d = new C1442b(context);
        addView(this.f5512d, new ViewGroup.LayoutParams(-2, -1));
    }

    /* renamed from: a */
    private void m6610a(int i) {
        View childAt = this.f5512d.getChildAt(i);
        if (this.f5510b != null) {
            removeCallbacks(this.f5510b);
        }
        this.f5510b = new RunnableC14382(childAt);
        post(this.f5510b);
    }

    /* renamed from: a */
    private void m6611a(int i, CharSequence charSequence, int i2) {
        C1440b c1440b = new C1440b(getContext());
        c1440b.f5521a = i;
        c1440b.setFocusable(true);
        c1440b.setOnClickListener(this.f5511c);
        c1440b.setText(charSequence);
        if (i2 != 0) {
            c1440b.setCompoundDrawablesWithIntrinsicBounds(i2, 0, 0, 0);
        }
        this.f5512d.addView(c1440b, new LinearLayout.LayoutParams(0, -1, 1.0f));
    }

    /* renamed from: c */
    static /* synthetic */ Runnable m6613c(TabPageIndicator tabPageIndicator) {
        tabPageIndicator.f5510b = null;
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.cyjh.elfin.p085ui.view.viewpagerindicator.PageIndicator
    /* renamed from: a */
    public final void mo6607a() {
        this.f5512d.removeAllViews();
        PagerAdapter adapter = this.f5513e.getAdapter();
        InterfaceC1441a interfaceC1441a = adapter instanceof InterfaceC1441a ? (InterfaceC1441a) adapter : null;
        int count = adapter.getCount();
        for (int i = 0; i < count; i++) {
            CharSequence pageTitle = adapter.getPageTitle(i);
            if (pageTitle == null) {
                pageTitle = f5509a;
            }
            int m6618a = interfaceC1441a != null ? interfaceC1441a.m6618a() : 0;
            C1440b c1440b = new C1440b(getContext());
            c1440b.f5521a = i;
            c1440b.setFocusable(true);
            c1440b.setOnClickListener(this.f5511c);
            c1440b.setText(pageTitle);
            if (m6618a != 0) {
                c1440b.setCompoundDrawablesWithIntrinsicBounds(m6618a, 0, 0, 0);
            }
            this.f5512d.addView(c1440b, new LinearLayout.LayoutParams(0, -1, 1.0f));
        }
        if (this.f5516h > count) {
            this.f5516h = count - 1;
        }
        setCurrentItem(this.f5516h);
        requestLayout();
    }

    @Override // com.cyjh.elfin.p085ui.view.viewpagerindicator.PageIndicator
    /* renamed from: a */
    public final void mo6608a(ViewPager viewPager, int i) {
        setViewPager(viewPager);
        setCurrentItem(i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f5510b != null) {
            post(this.f5510b);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f5510b != null) {
            removeCallbacks(this.f5510b);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int mode = View.MeasureSpec.getMode(i);
        boolean z = mode == 1073741824;
        setFillViewport(z);
        int childCount = this.f5512d.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            i3 = -1;
        } else {
            if (childCount <= 2) {
                this.f5515g = View.MeasureSpec.getSize(i) / 2;
                int measuredWidth = getMeasuredWidth();
                super.onMeasure(i, i2);
                int measuredWidth2 = getMeasuredWidth();
                if (z || measuredWidth == measuredWidth2) {
                }
                setCurrentItem(this.f5516h);
                return;
            }
            i3 = (int) (View.MeasureSpec.getSize(i) * 0.4f);
        }
        this.f5515g = i3;
        int measuredWidth3 = getMeasuredWidth();
        super.onMeasure(i, i2);
        int measuredWidth22 = getMeasuredWidth();
        if (z) {
        }
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        if (this.f5514f != null) {
            this.f5514f.onPageScrollStateChanged(i);
        }
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        if (this.f5514f != null) {
            this.f5514f.onPageScrolled(i, f, i2);
        }
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        setCurrentItem(i);
        if (this.f5514f != null) {
            this.f5514f.onPageSelected(i);
        }
    }

    @Override // com.cyjh.elfin.p085ui.view.viewpagerindicator.PageIndicator
    public void setCurrentItem(int i) {
        if (this.f5513e == null) {
            throw new IllegalStateException("ViewPager has not been bound.");
        }
        this.f5516h = i;
        this.f5513e.setCurrentItem(i);
        int childCount = this.f5512d.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.f5512d.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                View childAt2 = this.f5512d.getChildAt(i);
                if (this.f5510b != null) {
                    removeCallbacks(this.f5510b);
                }
                this.f5510b = new RunnableC14382(childAt2);
                post(this.f5510b);
            }
            i2++;
        }
    }

    @Override // com.cyjh.elfin.p085ui.view.viewpagerindicator.PageIndicator
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f5514f = onPageChangeListener;
    }

    public void setOnTabReselectedListener(InterfaceC1439a interfaceC1439a) {
        this.f5517i = interfaceC1439a;
    }

    @Override // com.cyjh.elfin.p085ui.view.viewpagerindicator.PageIndicator
    public void setViewPager(ViewPager viewPager) {
        if (this.f5513e == viewPager) {
            return;
        }
        if (this.f5513e != null) {
            this.f5513e.setOnPageChangeListener(null);
        }
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        this.f5513e = viewPager;
        viewPager.setOnPageChangeListener(this);
        mo6607a();
    }
}
