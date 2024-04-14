package com.cyjh.elfin.p085ui.view.customview.loadwidget.swiperefresh;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1429c;
import com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1431e;

/* loaded from: classes.dex */
public abstract class BaseFootView extends LinearLayout implements InterfaceC1431e {

    /* renamed from: a */
    protected InterfaceC1429c f5491a;

    public BaseFootView(Context context) {
        super(context);
    }

    public BaseFootView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setCallBack(InterfaceC1429c interfaceC1429c) {
        this.f5491a = interfaceC1429c;
    }
}
