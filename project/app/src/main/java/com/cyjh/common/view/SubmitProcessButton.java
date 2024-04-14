package com.cyjh.common.view;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public class SubmitProcessButton extends ProcessButton {
    public SubmitProcessButton(Context context) {
        super(context);
    }

    public SubmitProcessButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SubmitProcessButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.cyjh.common.view.ProcessButton
    /* renamed from: a */
    public final void mo5261a(Canvas canvas) {
        getProgressDrawable().setBounds(0, 0, (int) (getMeasuredWidth() * (getProgress() / getMaxProgress())), getMeasuredHeight());
        getProgressDrawable().draw(canvas);
    }
}
