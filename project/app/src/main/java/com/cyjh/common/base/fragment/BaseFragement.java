package com.cyjh.common.base.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public abstract class BaseFragement extends Fragment {
    /* renamed from: b */
    private static void m4218b() {
    }

    /* renamed from: c */
    private static void m4219c() {
    }

    /* renamed from: a */
    public abstract int mo4220a();

    @Override // android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(mo4220a(), viewGroup, false);
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        setUserVisibleHint(true);
    }
}
