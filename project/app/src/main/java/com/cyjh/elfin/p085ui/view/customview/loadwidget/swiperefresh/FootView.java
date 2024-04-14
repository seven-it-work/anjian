package com.cyjh.elfin.p085ui.view.customview.loadwidget.swiperefresh;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1429c;
import com.hjol.R;

/* loaded from: classes.dex */
public class FootView extends BaseFootView {

    /* renamed from: b */
    protected TextView f5502b;

    /* renamed from: c */
    private View.OnClickListener f5503c;

    public FootView(Context context) {
        super(context);
        this.f5503c = new View.OnClickListener() { // from class: com.cyjh.elfin.ui.view.customview.loadwidget.swiperefresh.FootView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (view.getId() != FootView.this.f5502b.getId() || FootView.this.f5491a == null) {
                    return;
                }
                FootView.this.f5502b.setText("加载中...");
                InterfaceC1429c interfaceC1429c = FootView.this.f5491a;
            }
        };
        m6601f();
    }

    public FootView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5503c = new View.OnClickListener() { // from class: com.cyjh.elfin.ui.view.customview.loadwidget.swiperefresh.FootView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (view.getId() != FootView.this.f5502b.getId() || FootView.this.f5491a == null) {
                    return;
                }
                FootView.this.f5502b.setText("加载中...");
                InterfaceC1429c interfaceC1429c = FootView.this.f5491a;
            }
        };
        m6601f();
    }

    /* renamed from: f */
    private void m6601f() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        View layout = getLayout();
        layoutParams.gravity = 17;
        addView(layout, layoutParams);
        this.f5502b = (TextView) findViewById(R.id.load_empty_tv);
        this.f5502b.setOnClickListener(this.f5503c);
    }

    /* renamed from: g */
    private static void m6602g() {
    }

    @Override // com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1431e
    /* renamed from: a */
    public final void mo6577a() {
        this.f5502b.setVisibility(0);
        this.f5502b.setText("点击加载更多");
    }

    @Override // com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1431e
    /* renamed from: b */
    public final void mo6578b() {
        this.f5502b.setText("加载中...");
    }

    @Override // com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1431e
    /* renamed from: c */
    public final void mo6579c() {
        this.f5502b.setVisibility(8);
    }

    @Override // com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1431e
    /* renamed from: d */
    public final void mo6580d() {
        this.f5502b.setVisibility(8);
    }

    @Override // com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1431e
    /* renamed from: e */
    public final void mo6581e() {
        this.f5502b.setVisibility(0);
    }

    public View getLayout() {
        return LayoutInflater.from(getContext()).inflate(R.layout.foot_view, (ViewGroup) null);
    }
}
