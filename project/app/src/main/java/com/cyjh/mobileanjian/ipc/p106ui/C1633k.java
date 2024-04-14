package com.cyjh.mobileanjian.ipc.p106ui;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.ViewPager;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cyjh.mobileanjian.ipc.view.ExToast;
import com.cyjh.mqsdk.C1696R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* renamed from: com.cyjh.mobileanjian.ipc.ui.k */
/* loaded from: classes.dex */
public final class C1633k {

    /* renamed from: d */
    private static final int f6288d = 4096;

    /* renamed from: e */
    private static final String f6289e = "first_row_tag";

    /* renamed from: f */
    private static final String f6290f = "row_mark";

    /* renamed from: v */
    private static final int f6291v = 256;

    /* renamed from: x */
    private static int f6292x;

    /* renamed from: a */
    public View.OnClickListener f6293a;

    /* renamed from: b */
    public View.OnClickListener f6294b;

    /* renamed from: g */
    private WindowManager f6296g;

    /* renamed from: i */
    private ExToast f6298i;

    /* renamed from: j */
    private Context f6299j;

    /* renamed from: k */
    private LinearLayout f6300k;

    /* renamed from: l */
    private String f6301l;

    /* renamed from: q */
    private C1629g f6306q;

    /* renamed from: r */
    private LinearLayout f6307r;

    /* renamed from: s */
    private LinearLayout f6308s;

    /* renamed from: t */
    private TextView f6309t;

    /* renamed from: m */
    private Set<String> f6302m = new HashSet();

    /* renamed from: n */
    private Set<String> f6303n = new HashSet();

    /* renamed from: o */
    private HashMap<String, String> f6304o = new HashMap<>();

    /* renamed from: p */
    private HashMap<String, String> f6305p = new HashMap<>();

    /* renamed from: c */
    public boolean f6295c = false;

    /* renamed from: u */
    private ArrayList<SlidingTabLayout> f6310u = new ArrayList<>();

