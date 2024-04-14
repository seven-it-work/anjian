package com.cyjh.mobileanjian.ipc.view;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.WindowManager;
import android.widget.Toast;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Timer;
import java.util.TimerTask;

/* renamed from: com.cyjh.mobileanjian.ipc.view.a */
/* loaded from: classes.dex */
public final class C1667a {

    /* renamed from: a */
    public static final int f6441a = 0;

    /* renamed from: b */
    public static final int f6442b = 2;

    /* renamed from: c */
    public static final int f6443c = 4;

    /* renamed from: d */
    private Toast f6444d;

    /* renamed from: e */
    private Context f6445e;

    /* renamed from: i */
    private final int f6449i;

    /* renamed from: j */
    private final int f6450j;

    /* renamed from: k */
    private final int f6451k;

    /* renamed from: l */
    private int f6452l;

    /* renamed from: m */
    private int f6453m;

    /* renamed from: n */
    private Object f6454n;

    /* renamed from: o */
    private Method f6455o;

    /* renamed from: p */
    private Method f6456p;

    /* renamed from: q */
    private WindowManager f6457q;

    /* renamed from: r */
    private WindowManager.LayoutParams f6458r;

    /* renamed from: t */
    private View f6460t;

    /* renamed from: f */
    private boolean f6446f = false;

    /* renamed from: g */
    private int f6447g = -1;

    /* renamed from: h */
    private int f6448h = 2;

    /* renamed from: s */
    private WindowManager.LayoutParams f6459s = null;

    /* renamed from: u */
    private Handler f6461u = new Handler();

    /* renamed from: v */
    private Timer f6462v = new Timer("hideTimer");

    /* renamed from: w */
    private a f6463w = new a(this, 0);

    /* renamed from: x */
    private Runnable f6464x = new Runnable() { // from class: com.cyjh.mobileanjian.ipc.view.a.1
        @Override // java.lang.Runnable
        public final void run() {
            C1667a.this.m7550a();
        }
    };

    /* renamed from: com.cyjh.mobileanjian.ipc.view.a$a */
    /* loaded from: classes.dex */
    private class a extends TimerTask {
        private a() {
        }

        /* synthetic */ a(C1667a c1667a, byte b2) {
            this();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            C1667a.this.m7550a();
        }
    }

    private C1667a(Context context) {
        this.f6445e = context;
        Toast toast = new Toast(context);
        this.f6449i = toast.getGravity();
        this.f6450j = toast.getXOffset();
        this.f6451k = toast.getYOffset();
        this.f6452l = this.f6450j;
        this.f6453m = this.f6451k;
    }

    /* renamed from: a */
    private static C1667a m7535a(Context context, int i, int i2) {
        Toast makeText = Toast.makeText(context, i, i2);
        C1667a c1667a = new C1667a(context);
        c1667a.f6444d = makeText;
        c1667a.f6448h = i2;
        return c1667a;
    }

    /* renamed from: a */
    private static C1667a m7536a(Context context, CharSequence charSequence, int i) {
        Toast makeText = Toast.makeText(context, charSequence, i);
        C1667a c1667a = new C1667a(context);
        c1667a.f6444d = makeText;
        c1667a.f6448h = i;
        return c1667a;
    }

    /* renamed from: a */
    private void m7537a(int i) {
        this.f6448h = i;
    }

    /* renamed from: a */
    private void m7538a(int i, int i2, int i3) {
        this.f6444d.setGravity(i, i2, i3);
    }

    /* renamed from: a */
    private void m7539a(View view) {
        this.f6444d.setView(view);
    }

