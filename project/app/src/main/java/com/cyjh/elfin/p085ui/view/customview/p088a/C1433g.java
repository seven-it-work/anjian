package com.cyjh.elfin.p085ui.view.customview.p088a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cyjh.elfin.p085ui.view.customview.FindErrorView;
import com.hjol.R;

/* renamed from: com.cyjh.elfin.ui.view.customview.a.g */
/* loaded from: classes.dex */
public final class C1433g {
    /* renamed from: a */
    private static View m6582a(Context context) {
        return LayoutInflater.from(context).inflate(R.layout.load_error_view, (ViewGroup) null);
    }

    /* renamed from: a */
    private static View m6583a(Context context, View view) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.load_loading_view, (ViewGroup) null);
        inflate.setVisibility(8);
        m6585a(inflate, view);
        return inflate;
    }

    /* renamed from: a */
    private static View m6584a(Context context, View view, View.OnClickListener onClickListener) {
        FindErrorView findErrorView = new FindErrorView(context);
        findErrorView.setErrorImg(R.drawable.icon_null);
        findErrorView.setErrorTips(R.string.load_data_empty);
        ((TextView) findErrorView.findViewById(R.id.vel_error_btn)).setOnClickListener(onClickListener);
        findErrorView.setVisibility(8);
        m6585a(findErrorView, view);
        return findErrorView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static void m6585a(View view, View view2) {
        LinearLayout.LayoutParams layoutParams;
        View view3 = (View) view2.getParent();
        if (view3 != null) {
            if (view3 instanceof RelativeLayout) {
                ((RelativeLayout) view3).addView(view);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(view.getLayoutParams());
                layoutParams2.addRule(13, -1);
                layoutParams2.width = -1;
                layoutParams2.height = -1;
                layoutParams = layoutParams2;
            } else {
                if (!(view3 instanceof LinearLayout)) {
                    throw new IllegalArgumentException("ParentView must be a RelativeLayout or LinearLayout!!!");
                }
                ((LinearLayout) view3).addView(view);
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(view.getLayoutParams());
                layoutParams3.width = -1;
                layoutParams3.height = -1;
                layoutParams3.gravity = 17;
                layoutParams = layoutParams3;
            }
            view.setLayoutParams(layoutParams);
        }
    }

    /* renamed from: b */
    private static View m6586b(Context context, View view) {
        FindErrorView findErrorView = new FindErrorView(context);
        findErrorView.setErrorImg(R.drawable.bg_none_script);
        findErrorView.setErrorTips(R.string.notoolbox_text);
        findErrorView.findViewById(R.id.vel_error_btn).setVisibility(8);
        findErrorView.setVisibility(8);
        m6585a(findErrorView, view);
        return findErrorView;
    }

    /* renamed from: b */
    private static View m6587b(Context context, View view, View.OnClickListener onClickListener) {
        FindErrorView findErrorView = new FindErrorView(context);
        findErrorView.setErrorImg(R.drawable.icon_net_instability);
        findErrorView.setErrorTips(R.string.load_data_error);
        ((TextView) findErrorView.findViewById(R.id.vel_error_btn)).setOnClickListener(onClickListener);
        findErrorView.setVisibility(8);
        m6585a(findErrorView, view);
        return findErrorView;
    }

    /* renamed from: c */
    private static View m6588c(Context context, View view) {
        FindErrorView findErrorView = new FindErrorView(context);
        findErrorView.setVisibility(8);
        m6585a(findErrorView, view);
        return findErrorView;
    }

    /* renamed from: c */
    private static View m6589c(Context context, View view, View.OnClickListener onClickListener) {
        FindErrorView findErrorView = new FindErrorView(context);
        ((TextView) findErrorView.findViewById(R.id.vel_error_btn)).setOnClickListener(onClickListener);
        findErrorView.setVisibility(8);
        m6585a(findErrorView, view);
        return findErrorView;
    }
}
