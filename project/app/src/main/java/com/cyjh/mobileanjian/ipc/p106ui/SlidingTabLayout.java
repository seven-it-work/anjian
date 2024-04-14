package com.cyjh.mobileanjian.ipc.p106ui;

import android.R;
import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cyjh.mqsdk.C1696R;

/* loaded from: classes.dex */
public class SlidingTabLayout extends HorizontalScrollView {

    /* renamed from: b */
    private static final int f6143b = 24;

    /* renamed from: c */
    private static final int f6144c = 4;

    /* renamed from: d */
    private static final int f6145d = 12;

    /* renamed from: a */
    ViewPager f6146a;

    /* renamed from: e */
    private int f6147e;

    /* renamed from: f */
    private int f6148f;

    /* renamed from: g */
    private int f6149g;

    /* renamed from: h */
    private boolean f6150h;

    /* renamed from: i */
    private SparseArray<String> f6151i;

    /* renamed from: j */
    private ViewPager.OnPageChangeListener f6152j;

    /* renamed from: k */
    private final C1626d f6153k;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.mobileanjian.ipc.ui.SlidingTabLayout$a */
    /* loaded from: classes.dex */
    public class C1620a implements ViewPager.OnPageChangeListener {

        /* renamed from: b */
        private int f6155b;

        private C1620a() {
        }

