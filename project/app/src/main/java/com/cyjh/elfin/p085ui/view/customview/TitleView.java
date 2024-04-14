package com.cyjh.elfin.p085ui.view.customview;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.hjol.R;

/* loaded from: classes.dex */
public class TitleView extends RelativeLayout {

    /* renamed from: a */
    private TextView f5472a;

    /* renamed from: b */
    private Context f5473b;

    /* renamed from: c */
    private ImageView f5474c;

    /* renamed from: d */
    private ImageView f5475d;

    /* renamed from: e */
    private InterfaceC1421a f5476e;

    /* renamed from: f */
    private InterfaceC1422b f5477f;

    /* renamed from: g */
    private InterfaceC1423c f5478g;

    /* renamed from: h */
    private TextView f5479h;

    /* renamed from: com.cyjh.elfin.ui.view.customview.TitleView$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1421a {
        /* renamed from: a */
        void mo6229a();
    }

    /* renamed from: com.cyjh.elfin.ui.view.customview.TitleView$b */
    /* loaded from: classes.dex */
    public interface InterfaceC1422b {
        /* renamed from: a */
        void mo6285a();
    }

    /* renamed from: com.cyjh.elfin.ui.view.customview.TitleView$c */
    /* loaded from: classes.dex */
    public interface InterfaceC1423c {
        /* renamed from: a */
        void mo6228a();
    }

    /* renamed from: com.cyjh.elfin.ui.view.customview.TitleView$d */
    /* loaded from: classes.dex */
    private class ViewOnClickListenerC1424d implements View.OnClickListener {
        private ViewOnClickListenerC1424d() {
        }

        /* synthetic */ ViewOnClickListenerC1424d(TitleView titleView, byte b2) {
            this();
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (TitleView.this.f5478g != null) {
                TitleView.this.f5478g.mo6228a();
            }
        }
    }

    /* renamed from: com.cyjh.elfin.ui.view.customview.TitleView$e */
    /* loaded from: classes.dex */
    private class ViewOnClickListenerC1425e implements View.OnClickListener {
        private ViewOnClickListenerC1425e() {
        }

        /* synthetic */ ViewOnClickListenerC1425e(TitleView titleView, byte b2) {
            this();
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (TitleView.this.f5476e != null) {
                TitleView.this.f5476e.mo6229a();
            }
        }
    }

    /* renamed from: com.cyjh.elfin.ui.view.customview.TitleView$f */
    /* loaded from: classes.dex */
    private class ViewOnClickListenerC1426f implements View.OnClickListener {
        private ViewOnClickListenerC1426f() {
        }

        /* synthetic */ ViewOnClickListenerC1426f(TitleView titleView, byte b2) {
            this();
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (TitleView.this.f5477f != null) {
                TitleView.this.f5477f.mo6285a();
            }
        }
    }

    public TitleView(Context context) {
        this(context, null);
    }

    public TitleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TitleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5473b = context;
        setBackgroundColor(Color.rgb(60, 122, 197));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        this.f5472a = new TextView(this.f5473b);
        this.f5472a.setTextColor(-1);
        this.f5472a.setTextSize(18.0f);
        this.f5472a.setGravity(16);
        this.f5472a.setSingleLine();
        addView(this.f5472a, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        this.f5474c = new ImageView(this.f5473b);
        layoutParams2.addRule(15);
        layoutParams2.addRule(9);
        byte b2 = 0;
        layoutParams2.setMargins(20, 10, 0, 10);
        this.f5474c.setImageResource(R.drawable.ic_setting);
        this.f5474c.setOnClickListener(new ViewOnClickListenerC1425e(this, b2));
        addView(this.f5474c, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(15);
        layoutParams3.addRule(11);
        layoutParams3.setMargins(0, 10, 20, 10);
        this.f5475d = new ImageView(this.f5473b);
        this.f5475d.setImageResource(R.drawable.ic_setting);
        this.f5475d.setOnClickListener(new ViewOnClickListenerC1426f(this, b2));
        addView(this.f5475d, layoutParams3);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(11);
        layoutParams4.addRule(15);
        layoutParams4.setMargins(0, 10, 20, 10);
        this.f5479h = new TextView(this.f5473b);
        this.f5479h.setVisibility(8);
        this.f5479h.setOnClickListener(new ViewOnClickListenerC1424d(this, b2));
        this.f5479h.setSingleLine();
        this.f5479h.setTextSize(16.0f);
        this.f5479h.setTextColor(-1);
        addView(this.f5479h, layoutParams4);
    }

    /* renamed from: a */
    private void m6556a() {
        setBackgroundColor(Color.rgb(60, 122, 197));
    }

    /* renamed from: b */
    private void m6558b() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        this.f5472a = new TextView(this.f5473b);
        this.f5472a.setTextColor(-1);
        this.f5472a.setTextSize(18.0f);
        this.f5472a.setGravity(16);
        this.f5472a.setSingleLine();
        addView(this.f5472a, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        this.f5474c = new ImageView(this.f5473b);
        layoutParams2.addRule(15);
        layoutParams2.addRule(9);
        byte b2 = 0;
        layoutParams2.setMargins(20, 10, 0, 10);
        this.f5474c.setImageResource(R.drawable.ic_setting);
        this.f5474c.setOnClickListener(new ViewOnClickListenerC1425e(this, b2));
        addView(this.f5474c, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(15);
        layoutParams3.addRule(11);
        layoutParams3.setMargins(0, 10, 20, 10);
        this.f5475d = new ImageView(this.f5473b);
        this.f5475d.setImageResource(R.drawable.ic_setting);
        this.f5475d.setOnClickListener(new ViewOnClickListenerC1426f(this, b2));
        addView(this.f5475d, layoutParams3);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(11);
        layoutParams4.addRule(15);
        layoutParams4.setMargins(0, 10, 20, 10);
        this.f5479h = new TextView(this.f5473b);
        this.f5479h.setVisibility(8);
        this.f5479h.setOnClickListener(new ViewOnClickListenerC1424d(this, b2));
        this.f5479h.setSingleLine();
        this.f5479h.setTextSize(16.0f);
        this.f5479h.setTextColor(-1);
        addView(this.f5479h, layoutParams4);
    }

    public void setOnLeftImageViewListener(InterfaceC1421a interfaceC1421a) {
        this.f5476e = interfaceC1421a;
    }

    public void setOnRightImageViewListener(InterfaceC1422b interfaceC1422b) {
        this.f5477f = interfaceC1422b;
    }

    public void setOnRightTextViewListener(InterfaceC1423c interfaceC1423c) {
        this.f5478g = interfaceC1423c;
    }

    public void setRightImage(int i) {
        this.f5475d.setImageResource(i);
    }

    public void setRightTvText(int i) {
        this.f5479h.setText(i);
    }

    public void setRightTvText(String str) {
        this.f5479h.setText(str);
    }

    public void setTitleSize(int i) {
        this.f5472a.setTextSize(i);
    }

    public void setTitleText(int i) {
        this.f5472a.setText(i);
    }

    public void setTitleText(String str) {
        this.f5472a.setText(str);
    }

    public void setVisibilityLeftImage(int i) {
        this.f5474c.setVisibility(i);
    }

    public void setVisibilityRightImage(int i) {
        this.f5475d.setVisibility(i);
    }

    public void setVisibilityTvRight(int i) {
        this.f5479h.setVisibility(i);
    }

    public void setleftImage(int i) {
        this.f5474c.setImageResource(i);
    }
}
