package com.cyjh.elfin.p085ui.view.viewpagerindicator;

import android.support.v4.view.ViewPager;

/* loaded from: classes.dex */
public interface PageIndicator extends ViewPager.OnPageChangeListener {
    /* renamed from: a */
    void mo6607a();

    /* renamed from: a */
    void mo6608a(ViewPager viewPager, int i);

    void setCurrentItem(int i);

    void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener);

    void setViewPager(ViewPager viewPager);
}
