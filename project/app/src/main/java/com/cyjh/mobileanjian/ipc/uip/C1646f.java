package com.cyjh.mobileanjian.ipc.uip;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import java.util.List;

/* renamed from: com.cyjh.mobileanjian.ipc.uip.f */
/* loaded from: classes.dex */
public final class C1646f extends PagerAdapter {

    /* renamed from: a */
    private List<ScrollView> f6388a;

    /* renamed from: b */
    private List<String> f6389b;

    public C1646f(List<ScrollView> list, List<String> list2) {
        this.f6388a = list;
        this.f6389b = list2;
    }

    @Override // android.support.v4.view.PagerAdapter
    public final void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView(this.f6388a.get(i));
    }

    @Override // android.support.v4.view.PagerAdapter
    public final int getCount() {
        return this.f6388a.size();
    }

    @Override // android.support.v4.view.PagerAdapter
    public final CharSequence getPageTitle(int i) {
        return this.f6389b.get(i);
    }

    @Override // android.support.v4.view.PagerAdapter
    public final Object instantiateItem(ViewGroup viewGroup, int i) {
        ScrollView scrollView = this.f6388a.get(i);
        viewGroup.addView(scrollView);
        return scrollView;
    }

    @Override // android.support.v4.view.PagerAdapter
    public final boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }
}
