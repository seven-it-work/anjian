package com.cyjh.common.view;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.cyjh.common.C1130R;

/* loaded from: classes.dex */
public class SlLoadingView extends ImageView {

    /* renamed from: a */
    protected Animation f4402a;

    public SlLoadingView(Context context) {
        super(context);
        m5334a();
    }

    public SlLoadingView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        m5334a();
    }

    public SlLoadingView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m5334a();
    }

    /* renamed from: a */
    private void m5334a() {
        this.f4402a = AnimationUtils.loadAnimation(getContext(), C1130R.anim.downing_animation);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setAnimation(this.f4402a);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        clearAnimation();
    }
}