        /* synthetic */ C1620a(SlidingTabLayout slidingTabLayout, byte b2) {
            this();
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public final void onPageScrollStateChanged(int i) {
            this.f6155b = i;
            if (SlidingTabLayout.this.f6152j != null) {
                SlidingTabLayout.this.f6152j.onPageScrollStateChanged(i);
            }
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public final void onPageScrolled(int i, float f, int i2) {
            int childCount = SlidingTabLayout.this.f6153k.getChildCount();
            if (childCount == 0 || i < 0 || i >= childCount) {
                return;
            }
            SlidingTabLayout.this.f6153k.m7248a(i, f);
            SlidingTabLayout.this.m7230b(i, SlidingTabLayout.this.f6153k.getChildAt(i) != null ? (int) (r0.getWidth() * f) : 0);
            if (SlidingTabLayout.this.f6152j != null) {
                SlidingTabLayout.this.f6152j.onPageScrolled(i, f, i2);
            }
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public final void onPageSelected(int i) {
            if (this.f6155b == 0) {
                SlidingTabLayout.this.f6153k.m7248a(i, 0.0f);
                SlidingTabLayout.this.m7230b(i, 0);
            }
            int i2 = 0;
            while (i2 < SlidingTabLayout.this.f6153k.getChildCount()) {
                SlidingTabLayout.this.f6153k.getChildAt(i2).setSelected(i == i2);
                i2++;
            }
            if (SlidingTabLayout.this.f6152j != null) {
                SlidingTabLayout.this.f6152j.onPageSelected(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.mobileanjian.ipc.ui.SlidingTabLayout$b */
    /* loaded from: classes.dex */
    public class ViewOnClickListenerC1621b implements View.OnClickListener {
        private ViewOnClickListenerC1621b() {
        }

        /* synthetic */ ViewOnClickListenerC1621b(SlidingTabLayout slidingTabLayout, byte b2) {
            this();
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            for (int i = 0; i < SlidingTabLayout.this.f6153k.getChildCount(); i++) {
                if (view == SlidingTabLayout.this.f6153k.getChildAt(i)) {
                    SlidingTabLayout.this.f6146a.setCurrentItem(i);
                    return;
                }
            }
        }
    }

    /* renamed from: com.cyjh.mobileanjian.ipc.ui.SlidingTabLayout$c */
    /* loaded from: classes.dex */
    public interface InterfaceC1622c {
        /* renamed from: a */
        int mo7232a(int i);
    }

    public SlidingTabLayout(Context context) {
        this(context, null);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6151i = new SparseArray<>();
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.f6147e = (int) (getResources().getDisplayMetrics().density * 24.0f);
        this.f6153k = new C1626d(context);
        addView(this.f6153k, -1, -2);
    }

    /* renamed from: a */
    private TextView m7222a(Context context) {
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setTextSize(2, 12.0f);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(R.attr.selectableItemBackground, typedValue, true);
        textView.setBackgroundResource(typedValue.resourceId);
        textView.setAllCaps(true);
        int i = (int) (getResources().getDisplayMetrics().density * 4.0f);
        textView.setPadding(i, i, i, i);
        textView.setSingleLine(true);
        return textView;
    }

    /* renamed from: a */
    private void m7224a() {
        View view;
        TextView textView;
        PagerAdapter adapter = this.f6146a.getAdapter();
        ViewOnClickListenerC1621b viewOnClickListenerC1621b = new ViewOnClickListenerC1621b(this, (byte) 0);
        for (int i = 0; i < adapter.getCount(); i++) {
            if (this.f6148f != 0) {
                view = LayoutInflater.from(getContext()).inflate(this.f6148f, (ViewGroup) this.f6153k, false);
                textView = (TextView) view.findViewById(this.f6149g);
            } else {
                view = null;
                textView = null;
            }
            if (view == null) {
                TextView textView2 = new TextView(getContext());
                textView2.setGravity(17);
                textView2.setTextSize(2, 12.0f);
                textView2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
                TypedValue typedValue = new TypedValue();
                getContext().getTheme().resolveAttribute(R.attr.selectableItemBackground, typedValue, true);
                textView2.setBackgroundResource(typedValue.resourceId);
                textView2.setAllCaps(true);
                int i2 = (int) (getResources().getDisplayMetrics().density * 4.0f);
                textView2.setPadding(i2, i2, i2, i2);
                textView2.setSingleLine(true);
                view = textView2;
            }
            if (textView == null && TextView.class.isInstance(view)) {
                textView = (TextView) view;
            }
            if (this.f6150h) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            }
            textView.setTextColor(getResources().getColorStateList(C1696R.color.selector_tab));
            textView.setTextSize(2, 14.0f);
            textView.setText(adapter.getPageTitle(i));
            textView.setAllCaps(false);
            view.setOnClickListener(viewOnClickListenerC1621b);
            String str = this.f6151i.get(i, null);
            if (str != null) {
                view.setContentDescription(str);
            }
            this.f6153k.addView(view);
            if (i == this.f6146a.getCurrentItem()) {
                view.setSelected(true);
            }
        }
    }

    /* renamed from: a */
    private void m7225a(int i, int i2) {
        this.f6148f = i;
        this.f6149g = i2;
    }

    /* renamed from: a */
    private void m7226a(int i, String str) {
        this.f6151i.put(i, str);
    }

    /* renamed from: a */
    private void m7227a(LinearLayout linearLayout, String str) {
        C1634l c1634l = (C1634l) this.f6146a.getAdapter();
        c1634l.f6317a.add(linearLayout);
        c1634l.f6318b.add(str);
        c1634l.notifyDataSetChanged();
        this.f6146a.setAdapter(c1634l);
        setViewPager(this.f6146a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m7230b(int i, int i2) {
        View childAt;
        int childCount = this.f6153k.getChildCount();
        if (childCount == 0 || i < 0 || i >= childCount || (childAt = this.f6153k.getChildAt(i)) == null) {
            return;
        }
        int left = childAt.getLeft() + i2;
        if (i > 0 || i2 > 0) {
            left -= this.f6147e;
        }
        scrollTo(left, 0);
    }

    public ViewPager getViewPager() {
        return this.f6146a;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f6146a != null) {
            m7230b(this.f6146a.getCurrentItem(), 0);
        }
    }

    public void setCustomTabColorizer(InterfaceC1622c interfaceC1622c) {
        C1626d c1626d = this.f6153k;
        c1626d.f6191a = interfaceC1622c;
        c1626d.invalidate();
    }

    public void setDistributeEvenly(boolean z) {
        this.f6150h = z;
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f6152j = onPageChangeListener;
    }

    public void setSelectedIndicatorColors(int... iArr) {
        C1626d c1626d = this.f6153k;
        c1626d.f6191a = null;
        c1626d.f6192b.f6199a = iArr;
        c1626d.invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        View view;
        TextView textView;
        this.f6153k.removeAllViews();
        this.f6146a = viewPager;
        if (viewPager != null) {
            byte b2 = 0;
            viewPager.setOnPageChangeListener(new C1620a(this, b2));
            PagerAdapter adapter = this.f6146a.getAdapter();
            ViewOnClickListenerC1621b viewOnClickListenerC1621b = new ViewOnClickListenerC1621b(this, b2);
            for (int i = 0; i < adapter.getCount(); i++) {
                if (this.f6148f != 0) {
                    view = LayoutInflater.from(getContext()).inflate(this.f6148f, (ViewGroup) this.f6153k, false);
                    textView = (TextView) view.findViewById(this.f6149g);
                } else {
                    view = null;
                    textView = null;
                }
                if (view == null) {
                    TextView textView2 = new TextView(getContext());
                    textView2.setGravity(17);
                    textView2.setTextSize(2, 12.0f);
                    textView2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
                    TypedValue typedValue = new TypedValue();
                    getContext().getTheme().resolveAttribute(R.attr.selectableItemBackground, typedValue, true);
                    textView2.setBackgroundResource(typedValue.resourceId);
                    textView2.setAllCaps(true);
                    int i2 = (int) (getResources().getDisplayMetrics().density * 4.0f);
                    textView2.setPadding(i2, i2, i2, i2);
                    textView2.setSingleLine(true);
                    view = textView2;
                }
                if (textView == null && TextView.class.isInstance(view)) {
                    textView = (TextView) view;
                }
                if (this.f6150h) {
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
                    layoutParams.width = 0;
                    layoutParams.weight = 1.0f;
                }
                textView.setTextColor(getResources().getColorStateList(C1696R.color.selector_tab));
                textView.setTextSize(2, 14.0f);
                textView.setText(adapter.getPageTitle(i));
                textView.setAllCaps(false);
                view.setOnClickListener(viewOnClickListenerC1621b);
                String str = this.f6151i.get(i, null);
                if (str != null) {
                    view.setContentDescription(str);
                }
                this.f6153k.addView(view);
                if (i == this.f6146a.getCurrentItem()) {
                    view.setSelected(true);
                }
            }
        }
    }
}
