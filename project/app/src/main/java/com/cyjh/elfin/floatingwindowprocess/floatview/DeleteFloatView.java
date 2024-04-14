package com.cyjh.elfin.floatingwindowprocess.floatview;

import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cyjh.common.util.C1147a;
import com.hjol.R;

/* loaded from: classes.dex */
public class DeleteFloatView extends LinearLayout {

    /* renamed from: a */
    WindowManager.LayoutParams f4889a;

    /* renamed from: b */
    TextView f4890b;

    /* renamed from: c */
    ImageView f4891c;

    /* renamed from: d */
    LinearLayout f4892d;

    public DeleteFloatView(Context context) {
        super(context);
        WindowManager.LayoutParams layoutParams;
        int i;
        LayoutInflater.from(getContext()).inflate(R.layout.delete_floatview, this);
        this.f4890b = (TextView) findViewById(R.id.deletefloatview_textview_delete);
        this.f4891c = (ImageView) findViewById(R.id.deletefloatview_imageview_delete);
        this.f4892d = (LinearLayout) findViewById(R.id.deletefloatview_linearlayout);
        setVisibility(8);
        this.f4889a = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams = this.f4889a;
            i = 2038;
        } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
            layoutParams = this.f4889a;
            i = 2002;
        } else {
            layoutParams = this.f4889a;
            i = 2005;
        }
        layoutParams.type = i;
        this.f4889a.format = 1;
        this.f4889a.flags = 40;
        this.f4889a.gravity = 8388659;
        this.f4889a.x = (C1147a.m4247a(getContext()).x - this.f4892d.getLayoutParams().width) / 2;
        this.f4889a.y = C1147a.m4247a(getContext()).y;
        this.f4889a.width = this.f4892d.getLayoutParams().width;
        this.f4889a.height = this.f4892d.getLayoutParams().height;
    }

    /* renamed from: b */
    private void m6033b() {
        LayoutInflater.from(getContext()).inflate(R.layout.delete_floatview, this);
        this.f4890b = (TextView) findViewById(R.id.deletefloatview_textview_delete);
        this.f4891c = (ImageView) findViewById(R.id.deletefloatview_imageview_delete);
        this.f4892d = (LinearLayout) findViewById(R.id.deletefloatview_linearlayout);
        setVisibility(8);
    }

    /* renamed from: c */
    private void m6034c() {
        WindowManager.LayoutParams layoutParams;
        int i;
        this.f4889a = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams = this.f4889a;
            i = 2038;
        } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
            layoutParams = this.f4889a;
            i = 2002;
        } else {
            layoutParams = this.f4889a;
            i = 2005;
        }
        layoutParams.type = i;
        this.f4889a.format = 1;
        this.f4889a.flags = 40;
        this.f4889a.gravity = 8388659;
        this.f4889a.x = (C1147a.m4247a(getContext()).x - this.f4892d.getLayoutParams().width) / 2;
        this.f4889a.y = C1147a.m4247a(getContext()).y;
        this.f4889a.width = this.f4892d.getLayoutParams().width;
        this.f4889a.height = this.f4892d.getLayoutParams().height;
    }

    /* renamed from: d */
    private int m6035d() {
        return this.f4892d.getLayoutParams().width;
    }

    /* renamed from: e */
    private void m6036e() {
        this.f4891c.setImageResource(R.drawable.delete_floatview_in);
        this.f4890b.setTextColor(getResources().getColor(R.color.green));
    }

    /* renamed from: f */
    private void m6037f() {
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.f4889a.x = (C1147a.m4247a(getContext()).x - this.f4892d.getLayoutParams().width) / 2;
        this.f4889a.y = C1147a.m4247a(getContext()).y;
        windowManager.updateViewLayout(this, this.f4889a);
    }

    /* renamed from: a */
    public final void m6038a() {
        this.f4891c.setImageResource(R.drawable.delete_floatview_out);
        this.f4890b.setTextColor(getResources().getColor(android.R.color.white));
    }

    @Override // android.view.View
    public WindowManager.LayoutParams getLayoutParams() {
        return this.f4889a;
    }
}