    /* renamed from: a */
    private void m7540a(WindowManager.LayoutParams layoutParams) {
        try {
            Field declaredField = this.f6444d.getClass().getDeclaredField("mTN");
            declaredField.setAccessible(true);
            this.f6454n = declaredField.get(this.f6444d);
            Field declaredField2 = this.f6454n.getClass().getDeclaredField("mParams");
            declaredField2.setAccessible(true);
            declaredField2.set(this.f6454n, layoutParams);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    private void m7541a(CharSequence charSequence) {
        this.f6444d.setText(charSequence);
    }

    /* renamed from: a */
    private void m7542a(CharSequence charSequence, int i, int i2) {
        byte b2 = 0;
        Toast.makeText(this.f6445e, charSequence, 0).show();
        boolean z = (i < 0 && this.f6452l < 0) || (i2 < 0 && this.f6453m < 0) || (i == this.f6452l && i2 == this.f6453m);
        boolean z2 = i < 0 || i2 < 0;
        this.f6452l = i;
        this.f6453m = i2;
        if (z) {
            m7541a(charSequence);
        } else {
            m7550a();
            this.f6444d = Toast.makeText(this.f6445e, charSequence, 0);
            if (z2) {
                this.f6444d.setGravity(this.f6449i, this.f6450j, this.f6451k);
            } else {
                this.f6444d.setGravity(51, i, i2);
            }
        }
        try {
            if (this.f6446f) {
                this.f6463w.cancel();
                this.f6463w = new a(this, b2);
                this.f6462v.schedule(this.f6463w, this.f6448h * 1000);
                return;
            }
            try {
                Field declaredField = this.f6444d.getClass().getDeclaredField("mTN");
                declaredField.setAccessible(true);
                this.f6454n = declaredField.get(this.f6444d);
                this.f6455o = this.f6454n.getClass().getMethod("show", new Class[0]);
                this.f6456p = this.f6454n.getClass().getMethod("hide", new Class[0]);
                Field declaredField2 = this.f6454n.getClass().getDeclaredField("mParams");
                declaredField2.setAccessible(true);
                this.f6458r = (WindowManager.LayoutParams) declaredField2.get(this.f6454n);
                if (this.f6459s != null) {
                    this.f6458r.flags = this.f6459s.flags;
                    this.f6458r.width = this.f6459s.width;
                    this.f6458r.height = this.f6459s.height;
                    this.f6458r.gravity = this.f6459s.gravity;
                    this.f6458r.windowAnimations = this.f6459s.windowAnimations;
                }
                if (this.f6447g != -1) {
                    this.f6458r.windowAnimations = this.f6447g;
                }
                Field declaredField3 = this.f6454n.getClass().getDeclaredField("mNextView");
                declaredField3.setAccessible(true);
                declaredField3.set(this.f6454n, this.f6444d.getView());
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.f6455o.invoke(this.f6454n, new Object[0]);
            this.f6446f = true;
            if (this.f6448h > 0) {
                this.f6463w.cancel();
                this.f6463w = new a(this, b2);
                this.f6462v.schedule(this.f6463w, this.f6448h * 1000);
            }
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (IllegalStateException e3) {
            e3.printStackTrace();
            m7550a();
            this.f6462v.cancel();
            this.f6462v = new Timer();
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
        }
    }

    /* renamed from: b */
    private void m7543b() {
        try {
            byte b2 = 0;
            if (this.f6446f) {
                this.f6463w.cancel();
                this.f6463w = new a(this, b2);
                this.f6462v.schedule(this.f6463w, this.f6448h * 1000);
                return;
            }
            try {
                Field declaredField = this.f6444d.getClass().getDeclaredField("mTN");
                declaredField.setAccessible(true);
                this.f6454n = declaredField.get(this.f6444d);
                this.f6455o = this.f6454n.getClass().getMethod("show", new Class[0]);
                this.f6456p = this.f6454n.getClass().getMethod("hide", new Class[0]);
                Field declaredField2 = this.f6454n.getClass().getDeclaredField("mParams");
                declaredField2.setAccessible(true);
                this.f6458r = (WindowManager.LayoutParams) declaredField2.get(this.f6454n);
                if (this.f6459s != null) {
                    this.f6458r.flags = this.f6459s.flags;
                    this.f6458r.width = this.f6459s.width;
                    this.f6458r.height = this.f6459s.height;
                    this.f6458r.gravity = this.f6459s.gravity;
                    this.f6458r.windowAnimations = this.f6459s.windowAnimations;
                }
                if (this.f6447g != -1) {
                    this.f6458r.windowAnimations = this.f6447g;
                }
                Field declaredField3 = this.f6454n.getClass().getDeclaredField("mNextView");
                declaredField3.setAccessible(true);
                declaredField3.set(this.f6454n, this.f6444d.getView());
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.f6455o.invoke(this.f6454n, new Object[0]);
            this.f6446f = true;
            if (this.f6448h > 0) {
                this.f6463w.cancel();
                this.f6463w = new a(this, b2);
                this.f6462v.schedule(this.f6463w, this.f6448h * 1000);
            }
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (IllegalStateException e3) {
            e3.printStackTrace();
            m7550a();
            this.f6462v.cancel();
            this.f6462v = new Timer();
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
        }
    }

    /* renamed from: b */
    private void m7544b(int i) {
        m7541a(this.f6445e.getText(i));
    }

    /* renamed from: b */
    private void m7545b(WindowManager.LayoutParams layoutParams) {
        this.f6459s = layoutParams;
    }

    /* renamed from: c */
    private View m7546c() {
        return this.f6444d.getView();
    }

    /* renamed from: c */
    private void m7547c(int i) {
        this.f6447g = i;
    }

    /* renamed from: d */
    private int m7548d() {
        return this.f6447g;
    }

    /* renamed from: e */
    private void m7549e() {
        try {
            Field declaredField = this.f6444d.getClass().getDeclaredField("mTN");
            declaredField.setAccessible(true);
            this.f6454n = declaredField.get(this.f6444d);
            this.f6455o = this.f6454n.getClass().getMethod("show", new Class[0]);
            this.f6456p = this.f6454n.getClass().getMethod("hide", new Class[0]);
            Field declaredField2 = this.f6454n.getClass().getDeclaredField("mParams");
            declaredField2.setAccessible(true);
            this.f6458r = (WindowManager.LayoutParams) declaredField2.get(this.f6454n);
            if (this.f6459s != null) {
                this.f6458r.flags = this.f6459s.flags;
                this.f6458r.width = this.f6459s.width;
                this.f6458r.height = this.f6459s.height;
                this.f6458r.gravity = this.f6459s.gravity;
                this.f6458r.windowAnimations = this.f6459s.windowAnimations;
            }
            if (this.f6447g != -1) {
                this.f6458r.windowAnimations = this.f6447g;
            }
            Field declaredField3 = this.f6454n.getClass().getDeclaredField("mNextView");
            declaredField3.setAccessible(true);
            declaredField3.set(this.f6454n, this.f6444d.getView());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public final void m7550a() {
        if (this.f6446f) {
            try {
                this.f6456p.invoke(this.f6454n, new Object[0]);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e2) {
                e2.printStackTrace();
            }
            this.f6446f = false;
        }
    }
}
