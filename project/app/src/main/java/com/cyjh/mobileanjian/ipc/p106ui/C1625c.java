package com.cyjh.mobileanjian.ipc.p106ui;

import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.TextView;
import com.cyjh.mqsdk.C1696R;

/* renamed from: com.cyjh.mobileanjian.ipc.ui.c */
/* loaded from: classes.dex */
public final class C1625c {

    /* renamed from: a */
    View f6181a;

    /* renamed from: b */
    EditText f6182b;

    /* renamed from: c */
    a f6183c;

    /* renamed from: d */
    WindowManager f6184d;

    /* renamed from: e */
    private WindowManager.LayoutParams f6185e;

    /* renamed from: com.cyjh.mobileanjian.ipc.ui.c$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo6655a(String str);
    }

    public C1625c(Context context, String str, a aVar) {
        WindowManager.LayoutParams layoutParams;
        int i;
        this.f6183c = aVar;
        this.f6181a = LayoutInflater.from(context).inflate(C1696R.layout.dialog_input, (ViewGroup) null);
        ((TextView) this.f6181a.findViewById(C1696R.id.prompt)).setText(str);
        this.f6182b = (EditText) this.f6181a.findViewById(C1696R.id.et_input);
        this.f6181a.findViewById(C1696R.id.single_ok_button).setOnClickListener(new View.OnClickListener() { // from class: com.cyjh.mobileanjian.ipc.ui.c.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (C1625c.this.f6183c != null) {
                    C1625c.this.f6183c.mo6655a(C1625c.this.f6182b.getText().toString());
                }
                C1625c c1625c = C1625c.this;
                c1625c.f6184d.removeView(c1625c.f6181a);
            }
        });
        this.f6184d = (WindowManager) context.getSystemService("window");
        this.f6185e = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams = this.f6185e;
            i = 2038;
        } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
            layoutParams = this.f6185e;
            i = 2002;
        } else {
            layoutParams = this.f6185e;
            i = 2005;
        }
        layoutParams.type = i;
        this.f6185e.format = 1;
        this.f6185e.gravity = 17;
        this.f6185e.x = 0;
        this.f6185e.y = 0;
        this.f6185e.alpha = 1.0f;
        this.f6185e.width = -1;
        this.f6185e.height = -1;
    }

    /* renamed from: b */
    private void m7240b() {
        this.f6184d.removeView(this.f6181a);
    }

    /* renamed from: c */
    private void m7241c() {
        WindowManager.LayoutParams layoutParams;
        int i;
        this.f6185e = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams = this.f6185e;
            i = 2038;
        } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
            layoutParams = this.f6185e;
            i = 2002;
        } else {
            layoutParams = this.f6185e;
            i = 2005;
        }
        layoutParams.type = i;
        this.f6185e.format = 1;
        this.f6185e.gravity = 17;
        this.f6185e.x = 0;
        this.f6185e.y = 0;
        this.f6185e.alpha = 1.0f;
        this.f6185e.width = -1;
        this.f6185e.height = -1;
    }

    /* renamed from: a */
    public final void m7243a() {
        this.f6184d.addView(this.f6181a, this.f6185e);
    }
}
