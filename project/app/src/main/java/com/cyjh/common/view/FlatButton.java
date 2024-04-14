package com.cyjh.common.view;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.Button;
import com.cyjh.common.C1130R;

/* loaded from: classes.dex */
public class FlatButton extends Button {

    /* renamed from: a */
    private StateListDrawable f4310a;

    /* renamed from: b */
    private CharSequence f4311b;

    /* renamed from: c */
    private float f4312c;

    public FlatButton(Context context) {
        super(context);
        m5270a(context, null);
    }

    public FlatButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m5270a(context, attributeSet);
    }

    public FlatButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m5270a(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static TypedArray m5268a(Context context, AttributeSet attributeSet, int[] iArr) {
        return context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* renamed from: a */
    private LayerDrawable m5269a(TypedArray typedArray) {
        LayerDrawable layerDrawable = (LayerDrawable) m5273a(C1130R.drawable.rect_normal).mutate();
        GradientDrawable gradientDrawable = (GradientDrawable) layerDrawable.getDrawable(0).mutate();
        gradientDrawable.setCornerRadius(getCornerRadius());
        gradientDrawable.setColor(typedArray.getColor(C1130R.styleable.FlatButton_pb_colorPressed, m5275c(C1130R.color.blue_pressed)));
        GradientDrawable gradientDrawable2 = (GradientDrawable) layerDrawable.getDrawable(1).mutate();
        gradientDrawable2.setCornerRadius(getCornerRadius());
        gradientDrawable2.setColor(typedArray.getColor(C1130R.styleable.FlatButton_pb_colorNormal, m5275c(C1130R.color.blue_normal)));
        return layerDrawable;
    }

    /* renamed from: a */
    private void m5270a(Context context, AttributeSet attributeSet) {
        TypedArray m5268a;
        this.f4310a = new StateListDrawable();
        if (attributeSet != null && (m5268a = m5268a(context, attributeSet, C1130R.styleable.FlatButton)) != null) {
            try {
                this.f4312c = m5268a.getDimension(C1130R.styleable.FlatButton_pb_cornerRadius, m5274b(C1130R.dimen.corner_radius));
                this.f4310a.addState(new int[]{R.attr.state_pressed}, m5271b(m5268a));
                this.f4310a.addState(new int[]{R.attr.state_focused}, m5271b(m5268a));
                this.f4310a.addState(new int[]{R.attr.state_selected}, m5271b(m5268a));
                LayerDrawable layerDrawable = (LayerDrawable) m5273a(C1130R.drawable.rect_normal).mutate();
                GradientDrawable gradientDrawable = (GradientDrawable) layerDrawable.getDrawable(0).mutate();
                gradientDrawable.setCornerRadius(getCornerRadius());
                gradientDrawable.setColor(m5268a.getColor(C1130R.styleable.FlatButton_pb_colorPressed, m5275c(C1130R.color.blue_pressed)));
                GradientDrawable gradientDrawable2 = (GradientDrawable) layerDrawable.getDrawable(1).mutate();
                gradientDrawable2.setCornerRadius(getCornerRadius());
                gradientDrawable2.setColor(m5268a.getColor(C1130R.styleable.FlatButton_pb_colorNormal, m5275c(C1130R.color.blue_normal)));
                this.f4310a.addState(new int[0], layerDrawable);
            } finally {
                m5268a.recycle();
            }
        }
        this.f4311b = getText().toString();
        setBackgroundCompat(this.f4310a);
    }

    /* renamed from: b */
    private Drawable m5271b(TypedArray typedArray) {
        GradientDrawable gradientDrawable = (GradientDrawable) m5273a(C1130R.drawable.rect_pressed).mutate();
        gradientDrawable.setCornerRadius(getCornerRadius());
        gradientDrawable.setColor(typedArray.getColor(C1130R.styleable.FlatButton_pb_colorPressed, m5275c(C1130R.color.blue_pressed)));
        return gradientDrawable;
    }

    /* renamed from: b */
    private void m5272b(Context context, AttributeSet attributeSet) {
        TypedArray m5268a = m5268a(context, attributeSet, C1130R.styleable.FlatButton);
        if (m5268a == null) {
            return;
        }
        try {
            this.f4312c = m5268a.getDimension(C1130R.styleable.FlatButton_pb_cornerRadius, m5274b(C1130R.dimen.corner_radius));
            this.f4310a.addState(new int[]{R.attr.state_pressed}, m5271b(m5268a));
            this.f4310a.addState(new int[]{R.attr.state_focused}, m5271b(m5268a));
            this.f4310a.addState(new int[]{R.attr.state_selected}, m5271b(m5268a));
            LayerDrawable layerDrawable = (LayerDrawable) m5273a(C1130R.drawable.rect_normal).mutate();
            GradientDrawable gradientDrawable = (GradientDrawable) layerDrawable.getDrawable(0).mutate();
            gradientDrawable.setCornerRadius(getCornerRadius());
            gradientDrawable.setColor(m5268a.getColor(C1130R.styleable.FlatButton_pb_colorPressed, m5275c(C1130R.color.blue_pressed)));
            GradientDrawable gradientDrawable2 = (GradientDrawable) layerDrawable.getDrawable(1).mutate();
            gradientDrawable2.setCornerRadius(getCornerRadius());
            gradientDrawable2.setColor(m5268a.getColor(C1130R.styleable.FlatButton_pb_colorNormal, m5275c(C1130R.color.blue_normal)));
            this.f4310a.addState(new int[0], layerDrawable);
        } finally {
            m5268a.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Drawable m5273a(int i) {
        return getResources().getDrawable(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final float m5274b(int i) {
        return getResources().getDimension(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final int m5275c(int i) {
        return getResources().getColor(i);
    }

    public float getCornerRadius() {
        return this.f4312c;
    }

    public StateListDrawable getNormalDrawable() {
        return this.f4310a;
    }

    public CharSequence getNormalText() {
        return this.f4311b;
    }

    @SuppressLint({"NewApi"})
    public void setBackgroundCompat(Drawable drawable) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        if (Build.VERSION.SDK_INT >= 16) {
            setBackground(drawable);
        } else {
            setBackgroundDrawable(drawable);
        }
        setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }
}
