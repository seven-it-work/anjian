package com.cyjh.feedback.lib.base;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public abstract class BaseFragment extends Fragment {

    /* renamed from: a */
    private static final String f5640a = "ELFIN";

    /* renamed from: a */
    public abstract int mo6718a();

    @Override // android.support.v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(mo6718a(), viewGroup, false);
    }
}
