package com.cyjh.common.util.toast;

import android.R;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.support.annotation.CallSuper;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.v4.app.NotificationManagerCompat;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.cyjh.common.C1130R;
import com.cyjh.common.util.toast.C1194q;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

/* renamed from: com.cyjh.common.util.toast.p */
/* loaded from: classes.dex */
public final class C1193p {

    /* renamed from: a */
    private static final String f4195a = "TAG_TOAST";

    /* renamed from: b */
    private static final int f4196b = -16777217;

    /* renamed from: c */
    private static final String f4197c = "toast null";

    /* renamed from: d */
    private static final String f4198d = "toast nothing";

    /* renamed from: e */
    private static final C1193p f4199e = new C1193p();

    /* renamed from: f */
    private static WeakReference<c> f4200f;

    /* renamed from: g */
    private String f4201g;

    /* renamed from: h */
    private int f4202h = -1;

    /* renamed from: i */
    private int f4203i = -1;

    /* renamed from: j */
    private int f4204j = -1;

    /* renamed from: k */
    private int f4205k = f4196b;

    /* renamed from: l */
    private int f4206l = -1;

    /* renamed from: m */
    private int f4207m = f4196b;

    /* renamed from: n */
    private int f4208n = -1;

    /* renamed from: o */
    private boolean f4209o = false;

    /* renamed from: p */
    private Drawable[] f4210p = new Drawable[4];

    /* renamed from: q */
    private boolean f4211q = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.common.util.toast.p$a */
    /* loaded from: classes.dex */
    public static abstract class a implements c {

        /* renamed from: a */
        protected Toast f4216a = new Toast(C1194q.m5135a());

        /* renamed from: b */
        protected C1193p f4217b;

        /* renamed from: c */
        protected View f4218c;

        a(C1193p c1193p) {
            this.f4217b = c1193p;
            if (this.f4217b.f4202h == -1 && this.f4217b.f4203i == -1 && this.f4217b.f4204j == -1) {
                return;
            }
            this.f4216a.setGravity(this.f4217b.f4202h, this.f4217b.f4203i, this.f4217b.f4204j);
        }

        /* renamed from: a */
        private void m5119a(TextView textView) {
            if (this.f4217b.f4206l != -1) {
                this.f4218c.setBackgroundResource(this.f4217b.f4206l);
                textView.setBackgroundColor(0);
                return;
            }
            if (this.f4217b.f4205k != C1193p.f4196b) {
                Drawable background = this.f4218c.getBackground();
                Drawable background2 = textView.getBackground();
                if (background != null && background2 != null) {
                    background.mutate().setColorFilter(new PorterDuffColorFilter(this.f4217b.f4205k, PorterDuff.Mode.SRC_IN));
                    textView.setBackgroundColor(0);
                } else if (background != null) {
                    background.mutate().setColorFilter(new PorterDuffColorFilter(this.f4217b.f4205k, PorterDuff.Mode.SRC_IN));
                } else if (background2 != null) {
                    background2.mutate().setColorFilter(new PorterDuffColorFilter(this.f4217b.f4205k, PorterDuff.Mode.SRC_IN));
                } else {
                    this.f4218c.setBackgroundColor(this.f4217b.f4205k);
                }
            }
        }

        /* renamed from: b */
        private void m5120b() {
            boolean z = false;
            if (Build.VERSION.SDK_INT >= 17) {
                if (TextUtils.getLayoutDirectionFromLocale(Build.VERSION.SDK_INT >= 24 ? C1194q.m5135a().getResources().getConfiguration().getLocales().get(0) : C1194q.m5135a().getResources().getConfiguration().locale) == 1) {
                    z = true;
                }
            }
            if (z) {
                mo5123a(m5121a(-1));
            }
        }

        /* renamed from: a */
        final View m5121a(int i) {
            Bitmap m5178a = C1196s.m5178a(this.f4218c);
            ImageView imageView = new ImageView(C1194q.m5135a());
            imageView.setTag(C1193p.f4195a + i);
            imageView.setImageBitmap(m5178a);
            return imageView;
        }

