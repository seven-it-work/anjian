package com.cyjh.mobileanjian.ipc.p106ui;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import com.cyjh.mobileanjian.ipc.p106ui.SlidingTabLayout;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.cyjh.mobileanjian.ipc.ui.d */
/* loaded from: classes.dex */
public final class C1626d extends LinearLayout {

    /* renamed from: c */
    private static final int f6187c = 0;

    /* renamed from: d */
    private static final byte f6188d = 38;

    /* renamed from: e */
    private static final int f6189e = 3;

    /* renamed from: f */
    private static final int f6190f = -13388315;

    /* renamed from: a */
    SlidingTabLayout.InterfaceC1622c f6191a;

    /* renamed from: b */
    final a f6192b;

    /* renamed from: g */
    private final int f6193g;

    /* renamed from: h */
    private final Paint f6194h;

    /* renamed from: i */
    private final int f6195i;

    /* renamed from: j */
    private final Paint f6196j;

    /* renamed from: k */
    private int f6197k;

    /* renamed from: l */
    private float f6198l;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.mobileanjian.ipc.ui.d$a */
    /* loaded from: classes.dex */
    public static class a implements SlidingTabLayout.InterfaceC1622c {

        /* renamed from: a */
        int[] f6199a;

        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        /* renamed from: a */
        private void m7249a(int... iArr) {
            this.f6199a = iArr;
        }

        @Override // com.cyjh.mobileanjian.ipc.p106ui.SlidingTabLayout.InterfaceC1622c
        /* renamed from: a */
        public final int mo7232a(int i) {
            return this.f6199a[i % this.f6199a.length];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1626d(Context context) {
        this(context, (byte) 0);
    }

    private C1626d(Context context, byte b2) {
        super(context, null);
        setWillNotDraw(false);
        float f = getResources().getDisplayMetrics().density;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorForeground, typedValue, true);
        int i = typedValue.data;
        int argb = Color.argb(38, Color.red(i), Color.green(i), Color.blue(i));
        this.f6192b = new a((byte) 0);
        this.f6192b.f6199a = new int[]{f6190f};
        this.f6193g = (int) (0.0f * f);
        this.f6194h = new Paint();
        this.f6194h.setColor(argb);
        this.f6195i = (int) (f * 3.0f);
        this.f6196j = new Paint();
    }

    /* renamed from: a */
    private static int m7244a(int i) {
        return Color.argb(38, Color.red(i), Color.green(i), Color.blue(i));
    }

    /* renamed from: a */
    private static int m7245a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.rgb((int) ((Color.red(i) * f) + (Color.red(i2) * f2)), (int) ((Color.green(i) * f) + (Color.green(i2) * f2)), (int) ((Color.blue(i) * f) + (Color.blue(i2) * f2)));
    }

    /* renamed from: a */
    private void m7246a(SlidingTabLayout.InterfaceC1622c interfaceC1622c) {
        this.f6191a = interfaceC1622c;
        invalidate();
    }

    /* renamed from: a */
    private void m7247a(int... iArr) {
        this.f6191a = null;
        this.f6192b.f6199a = iArr;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7248a(int i, float f) {
        this.f6197k = i;
        this.f6198l = f;
        invalidate();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected final void onDraw(Canvas canvas) {
        int height = getHeight();
        int childCount = getChildCount();
        SlidingTabLayout.InterfaceC1622c interfaceC1622c = this.f6191a != null ? this.f6191a : this.f6192b;
        if (childCount > 0) {
            View childAt = getChildAt(this.f6197k);
            int left = childAt.getLeft();
            int right = childAt.getRight();
            int mo7232a = interfaceC1622c.mo7232a(this.f6197k);
            if (this.f6198l > 0.0f && this.f6197k < getChildCount() - 1) {
                if (mo7232a != interfaceC1622c.mo7232a(this.f6197k + 1)) {
                    float f = this.f6198l;
                    float f2 = 1.0f - f;
                    mo7232a = Color.rgb((int) ((Color.red(r3) * f) + (Color.red(mo7232a) * f2)), (int) ((Color.green(r3) * f) + (Color.green(mo7232a) * f2)), (int) ((Color.blue(r3) * f) + (Color.blue(mo7232a) * f2)));
                }
                View childAt2 = getChildAt(this.f6197k + 1);
                left = (int) ((this.f6198l * childAt2.getLeft()) + ((1.0f - this.f6198l) * left));
                right = (int) ((this.f6198l * childAt2.getRight()) + ((1.0f - this.f6198l) * right));
            }
            this.f6196j.setColor(mo7232a);
            canvas.drawRect(left, height - this.f6195i, right, height, this.f6196j);
        }
        canvas.drawRect(0.0f, height - this.f6193g, getWidth(), height, this.f6194h);
    }
}
