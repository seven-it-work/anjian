package android.support.v7.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.C0328R;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.ref.WeakReference;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class ViewStubCompat extends View {
    private OnInflateListener mInflateListener;
    private int mInflatedId;
    private WeakReference<View> mInflatedViewRef;
    private LayoutInflater mInflater;
    private int mLayoutResource;

    /* loaded from: classes.dex */
    public interface OnInflateListener {
        void onInflate(ViewStubCompat viewStubCompat, View view);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLayoutResource = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0328R.styleable.ViewStubCompat, i, 0);
        this.mInflatedId = obtainStyledAttributes.getResourceId(C0328R.styleable.ViewStubCompat_android_inflatedId, -1);
        this.mLayoutResource = obtainStyledAttributes.getResourceId(C0328R.styleable.ViewStubCompat_android_layout, 0);
        setId(obtainStyledAttributes.getResourceId(C0328R.styleable.ViewStubCompat_android_id, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    @Override // android.view.View
    protected final void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public final void draw(Canvas canvas) {
    }

    public final int getInflatedId() {
        return this.mInflatedId;
    }

    public final LayoutInflater getLayoutInflater() {
        return this.mInflater;
    }

    public final int getLayoutResource() {
        return this.mLayoutResource;
    }

    public final View inflate() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
        }
        if (this.mLayoutResource == 0) {
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        View inflate = (this.mInflater != null ? this.mInflater : LayoutInflater.from(getContext())).inflate(this.mLayoutResource, viewGroup, false);
        if (this.mInflatedId != -1) {
            inflate.setId(this.mInflatedId);
        }
        int indexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(inflate, indexOfChild, layoutParams);
        } else {
            viewGroup.addView(inflate, indexOfChild);
        }
        this.mInflatedViewRef = new WeakReference<>(inflate);
        if (this.mInflateListener != null) {
            this.mInflateListener.onInflate(this, inflate);
        }
        return inflate;
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public final void setInflatedId(int i) {
        this.mInflatedId = i;
    }

    public final void setLayoutInflater(LayoutInflater layoutInflater) {
        this.mInflater = layoutInflater;
    }

    public final void setLayoutResource(int i) {
        this.mLayoutResource = i;
    }

    public final void setOnInflateListener(OnInflateListener onInflateListener) {
        this.mInflateListener = onInflateListener;
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        if (this.mInflatedViewRef != null) {
            View view = this.mInflatedViewRef.get();
            if (view == null) {
                throw new IllegalStateException("setVisibility called on un-referenced view");
            }
            view.setVisibility(i);
            return;
        }
        super.setVisibility(i);
        if (i == 0 || i == 4) {
            inflate();
        }
    }
}
