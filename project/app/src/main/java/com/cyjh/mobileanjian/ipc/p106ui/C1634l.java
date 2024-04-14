package com.cyjh.mobileanjian.ipc.p106ui;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.cyjh.mobileanjian.ipc.ui.l */
/* loaded from: classes.dex */
public final class C1634l extends PagerAdapter {

    /* renamed from: a */
    List<LinearLayout> f6317a;

    /* renamed from: b */
    List<String> f6318b;

    public C1634l(List<LinearLayout> list, List<String> list2) {
        this.f6317a = list;
        this.f6318b = list2;
    }

    /* renamed from: a */
    private View m7415a(int i) {
        return this.f6317a.get(i);
    }

    /* renamed from: a */
    private View m7416a(String str) {
        Iterator<LinearLayout> it = this.f6317a.iterator();
        View view = null;
        while (it.hasNext() && (view = it.next().findViewWithTag(str)) == null) {
        }
        return view;
    }

    /* renamed from: a */
    private void m7417a(LinearLayout linearLayout, String str) {
        this.f6317a.add(linearLayout);
        this.f6318b.add(str);
        notifyDataSetChanged();
    }

    /* renamed from: a */
    private void m7418a(String str, String str2, int i, int i2) {
        for (LinearLayout linearLayout : this.f6317a) {
            if (linearLayout.getTag().equals(str2)) {
                linearLayout.addView(C1629g.m7255a(linearLayout.getContext()).m7276c(str, i, i2));
            }
        }
    }

    /* renamed from: a */
    public final void m7419a(View view, String str, String str2) {
        for (LinearLayout linearLayout : this.f6317a) {
            if (linearLayout.getTag().equals(str)) {
                ((LinearLayout) linearLayout.findViewWithTag(str2)).addView(view);
            }
        }
    }

    @Override // android.support.v4.view.PagerAdapter
    public final void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView(this.f6317a.get(i));
    }

    @Override // android.support.v4.view.PagerAdapter
    public final int getCount() {
        return this.f6317a.size();
    }

    @Override // android.support.v4.view.PagerAdapter
    public final CharSequence getPageTitle(int i) {
        return this.f6318b.get(i);
    }

    @Override // android.support.v4.view.PagerAdapter
    public final Object instantiateItem(ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = this.f6317a.get(i);
        viewGroup.addView(linearLayout);
        return linearLayout;
    }

    @Override // android.support.v4.view.PagerAdapter
    public final boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }
}
