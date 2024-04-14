package com.cyjh.mobileanjian.ipc.p106ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.RelativeLayout;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.cyjh.mq.sdk.MqRunner;
import com.cyjh.mqsdk.C1696R;

/* renamed from: com.cyjh.mobileanjian.ipc.ui.j */
/* loaded from: classes.dex */
public final class C1632j extends RelativeLayout {

    /* renamed from: a */
    WindowManager f6256a;

    /* renamed from: b */
    WindowManager.LayoutParams f6257b;

    /* renamed from: c */
    RelativeLayout f6258c;

    /* renamed from: d */
    boolean f6259d;

    /* renamed from: e */
    boolean f6260e;

    /* renamed from: f */
    int f6261f;

    /* renamed from: g */
    float f6262g;

    /* renamed from: h */
    int f6263h;

    /* renamed from: i */
    String f6264i;

    /* renamed from: j */
    private Context f6265j;

    /* renamed from: k */
    private C1629g f6266k;

    /* renamed from: l */
    private Handler f6267l;

    /* renamed from: com.cyjh.mobileanjian.ipc.ui.j$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements View.OnTouchListener {

        /* renamed from: a */
        int f6268a;

        /* renamed from: b */
        int f6269b;

        /* renamed from: c */
        int f6270c;

        /* renamed from: d */
        int f6271d;

        /* renamed from: e */
        long f6272e;

        /* renamed from: f */
        long f6273f;

        /* renamed from: g */
        Runnable f6274g = new Runnable() { // from class: com.cyjh.mobileanjian.ipc.ui.j.1.1
            @Override // java.lang.Runnable
            public final void run() {
                C1632j.m7370a(AnonymousClass1.this.f6275h, UiMessage.ControlEvent.Event_Type.ON_TOUCH);
            }
        };

        /* renamed from: h */
        final /* synthetic */ String f6275h;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass1(String str) {
            this.f6275h = str;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            String str;
            UiMessage.ControlEvent.Event_Type event_Type;
            switch (motionEvent.getAction()) {
                case 0:
                    this.f6268a = (int) motionEvent.getRawX();
                    this.f6269b = (int) motionEvent.getRawY();
                    this.f6270c = C1632j.this.f6257b.x;
                    this.f6271d = C1632j.this.f6257b.y;
                    this.f6272e = System.currentTimeMillis();
                    this.f6273f = this.f6272e;
                    C1632j.m7370a(this.f6275h, UiMessage.ControlEvent.Event_Type.ON_TOUCH_DOWN);
                    new StringBuilder("ACTION_DOWN ").append(System.currentTimeMillis());
                    C1632j.this.f6267l.postDelayed(this.f6274g, 501L);
                    return true;
                case 1:
                    if (this.f6274g != null) {
                        C1632j.this.f6267l.removeCallbacks(this.f6274g);
                    }
                    new StringBuilder("ACTION_UP ").append(System.currentTimeMillis());
                    if (Math.abs(motionEvent.getRawX() - this.f6268a) >= 30.0f || Math.abs(motionEvent.getRawY() - this.f6269b) >= 30.0f || System.currentTimeMillis() - this.f6272e >= 500) {
                        str = this.f6275h;
                        event_Type = UiMessage.ControlEvent.Event_Type.ON_TOUCH_UP;
                    } else {
                        str = this.f6275h;
                        event_Type = UiMessage.ControlEvent.Event_Type.ON_CLICK;
                    }
                    C1632j.m7370a(str, event_Type);
                    return true;
                case 2:
                    new StringBuilder("ACTION_MOVE ").append(System.currentTimeMillis());
                    if (C1632j.this.f6260e) {
                        int rawX = ((int) motionEvent.getRawX()) - this.f6268a;
                        int rawY = ((int) motionEvent.getRawY()) - this.f6269b;
                        C1632j.this.f6257b.x = this.f6270c + rawX;
                        C1632j.this.f6257b.y = this.f6271d + rawY;
                        C1632j.this.f6256a.updateViewLayout(C1632j.this.f6258c, C1632j.this.f6257b);
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    if ((Math.abs(motionEvent.getRawX() - this.f6268a) == 5.0f && Math.abs(motionEvent.getRawY() - this.f6269b) == 5.0f) || currentTimeMillis - this.f6273f <= 50) {
                        return true;
                    }
                    C1632j.m7370a(this.f6275h, UiMessage.ControlEvent.Event_Type.ON_TOUCH_MOVE);
                    this.f6273f = currentTimeMillis;
                    return true;
                default:
                    return true;
            }
        }
    }

