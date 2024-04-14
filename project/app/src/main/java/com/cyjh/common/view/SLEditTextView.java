package com.cyjh.common.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.AppCompatEditText;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.cyjh.common.C1130R;

/* loaded from: classes.dex */
public class SLEditTextView extends AppCompatEditText implements TextWatcher, View.OnFocusChangeListener {

    /* renamed from: f */
    private static final int f4370f = 0;

    /* renamed from: g */
    private static final int f4371g = 1;

    /* renamed from: h */
    private static final int f4372h = 2;

    /* renamed from: i */
    private static final int f4373i = 3;

    /* renamed from: a */
    private Context f4374a;

    /* renamed from: b */
    private Paint f4375b;

    /* renamed from: c */
    private int f4376c;

    /* renamed from: d */
    private Drawable f4377d;

    /* renamed from: e */
    private Drawable f4378e;

    /* renamed from: j */
    private boolean f4379j;

    public SLEditTextView(Context context) {
        super(context);
        m5316a(context);
    }

    public SLEditTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m5316a(context);
    }

    public SLEditTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m5316a(context);
    }

    /* renamed from: a */
    private static int m5314a(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: a */
    private void m5315a() {
        this.f4375b = new Paint();
        this.f4375b.setStrokeWidth(3.0f);
        this.f4376c = Color.parseColor("#a9b7b7");
    }

    /* renamed from: a */
    private void m5316a(Context context) {
        this.f4374a = context;
        setDrawable(context);
        setOnFocusChangeListener(this);
        addTextChangedListener(this);
        m5317a(true);
    }

    /* renamed from: a */
    private void m5317a(boolean z) {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        Drawable drawable4;
        if (length() <= 0 || !z) {
            drawable = this.f4378e;
            drawable2 = getCompoundDrawables()[1];
            drawable3 = null;
            drawable4 = getCompoundDrawables()[3];
        } else {
            drawable = this.f4378e;
            drawable2 = getCompoundDrawables()[1];
            drawable3 = this.f4377d;
            drawable4 = getCompoundDrawables()[3];
        }
        setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    /* renamed from: b */
    private void m5318b() {
        setCompoundDrawables(this.f4378e, getCompoundDrawables()[1], null, getCompoundDrawables()[3]);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        m5317a(true);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    protected void finalize() throws Throwable {
        this.f4377d = null;
        super.finalize();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        this.f4379j = z;
        m5317a(z);
    }

    @Override // android.widget.TextView, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (getCompoundDrawables()[2] != null && motionEvent.getAction() == 1 && getWidth() - getCompoundPaddingRight() < motionEvent.getX() && getWidth() - getPaddingRight() > motionEvent.getX()) {
            setText("");
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setDrawable(Context context) {
        this.f4377d = getCompoundDrawables()[2];
        if (this.f4377d == null) {
            this.f4377d = getResources().getDrawable(C1130R.drawable.icon_clear_edit);
        }
        this.f4377d.setBounds(0, 0, m5314a(context, 25.0f), m5314a(context, 25.0f));
        this.f4378e = getCompoundDrawables()[0];
        if (this.f4378e != null) {
            this.f4378e.setBounds(0, 0, m5314a(context, 28.0f), m5314a(context, 28.0f));
        }
    }
}