        @Override // com.cyjh.common.util.toast.C1193p.c
        @CallSuper
        /* renamed from: a */
        public void mo5122a() {
            if (this.f4216a != null) {
                this.f4216a.cancel();
            }
            this.f4216a = null;
            this.f4218c = null;
        }

        @Override // com.cyjh.common.util.toast.C1193p.c
        /* renamed from: a */
        public final void mo5123a(View view) {
            this.f4218c = view;
            this.f4216a.setView(this.f4218c);
        }

        @Override // com.cyjh.common.util.toast.C1193p.c
        /* renamed from: a */
        public final void mo5124a(CharSequence charSequence) {
            Drawable mutate;
            PorterDuffColorFilter porterDuffColorFilter;
            View m5069a = C1193p.m5069a(this.f4217b, charSequence);
            if (m5069a != null) {
                mo5123a(m5069a);
                m5120b();
                return;
            }
            this.f4218c = this.f4216a.getView();
            if (this.f4218c == null || this.f4218c.findViewById(R.id.message) == null) {
                mo5123a(C1196s.m5179a(C1130R.layout.utils_toast_view));
            }
            TextView textView = (TextView) this.f4218c.findViewById(R.id.message);
            textView.setText(charSequence);
            if (this.f4217b.f4207m != C1193p.f4196b) {
                textView.setTextColor(this.f4217b.f4207m);
            }
            if (this.f4217b.f4208n != -1) {
                textView.setTextSize(this.f4217b.f4208n);
            }
            if (this.f4217b.f4206l == -1) {
                if (this.f4217b.f4205k != C1193p.f4196b) {
                    Drawable background = this.f4218c.getBackground();
                    Drawable background2 = textView.getBackground();
                    if (background == null || background2 == null) {
                        if (background != null) {
                            mutate = background.mutate();
                            porterDuffColorFilter = new PorterDuffColorFilter(this.f4217b.f4205k, PorterDuff.Mode.SRC_IN);
                        } else if (background2 != null) {
                            mutate = background2.mutate();
                            porterDuffColorFilter = new PorterDuffColorFilter(this.f4217b.f4205k, PorterDuff.Mode.SRC_IN);
                        } else {
                            this.f4218c.setBackgroundColor(this.f4217b.f4205k);
                        }
                        mutate.setColorFilter(porterDuffColorFilter);
                    } else {
                        background.mutate().setColorFilter(new PorterDuffColorFilter(this.f4217b.f4205k, PorterDuff.Mode.SRC_IN));
                    }
                }
                m5120b();
            }
            this.f4218c.setBackgroundResource(this.f4217b.f4206l);
            textView.setBackgroundColor(0);
            m5120b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.common.util.toast.p$b */
    /* loaded from: classes.dex */
    public static final class b extends a {

        /* renamed from: d */
        private static int f4219d;

        /* renamed from: e */
        private C1194q.a f4220e;

        /* renamed from: f */
        private c f4221f;

        /* renamed from: com.cyjh.common.util.toast.p$b$2, reason: invalid class name */
        /* loaded from: classes.dex */
        final class AnonymousClass2 extends C1194q.a {

            /* renamed from: a */
            final /* synthetic */ int f4223a;

            AnonymousClass2(int i) {
                this.f4223a = i;
            }

            @Override // com.cyjh.common.util.toast.C1194q.a
            /* renamed from: a */
            public final void mo5134a(@NonNull Activity activity) {
                if (b.this.m5132d()) {
                    b.this.m5126a(activity, this.f4223a, false);
                }
            }
        }

        b(C1193p c1193p) {
            super(c1193p);
        }

        /* renamed from: a */
        private c m5125a(Activity activity, int i) {
            f fVar = new f(this.f4217b, activity.getWindowManager());
            fVar.f4218c = m5121a(-1);
            fVar.f4216a = this.f4216a;
            fVar.mo5133b(i);
            return fVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public void m5126a(Activity activity, int i, boolean z) {
            Window window = activity.getWindow();
            if (window != null) {
                ViewGroup viewGroup = (ViewGroup) window.getDecorView();
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                layoutParams.gravity = this.f4216a.getGravity();
                layoutParams.bottomMargin = this.f4216a.getYOffset() + C1196s.m5201c();
                layoutParams.topMargin = this.f4216a.getYOffset() + C1196s.m5193b();
                layoutParams.leftMargin = this.f4216a.getXOffset();
                View a2 = m5121a(i);
                if (z) {
                    a2.setAlpha(0.0f);
                    a2.animate().alpha(1.0f).setDuration(200L).start();
                }
                viewGroup.addView(a2, layoutParams);
            }
        }

        /* renamed from: b */
        private void m5129b() {
            this.f4220e = new AnonymousClass2(f4219d);
            C1196s.m5185a(this.f4220e);
        }

        /* renamed from: c */
        private c m5130c(int i) {
            e eVar = new e(this.f4217b);
            eVar.f4216a = this.f4216a;
            eVar.mo5133b(i);
            return eVar;
        }

        /* renamed from: c */
        private void m5131c() {
            C1196s.m5197b(this.f4220e);
            this.f4220e = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public boolean m5132d() {
            return this.f4220e != null;
        }

        @Override // com.cyjh.common.util.toast.C1193p.a, com.cyjh.common.util.toast.C1193p.c
        /* renamed from: a */
        public final void mo5122a() {
            Window window;
            if (m5132d()) {
                C1196s.m5197b(this.f4220e);
                this.f4220e = null;
                for (Activity activity : C1195r.f4233a.m5173a()) {
                    if (C1178a.m4627a(activity) && (window = activity.getWindow()) != null) {
                        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
                        StringBuilder sb = new StringBuilder(C1193p.f4195a);
                        sb.append(f4219d - 1);
                        View findViewWithTag = viewGroup.findViewWithTag(sb.toString());
                        if (findViewWithTag != null) {
                            try {
                                viewGroup.removeView(findViewWithTag);
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
            if (this.f4221f != null) {
                this.f4221f.mo5122a();
                this.f4221f = null;
            }
            super.mo5122a();
        }

        @Override // com.cyjh.common.util.toast.C1193p.c
        /* renamed from: b */
        public final void mo5133b(int i) {
            if (this.f4216a == null) {
                return;
            }
            if (!C1196s.m5190a()) {
                this.f4221f = m5130c(i);
                return;
            }
            boolean z = false;
            for (Activity activity : C1195r.f4233a.m5173a()) {
                if (C1178a.m4627a(activity)) {
                    if (z) {
                        m5126a(activity, f4219d, true);
                    } else {
                        f fVar = new f(this.f4217b, activity.getWindowManager());
                        fVar.f4218c = m5121a(-1);
                        fVar.f4216a = this.f4216a;
                        fVar.mo5133b(i);
                        this.f4221f = fVar;
                        z = true;
                    }
                }
            }
            if (!z) {
                this.f4221f = m5130c(i);
                return;
            }
            this.f4220e = new AnonymousClass2(f4219d);
            C1196s.m5185a(this.f4220e);
            C1192o.m4988a(new Runnable() { // from class: com.cyjh.common.util.toast.p.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    b.this.mo5122a();
                }
            }, i == 0 ? 2000L : 3500L);
            f4219d++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.common.util.toast.p$c */
    /* loaded from: classes.dex */
    public interface c {
        /* renamed from: a */
        void mo5122a();

        /* renamed from: a */
        void mo5123a(View view);

        /* renamed from: a */
        void mo5124a(CharSequence charSequence);

        /* renamed from: b */
        void mo5133b(int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.cyjh.common.util.toast.p$d */
    /* loaded from: classes.dex */
    public @interface d {

        /* renamed from: a */
        public static final String f4225a = "light";

        /* renamed from: b */
        public static final String f4226b = "dark";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.common.util.toast.p$e */
    /* loaded from: classes.dex */
    public static final class e extends a {

        /* renamed from: com.cyjh.common.util.toast.p$e$a */
        /* loaded from: classes.dex */
        static class a extends Handler {

            /* renamed from: a */
            private Handler f4227a;

            a(Handler handler) {
                this.f4227a = handler;
            }

            @Override // android.os.Handler
            public final void dispatchMessage(@NonNull Message message) {
                try {
                    this.f4227a.dispatchMessage(message);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            @Override // android.os.Handler
            public final void handleMessage(@NonNull Message message) {
                this.f4227a.handleMessage(message);
            }
        }

        e(C1193p c1193p) {
            super(c1193p);
            if (Build.VERSION.SDK_INT == 25) {
                try {
                    Field declaredField = Toast.class.getDeclaredField("mTN");
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(this.f4216a);
                    Field declaredField2 = declaredField.getType().getDeclaredField("mHandler");
                    declaredField2.setAccessible(true);
                    declaredField2.set(obj, new a((Handler) declaredField2.get(obj)));
                } catch (Exception unused) {
                }
            }
        }

        @Override // com.cyjh.common.util.toast.C1193p.c
        /* renamed from: b */
        public final void mo5133b(int i) {
            if (this.f4216a == null) {
                return;
            }
            this.f4216a.setDuration(i);
            this.f4216a.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.common.util.toast.p$f */
    /* loaded from: classes.dex */
    public static final class f extends a {

        /* renamed from: d */
        private WindowManager f4228d;

        /* renamed from: e */
        private WindowManager.LayoutParams f4229e;

        f(C1193p c1193p, int i) {
            super(c1193p);
            this.f4229e = new WindowManager.LayoutParams();
            this.f4228d = (WindowManager) C1194q.m5135a().getSystemService("window");
            this.f4229e.type = i;
        }

        f(C1193p c1193p, WindowManager windowManager) {
            super(c1193p);
            this.f4229e = new WindowManager.LayoutParams();
            this.f4228d = windowManager;
            this.f4229e.type = 99;
        }

        @Override // com.cyjh.common.util.toast.C1193p.a, com.cyjh.common.util.toast.C1193p.c
        /* renamed from: a */
        public final void mo5122a() {
            try {
                if (this.f4228d != null) {
                    this.f4228d.removeViewImmediate(this.f4218c);
                    this.f4228d = null;
                }
            } catch (Exception unused) {
            }
            super.mo5122a();
        }

        @Override // com.cyjh.common.util.toast.C1193p.c
        /* renamed from: b */
        public final void mo5133b(int i) {
            if (this.f4216a == null) {
                return;
            }
            this.f4229e.height = -2;
            this.f4229e.width = -2;
            this.f4229e.format = -3;
            this.f4229e.windowAnimations = R.style.Animation.Toast;
            this.f4229e.setTitle("ToastWithoutNotification");
            this.f4229e.flags = 152;
            this.f4229e.packageName = C1194q.m5135a().getPackageName();
            this.f4229e.gravity = this.f4216a.getGravity();
            if ((this.f4229e.gravity & 7) == 7) {
                this.f4229e.horizontalWeight = 1.0f;
            }
            if ((this.f4229e.gravity & 112) == 112) {
                this.f4229e.verticalWeight = 1.0f;
            }
            this.f4229e.x = this.f4216a.getXOffset();
            this.f4229e.y = this.f4216a.getYOffset();
            this.f4229e.horizontalMargin = this.f4216a.getHorizontalMargin();
            this.f4229e.verticalMargin = this.f4216a.getVerticalMargin();
            try {
                if (this.f4228d != null) {
                    this.f4228d.addView(this.f4218c, this.f4229e);
                }
            } catch (Exception unused) {
            }
            C1192o.m4988a(new Runnable() { // from class: com.cyjh.common.util.toast.p.f.1
                @Override // java.lang.Runnable
                public final void run() {
                    f.this.mo5122a();
                }
            }, i == 0 ? 2000L : 3500L);
        }
    }

    /* renamed from: a */
    static /* synthetic */ View m5069a(C1193p c1193p, CharSequence charSequence) {
        if (!d.f4226b.equals(c1193p.f4201g) && !d.f4225a.equals(c1193p.f4201g) && c1193p.f4210p[0] == null && c1193p.f4210p[1] == null && c1193p.f4210p[2] == null && c1193p.f4210p[3] == null) {
            return null;
        }
        View m5179a = C1196s.m5179a(C1130R.layout.utils_toast_view);
        TextView textView = (TextView) m5179a.findViewById(R.id.message);
        if (d.f4226b.equals(c1193p.f4201g)) {
            ((GradientDrawable) m5179a.getBackground().mutate()).setColor(Color.parseColor("#BB000000"));
            textView.setTextColor(-1);
        }
        textView.setText(charSequence);
        if (c1193p.f4210p[0] != null) {
            View findViewById = m5179a.findViewById(C1130R.id.utvLeftIconView);
            ViewCompat.setBackground(findViewById, c1193p.f4210p[0]);
            findViewById.setVisibility(0);
        }
        if (c1193p.f4210p[1] != null) {
            View findViewById2 = m5179a.findViewById(C1130R.id.utvTopIconView);
            ViewCompat.setBackground(findViewById2, c1193p.f4210p[1]);
            findViewById2.setVisibility(0);
        }
        if (c1193p.f4210p[2] != null) {
            View findViewById3 = m5179a.findViewById(C1130R.id.utvRightIconView);
            ViewCompat.setBackground(findViewById3, c1193p.f4210p[2]);
            findViewById3.setVisibility(0);
        }
        if (c1193p.f4210p[3] != null) {
            View findViewById4 = m5179a.findViewById(C1130R.id.utvBottomIconView);
            ViewCompat.setBackground(findViewById4, c1193p.f4210p[3]);
            findViewById4.setVisibility(0);
        }
        return m5179a;
    }

    /* renamed from: a */
    static /* synthetic */ c m5070a(C1193p c1193p) {
        if (c1193p.f4211q || !NotificationManagerCompat.from(C1194q.m5135a()).areNotificationsEnabled() || (Build.VERSION.SDK_INT >= 23 && Settings.canDrawOverlays(C1194q.m5135a()))) {
            return Build.VERSION.SDK_INT < 25 ? new f(c1193p, 2005) : Settings.canDrawOverlays(C1194q.m5135a()) ? Build.VERSION.SDK_INT >= 26 ? new f(c1193p, 2038) : new f(c1193p, 2002) : new b(c1193p);
        }
        return new e(c1193p);
    }

    @NonNull
    /* renamed from: a */
    private C1193p m5071a(@ColorInt int i) {
        this.f4205k = i;
        return this;
    }

    @NonNull
    /* renamed from: a */
    private C1193p m5072a(int i, int i2, int i3) {
        this.f4202h = i;
        this.f4203i = i2;
        this.f4204j = i3;
        return this;
    }

    @NonNull
    /* renamed from: a */
    private C1193p m5073a(@Nullable Drawable drawable) {
        this.f4210p[0] = drawable;
        return this;
    }

    @NonNull
    /* renamed from: a */
    private C1193p m5074a(String str) {
        this.f4201g = str;
        return this;
    }

    @NonNull
    /* renamed from: a */
    private C1193p m5075a(boolean z) {
        this.f4209o = z;
        return this;
    }

    /* renamed from: a */
    public static void m5077a() {
        C1192o.m4987a(new Runnable() { // from class: com.cyjh.common.util.toast.p.1
            @Override // java.lang.Runnable
            public final void run() {
                if (C1193p.f4200f != null) {
                    c cVar = (c) C1193p.f4200f.get();
                    if (cVar != null) {
                        cVar.mo5122a();
                    }
                    WeakReference unused = C1193p.f4200f = null;
                }
            }
        });
    }

    /* renamed from: a */
    private void m5078a(@StringRes int i, Object... objArr) {
        m5083a(C1191n.m4957a(i, objArr), m5108f(), this);
    }

    /* renamed from: a */
    private void m5079a(@NonNull View view) {
        m5081a(view, null, m5108f(), this);
    }

    /* renamed from: a */
    private static void m5080a(@NonNull View view, int i, C1193p c1193p) {
        m5081a(view, null, i, c1193p);
    }

    /* renamed from: a */
    private static void m5081a(@Nullable final View view, @Nullable final CharSequence charSequence, final int i, @NonNull C1193p c1193p) {
        C1192o.m4987a(new Runnable() { // from class: com.cyjh.common.util.toast.p.2
            @Override // java.lang.Runnable
            public final void run() {
                C1193p.m5077a();
                c m5070a = C1193p.m5070a(C1193p.this);
                WeakReference unused = C1193p.f4200f = new WeakReference(m5070a);
                if (view != null) {
                    m5070a.mo5123a(view);
                } else {
                    m5070a.mo5124a(charSequence);
                }
                m5070a.mo5133b(i);
            }
        });
    }

    /* renamed from: a */
    public static void m5082a(@Nullable CharSequence charSequence) {
        m5083a(charSequence, 0, f4199e);
    }

    /* renamed from: a */
    private static void m5083a(@Nullable CharSequence charSequence, int i, C1193p c1193p) {
        if (charSequence == null) {
            charSequence = f4197c;
        } else if (charSequence.length() == 0) {
            charSequence = f4198d;
        }
        m5081a(null, charSequence, i, c1193p);
    }

    /* renamed from: a */
    private void m5084a(@Nullable String str, Object... objArr) {
        m5083a(C1191n.m4958a(str, objArr), m5108f(), this);
    }

    @NonNull
    /* renamed from: b */
    private C1193p m5086b(@DrawableRes int i) {
        this.f4206l = i;
        return this;
    }

    @NonNull
    /* renamed from: b */
    private C1193p m5087b(@Nullable Drawable drawable) {
        this.f4210p[1] = drawable;
        return this;
    }

    /* renamed from: b */
    private static void m5089b(@StringRes int i, Object... objArr) {
        m5083a(C1191n.m4957a(i, objArr), 0, f4199e);
    }

    /* renamed from: b */
    public static void m5090b(@Nullable CharSequence charSequence) {
        m5083a(charSequence, 1, f4199e);
    }

    /* renamed from: b */
    private static void m5091b(@Nullable String str, Object... objArr) {
        m5083a(C1191n.m4958a(str, objArr), 0, f4199e);
    }

    @NonNull
    /* renamed from: c */
    private static C1193p m5093c() {
        return new C1193p();
    }

    @NonNull
    /* renamed from: c */
    private C1193p m5094c(@ColorInt int i) {
        this.f4207m = i;
        return this;
    }

    @NonNull
    /* renamed from: c */
    private C1193p m5095c(@Nullable Drawable drawable) {
        this.f4210p[2] = drawable;
        return this;
    }

    /* renamed from: c */
    private static void m5096c(@StringRes int i, Object... objArr) {
        m5083a(C1191n.m4957a(i, objArr), 1, f4199e);
    }

    /* renamed from: c */
    private void m5097c(@Nullable CharSequence charSequence) {
        m5083a(charSequence, m5108f(), this);
    }

    /* renamed from: c */
    private static void m5098c(@Nullable String str, Object... objArr) {
        m5083a(C1191n.m4958a(str, objArr), 1, f4199e);
    }

    /* renamed from: d */
    private View m5100d(CharSequence charSequence) {
        if (!d.f4226b.equals(this.f4201g) && !d.f4225a.equals(this.f4201g) && this.f4210p[0] == null && this.f4210p[1] == null && this.f4210p[2] == null && this.f4210p[3] == null) {
            return null;
        }
        View m5179a = C1196s.m5179a(C1130R.layout.utils_toast_view);
        TextView textView = (TextView) m5179a.findViewById(R.id.message);
        if (d.f4226b.equals(this.f4201g)) {
            ((GradientDrawable) m5179a.getBackground().mutate()).setColor(Color.parseColor("#BB000000"));
            textView.setTextColor(-1);
        }
        textView.setText(charSequence);
        if (this.f4210p[0] != null) {
            View findViewById = m5179a.findViewById(C1130R.id.utvLeftIconView);
            ViewCompat.setBackground(findViewById, this.f4210p[0]);
            findViewById.setVisibility(0);
        }
        if (this.f4210p[1] != null) {
            View findViewById2 = m5179a.findViewById(C1130R.id.utvTopIconView);
            ViewCompat.setBackground(findViewById2, this.f4210p[1]);
            findViewById2.setVisibility(0);
        }
        if (this.f4210p[2] != null) {
            View findViewById3 = m5179a.findViewById(C1130R.id.utvRightIconView);
            ViewCompat.setBackground(findViewById3, this.f4210p[2]);
            findViewById3.setVisibility(0);
        }
        if (this.f4210p[3] != null) {
            View findViewById4 = m5179a.findViewById(C1130R.id.utvBottomIconView);
            ViewCompat.setBackground(findViewById4, this.f4210p[3]);
            findViewById4.setVisibility(0);
        }
        return m5179a;
    }

    @NonNull
    /* renamed from: d */
    private C1193p m5101d() {
        this.f4211q = true;
        return this;
    }

    @NonNull
    /* renamed from: d */
    private C1193p m5102d(int i) {
        this.f4208n = i;
        return this;
    }

    @NonNull
    /* renamed from: d */
    private C1193p m5103d(@Nullable Drawable drawable) {
        this.f4210p[3] = drawable;
        return this;
    }

    @NonNull
    /* renamed from: e */
    private static C1193p m5105e() {
        return f4199e;
    }

    @NonNull
    /* renamed from: e */
    private C1193p m5106e(@DrawableRes int i) {
        this.f4210p[0] = ContextCompat.getDrawable(C1194q.m5135a(), i);
        return this;
    }

    /* renamed from: e */
    private static CharSequence m5107e(CharSequence charSequence) {
        return charSequence == null ? f4197c : charSequence.length() == 0 ? f4198d : charSequence;
    }

    /* renamed from: f */
    private int m5108f() {
        return this.f4209o ? 1 : 0;
    }

    @NonNull
    /* renamed from: f */
    private C1193p m5110f(@DrawableRes int i) {
        this.f4210p[1] = ContextCompat.getDrawable(C1194q.m5135a(), i);
        return this;
    }

    @NonNull
    /* renamed from: g */
    private C1193p m5112g(@DrawableRes int i) {
        this.f4210p[2] = ContextCompat.getDrawable(C1194q.m5135a(), i);
        return this;
    }

    @NonNull
    /* renamed from: h */
    private C1193p m5114h(int i) {
        this.f4210p[3] = ContextCompat.getDrawable(C1194q.m5135a(), i);
        return this;
    }

    /* renamed from: i */
    private static c m5115i(C1193p c1193p) {
        if (c1193p.f4211q || !NotificationManagerCompat.from(C1194q.m5135a()).areNotificationsEnabled() || (Build.VERSION.SDK_INT >= 23 && Settings.canDrawOverlays(C1194q.m5135a()))) {
            return Build.VERSION.SDK_INT < 25 ? new f(c1193p, 2005) : Settings.canDrawOverlays(C1194q.m5135a()) ? Build.VERSION.SDK_INT >= 26 ? new f(c1193p, 2038) : new f(c1193p, 2002) : new b(c1193p);
        }
        return new e(c1193p);
    }

    /* renamed from: i */
    private void m5116i(@StringRes int i) {
        m5083a(C1191n.m4957a(i, (Object[]) null), m5108f(), this);
    }

    /* renamed from: j */
    private static void m5117j(@StringRes int i) {
        m5083a(C1191n.m4957a(i, (Object[]) null), 0, f4199e);
    }

    /* renamed from: k */
    private static void m5118k(@StringRes int i) {
        m5083a(C1191n.m4957a(i, (Object[]) null), 1, f4199e);
    }
}
