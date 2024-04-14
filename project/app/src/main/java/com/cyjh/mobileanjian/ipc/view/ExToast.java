package com.cyjh.mobileanjian.ipc.view;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.view.WindowManager;
import android.widget.Toast;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.mqsdk.C1696R;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class ExToast {
    public static final int LENGTH_LONG = 3500;
    public static final int LENGTH_SHORT = 2000;

    /* renamed from: g */
    private static final int f6427g = 51;

    /* renamed from: a */
    private WindowManager f6428a;

    /* renamed from: d */
    private Toast f6431d;

    /* renamed from: e */
    private boolean f6432e;

    /* renamed from: f */
    private int f6433f;

    /* renamed from: h */
    private int f6434h;

    /* renamed from: k */
    private CharSequence f6437k;

    /* renamed from: i */
    private int f6435i = -1;

    /* renamed from: j */
    private int f6436j = -1;

    /* renamed from: l */
    private int f6438l = 2000;

    /* renamed from: m */
    private C1666a f6439m = new C1666a(this, 0);

    /* renamed from: c */
    private Timer f6430c = new Timer();

    /* renamed from: b */
    private WindowManager.LayoutParams f6429b = new WindowManager.LayoutParams();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.mobileanjian.ipc.view.ExToast$a */
    /* loaded from: classes.dex */
    public class C1666a extends TimerTask {
        private C1666a() {
        }

        /* synthetic */ C1666a(ExToast exToast, byte b2) {
            this();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            ExToast.this.hide();
        }
    }

    public ExToast(Context context) {
        WindowManager.LayoutParams layoutParams;
        int i;
        this.f6428a = (WindowManager) context.getSystemService("window");
        this.f6431d = Toast.makeText(context, "", 0);
        this.f6429b.height = -2;
        this.f6429b.width = -2;
        this.f6429b.format = -3;
        this.f6429b.windowAnimations = R.style.Animation.Toast;
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams = this.f6429b;
            i = 2038;
        } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
            layoutParams = this.f6429b;
            i = 2002;
        } else {
            layoutParams = this.f6429b;
            i = 2005;
        }
        layoutParams.type = i;
        this.f6429b.flags = 152;
        int identifier = Resources.getSystem().getIdentifier("config_toastDefaultGravity", "Integer", C1225b.f4510b);
        this.f6433f = identifier == 0 ? 81 : context.getResources().getInteger(identifier);
        int identifier2 = Resources.getSystem().getIdentifier("toast_y_offset", "dimen", C1225b.f4510b);
        this.f6434h = context.getResources().getDimensionPixelSize(identifier2 == 0 ? C1696R.dimen.toast_y_offset : identifier2);
        this.f6429b.setTitle("Toast");
    }

    /* renamed from: a */
    private void m7533a(int i, CharSequence charSequence, int i2, int i3, boolean z) {
        this.f6429b.gravity = i;
        if (i == this.f6433f) {
            this.f6429b.x = 0;
            this.f6429b.y = this.f6434h;
        } else {
            this.f6429b.x = i2;
            this.f6429b.y = i3;
        }
        setText(charSequence);
        if (!this.f6432e) {
            this.f6428a.addView(this.f6431d.getView(), this.f6429b);
        } else if (z) {
            this.f6428a.updateViewLayout(this.f6431d.getView(), this.f6429b);
        }
    }

    /* renamed from: a */
    private void m7534a(Context context) {
        WindowManager.LayoutParams layoutParams;
        int i;
        this.f6429b = new WindowManager.LayoutParams();
        this.f6429b.height = -2;
        this.f6429b.width = -2;
        this.f6429b.format = -3;
        this.f6429b.windowAnimations = R.style.Animation.Toast;
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams = this.f6429b;
            i = 2038;
        } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
            layoutParams = this.f6429b;
            i = 2002;
        } else {
            layoutParams = this.f6429b;
            i = 2005;
        }
        layoutParams.type = i;
        this.f6429b.flags = 152;
        int identifier = Resources.getSystem().getIdentifier("config_toastDefaultGravity", "Integer", C1225b.f4510b);
        this.f6433f = identifier == 0 ? 81 : context.getResources().getInteger(identifier);
        int identifier2 = Resources.getSystem().getIdentifier("toast_y_offset", "dimen", C1225b.f4510b);
        Resources resources = context.getResources();
        if (identifier2 == 0) {
            identifier2 = C1696R.dimen.toast_y_offset;
        }
        this.f6434h = resources.getDimensionPixelSize(identifier2);
        this.f6429b.setTitle("Toast");
    }

    public static ExToast makeText(Context context, int i, int i2) {
        return makeText(context, context.getString(i), i2);
    }

    public static ExToast makeText(Context context, CharSequence charSequence, int i) {
        ExToast exToast = new ExToast(context);
        exToast.setText(charSequence);
        exToast.setDuration(i);
        return exToast;
    }

    public void hide() {
        synchronized (this.f6431d) {
            this.f6439m.cancel();
            if (this.f6431d.getView().getParent() != null) {
                this.f6428a.removeView(this.f6431d.getView());
            }
            this.f6432e = false;
        }
    }

    public void setDuration(int i) {
        this.f6438l = i;
    }

    public void setText(CharSequence charSequence) {
        this.f6437k = charSequence;
        this.f6431d.setText(charSequence);
    }

    public void show() {
        m7533a(this.f6433f, this.f6437k, 0, 0, true);
        this.f6439m = new C1666a(this, (byte) 0);
        this.f6430c.schedule(this.f6439m, 2000L);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void show(java.lang.CharSequence r12, int r13, int r14, int r15) {
        /*
            r11 = this;
            android.widget.Toast r0 = r11.f6431d
            monitor-enter(r0)
            r1 = 0
            r2 = 1
            if (r13 >= 0) goto Le
            int r3 = r11.f6435i     // Catch: java.lang.Throwable -> Lc
            if (r3 < 0) goto L1c
            goto Le
        Lc:
            r12 = move-exception
            goto L5f
        Le:
            if (r14 >= 0) goto L14
            int r3 = r11.f6436j     // Catch: java.lang.Throwable -> Lc
            if (r3 < 0) goto L1c
        L14:
            int r3 = r11.f6435i     // Catch: java.lang.Throwable -> Lc
            if (r13 != r3) goto L1e
            int r3 = r11.f6436j     // Catch: java.lang.Throwable -> Lc
            if (r14 != r3) goto L1e
        L1c:
            r3 = 1
            goto L1f
        L1e:
            r3 = 0
        L1f:
            if (r13 < 0) goto L29
            if (r14 >= 0) goto L24
            goto L29
        L24:
            r4 = 51
            r6 = 51
            goto L2c
        L29:
            int r4 = r11.f6433f     // Catch: java.lang.Throwable -> Lc
            r6 = r4
        L2c:
            r11.f6435i = r13     // Catch: java.lang.Throwable -> Lc
            r11.f6436j = r14     // Catch: java.lang.Throwable -> Lc
            com.cyjh.mobileanjian.ipc.view.ExToast$a r4 = r11.f6439m     // Catch: java.lang.Throwable -> Lc
            r4.cancel()     // Catch: java.lang.Throwable -> Lc
            r10 = r3 ^ 1
            r5 = r11
            r7 = r12
            r8 = r13
            r9 = r14
            r5.m7533a(r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> Lc
            r11.f6432e = r2     // Catch: java.lang.Throwable -> Lc
            com.cyjh.mobileanjian.ipc.view.ExToast$a r12 = new com.cyjh.mobileanjian.ipc.view.ExToast$a     // Catch: java.lang.Throwable -> Lc
            r12.<init>(r11, r1)     // Catch: java.lang.Throwable -> Lc
            r11.f6439m = r12     // Catch: java.lang.Throwable -> Lc
            r12 = 2000(0x7d0, float:2.803E-42)
            if (r15 >= 0) goto L4f
            r15 = 2147483647(0x7fffffff, float:NaN)
            goto L55
        L4f:
            if (r15 < 0) goto L55
            if (r15 >= r12) goto L55
            r15 = 2000(0x7d0, float:2.803E-42)
        L55:
            java.util.Timer r12 = r11.f6430c     // Catch: java.lang.Throwable -> Lc
            com.cyjh.mobileanjian.ipc.view.ExToast$a r13 = r11.f6439m     // Catch: java.lang.Throwable -> Lc
            long r14 = (long) r15     // Catch: java.lang.Throwable -> Lc
            r12.schedule(r13, r14)     // Catch: java.lang.Throwable -> Lc
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc
            return
        L5f:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.view.ExToast.show(java.lang.CharSequence, int, int, int):void");
    }
}
