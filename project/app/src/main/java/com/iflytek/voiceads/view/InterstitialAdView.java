package com.iflytek.voiceads.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.listener.InternalListener;
import com.iflytek.voiceads.p171b.C2212a;
import com.iflytek.voiceads.param.C2293d;
import com.iflytek.voiceads.utils.C2307a;
import com.iflytek.voiceads.utils.C2313g;

/* loaded from: assets/AdDex.4.0.1.dex */
public class InterstitialAdView extends AdView {

    /* renamed from: t */
    private Context f8804t;

    /* renamed from: u */
    private final String f8805u;

    public InterstitialAdView(Context context) {
        super(context);
        this.f8805u = "close_widget";
    }

    public InterstitialAdView(Context context, RelativeLayout relativeLayout, String str, InternalListener internalListener) {
        super(context, relativeLayout, str, C2307a.a.INTERSTITIAL, internalListener);
        this.f8805u = "close_widget";
        this.f8804t = context.getApplicationContext();
    }

    /* renamed from: a */
    private void m10304a(ImageView imageView) {
        new C2212a(this.f8804t.getApplicationContext(), this.f8782g.f8384I).m9786a(new C2350g(this, imageView));
    }

    @Override // com.iflytek.voiceads.view.AdView
    /* renamed from: j */
    public void mo10300j() {
        if (this.f8782g == null || TextUtils.isEmpty(this.f8782g.f8384I)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            C2313g.m10136a(SDKConstants.TAG, "adview parent is null");
            return;
        }
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            if ("close_widget".equals(viewGroup.getChildAt(i).getTag())) {
                return;
            }
        }
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float f = displayMetrics.density;
        int min = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) - 40;
        int i2 = (int) (25.0f * f);
        int i3 = (int) (0.3d * i2);
        ImageView imageView = new ImageView(this.f8804t);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i2, (int) (f * 25.0f));
        layoutParams.topMargin = i3;
        layoutParams.leftMargin = (min - i2) - i3;
        imageView.setTag("close_widget");
        viewGroup.addView(imageView, layoutParams);
        m10304a(imageView);
        imageView.setOnClickListener(new ViewOnClickListenerC2349f(this));
    }

    @Override // com.iflytek.voiceads.view.AdView
    /* renamed from: k */
    public void mo10301k() {
        int min = Math.min(C2293d.m10042c(this.f8804t), C2293d.m10044d(this.f8804t)) - 40;
        int m10029b = (this.f8780e.m10029b() * min) / this.f8780e.m10025a();
        C2313g.m10136a(SDKConstants.TAG, "InterstitialAdView adWidth=" + min + ", adHeight=" + m10029b);
        this.f8777b.setGravity(17);
        m10283a(min, m10029b);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }
}
