package com.cyjh.mobileanjian.ipc.p106ui;

import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cyjh.mqsdk.C1696R;

/* renamed from: com.cyjh.mobileanjian.ipc.ui.b */
/* loaded from: classes.dex */
public final class C1624b {

    /* renamed from: a */
    public static final int f6157a = 0;

    /* renamed from: b */
    public static final int f6158b = 1;

    /* renamed from: c */
    public static final int f6159c = 2;

    /* renamed from: d */
    public static final int f6160d = 3;

    /* renamed from: e */
    public static final int f6161e = 0;

    /* renamed from: f */
    public static final int f6162f = 1;

    /* renamed from: g */
    public static final int f6163g = 2;

    /* renamed from: h */
    public static final int f6164h = 3;

    /* renamed from: i */
    a f6165i;

    /* renamed from: j */
    private WindowManager f6166j;

    /* renamed from: k */
    private WindowManager.LayoutParams f6167k;

    /* renamed from: l */
    private View f6168l;

    /* renamed from: m */
    private int f6169m;

    /* renamed from: n */
    private int f6170n;

    /* renamed from: o */
    private LinearLayout f6171o;

    /* renamed from: p */
    private LinearLayout f6172p;

    /* renamed from: q */
    private Button f6173q;

    /* renamed from: r */
    private Button f6174r;

    /* renamed from: s */
    private Button f6175s;

    /* renamed from: com.cyjh.mobileanjian.ipc.ui.b$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo6654a(int i);
    }

    public C1624b(Context context, String str, final int i, a aVar) {
        WindowManager.LayoutParams layoutParams;
        int i2;
        this.f6165i = aVar;
        this.f6166j = (WindowManager) context.getSystemService("window");
        this.f6168l = LayoutInflater.from(context).inflate(C1696R.layout.dialog_alert, (ViewGroup) null);
        ((TextView) this.f6168l.findViewById(C1696R.id.prompt)).setText(str);
        this.f6167k = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams = this.f6167k;
            i2 = 2038;
        } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
            layoutParams = this.f6167k;
            i2 = 2002;
        } else {
            layoutParams = this.f6167k;
            i2 = 2005;
        }
        layoutParams.type = i2;
        this.f6167k.format = 1;
        this.f6167k.gravity = 16;
        this.f6167k.x = 0;
        this.f6167k.y = 0;
        this.f6167k.alpha = 1.0f;
        this.f6167k.width = -1;
        this.f6167k.height = -1;
        switch (i) {
            case 1:
                this.f6168l.findViewById(C1696R.id.single_ok_button).setVisibility(8);
                this.f6168l.findViewById(C1696R.id.layout_type3).setVisibility(8);
                this.f6173q = (Button) this.f6168l.findViewById(C1696R.id.positive_button);
                this.f6174r = (Button) this.f6168l.findViewById(C1696R.id.negative_button);
                break;
            case 2:
                this.f6168l.findViewById(C1696R.id.single_ok_button).setVisibility(8);
                this.f6168l.findViewById(C1696R.id.layout_type3).setVisibility(8);
                this.f6173q = (Button) this.f6168l.findViewById(C1696R.id.positive_button);
                this.f6174r = (Button) this.f6168l.findViewById(C1696R.id.negative_button);
                this.f6173q.setText(C1696R.string.dialog_yes_button);
                this.f6174r.setText(C1696R.string.dialog_no_button);
                break;
            case 3:
                this.f6168l.findViewById(C1696R.id.single_ok_button).setVisibility(8);
                this.f6168l.findViewById(C1696R.id.layout_type2).setVisibility(8);
                this.f6173q = (Button) this.f6168l.findViewById(C1696R.id.yes_button);
                this.f6174r = (Button) this.f6168l.findViewById(C1696R.id.no_button);
                this.f6175s = (Button) this.f6168l.findViewById(C1696R.id.cancel_button);
                break;
            default:
                this.f6168l.findViewById(C1696R.id.layout_type2).setVisibility(8);
                this.f6168l.findViewById(C1696R.id.layout_type3).setVisibility(8);
                this.f6173q = (Button) this.f6168l.findViewById(C1696R.id.single_ok_button);
                break;
        }
        if (this.f6173q != null) {
            this.f6173q.setOnClickListener(new View.OnClickListener() { // from class: com.cyjh.mobileanjian.ipc.ui.b.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (C1624b.this.f6165i != null) {
                        C1624b.this.f6165i.mo6654a((i == 0 || i == 1) ? 0 : 2);
                    }
                    C1624b.m7233a(C1624b.this);
                }
            });
        }
        if (this.f6174r != null) {
            this.f6174r.setOnClickListener(new View.OnClickListener() { // from class: com.cyjh.mobileanjian.ipc.ui.b.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (C1624b.this.f6165i != null) {
                        C1624b.this.f6165i.mo6654a(i != 1 ? 3 : 1);
                    }
                    C1624b.m7233a(C1624b.this);
                }
            });
        }
        if (this.f6175s != null) {
            this.f6175s.setOnClickListener(new View.OnClickListener() { // from class: com.cyjh.mobileanjian.ipc.ui.b.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (C1624b.this.f6165i != null) {
                        C1624b.this.f6165i.mo6654a(1);
                    }
                    C1624b.m7233a(C1624b.this);
                }
            });
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m7233a(C1624b c1624b) {
        c1624b.f6166j.removeView(c1624b.f6168l);
    }

    /* renamed from: b */
    private void m7235b() {
        this.f6166j.removeView(this.f6168l);
    }

    /* renamed from: c */
    private void m7236c() {
        WindowManager.LayoutParams layoutParams;
        int i;
        this.f6167k = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams = this.f6167k;
            i = 2038;
        } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
            layoutParams = this.f6167k;
            i = 2002;
        } else {
            layoutParams = this.f6167k;
            i = 2005;
        }
        layoutParams.type = i;
        this.f6167k.format = 1;
        this.f6167k.gravity = 16;
        this.f6167k.x = 0;
        this.f6167k.y = 0;
        this.f6167k.alpha = 1.0f;
        this.f6167k.width = -1;
        this.f6167k.height = -1;
    }

    /* renamed from: a */
    public final void m7237a() {
        this.f6166j.addView(this.f6168l, this.f6167k);
    }
}
