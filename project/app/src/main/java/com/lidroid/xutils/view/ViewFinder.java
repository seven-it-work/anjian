package com.lidroid.xutils.view;

import android.app.Activity;
import android.content.Context;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;
import android.view.View;

/* loaded from: classes.dex */
public class ViewFinder {
    private Activity activity;
    private PreferenceActivity preferenceActivity;
    private PreferenceGroup preferenceGroup;
    private View view;

    public ViewFinder(Activity activity) {
        this.activity = activity;
    }

    public ViewFinder(PreferenceActivity preferenceActivity) {
        this.preferenceActivity = preferenceActivity;
        this.activity = preferenceActivity;
    }

    public ViewFinder(PreferenceGroup preferenceGroup) {
        this.preferenceGroup = preferenceGroup;
    }

    public ViewFinder(View view) {
        this.view = view;
    }

    public Preference findPreference(CharSequence charSequence) {
        return this.preferenceGroup == null ? this.preferenceActivity.findPreference(charSequence) : this.preferenceGroup.findPreference(charSequence);
    }

    public View findViewById(int i) {
        return this.activity == null ? this.view.findViewById(i) : this.activity.findViewById(i);
    }

    public View findViewById(int i, int i2) {
        View findViewById = i2 > 0 ? findViewById(i2) : null;
        return findViewById != null ? findViewById.findViewById(i) : findViewById(i);
    }

    public View findViewByInfo(ViewInjectInfo viewInjectInfo) {
        return findViewById(((Integer) viewInjectInfo.value).intValue(), viewInjectInfo.parentId);
    }

    public Context getContext() {
        if (this.view != null) {
            return this.view.getContext();
        }
        if (this.activity != null) {
            return this.activity;
        }
        if (this.preferenceActivity != null) {
            return this.preferenceActivity;
        }
        return null;
    }
}