    /* renamed from: w */
    private Handler f6311w = new Handler() { // from class: com.cyjh.mobileanjian.ipc.ui.k.3
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what != 256) {
                return;
            }
            C1633k.this.f6300k.invalidate();
        }
    };

    /* renamed from: h */
    private WindowManager.LayoutParams f6297h = new WindowManager.LayoutParams();

    /* renamed from: com.cyjh.mobileanjian.ipc.ui.k$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements View.OnClickListener {
        AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (C1633k.this.f6293a != null) {
                C1633k.this.f6293a.onClick(view);
            }
        }
    }

    /* renamed from: com.cyjh.mobileanjian.ipc.ui.k$2, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass2 implements View.OnClickListener {
        AnonymousClass2() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (C1633k.this.f6294b != null) {
                C1633k.this.f6294b.onClick(view);
            }
        }
    }

    public C1633k(Context context, String str, int i, int i2) {
        WindowManager.LayoutParams layoutParams;
        int i3;
        this.f6301l = null;
        this.f6299j = context;
        this.f6306q = C1629g.m7255a(context);
        this.f6296g = (WindowManager) this.f6299j.getSystemService("window");
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams = this.f6297h;
            i3 = 2038;
        } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
            layoutParams = this.f6297h;
            i3 = 2002;
        } else {
            layoutParams = this.f6297h;
            i3 = 2005;
        }
        layoutParams.type = i3;
        this.f6297h.format = 1;
        this.f6297h.gravity = 16;
        this.f6297h.x = 0;
        this.f6297h.y = 0;
        this.f6297h.alpha = 1.0f;
        this.f6297h.width = -1;
        this.f6297h.height = -1;
        DisplayMetrics displayMetrics = this.f6299j.getResources().getDisplayMetrics();
        if (m7393c(40) + i >= displayMetrics.widthPixels) {
            i = -1;
        } else if (i < -2 || (i >= 0 && i < m7393c(200))) {
            i = m7393c(200);
        }
        if (m7393c(40) + i2 >= displayMetrics.heightPixels) {
            i2 = -2;
        } else if (i2 < -2 || (i2 >= 0 && i2 < m7393c(200))) {
            i2 = m7393c(200);
        }
        LayoutInflater from = LayoutInflater.from(this.f6299j);
        this.f6308s = (LinearLayout) from.inflate(C1696R.layout.layout_ui_show, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) from.inflate(C1696R.layout.layout_display, (ViewGroup) null);
        linearLayout.setLayoutParams(new RelativeLayout.LayoutParams(i, i2));
        this.f6308s.setGravity(17);
        this.f6308s.addView(linearLayout);
        this.f6309t = (TextView) this.f6308s.findViewById(C1696R.id.title);
        this.f6300k = (LinearLayout) this.f6308s.findViewById(C1696R.id.layout_user);
        this.f6308s.findViewById(C1696R.id.exit).setOnClickListener(new AnonymousClass1());
        this.f6308s.findViewById(C1696R.id.next).setOnClickListener(new AnonymousClass2());
        this.f6301l = str;
        m7404a(str);
        m7406a(f6290f, str, -1, -2);
    }

    /* renamed from: a */
    private void m7391a(int i, int i2) {
        DisplayMetrics displayMetrics = this.f6299j.getResources().getDisplayMetrics();
        if (m7393c(40) + i >= displayMetrics.widthPixels) {
            i = -1;
        } else if (i < -2 || (i >= 0 && i < m7393c(200))) {
            i = m7393c(200);
        }
        if (m7393c(40) + i2 >= displayMetrics.heightPixels) {
            i2 = -2;
        } else if (i2 < -2 || (i2 >= 0 && i2 < m7393c(200))) {
            i2 = m7393c(200);
        }
        LayoutInflater from = LayoutInflater.from(this.f6299j);
        this.f6308s = (LinearLayout) from.inflate(C1696R.layout.layout_ui_show, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) from.inflate(C1696R.layout.layout_display, (ViewGroup) null);
        linearLayout.setLayoutParams(new RelativeLayout.LayoutParams(i, i2));
        this.f6308s.setGravity(17);
        this.f6308s.addView(linearLayout);
        this.f6309t = (TextView) this.f6308s.findViewById(C1696R.id.title);
        this.f6300k = (LinearLayout) this.f6308s.findViewById(C1696R.id.layout_user);
        this.f6308s.findViewById(C1696R.id.exit).setOnClickListener(new AnonymousClass1());
        this.f6308s.findViewById(C1696R.id.next).setOnClickListener(new AnonymousClass2());
    }

    /* renamed from: c */
    private int m7393c(int i) {
        return (int) (i * (this.f6299j.getResources().getDisplayMetrics().densityDpi / 160.0f));
    }

    /* renamed from: c */
    private void m7395c(String str) {
        this.f6301l = str;
        m7404a(str);
    }

    /* renamed from: f */
    private String m7396f() {
        return this.f6301l;
    }

    /* renamed from: g */
    private void m7397g() {
        WindowManager.LayoutParams layoutParams;
        int i;
        this.f6296g = (WindowManager) this.f6299j.getSystemService("window");
        this.f6297h = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams = this.f6297h;
            i = 2038;
        } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
            layoutParams = this.f6297h;
            i = 2002;
        } else {
            layoutParams = this.f6297h;
            i = 2005;
        }
        layoutParams.type = i;
        this.f6297h.format = 1;
        this.f6297h.gravity = 16;
        this.f6297h.x = 0;
        this.f6297h.y = 0;
        this.f6297h.alpha = 1.0f;
        this.f6297h.width = -1;
        this.f6297h.height = -1;
    }

    /* renamed from: h */
    private static String m7398h() {
        StringBuilder sb = new StringBuilder("first_row_");
        int i = f6292x;
        f6292x = i + 1;
        sb.append(i);
        return sb.toString();
    }

    /* renamed from: a */
    public final String m7399a() {
        return this.f6309t.getText().toString();
    }

    /* renamed from: a */
    public final void m7400a(int i) {
        this.f6309t.setTextColor(i);
    }

    /* renamed from: a */
    public final void m7401a(Typeface typeface, int i) {
        this.f6309t.setTypeface(typeface);
        this.f6309t.setTextSize(2, i);
    }

    /* renamed from: a */
    public final void m7402a(View.OnClickListener onClickListener) {
        this.f6293a = onClickListener;
    }

    /* renamed from: a */
    public final void m7403a(View view, String str) {
        new StringBuilder("row tag: ").append(this.f6304o.get(str));
        if (str.equals(this.f6301l)) {
            this.f6307r.addView(view);
        } else if (this.f6302m.contains(str)) {
            ((C1634l) ((SlidingTabLayout) this.f6300k.findViewWithTag(this.f6305p.get(str))).getViewPager().getAdapter()).m7419a(view, str, this.f6304o.get(str));
        }
    }

    /* renamed from: a */
    public final void m7404a(String str) {
        this.f6309t.setText(str);
    }

    /* renamed from: a */
    public final void m7405a(String str, int i) {
        this.f6303n.add(str);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.f6299j).inflate(C1696R.layout.ui_show_sliding_layout, (ViewGroup) null);
        final SlidingTabLayout slidingTabLayout = (SlidingTabLayout) linearLayout.findViewById(C1696R.id.slidingTabLayout);
        slidingTabLayout.setTag(str);
        slidingTabLayout.setDistributeEvenly(true);
        slidingTabLayout.setSelectedIndicatorColors(this.f6299j.getResources().getColor(C1696R.color.ui_show_blue));
        slidingTabLayout.setBackgroundResource(C1696R.drawable.bg_tab_host);
        slidingTabLayout.setOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.cyjh.mobileanjian.ipc.ui.k.4
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public final void onPageScrollStateChanged(int i2) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public final void onPageScrolled(int i2, float f, int i3) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public final void onPageSelected(int i2) {
                slidingTabLayout.setFocusable(true);
                slidingTabLayout.setFocusableInTouchMode(true);
                slidingTabLayout.getViewPager().requestFocus();
            }
        });
        if (i == -2) {
            i = m7393c(200);
        }
        ViewPager viewPager = (ViewPager) linearLayout.findViewById(C1696R.id.viewPager);
        viewPager.setLayoutParams(new LinearLayout.LayoutParams(-1, i));
        viewPager.setAdapter(new C1634l(new ArrayList(), new ArrayList()));
        slidingTabLayout.setViewPager(viewPager);
        this.f6300k.addView(linearLayout);
        this.f6310u.add(slidingTabLayout);
    }

    /* renamed from: a */
    public final void m7406a(String str, String str2, int i, int i2) {
        if (str2.equals(this.f6301l)) {
            this.f6307r = this.f6306q.m7276c(f6290f, i, i2);
            this.f6300k.addView(this.f6307r);
            this.f6304o.put(str2, str);
        } else if (this.f6302m.contains(str2)) {
            for (LinearLayout linearLayout : ((C1634l) ((SlidingTabLayout) this.f6300k.findViewWithTag(this.f6305p.get(str2))).getViewPager().getAdapter()).f6317a) {
                if (linearLayout.getTag().equals(str2)) {
                    linearLayout.addView(C1629g.m7255a(linearLayout.getContext()).m7276c(str, i, i2));
                }
            }
            this.f6304o.put(str2, str);
        }
    }

    /* renamed from: a */
    public final boolean m7407a(int i, String str, String str2, String str3) {
        if (!this.f6303n.contains(str2)) {
            return false;
        }
        StringBuilder sb = new StringBuilder("first_row_");
        int i2 = f6292x;
        f6292x = i2 + 1;
        sb.append(i2);
        String sb2 = sb.toString();
        this.f6302m.add(str);
        this.f6304o.put(str, sb2);
        this.f6305p.put(str, str2);
        SlidingTabLayout slidingTabLayout = (SlidingTabLayout) this.f6300k.findViewWithTag(str2);
        LinearLayout linearLayout = (LinearLayout) this.f6306q.f6211a.inflate(C1696R.layout.ui_show_tab_layout, (ViewGroup) null);
        linearLayout.setId(i);
        linearLayout.setTag(str);
        linearLayout.setId(i);
        this.f6307r = this.f6306q.m7276c(sb2, -1, -2);
        linearLayout.addView(this.f6307r);
        C1634l c1634l = (C1634l) slidingTabLayout.f6146a.getAdapter();
        c1634l.f6317a.add(linearLayout);
        c1634l.f6318b.add(str3);
        c1634l.notifyDataSetChanged();
        slidingTabLayout.f6146a.setAdapter(c1634l);
        slidingTabLayout.setViewPager(slidingTabLayout.f6146a);
        return true;
    }

    /* renamed from: b */
    public final View m7408b(String str) {
        View findViewWithTag = this.f6300k.findViewWithTag(str);
        if (findViewWithTag == null) {
            Iterator<SlidingTabLayout> it = this.f6310u.iterator();
            while (it.hasNext()) {
                View view = null;
                Iterator<LinearLayout> it2 = ((C1634l) it.next().getViewPager().getAdapter()).f6317a.iterator();
                while (it2.hasNext() && (view = it2.next().findViewWithTag(str)) == null) {
                }
                findViewWithTag = view;
                if (findViewWithTag != null) {
                    break;
                }
            }
        }
        return findViewWithTag;
    }

    /* renamed from: b */
    public final void m7409b() {
        this.f6311w.sendEmptyMessageDelayed(256, 10L);
    }

    /* renamed from: b */
    public final void m7410b(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadii(new float[]{m7393c(4), m7393c(4), m7393c(4), m7393c(4), 0.0f, 0.0f, 0.0f, 0.0f});
        this.f6309t.setBackground(gradientDrawable);
    }

    /* renamed from: b */
    public final void m7411b(View.OnClickListener onClickListener) {
        this.f6294b = onClickListener;
    }

    /* renamed from: c */
    public final void m7412c() {
        this.f6295c = true;
        this.f6296g.addView(this.f6308s, this.f6297h);
    }

    /* renamed from: d */
    public final boolean m7413d() {
        return this.f6295c;
    }

    /* renamed from: e */
    public final void m7414e() {
        this.f6295c = false;
        this.f6296g.removeView(this.f6308s);
    }
}
