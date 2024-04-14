package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.RequiresApi;
import android.support.v7.appcompat.C0328R;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(17)
/* loaded from: classes.dex */
public class AppCompatTextHelperV17 extends AppCompatTextHelper {
    private TintInfo mDrawableEndTint;
    private TintInfo mDrawableStartTint;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatTextHelperV17(TextView textView) {
        super(textView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.v7.widget.AppCompatTextHelper
    public void applyCompoundDrawablesTints() {
        super.applyCompoundDrawablesTints();
        if (this.mDrawableStartTint == null && this.mDrawableEndTint == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = this.mView.getCompoundDrawablesRelative();
        applyCompoundDrawableTint(compoundDrawablesRelative[0], this.mDrawableStartTint);
        applyCompoundDrawableTint(compoundDrawablesRelative[2], this.mDrawableEndTint);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.v7.widget.AppCompatTextHelper
    public void loadFromAttributes(AttributeSet attributeSet, int i) {
        super.loadFromAttributes(attributeSet, i);
        Context context = this.mView.getContext();
        AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.get();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0328R.styleable.AppCompatTextHelper, i, 0);
        if (obtainStyledAttributes.hasValue(C0328R.styleable.AppCompatTextHelper_android_drawableStart)) {
            this.mDrawableStartTint = createTintInfo(context, appCompatDrawableManager, obtainStyledAttributes.getResourceId(C0328R.styleable.AppCompatTextHelper_android_drawableStart, 0));
        }
        if (obtainStyledAttributes.hasValue(C0328R.styleable.AppCompatTextHelper_android_drawableEnd)) {
            this.mDrawableEndTint = createTintInfo(context, appCompatDrawableManager, obtainStyledAttributes.getResourceId(C0328R.styleable.AppCompatTextHelper_android_drawableEnd, 0));
        }
        obtainStyledAttributes.recycle();
    }
}
