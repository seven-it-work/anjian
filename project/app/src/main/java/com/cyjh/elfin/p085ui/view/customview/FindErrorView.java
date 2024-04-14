package com.cyjh.elfin.p085ui.view.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.hjol.R;

/* loaded from: classes.dex */
public class FindErrorView extends LinearLayout {

    /* renamed from: a */
    protected Context f5468a;

    /* renamed from: b */
    protected ImageView f5469b;

    /* renamed from: c */
    protected TextView f5470c;

    /* renamed from: d */
    protected TextView f5471d;

    public FindErrorView(Context context) {
        this(context, null);
    }

    public FindErrorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FindErrorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5468a = context;
        ((LayoutInflater) this.f5468a.getSystemService("layout_inflater")).inflate(R.layout.view_error_layout, this);
        this.f5469b = (ImageView) findViewById(R.id.vel_error_img);
        this.f5470c = (TextView) findViewById(R.id.vel_error_tips);
        this.f5471d = (TextView) findViewById(R.id.vel_error_btn);
    }

    /* renamed from: a */
    private void m6554a() {
        ((LayoutInflater) this.f5468a.getSystemService("layout_inflater")).inflate(R.layout.view_error_layout, this);
        this.f5469b = (ImageView) findViewById(R.id.vel_error_img);
        this.f5470c = (TextView) findViewById(R.id.vel_error_tips);
        this.f5471d = (TextView) findViewById(R.id.vel_error_btn);
    }

    public void setErrorImg(int i) {
        this.f5469b.setImageResource(i);
    }

    public void setErrorTips(int i) {
        this.f5470c.setText(i);
    }
}