    public C1632j(Context context, String str, int i, int i2, int i3, int i4) {
        super(context);
        WindowManager.LayoutParams layoutParams;
        int i5;
        this.f6259d = false;
        this.f6260e = false;
        this.f6261f = Color.parseColor("#FFFFFF");
        this.f6262g = 0.0f;
        this.f6263h = 100;
        this.f6264i = "";
        this.f6267l = new Handler();
        this.f6265j = context;
        this.f6266k = C1629g.m7255a(context);
        this.f6256a = (WindowManager) this.f6265j.getSystemService("window");
        this.f6257b = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams = this.f6257b;
            i5 = 2038;
        } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
            layoutParams = this.f6257b;
            i5 = 2002;
        } else {
            layoutParams = this.f6257b;
            i5 = 2005;
        }
        layoutParams.type = i5;
        this.f6257b.format = 1;
        this.f6257b.flags = 1320;
        this.f6257b.systemUiVisibility = 2;
        this.f6257b.gravity = 51;
        this.f6257b.x = i;
        this.f6257b.y = i2;
        this.f6257b.alpha = 1.0f;
        this.f6265j.getResources().getDisplayMetrics();
        this.f6258c = (RelativeLayout) LayoutInflater.from(this.f6265j).inflate(C1696R.layout.ui_show_float, (ViewGroup) null);
        this.f6257b.width = i3;
        this.f6257b.height = i4;
        setTag(str);
    }

    /* renamed from: a */
    private void m7369a(int i, int i2) {
        WindowManager.LayoutParams layoutParams;
        int i3;
        this.f6256a = (WindowManager) this.f6265j.getSystemService("window");
        this.f6257b = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams = this.f6257b;
            i3 = 2038;
        } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
            layoutParams = this.f6257b;
            i3 = 2002;
        } else {
            layoutParams = this.f6257b;
            i3 = 2005;
        }
        layoutParams.type = i3;
        this.f6257b.format = 1;
        this.f6257b.flags = 1320;
        this.f6257b.systemUiVisibility = 2;
        this.f6257b.gravity = 51;
        this.f6257b.x = i;
        this.f6257b.y = i2;
        this.f6257b.alpha = 1.0f;
    }

    /* renamed from: a */
    static /* synthetic */ void m7370a(String str, UiMessage.ControlEvent.Event_Type event_Type) {
        MqRunner.getInstance().mo7724c(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(str).setType(event_Type).build()).setIsSuccess(true).build().toByteString());
    }

    /* renamed from: a */
    private void m7371a(boolean z) {
        this.f6260e = z;
    }

    /* renamed from: b */
    private void m7373b(int i, int i2) {
        this.f6265j.getResources().getDisplayMetrics();
        this.f6258c = (RelativeLayout) LayoutInflater.from(this.f6265j).inflate(C1696R.layout.ui_show_float, (ViewGroup) null);
        this.f6257b.width = i;
        this.f6257b.height = i2;
    }

    /* renamed from: b */
    private void m7374b(String str) {
        this.f6264i = str;
        Bitmap decodeFile = BitmapFactory.decodeFile(this.f6264i);
        if (Build.VERSION.SDK_INT >= 16) {
            this.f6258c.setBackground(new BitmapDrawable(decodeFile));
        }
        this.f6258c.getBackground().setAlpha((this.f6263h * 255) / 100);
    }

    /* renamed from: b */
    private static void m7375b(String str, UiMessage.ControlEvent.Event_Type event_Type) {
        MqRunner.getInstance().mo7724c(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(str).setType(event_Type).build()).setIsSuccess(true).build().toByteString());
    }

    /* renamed from: c */
    private int m7376c(int i) {
        return (int) (i * (this.f6265j.getResources().getDisplayMetrics().densityDpi / 160.0f));
    }

    /* renamed from: f */
    private boolean m7379f() {
        return this.f6260e;
    }

    /* renamed from: g */
    private void m7380g() {
        if (this.f6258c == null || !this.f6259d) {
            return;
        }
        this.f6256a.removeView(this.f6258c);
        this.f6256a.addView(this.f6258c, this.f6257b);
    }

    /* renamed from: a */
    public final View m7381a(String str) {
        return this.f6258c.findViewWithTag(str);
    }

    /* renamed from: a */
    public final void m7382a() {
        String str = (String) getTag();
        if (this.f6264i == null || this.f6264i.length() <= 0) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadii(new float[]{this.f6262g, this.f6262g, this.f6262g, this.f6262g, this.f6262g, this.f6262g, this.f6262g, this.f6262g});
            try {
                gradientDrawable.setColor(this.f6261f);
            } catch (Exception unused) {
            }
            if (Build.VERSION.SDK_INT >= 16) {
                this.f6258c.setBackground(gradientDrawable);
            }
        } else {
            Bitmap decodeFile = BitmapFactory.decodeFile(this.f6264i);
            if (Build.VERSION.SDK_INT >= 16) {
                this.f6258c.setBackground(new BitmapDrawable(decodeFile));
            }
        }
        this.f6259d = true;
        this.f6258c.setOnTouchListener(new AnonymousClass1(str));
        this.f6256a.addView(this.f6258c, this.f6257b);
        this.f6258c.getBackground().setAlpha((this.f6263h * 255) / 100);
    }

    /* renamed from: a */
    public final void m7383a(int i) {
        this.f6262g = i;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadii(new float[]{this.f6262g, this.f6262g, this.f6262g, this.f6262g, this.f6262g, this.f6262g, this.f6262g, this.f6262g});
        try {
            gradientDrawable.setColor(this.f6261f);
        } catch (Exception unused) {
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.f6258c.setBackground(gradientDrawable);
        }
        this.f6258c.getBackground().setAlpha((this.f6263h * 255) / 100);
    }

    /* renamed from: a */
    public final void m7384a(View view) {
        final String str = (String) view.getTag();
        if (!(view instanceof Button)) {
            view.setOnTouchListener(new View.OnTouchListener() { // from class: com.cyjh.mobileanjian.ipc.ui.j.2

                /* renamed from: a */
                int f6278a;

                /* renamed from: b */
                int f6279b;

                /* renamed from: c */
                int f6280c;

                /* renamed from: d */
                int f6281d;

                /* renamed from: e */
                long f6282e;

                /* renamed from: f */
                long f6283f;

                /* renamed from: g */
                Runnable f6284g = new Runnable() { // from class: com.cyjh.mobileanjian.ipc.ui.j.2.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        C1632j.m7370a(str, UiMessage.ControlEvent.Event_Type.ON_TOUCH);
                    }
                };

                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    String str2;
                    UiMessage.ControlEvent.Event_Type event_Type;
                    switch (motionEvent.getAction()) {
                        case 0:
                            this.f6278a = (int) motionEvent.getRawX();
                            this.f6279b = (int) motionEvent.getRawY();
                            this.f6280c = C1632j.this.f6257b.x;
                            this.f6281d = C1632j.this.f6257b.y;
                            this.f6282e = System.currentTimeMillis();
                            this.f6283f = this.f6282e;
                            C1632j.m7370a(str, UiMessage.ControlEvent.Event_Type.ON_TOUCH_DOWN);
                            new StringBuilder("ACTION_DOWN ").append(System.currentTimeMillis());
                            C1632j.this.f6267l.postDelayed(this.f6284g, 501L);
                            return true;
                        case 1:
                            C1632j.this.f6267l.removeCallbacks(this.f6284g);
                            new StringBuilder("ACTION_UP ").append(System.currentTimeMillis());
                            if (Math.abs(motionEvent.getRawX() - this.f6278a) >= 30.0f || Math.abs(motionEvent.getRawY() - this.f6279b) >= 30.0f || System.currentTimeMillis() - this.f6282e >= 500) {
                                str2 = str;
                                event_Type = UiMessage.ControlEvent.Event_Type.ON_TOUCH_UP;
                            } else {
                                str2 = str;
                                event_Type = UiMessage.ControlEvent.Event_Type.ON_CLICK;
                            }
                            C1632j.m7370a(str2, event_Type);
                            return true;
                        case 2:
                            new StringBuilder("ACTION_MOVE ").append(System.currentTimeMillis());
                            if (C1632j.this.f6260e) {
                                int rawX = ((int) motionEvent.getRawX()) - this.f6278a;
                                int rawY = ((int) motionEvent.getRawY()) - this.f6279b;
                                C1632j.this.f6257b.x = this.f6280c + rawX;
                                C1632j.this.f6257b.y = this.f6281d + rawY;
                                C1632j.this.f6256a.updateViewLayout(C1632j.this.f6258c, C1632j.this.f6257b);
                            }
                            long currentTimeMillis = System.currentTimeMillis();
                            if (currentTimeMillis - this.f6282e > 501) {
                                C1632j.m7370a(str, UiMessage.ControlEvent.Event_Type.ON_TOUCH);
                            }
                            if ((Math.abs(motionEvent.getRawX() - this.f6278a) == 5.0f && Math.abs(motionEvent.getRawY() - this.f6279b) == 5.0f) || currentTimeMillis - this.f6283f <= 50) {
                                return true;
                            }
                            C1632j.m7370a(str, UiMessage.ControlEvent.Event_Type.ON_TOUCH_MOVE);
                            this.f6283f = currentTimeMillis;
                            return true;
                        default:
                            return true;
                    }
                }
            });
        }
        this.f6258c.addView(view);
    }

    /* renamed from: b */
    public final void m7385b() {
        this.f6259d = false;
        try {
            this.f6256a.removeView(this.f6258c);
        } catch (Exception unused) {
        }
    }

    /* renamed from: b */
    public final void m7386b(int i) {
        this.f6261f = i;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadii(new float[]{this.f6262g, this.f6262g, this.f6262g, this.f6262g, this.f6262g, this.f6262g, this.f6262g, this.f6262g});
        try {
            gradientDrawable.setColor(this.f6261f);
        } catch (Exception unused) {
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.f6258c.setBackground(gradientDrawable);
        }
        this.f6258c.getBackground().setAlpha((this.f6263h * 255) / 100);
    }

    /* renamed from: c */
    public final void m7387c() {
        if (this.f6259d) {
            m7385b();
        }
    }

    /* renamed from: d */
    public final boolean m7388d() {
        return this.f6259d;
    }

    /* renamed from: e */
    public final void m7389e() {
        if (this.f6258c == null || !this.f6259d) {
            return;
        }
        this.f6256a.updateViewLayout(this.f6258c, this.f6257b);
    }

    public final int getOpacity() {
        return this.f6263h;
    }

    public final WindowManager.LayoutParams getParams() {
        return this.f6257b;
    }

    public final void setFloatHeight(int i) {
        WindowManager.LayoutParams params = getParams();
        StringBuilder sb = new StringBuilder("setFloatHeight wLayoutParams[ ");
        sb.append(params.width);
        sb.append(",");
        sb.append(params.height);
        sb.append("]");
        this.f6257b.width = params.width;
        this.f6257b.height = i;
        if (this.f6259d) {
            this.f6256a.updateViewLayout(this.f6258c, this.f6257b);
        }
    }

    public final void setFloatLeft(int i) {
        WindowManager.LayoutParams params = getParams();
        StringBuilder sb = new StringBuilder("setFloatLeft wLayoutParams[ ");
        sb.append(params.x);
        sb.append(",");
        sb.append(params.y);
        sb.append("]");
        params.x = i;
        if (this.f6259d) {
            this.f6256a.updateViewLayout(this.f6258c, params);
        }
    }

    public final void setFloatTop(int i) {
        WindowManager.LayoutParams params = getParams();
        StringBuilder sb = new StringBuilder("setFloatTop wLayoutParams[ ");
        sb.append(params.x);
        sb.append(",");
        sb.append(params.y);
        sb.append("]");
        params.y = i;
        if (this.f6259d) {
            this.f6256a.updateViewLayout(this.f6258c, params);
        }
    }

    public final void setFloatWidth(int i) {
        WindowManager.LayoutParams params = getParams();
        StringBuilder sb = new StringBuilder("setFloatWidth wLayoutParams[ ");
        sb.append(params.width);
        sb.append(",");
        sb.append(params.height);
        sb.append("]");
        this.f6257b.width = i;
        this.f6257b.height = params.height;
        if (this.f6259d) {
            this.f6256a.updateViewLayout(this.f6258c, this.f6257b);
        }
    }

    public final void setOpacity(int i) {
        this.f6258c.getBackground().setAlpha((i * 255) / 100);
        this.f6263h = i;
    }
}
