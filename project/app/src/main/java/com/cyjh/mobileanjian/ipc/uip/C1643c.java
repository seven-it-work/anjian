package com.cyjh.mobileanjian.ipc.uip;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TableLayout;
import com.cyjh.mqsdk.C1696R;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.cyjh.mobileanjian.ipc.uip.c */
/* loaded from: classes.dex */
public final class C1643c extends LinearLayout implements RadioGroup.OnCheckedChangeListener {

    /* renamed from: a */
    static final int[] f6375a = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31};

    /* renamed from: h */
    private static final int f6376h = 32;

    /* renamed from: b */
    RadioGroup f6377b;

    /* renamed from: c */
    List<ScrollView> f6378c;

    /* renamed from: d */
    int f6379d;

    /* renamed from: e */
    LinearLayout f6380e;

    /* renamed from: f */
    ScrollView f6381f;

    /* renamed from: g */
    int f6382g;

    /* renamed from: i */
    private FrameLayout f6383i;

    /* renamed from: j */
    private int f6384j;

    /* renamed from: com.cyjh.mobileanjian.ipc.uip.c$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements View.OnTouchListener {
        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass1() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            view.requestFocusFromTouch();
            return false;
        }
    }

    public C1643c(Context context) {
        this(context, (byte) 0);
    }

    private C1643c(Context context, byte b2) {
        this(context, (char) 0);
    }

    private C1643c(Context context, char c2) {
        super(context, null, 0);
        this.f6382g = 0;
        this.f6379d = (int) TypedValue.applyDimension(1, 10.0f, context.getResources().getDisplayMetrics());
        setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        setOrientation(0);
        LinearLayout linearLayout = new LinearLayout(context);
        TableLayout.LayoutParams layoutParams = new TableLayout.LayoutParams(0, -1);
        layoutParams.weight = 7.5f;
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setGravity(16);
        linearLayout.setOrientation(1);
        ScrollView scrollView = new ScrollView(context);
        this.f6377b = new RadioGroup(context);
        this.f6377b.setOrientation(1);
        this.f6377b.setPadding(this.f6379d, 0, 0, -this.f6379d);
        scrollView.addView(this.f6377b);
        linearLayout.addView(scrollView);
        addView(linearLayout);
        View view = new View(context);
        view.setLayoutParams(new LinearLayout.LayoutParams((int) TypedValue.applyDimension(1, 1.0f, context.getResources().getDisplayMetrics()), -1));
        view.setBackgroundColor(-16777216);
        addView(view);
        this.f6383i = new FrameLayout(context);
        TableLayout.LayoutParams layoutParams2 = new TableLayout.LayoutParams(0, -1);
        layoutParams2.weight = 2.5f;
        this.f6383i.setLayoutParams(layoutParams2);
        this.f6383i.setPadding(this.f6379d, 0, this.f6379d, 0);
        addView(this.f6383i);
        this.f6378c = new ArrayList(32);
        this.f6377b.setOnCheckedChangeListener(this);
    }

    /* renamed from: a */
    private void m7455a() {
        this.f6378c.add(this.f6381f);
        this.f6382g++;
    }

    /* renamed from: a */
    private void m7456a(String str) {
        RadioButton radioButton = new RadioButton(getContext());
        radioButton.setId(f6375a[this.f6382g]);
        radioButton.setPadding(0, 0, 0, this.f6379d);
        radioButton.setButtonDrawable(new BitmapDrawable((Bitmap) null));
        radioButton.setTextColor(getResources().getColorStateList(C1696R.color.selector_tab));
        radioButton.setText(str);
        radioButton.setLines(1);
        radioButton.setEllipsize(TextUtils.TruncateAt.END);
        this.f6377b.addView(radioButton);
        this.f6381f = new ScrollView(getContext());
        this.f6381f.setDescendantFocusability(131072);
        this.f6381f.setFocusable(true);
        this.f6381f.setFocusableInTouchMode(true);
        this.f6381f.setOnTouchListener(new AnonymousClass1());
        this.f6381f.setTag(str);
        this.f6381f.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.f6380e = linearLayout;
        this.f6381f.addView(this.f6380e);
    }

    /* renamed from: b */
    private LinearLayout m7457b() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        return linearLayout;
    }

    /* renamed from: a */
    public final void m7458a(View view) {
        this.f6380e.addView(view);
    }

    /* renamed from: a */
    public final void m7459a(List<ScrollView> list) {
        this.f6378c = list;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ScrollView scrollView = list.get(i);
            RadioButton radioButton = new RadioButton(getContext());
            radioButton.setId(f6375a[i]);
            radioButton.setPadding(0, 0, 0, this.f6379d);
            radioButton.setButtonDrawable(new BitmapDrawable((Bitmap) null));
            radioButton.setTextColor(getResources().getColorStateList(C1696R.color.selector_tab));
            radioButton.setText((String) scrollView.getTag());
            radioButton.setLines(1);
            radioButton.setEllipsize(TextUtils.TruncateAt.END);
            this.f6377b.addView(radioButton);
        }
    }

    public final int getCurrentItem() {
        return this.f6384j;
    }

    public final List<ScrollView> getScrollViewList() {
        return this.f6378c;
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public final void onCheckedChanged(RadioGroup radioGroup, int i) {
        setSelectTab(i);
    }

    public final void setSelectTab(int i) {
        if (this.f6378c.size() == 0) {
            return;
        }
        if (i < 0 || i >= 32) {
            i = 0;
        }
        this.f6384j = i;
        this.f6377b.check(i);
        this.f6383i.removeAllViews();
        this.f6383i.addView(this.f6378c.get(i));
    }
}
