package com.cyjh.common.base.activity;

import android.arch.lifecycle.AndroidViewModel;
import android.arch.lifecycle.ViewModelProviders;
import android.os.Bundle;

/* loaded from: classes.dex */
public abstract class BaseModelActivity<T extends AndroidViewModel> extends BaseActivity {

    /* renamed from: b */
    protected T f4009b;

    /* renamed from: b */
    public abstract Class<T> mo4214b();

    /* renamed from: c */
    public abstract void mo4215c();

    /* renamed from: d */
    public abstract void mo4216d();

    /* renamed from: e */
    public abstract int mo4217e();

    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(mo4217e());
        mo4216d();
        this.f4009b = (T) ViewModelProviders.m18of(this).get(mo4214b());
        mo4215c();
    }
}
