package com.cyjh.common.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import com.cyjh.common.C1130R;

/* loaded from: classes.dex */
public abstract class ProcessButton extends FlatButton {

    /* renamed from: a */
    private int f4360a;

    /* renamed from: b */
    private int f4361b;

    /* renamed from: c */
    private int f4362c;

    /* renamed from: d */
    private GradientDrawable f4363d;

    /* renamed from: e */
    private GradientDrawable f4364e;

    /* renamed from: f */
    private GradientDrawable f4365f;

    /* renamed from: g */
    private CharSequence f4366g;

    /* renamed from: h */
    private CharSequence f4367h;

    /* renamed from: i */
    private CharSequence f4368i;

    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.cyjh.common.view.ProcessButton.SavedState.1
            /* renamed from: a */
            private static SavedState m5312a(Parcel parcel) {
                return new SavedState(parcel, (byte) 0);
            }

            /* renamed from: a */
            private static SavedState[] m5313a(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (byte) 0);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        private int f4369a;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f4369a = parcel.readInt();
        }

        /* synthetic */ SavedState(Parcel parcel, byte b2) {
            this(parcel);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f4369a);
        }
    }

    public ProcessButton(Context context) {
        super(context);
        m5305a(context, null);
    }

    public ProcessButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m5305a(context, attributeSet);
    }

    public ProcessButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m5305a(context, attributeSet);
    }

    /* renamed from: a */
    private void m5304a() {
        if (getErrorText() != null) {
            setText(getErrorText());
        }
        setBackgroundCompat(getErrorDrawable());
    }

    /* renamed from: a */
    private void m5305a(Context context, AttributeSet attributeSet) {
        TypedArray a2;
        this.f4362c = 0;
        this.f4361b = 100;
        this.f4363d = (GradientDrawable) m5273a(C1130R.drawable.rect_progress).mutate();
        this.f4363d.setCornerRadius(getCornerRadius());
        this.f4364e = (GradientDrawable) m5273a(C1130R.drawable.rect_complete).mutate();
        this.f4364e.setCornerRadius(getCornerRadius());
        this.f4365f = (GradientDrawable) m5273a(C1130R.drawable.rect_error).mutate();
        this.f4365f.setCornerRadius(getCornerRadius());
        if (attributeSet == null || (a2 = m5268a(context, attributeSet, C1130R.styleable.ProcessButton)) == null) {
            return;
        }
        try {
            this.f4366g = a2.getString(C1130R.styleable.ProcessButton_pb_textProgress);
            this.f4367h = a2.getString(C1130R.styleable.ProcessButton_pb_textComplete);
            this.f4368i = a2.getString(C1130R.styleable.ProcessButton_pb_textError);
            this.f4363d.setColor(a2.getColor(C1130R.styleable.ProcessButton_pb_colorProgress, m5275c(C1130R.color.purple_progress)));
            this.f4364e.setColor(a2.getColor(C1130R.styleable.ProcessButton_pb_colorComplete, m5275c(C1130R.color.green_complete)));
            this.f4365f.setColor(a2.getColor(C1130R.styleable.ProcessButton_pb_colorError, m5275c(C1130R.color.red_error)));
        } finally {
            a2.recycle();
        }
    }

    /* renamed from: b */
    private void m5306b() {
        if (getLoadingText() != null) {
            setText(getLoadingText());
        }
        setBackgroundCompat(getNormalDrawable());
    }

    /* renamed from: b */
    private void m5307b(Context context, AttributeSet attributeSet) {
        TypedArray a2 = m5268a(context, attributeSet, C1130R.styleable.ProcessButton);
        if (a2 == null) {
            return;
        }
        try {
            this.f4366g = a2.getString(C1130R.styleable.ProcessButton_pb_textProgress);
            this.f4367h = a2.getString(C1130R.styleable.ProcessButton_pb_textComplete);
            this.f4368i = a2.getString(C1130R.styleable.ProcessButton_pb_textError);
            this.f4363d.setColor(a2.getColor(C1130R.styleable.ProcessButton_pb_colorProgress, m5275c(C1130R.color.purple_progress)));
            this.f4364e.setColor(a2.getColor(C1130R.styleable.ProcessButton_pb_colorComplete, m5275c(C1130R.color.green_complete)));
            this.f4365f.setColor(a2.getColor(C1130R.styleable.ProcessButton_pb_colorError, m5275c(C1130R.color.red_error)));
        } finally {
            a2.recycle();
        }
    }

    /* renamed from: c */
    private void m5308c() {
        if (getCompleteText() != null) {
            setText(getCompleteText());
        }
        setBackgroundCompat(getCompleteDrawable());
    }

    /* renamed from: d */
    private void m5309d() {
        if (getNormalText() != null) {
            setText(getNormalText());
        }
        setBackgroundCompat(getNormalDrawable());
    }

    /* renamed from: a */
    public abstract void mo5261a(Canvas canvas);

    public GradientDrawable getCompleteDrawable() {
        return this.f4364e;
    }

    public CharSequence getCompleteText() {
        return this.f4367h;
    }

    public GradientDrawable getErrorDrawable() {
        return this.f4365f;
    }

    public CharSequence getErrorText() {
        return this.f4368i;
    }

    public CharSequence getLoadingText() {
        return this.f4366g;
    }

    public int getMaxProgress() {
        return this.f4361b;
    }

    public int getMinProgress() {
        return this.f4362c;
    }

    public int getProgress() {
        return this.f4360a;
    }

    public GradientDrawable getProgressDrawable() {
        return this.f4363d;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f4360a > this.f4362c && this.f4360a < this.f4361b) {
            mo5261a(canvas);
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.f4360a = savedState.f4369a;
        super.onRestoreInstanceState(savedState.getSuperState());
        setProgress(this.f4360a);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f4369a = this.f4360a;
        return savedState;
    }

    public void setCompleteDrawable(GradientDrawable gradientDrawable) {
        this.f4364e = gradientDrawable;
    }

    public void setCompleteText(CharSequence charSequence) {
        this.f4367h = charSequence;
    }

    public void setErrorDrawable(GradientDrawable gradientDrawable) {
        this.f4365f = gradientDrawable;
    }

    public void setErrorText(CharSequence charSequence) {
        this.f4368i = charSequence;
    }

    public void setLoadingText(CharSequence charSequence) {
        this.f4366g = charSequence;
    }

    public void setProgress(int i) {
        CharSequence loadingText;
        Drawable errorDrawable;
        this.f4360a = i;
        if (this.f4360a == this.f4362c) {
            if (getNormalText() != null) {
                loadingText = getNormalText();
                setText(loadingText);
            }
            errorDrawable = getNormalDrawable();
        } else if (this.f4360a == this.f4361b) {
            if (getCompleteText() != null) {
                setText(getCompleteText());
            }
            errorDrawable = getCompleteDrawable();
        } else if (this.f4360a < this.f4362c) {
            if (getErrorText() != null) {
                setText(getErrorText());
            }
            errorDrawable = getErrorDrawable();
        } else {
            if (getLoadingText() != null) {
                loadingText = getLoadingText();
                setText(loadingText);
            }
            errorDrawable = getNormalDrawable();
        }
        setBackgroundCompat(errorDrawable);
        invalidate();
    }

    public void setProgressDrawable(GradientDrawable gradientDrawable) {
        this.f4363d = gradientDrawable;
    }
}
