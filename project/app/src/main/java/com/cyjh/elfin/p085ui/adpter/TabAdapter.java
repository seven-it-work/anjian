package com.cyjh.elfin.p085ui.adpter;

import android.content.Context;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import com.hjol.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class TabAdapter extends FragmentPagerAdapter {

    /* renamed from: a */
    private ArrayList<Fragment> f5334a;

    /* renamed from: b */
    private String[] f5335b;

    /* renamed from: c */
    private Context f5336c;

    public TabAdapter(Context context, FragmentManager fragmentManager, ArrayList<Fragment> arrayList) {
        super(fragmentManager);
        this.f5336c = context;
        this.f5334a = arrayList;
        this.f5335b = context.getResources().getStringArray(R.array.array_pagetitles_name);
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this.f5334a.size();
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        return this.f5334a.get(i);
    }

    @Override // android.support.v4.view.PagerAdapter
    public CharSequence getPageTitle(int i) {
        return this.f5335b[i];
    }
}
