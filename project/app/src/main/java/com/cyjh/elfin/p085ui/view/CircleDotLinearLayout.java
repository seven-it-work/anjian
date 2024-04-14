package com.cyjh.elfin.p085ui.view;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.cyjh.common.util.C1147a;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class CircleDotLinearLayout extends LinearLayout {

    /* renamed from: b */
    private static final int f5455b = 6;

    /* renamed from: c */
    private static final int f5456c = 0;

    /* renamed from: d */
    private static final String f5457d = "#3c7ac5";

    /* renamed from: e */
    private static final String f5458e = "#bababa";

    /* renamed from: f */
    private static final float f5459f = 8.0f;

    /* renamed from: g */
    private static final int f5460g = 100;

    /* renamed from: a */
    private List<ImageView> f5461a;

    /* renamed from: h */
    private GradientDrawable f5462h;

    /* renamed from: i */
    private GradientDrawable f5463i;

    /* renamed from: j */
    private RunnableC1419a f5464j;

    /* renamed from: k */
    private Handler f5465k;

    /* renamed from: l */
    private int f5466l;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.elfin.ui.view.CircleDotLinearLayout$a */
    /* loaded from: classes.dex */
    public class RunnableC1419a implements Runnable {
        private RunnableC1419a() {
        }

        /* synthetic */ RunnableC1419a(CircleDotLinearLayout circleDotLinearLayout, byte b2) {
            this();
        }

        /* renamed from: a */
        private void m6553a() {
            CircleDotLinearLayout.this.f5465k.removeCallbacks(this);
            CircleDotLinearLayout.this.f5465k.postDelayed(this, 100L);
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageView imageView;
            GradientDrawable gradientDrawable;
            CircleDotLinearLayout.m6547b(CircleDotLinearLayout.this);
            for (int i = 0; i < CircleDotLinearLayout.this.f5461a.size(); i++) {
                if (i == CircleDotLinearLayout.this.f5466l % CircleDotLinearLayout.this.f5461a.size()) {
                    imageView = (ImageView) CircleDotLinearLayout.this.f5461a.get(i);
                    gradientDrawable = CircleDotLinearLayout.this.f5462h;
                } else {
                    imageView = (ImageView) CircleDotLinearLayout.this.f5461a.get(i);
                    gradientDrawable = CircleDotLinearLayout.this.f5463i;
                }
                imageView.setImageDrawable(gradientDrawable);
            }
            CircleDotLinearLayout.this.f5465k.removeCallbacks(this);
            CircleDotLinearLayout.this.f5465k.postDelayed(this, 100L);
        }
    }

    public CircleDotLinearLayout(Context context) {
        super(context);
        this.f5461a = new ArrayList();
        this.f5465k = new Handler();
        m6546a();
    }

    public CircleDotLinearLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5461a = new ArrayList();
        this.f5465k = new Handler();
        m6546a();
    }

    public CircleDotLinearLayout(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5461a = new ArrayList();
        this.f5465k = new Handler();
        m6546a();
    }

    /* renamed from: a */
    private void m6546a() {
        removeAllViews();
        this.f5461a.clear();
        byte b2 = 0;
        for (int i = 0; i < 6; i++) {
            ImageView imageView = new ImageView(getContext());
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setCornerRadius(C1147a.m4267e(getContext()));
            gradientDrawable.setSize(C1147a.m4267e(getContext()), C1147a.m4267e(getContext()));
            if (i == 0) {
                gradientDrawable.setColor(Color.parseColor(f5457d));
                this.f5462h = gradientDrawable;
            } else {
                gradientDrawable.setColor(Color.parseColor(f5458e));
                if (i == 5) {
                    this.f5463i = gradientDrawable;
                }
            }
            imageView.setImageDrawable(gradientDrawable);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, 0, C1147a.m4267e(getContext()), 0);
            addView(imageView, layoutParams);
            this.f5461a.add(imageView);
        }
        this.f5464j = new RunnableC1419a(this, b2);
        RunnableC1419a runnableC1419a = this.f5464j;
        CircleDotLinearLayout.this.f5465k.removeCallbacks(runnableC1419a);
        CircleDotLinearLayout.this.f5465k.postDelayed(runnableC1419a, 100L);
    }

    /* renamed from: b */
    static /* synthetic */ int m6547b(CircleDotLinearLayout circleDotLinearLayout) {
        int i = circleDotLinearLayout.f5466l;
        circleDotLinearLayout.f5466l = i + 1;
        return i;
    }

    /* renamed from: b */
    private void m6548b() {
        removeAllViews();
        this.f5461a.clear();
        for (int i = 0; i < 6; i++) {
            ImageView imageView = new ImageView(getContext());
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setCornerRadius(C1147a.m4267e(getContext()));
            gradientDrawable.setSize(C1147a.m4267e(getContext()), C1147a.m4267e(getContext()));
            if (i == 0) {
                gradientDrawable.setColor(Color.parseColor(f5457d));
                this.f5462h = gradientDrawable;
            } else {
                gradientDrawable.setColor(Color.parseColor(f5458e));
                if (i == 5) {
                    this.f5463i = gradientDrawable;
                }
            }
            imageView.setImageDrawable(gradientDrawable);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, 0, C1147a.m4267e(getContext()), 0);
            addView(imageView, layoutParams);
            this.f5461a.add(imageView);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f5465k.removeCallbacksAndMessages(null);
    }
}
