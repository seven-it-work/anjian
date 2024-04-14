package com.cyjh.elfin.floatingwindowprocess.floatview;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1147a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1152ae;
import com.cyjh.common.util.C1154ag;
import com.cyjh.common.util.C1201x;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.ElfinFloatViewEvent;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.entity.ParamsWrap;
import com.cyjh.elfin.floatingwindowprocess.p081a.DialogC1279b;
import com.cyjh.elfin.floatingwindowprocess.p081a.ViewOnClickListenerC1278a;
import com.cyjh.elfin.floatingwindowprocess.p081a.ViewOnClickListenerC1280c;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.floatingwindowprocess.p084d.C1288a;
import com.cyjh.elfin.floatingwindowprocess.p084d.C1289b;
import com.cyjh.elfin.floatingwindowprocess.service.C1302a;
import com.cyjh.elfin.p077e.p080c.C1255f;
import com.cyjh.elfin.p077e.p080c.C1264o;
import com.cyjh.elfin.services.PhoneStateService;
import com.cyjh.http.p094a.C1486e;
import com.cyjh.http.p096c.p099c.C1546c;
import com.cyjh.http.p104e.C1579a;
import com.cyjh.mq.sdk.MqBridge;
import com.cyjh.mq.sdk.MqRunner;
import com.hjol.R;
import java.lang.ref.WeakReference;
import org.greenrobot.eventbus.C2772c;
import org.greenrobot.eventbus.InterfaceC2779j;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes.dex */
public class ElfinFloatView extends LinearLayout implements View.OnClickListener {

    /* renamed from: G */
    private static final int f4893G = 1;

    /* renamed from: H */
    private static final int f4894H = 2;

    /* renamed from: I */
    private static final int f4895I = 3;

    /* renamed from: J */
    private static final int f4896J = 4;

    /* renamed from: K */
    private static final int f4897K = 60;

    /* renamed from: L */
    private static final int f4898L = 2;

    /* renamed from: M */
    private static final int f4899M = 5000;

    /* renamed from: N */
    private static final int f4900N = 2000;

    /* renamed from: O */
    private static final int f4901O = 1000;

    /* renamed from: R */
    private static final int f4902R = 5;

    /* renamed from: a */
    public static final String f4903a = "ElfinFloatView";

    /* renamed from: b */
    public static final int f4904b = 3000;

    /* renamed from: p */
    private static final int f4905p = 1000;

    /* renamed from: q */
    private static final int f4906q = 1001;

    /* renamed from: A */
    private LinearLayout f4907A;

    /* renamed from: B */
    private LinearLayout f4908B;

    /* renamed from: C */
    private LinearLayout f4909C;

    /* renamed from: D */
    private ViewOnClickListenerC1280c f4910D;

    /* renamed from: E */
    private DialogC1279b f4911E;

    /* renamed from: F */
    private boolean f4912F;

    /* renamed from: P */
    private HandlerC1299b f4913P;

    /* renamed from: Q */
    private int f4914Q;

    /* renamed from: S */
    private final View.OnTouchListener f4915S;

    /* renamed from: T */
    private ViewOnClickListenerC1278a.b f4916T;

    /* renamed from: U */
    private ViewOnClickListenerC1278a.a f4917U;

    /* renamed from: c */
    public ImageView f4918c;

    /* renamed from: d */
    public LinearLayout f4919d;

    /* renamed from: e */
    public LinearLayout f4920e;

    /* renamed from: f */
    public TextView f4921f;

    /* renamed from: g */
    public ImageView f4922g;

    /* renamed from: h */
    public TextView f4923h;

    /* renamed from: i */
    public ImageView f4924i;

    /* renamed from: j */
    public boolean f4925j;

    /* renamed from: k */
    public DeleteFloatView f4926k;

    /* renamed from: l */
    boolean f4927l;

    /* renamed from: m */
    public CountDownTimer f4928m;

    /* renamed from: n */
    public int f4929n;

    /* renamed from: o */
    C1546c.a f4930o;

    /* renamed from: r */
    private WindowManager f4931r;

    /* renamed from: s */
    private WindowManager.LayoutParams f4932s;

    /* renamed from: t */
    private Context f4933t;

    /* renamed from: u */
    private float f4934u;

    /* renamed from: v */
    private float f4935v;

    /* renamed from: w */
    private float f4936w;

    /* renamed from: x */
    private float f4937x;

    /* renamed from: y */
    private float f4938y;

    /* renamed from: z */
    private float f4939z;

    /* renamed from: com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView$a */
    /* loaded from: classes.dex */
    private class GestureDetectorOnGestureListenerC1298a implements GestureDetector.OnGestureListener {
        private GestureDetectorOnGestureListenerC1298a() {
        }

        /* synthetic */ GestureDetectorOnGestureListenerC1298a(ElfinFloatView elfinFloatView, byte b2) {
            this();
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final boolean onDown(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final void onLongPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final void onShowPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final boolean onSingleTapUp(MotionEvent motionEvent) {
            if (ElfinFloatView.this.f4926k.getVisibility() == 0) {
                ElfinFloatView.this.f4926k.setVisibility(8);
            }
            if (ElfinFloatView.this.f4920e.getVisibility() == 0) {
                ElfinFloatView.this.m6081a(false);
            } else {
                ElfinFloatView.this.m6081a(true);
            }
            ElfinFloatView.this.f4928m.start();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView$b */
    /* loaded from: classes.dex */
    public static class HandlerC1299b extends Handler {

        /* renamed from: a */
        private WeakReference<ElfinFloatView> f4953a;

        private HandlerC1299b(ElfinFloatView elfinFloatView) {
            this.f4953a = new WeakReference<>(elfinFloatView);
        }

        /* synthetic */ HandlerC1299b(ElfinFloatView elfinFloatView, byte b2) {
            this(elfinFloatView);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            ElfinFloatView elfinFloatView = this.f4953a.get();
            switch (message.what) {
                case 1000:
                    C1255f.m5689a();
                    C1255f.m5690a(AppContext.m5350a(), "ElfinFloatView handleMessage --> isScriptStopRunning=" + AppContext.m5350a().f4569i);
                    elfinFloatView.m6070m();
                    return;
                case 1001:
                    elfinFloatView.m6074o();
                    return;
                default:
                    return;
            }
        }
    }

    public ElfinFloatView(Context context, DeleteFloatView deleteFloatView) {
        super(context);
        WindowManager.LayoutParams layoutParams;
        int i;
        this.f4912F = true;
        this.f4925j = true;
        this.f4927l = false;
        this.f4913P = new HandlerC1299b(this, (byte) 0);
        this.f4928m = new CountDownTimer() { // from class: com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView.1
            @Override // android.os.CountDownTimer
            public final void onFinish() {
                ImageView imageView;
                int i2;
                ElfinFloatView.this.f4918c.getLocationOnScreen(new int[2]);
                if (r1[0] >= (C1147a.m4247a(ElfinFloatView.this.getContext()).x - ElfinFloatView.this.f4936w) / 2.0f) {
                    if (C1285c.m5955f().f4853d == 2 || C1285c.m5955f().f4853d == 4) {
                        imageView = ElfinFloatView.this.f4918c;
                        i2 = R.drawable.elfin_run_left_edge;
                    } else if (C1285c.m5955f().f4853d == 3) {
                        imageView = ElfinFloatView.this.f4918c;
                        i2 = R.drawable.elfin_pause_left_edge;
                    } else {
                        imageView = ElfinFloatView.this.f4918c;
                        i2 = R.drawable.elfin_normal_left_edge;
                    }
                } else if (C1285c.m5955f().f4853d == 2 || C1285c.m5955f().f4853d == 4) {
                    imageView = ElfinFloatView.this.f4918c;
                    i2 = R.drawable.elfin_run_right_edge;
                } else if (C1285c.m5955f().f4853d == 3) {
                    imageView = ElfinFloatView.this.f4918c;
                    i2 = R.drawable.elfin_pause_right_edge;
                } else {
                    imageView = ElfinFloatView.this.f4918c;
                    i2 = R.drawable.elfin_normal_right_edge;
                }
                imageView.setImageResource(i2);
            }

            @Override // android.os.CountDownTimer
            public final void onTick(long j) {
                if (j > 3000 || j <= 2000) {
                    return;
                }
                ElfinFloatView.this.f4918c.setAlpha(0.5f);
                ElfinFloatView.this.m6081a(false);
            }
        };
        this.f4915S = new View.OnTouchListener() { // from class: com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView.3

            /* renamed from: b */
            private static final int f4942b = 5;

            /* renamed from: c */
            private GestureDetectorOnGestureListenerC1298a f4944c;

            /* renamed from: d */
            private GestureDetector f4945d;

            {
                this.f4944c = new GestureDetectorOnGestureListenerC1298a(ElfinFloatView.this, (byte) 0);
                this.f4945d = new GestureDetector(ElfinFloatView.this.getContext(), this.f4944c);
            }

            /* renamed from: a */
            private static float m6085a(float f, float f2, float f3, float f4) {
                return (float) Math.sqrt(Math.pow(f - f3, 2.0d) + Math.pow(f2 - f4, 2.0d));
            }

            /* JADX WARN: Removed duplicated region for block: B:21:0x010e  */
            /* JADX WARN: Removed duplicated region for block: B:24:0x011f  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x013e  */
            @Override // android.view.View.OnTouchListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final boolean onTouch(android.view.View r10, android.view.MotionEvent r11) {
                /*
                    Method dump skipped, instructions count: 506
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView.ViewOnTouchListenerC12923.onTouch(android.view.View, android.view.MotionEvent):boolean");
            }
        };
        this.f4916T = new ViewOnClickListenerC1278a.b() { // from class: com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView.4
            @Override // com.cyjh.elfin.floatingwindowprocess.p081a.ViewOnClickListenerC1278a.b
            /* renamed from: a */
            public final void mo5906a() {
                ElfinFloatView.this.m6084d();
            }
        };
        this.f4917U = new ViewOnClickListenerC1278a.a() { // from class: com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView.5
            @Override // com.cyjh.elfin.floatingwindowprocess.p081a.ViewOnClickListenerC1278a.a
            /* renamed from: a */
            public final void mo5905a() {
                ElfinFloatView.m6077q(ElfinFloatView.this);
            }
        };
        this.f4930o = new C1546c.a() { // from class: com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView.7
            @Override // com.cyjh.http.p096c.p099c.C1546c.a
            /* renamed from: a */
            public final void mo6086a() {
                ElfinFloatView.this.m6074o();
            }
        };
        this.f4933t = context;
        LayoutInflater.from(getContext()).inflate(R.layout.floatview_elfin, this);
        this.f4919d = (LinearLayout) findViewById(R.id.floatview_elfin_liearlayout_elfin);
        this.f4920e = (LinearLayout) findViewById(R.id.floatview_elfin_liearlayout_tools);
        this.f4907A = (LinearLayout) findViewById(R.id.floatview_linearlayout_run);
        this.f4908B = (LinearLayout) findViewById(R.id.floatview_linearlayout_info);
        this.f4909C = (LinearLayout) findViewById(R.id.floatview_linearlayout_setting);
        this.f4921f = (TextView) findViewById(R.id.id_tv_run_and_pause);
        this.f4922g = (ImageView) findViewById(R.id.floatview_imageview_run_and_pause);
        this.f4923h = (TextView) findViewById(R.id.id_tv_setting_and_stop);
        this.f4924i = (ImageView) findViewById(R.id.floatview_imageview_setting);
        this.f4907A.setOnClickListener(this);
        this.f4908B.setOnClickListener(this);
        this.f4909C.setOnClickListener(this);
        findViewById(R.id.floatview_linearlayout_exit).setOnClickListener(this);
        this.f4918c = (ImageView) findViewById(R.id.floatview_elfin_imageview_elfin);
        m6079a();
        this.f4918c.setOnClickListener(null);
        this.f4918c.setOnTouchListener(this.f4915S);
        this.f4931r = (WindowManager) getContext().getSystemService("window");
        this.f4932s = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams = this.f4932s;
            i = 2038;
        } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
            layoutParams = this.f4932s;
            i = 2002;
        } else {
            layoutParams = this.f4932s;
            i = 2005;
        }
        layoutParams.type = i;
        this.f4932s.format = 1;
        this.f4932s.flags = 40;
        this.f4932s.gravity = 51;
        this.f4932s.x = C1147a.m4247a(getContext()).x - this.f4919d.getLayoutParams().width;
        this.f4932s.y = C1147a.m4247a(getContext()).y / 4;
        this.f4935v = C1147a.m4247a(getContext()).y / 4;
        this.f4932s.width = this.f4919d.getLayoutParams().width;
        this.f4932s.height = this.f4919d.getLayoutParams().height;
        this.f4926k = deleteFloatView;
        this.f4928m.start();
        C2772c.m12482a().m12503a(this);
        C1151ad.m4325c(f4903a, "ElfinFloatView EventBus register");
    }

    /* renamed from: a */
    private void m6040a(float f, int i, int i2) {
        ImageView imageView;
        int i3;
        C1151ad.m4325c(f4903a, "posControlBar --> position=" + f + ",lockState=" + i + ",isRight=" + i2);
        this.f4929n = i;
        if (this.f4929n != 0) {
            this.f4918c.setOnTouchListener(null);
        }
        if (this.f4926k.getVisibility() == 0) {
            this.f4926k.setVisibility(8);
            this.f4926k.m6038a();
        }
        m6080a(i2 == 0 ? 0 : C1147a.m4247a(getContext()).x, (int) ((C1147a.m4247a(getContext()).y * f) - getHeight()));
        this.f4919d.removeView(this.f4920e);
        this.f4919d.addView(this.f4920e, 0);
        if (C1285c.m5955f().f4853d == 2) {
            imageView = this.f4918c;
            i3 = R.drawable.elfin_run1;
        } else if (C1285c.m5955f().f4853d == 3) {
            imageView = this.f4918c;
            i3 = R.drawable.elfin_pause1;
        } else {
            imageView = this.f4918c;
            i3 = R.drawable.elfin_normal1;
        }
        imageView.setImageResource(i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* renamed from: a */
    public void m6041a(int i) {
        ImageView imageView;
        int i2;
        switch (i) {
            case 1:
                if (C1285c.m5955f().f4853d != 2 && C1285c.m5955f().f4853d != 4) {
                    if (C1285c.m5955f().f4853d != 3) {
                        imageView = this.f4918c;
                        i2 = R.drawable.elfin_normal1;
                        break;
                    } else {
                        imageView = this.f4918c;
                        i2 = R.drawable.elfin_pause1;
                        break;
                    }
                } else {
                    imageView = this.f4918c;
                    i2 = R.drawable.elfin_run1;
                    break;
                }
                break;
            case 2:
                if (C1285c.m5955f().f4853d != 2 && C1285c.m5955f().f4853d != 4) {
                    if (C1285c.m5955f().f4853d != 3) {
                        imageView = this.f4918c;
                        i2 = R.drawable.elfin_normal_right_up;
                        break;
                    } else {
                        imageView = this.f4918c;
                        i2 = R.drawable.elfin_pause_right_up;
                        break;
                    }
                } else {
                    imageView = this.f4918c;
                    i2 = R.drawable.elfin_run_right_up;
                    break;
                }
                break;
            case 3:
                if (C1285c.m5955f().f4853d != 2 && C1285c.m5955f().f4853d != 4) {
                    if (C1285c.m5955f().f4853d != 3) {
                        imageView = this.f4918c;
                        i2 = R.drawable.elfin_normal_down;
                        break;
                    } else {
                        imageView = this.f4918c;
                        i2 = R.drawable.elfin_pause_down;
                        break;
                    }
                } else {
                    imageView = this.f4918c;
                    i2 = R.drawable.elfin_run_down;
                    break;
                }
            case 4:
                if (C1285c.m5955f().f4853d == 2 || C1285c.m5955f().f4853d == 4) {
                    imageView = this.f4918c;
                    i2 = R.drawable.elfin_run_left_up;
                    break;
                } else if (C1285c.m5955f().f4853d != 3) {
                    this.f4918c.setImageResource(R.drawable.elfin_normal_left_up);
                    return;
                } else {
                    imageView = this.f4918c;
                    i2 = R.drawable.elfin_pause_left_up;
                    break;
                }
            default:
                return;
        }
        imageView.setImageResource(i2);
    }

    /* renamed from: b */
    private void m6046b(boolean z) {
        if (!z) {
            if (!MqRunner.getInstance().isScriptStarted()) {
                C1302a.m6090a().m6099a(5, 1002, "脚本未在运行状态！");
                return;
            }
            MqRunner.getInstance().stop();
            this.f4927l = false;
            C1302a.m6090a().m6099a(6, 1002, "脚本停止运行！");
            return;
        }
        if (MqRunner.getInstance().isScriptStarted()) {
            C1302a.m6090a().m6099a(5, 1001, "脚本正在运行中……");
            return;
        }
        if (this.f4927l) {
            return;
        }
        this.f4927l = true;
        if (C1201x.m5233a(getContext())) {
            C1288a.m5971a(new C1288a.a() { // from class: com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView.6
                @Override // com.cyjh.elfin.floatingwindowprocess.p084d.C1288a.a
                /* renamed from: a */
                public final void mo5978a() {
                    ElfinFloatView.m6053e(ElfinFloatView.this);
                }

                @Override // com.cyjh.elfin.floatingwindowprocess.p084d.C1288a.a
                /* renamed from: b */
                public final void mo5979b() {
                    ElfinFloatView.m6053e(ElfinFloatView.this);
                }
            });
            return;
        }
        C1154ag.m4344b(getContext(), getContext().getString(R.string.network_off));
        this.f4927l = false;
        C1302a.m6090a().m6099a(5, 1001, getContext().getString(R.string.network_off));
    }

    /* renamed from: e */
    private void m6052e() {
        LayoutInflater.from(getContext()).inflate(R.layout.floatview_elfin, this);
        this.f4919d = (LinearLayout) findViewById(R.id.floatview_elfin_liearlayout_elfin);
        this.f4920e = (LinearLayout) findViewById(R.id.floatview_elfin_liearlayout_tools);
        this.f4907A = (LinearLayout) findViewById(R.id.floatview_linearlayout_run);
        this.f4908B = (LinearLayout) findViewById(R.id.floatview_linearlayout_info);
        this.f4909C = (LinearLayout) findViewById(R.id.floatview_linearlayout_setting);
        this.f4921f = (TextView) findViewById(R.id.id_tv_run_and_pause);
        this.f4922g = (ImageView) findViewById(R.id.floatview_imageview_run_and_pause);
        this.f4923h = (TextView) findViewById(R.id.id_tv_setting_and_stop);
        this.f4924i = (ImageView) findViewById(R.id.floatview_imageview_setting);
        this.f4907A.setOnClickListener(this);
        this.f4908B.setOnClickListener(this);
        this.f4909C.setOnClickListener(this);
        findViewById(R.id.floatview_linearlayout_exit).setOnClickListener(this);
        this.f4918c = (ImageView) findViewById(R.id.floatview_elfin_imageview_elfin);
        m6079a();
        this.f4918c.setOnClickListener(null);
        this.f4918c.setOnTouchListener(this.f4915S);
    }

    /* renamed from: e */
    static /* synthetic */ boolean m6053e(ElfinFloatView elfinFloatView) {
        elfinFloatView.f4927l = false;
        return false;
    }

    /* renamed from: f */
    private void m6055f() {
        this.f4918c = (ImageView) findViewById(R.id.floatview_elfin_imageview_elfin);
        m6079a();
        this.f4918c.setOnClickListener(null);
        this.f4918c.setOnTouchListener(this.f4915S);
    }

    /* renamed from: g */
    private void m6058g() {
        WindowManager.LayoutParams layoutParams;
        int i;
        this.f4931r = (WindowManager) getContext().getSystemService("window");
        this.f4932s = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams = this.f4932s;
            i = 2038;
        } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
            layoutParams = this.f4932s;
            i = 2002;
        } else {
            layoutParams = this.f4932s;
            i = 2005;
        }
        layoutParams.type = i;
        this.f4932s.format = 1;
        this.f4932s.flags = 40;
        this.f4932s.gravity = 51;
        this.f4932s.x = C1147a.m4247a(getContext()).x - this.f4919d.getLayoutParams().width;
        this.f4932s.y = C1147a.m4247a(getContext()).y / 4;
        this.f4935v = C1147a.m4247a(getContext()).y / 4;
        this.f4932s.width = this.f4919d.getLayoutParams().width;
        this.f4932s.height = this.f4919d.getLayoutParams().height;
    }

    /* renamed from: h */
    private void m6060h() {
        ImageView imageView;
        int i;
        if (this.f4926k.getVisibility() == 0) {
            this.f4926k.setVisibility(8);
            this.f4926k.m6038a();
        }
        this.f4918c.getLocationOnScreen(new int[2]);
        if (r1[0] >= (C1147a.m4247a(getContext()).x - this.f4936w) / 2.0f) {
            m6080a(C1147a.m4247a(getContext()).x, (int) (this.f4935v - this.f4937x));
            this.f4919d.removeView(this.f4920e);
            this.f4919d.addView(this.f4920e, 0);
        } else {
            m6080a(0, (int) (this.f4935v - this.f4937x));
            this.f4919d.removeView(this.f4920e);
            this.f4919d.addView(this.f4920e, 1);
        }
        if (C1285c.m5955f().f4853d == 2 || C1285c.m5955f().f4853d == 4) {
            imageView = this.f4918c;
            i = R.drawable.elfin_run1;
        } else if (C1285c.m5955f().f4853d == 3) {
            imageView = this.f4918c;
            i = R.drawable.elfin_pause1;
        } else {
            imageView = this.f4918c;
            i = R.drawable.elfin_normal1;
        }
        imageView.setImageResource(i);
    }

    /* renamed from: i */
    private void m6062i() {
        ImageView imageView;
        int i;
        if (C1285c.m5955f().f4853d == 2) {
            imageView = this.f4918c;
            i = R.drawable.elfin_run1;
        } else if (C1285c.m5955f().f4853d == 3) {
            imageView = this.f4918c;
            i = R.drawable.elfin_pause1;
        } else {
            imageView = this.f4918c;
            i = R.drawable.elfin_normal1;
        }
        imageView.setImageResource(i);
        m6082b();
        this.f4928m.start();
    }

    /* renamed from: j */
    private boolean m6064j() {
        int[] iArr = new int[2];
        this.f4918c.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        this.f4926k.getLocationOnScreen(iArr2);
        return iArr[0] > iArr2[0] && iArr[0] < iArr2[0] + this.f4926k.f4892d.getLayoutParams().width && iArr[1] > iArr2[1];
    }

    /* renamed from: k */
    private void m6066k() {
        C1255f.m5689a();
        C1255f.m5690a(AppContext.m5350a(), "ElfinFloatView runScriptOperate --> isPreventRepeatedClick=" + this.f4927l);
        C1151ad.m4325c(f4903a, "runScriptOperate --> 1 isPreventRepeatedClick=" + this.f4927l);
        if (AppContext.m5350a().f4566f) {
            C1154ag.m4340a(AppContext.m5350a(), (int) R.string.version_too_low);
            C1255f.m5689a();
            C1255f.m5690a(AppContext.m5350a(), "ElfinFloatView runScriptOperate --> 当前版本过低，请更新至最新版本！");
            return;
        }
        byte b2 = 0;
        if (C1579a.m7022a(AppContext.m5350a(), InterfaceC1133a.f3974aw) && C1486e.m6883a().f5807a == 1) {
            C1154ag.m4340a(AppContext.m5350a(), (int) R.string.environment_init_failure);
            return;
        }
        C1285c m5955f = C1285c.m5955f();
        if (!(m5955f.f4851a == null || TextUtils.isEmpty(m5955f.f4851a.getAppId())) || (m5955f.f4851a != null && TextUtils.isEmpty(m5955f.f4851a.getVersion()))) {
            if (!C1264o.m5789c(AppContext.m5350a(), C1285c.m5955f().f4852c)) {
                C1154ag.m4340a(AppContext.m5350a(), (int) R.string.script_file_verify_failure);
                return;
            }
        }
        if (this.f4927l) {
            return;
        }
        this.f4927l = true;
        C1289b.m6001j();
        if (C1289b.m5992b()) {
            C1151ad.m4325c(f4903a, "runScriptOperate --> 2");
            C1152ae.m4331b(getContext(), "runScriptOperate -->\u3000停止引擎");
            C1289b.m6001j();
            C1289b.m5995d();
            this.f4927l = false;
            C1255f.m5689a();
            C1255f.m5690a(AppContext.m5350a(), "ElfinFloatView runScriptOperate --> 停止引擎");
        } else {
            C1151ad.m4325c(f4903a, "runScriptOperate --> 3");
            if (!C1201x.m5233a(getContext())) {
                C1154ag.m4344b(getContext(), getContext().getString(R.string.network_off));
                this.f4927l = false;
                C1255f.m5689a();
                C1255f.m5690a(AppContext.m5350a(), "ElfinFloatView runScriptOperate --> 当前网络异常，请检查网络设置");
                return;
            }
            C1288a.m5971a(new C1288a.a() { // from class: com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView.2
                @Override // com.cyjh.elfin.floatingwindowprocess.p084d.C1288a.a
                /* renamed from: a */
                public final void mo5978a() {
                    ElfinFloatView.m6053e(ElfinFloatView.this);
                }

                @Override // com.cyjh.elfin.floatingwindowprocess.p084d.C1288a.a
                /* renamed from: b */
                public final void mo5979b() {
                    ElfinFloatView.m6053e(ElfinFloatView.this);
                }
            });
        }
        if (this.f4913P == null) {
            this.f4913P = new HandlerC1299b(this, b2);
        }
        this.f4913P.removeCallbacksAndMessages(null);
        this.f4913P.postDelayed(new Runnable(this) { // from class: com.cyjh.elfin.floatingwindowprocess.floatview.a

            /* renamed from: a */
            private final ElfinFloatView f4954a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f4954a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f4954a.f4927l = false;
            }
        }, 3000L);
    }

    /* renamed from: l */
    private void m6068l() {
        m6081a(false);
        C1289b.m6001j();
        C1289b.m5993c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public void m6070m() {
        C1151ad.m4325c(f4903a, "judgeEngineStatus --> ");
        C1255f.m5689a();
        C1255f.m5690a(AppContext.m5350a(), "ElfinFloatView judgeEngineStatus --> isScriptStopRunning=" + AppContext.m5350a().f4569i);
        if (this.f4914Q >= 5) {
            C1289b.m6001j();
            C1289b.m5995d();
            this.f4914Q = 1;
            C1255f.m5689a();
            C1255f.m5690a(AppContext.m5350a(), "ElfinFloatView judgeEngineStatus --> ScriptRunnerManager.getInstance().stop()");
        }
        if (this.f4913P == null) {
            this.f4913P = new HandlerC1299b(this, (byte) 0);
        }
        if (AppContext.m5350a().f4569i) {
            this.f4913P.removeMessages(1000);
            m6066k();
        } else {
            this.f4914Q++;
            if (this.f4913P.hasMessages(1000)) {
                this.f4913P.removeMessages(1000);
            }
            this.f4913P.sendEmptyMessageDelayed(1000, 3000L);
        }
    }

    /* renamed from: n */
    private void m6071n() {
        if (ParamsWrap.getParamsWrap().mStartRunResponseInfo == null) {
            m6074o();
        } else {
            C1288a.m5972a(this.f4930o);
            this.f4913P.sendEmptyMessageDelayed(1001, 3000L);
        }
    }

    /* renamed from: n */
    static /* synthetic */ boolean m6072n(ElfinFloatView elfinFloatView) {
        int[] iArr = new int[2];
        elfinFloatView.f4918c.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        elfinFloatView.f4926k.getLocationOnScreen(iArr2);
        return iArr[0] > iArr2[0] && iArr[0] < iArr2[0] + elfinFloatView.f4926k.f4892d.getLayoutParams().width && iArr[1] > iArr2[1];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public void m6074o() {
        this.f4913P.removeMessages(1001);
        C1151ad.m4325c(f4903a, "exitEngine --> ");
        getContext().stopService(new Intent(getContext(), (Class<?>) PhoneStateService.class));
        MqBridge.exit();
        Process.killProcess(Process.myPid());
        ActivityManager activityManager = (ActivityManager) getContext().getSystemService("activity");
        if (activityManager != null) {
            activityManager.killBackgroundProcesses("com.cyjh.elfin:download_server");
        }
        C2772c.m12482a().m12505b(this);
        C1151ad.m4325c(f4903a, "ElfinFloatView EventBus unregister");
    }

    /* renamed from: p */
    private /* synthetic */ void m6076p() {
        this.f4927l = false;
    }

    /* renamed from: q */
    static /* synthetic */ void m6077q(ElfinFloatView elfinFloatView) {
        ImageView imageView;
        int i;
        if (elfinFloatView.f4926k.getVisibility() == 0) {
            elfinFloatView.f4926k.setVisibility(8);
            elfinFloatView.f4926k.m6038a();
        }
        elfinFloatView.f4918c.getLocationOnScreen(new int[2]);
        if (r1[0] >= (C1147a.m4247a(elfinFloatView.getContext()).x - elfinFloatView.f4936w) / 2.0f) {
            elfinFloatView.m6080a(C1147a.m4247a(elfinFloatView.getContext()).x, (int) (elfinFloatView.f4935v - elfinFloatView.f4937x));
            elfinFloatView.f4919d.removeView(elfinFloatView.f4920e);
            elfinFloatView.f4919d.addView(elfinFloatView.f4920e, 0);
        } else {
            elfinFloatView.m6080a(0, (int) (elfinFloatView.f4935v - elfinFloatView.f4937x));
            elfinFloatView.f4919d.removeView(elfinFloatView.f4920e);
            elfinFloatView.f4919d.addView(elfinFloatView.f4920e, 1);
        }
        if (C1285c.m5955f().f4853d == 2 || C1285c.m5955f().f4853d == 4) {
            imageView = elfinFloatView.f4918c;
            i = R.drawable.elfin_run1;
        } else if (C1285c.m5955f().f4853d == 3) {
            imageView = elfinFloatView.f4918c;
            i = R.drawable.elfin_pause1;
        } else {
            imageView = elfinFloatView.f4918c;
            i = R.drawable.elfin_normal1;
        }
        imageView.setImageResource(i);
    }

    /* renamed from: a */
    public final void m6079a() {
        ImageView imageView;
        int i = C1285c.m5955f().f4853d;
        int i2 = R.drawable.floatview_elfin_stop;
        if (i == 2) {
            this.f4918c.setImageResource(R.drawable.elfin_pause1);
            this.f4921f.setText(getContext().getString(R.string.floatview_elfin_pause));
            this.f4922g.setImageResource(R.drawable.floatview_elfin_pause);
        } else {
            if (C1285c.m5955f().f4853d != 3) {
                this.f4918c.setImageResource(R.drawable.elfin_normal1);
                this.f4921f.setText(getContext().getString(R.string.floatview_elfin_run));
                this.f4922g.setImageResource(R.drawable.floatview_elfin_run);
                this.f4923h.setText(getContext().getString(R.string.floatview_elfin_setting));
                imageView = this.f4924i;
                i2 = R.drawable.floatview_elfin_setting;
                imageView.setImageResource(i2);
            }
            this.f4918c.setImageResource(R.drawable.elfin_normal1);
            this.f4921f.setText(getContext().getString(R.string.floatview_elfin_run));
            this.f4922g.setImageResource(R.drawable.floatview_elfin_run);
        }
        this.f4923h.setText(getContext().getString(R.string.floatview_elfin_stop));
        imageView = this.f4924i;
        imageView.setImageResource(i2);
    }

    /* renamed from: a */
    public final void m6080a(int i, int i2) {
        this.f4932s.x = i;
        this.f4932s.y = i2;
        this.f4931r.updateViewLayout(this, this.f4932s);
    }

    /* renamed from: a */
    public final void m6081a(boolean z) {
        m6041a(1);
        if (z) {
            if (this.f4920e.getVisibility() == 8) {
                this.f4920e.setVisibility(0);
            }
        } else if (this.f4920e.getVisibility() == 0) {
            this.f4920e.setVisibility(8);
        }
    }

    /* renamed from: b */
    public final void m6082b() {
        this.f4928m.cancel();
        this.f4918c.setAlpha(1.0f);
    }

    /* renamed from: c */
    public final void m6083c() {
        m6082b();
        this.f4928m.start();
        m6041a(1);
        this.f4932s.x = C1147a.m4247a(getContext()).x - this.f4919d.getLayoutParams().width;
        this.f4932s.y = C1147a.m4247a(getContext()).y / 4;
        this.f4931r.updateViewLayout(this, this.f4932s);
        DeleteFloatView deleteFloatView = this.f4926k;
        WindowManager windowManager = (WindowManager) deleteFloatView.getContext().getSystemService("window");
        deleteFloatView.f4889a.x = (C1147a.m4247a(deleteFloatView.getContext()).x - deleteFloatView.f4892d.getLayoutParams().width) / 2;
        deleteFloatView.f4889a.y = C1147a.m4247a(deleteFloatView.getContext()).y;
        windowManager.updateViewLayout(deleteFloatView, deleteFloatView.f4889a);
    }

    /* renamed from: d */
    public final void m6084d() {
        m6082b();
        int i = 0;
        if (getVisibility() == 0) {
            m6081a(false);
            i = 8;
            this.f4926k.setVisibility(8);
        } else {
            this.f4928m.start();
            m6080a(C1147a.m4247a(getContext()).x, C1147a.m4247a(getContext()).y / 4);
        }
        setVisibility(i);
    }

    @Override // android.view.View
    public WindowManager.LayoutParams getLayoutParams() {
        return this.f4932s;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        m6082b();
        int id = view.getId();
        if (id != R.id.floatview_linearlayout_run) {
            if (id != R.id.floatview_linearlayout_setting) {
                if (id == R.id.floatview_linearlayout_info) {
                    this.f4911E = new DialogC1279b(getContext());
                    this.f4911E.show();
                } else if (id == R.id.floatview_linearlayout_exit) {
                    if (ParamsWrap.getParamsWrap().mStartRunResponseInfo == null) {
                        m6074o();
                    } else {
                        C1288a.m5972a(this.f4930o);
                        this.f4913P.sendEmptyMessageDelayed(1001, 3000L);
                    }
                }
            } else if (C1285c.m5955f().f4853d == 3 || C1285c.m5955f().f4853d == 2 || C1285c.m5955f().f4853d == 4) {
                C1151ad.m4325c(f4903a, "runScriptOperate --> 2");
                C1152ae.m4331b(getContext(), "runScriptOperate -->\u3000停止引擎");
                C1289b.m6001j();
                C1289b.m5995d();
                this.f4927l = false;
                C1255f.m5689a();
                C1255f.m5690a(AppContext.m5350a(), "ElfinFloatView runScriptOperate --> 停止引擎");
            } else {
                this.f4910D = new ViewOnClickListenerC1280c(getContext());
                this.f4910D.f4798a = this.f4933t;
                this.f4910D.show();
            }
        } else {
            if (C1285c.m5955f().f4853d == 4) {
                return;
            }
            if (C1285c.m5955f().f4853d == 3) {
                C1289b.m6001j();
                C1289b.m5997f();
            } else if (C1285c.m5955f().f4853d == 2) {
                C1289b.m6001j();
                C1289b.m5996e();
            } else {
                m6066k();
            }
        }
        this.f4928m.start();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        if (this.f4913P != null) {
            this.f4913P.removeCallbacksAndMessages(null);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    @InterfaceC2779j(m12528a = ThreadMode.MAIN)
    public void onMessageMainThread(MsgItem msgItem) {
        switch (msgItem.getMsgType()) {
            case 2000:
                C1151ad.m4325c(f4903a, "SCRIPT_NEED_UPGRADE");
                C1288a.m5971a((C1288a.a) null);
                return;
            case MsgItem.SCRIPT_NEED_START /* 2001 */:
                this.f4913P.postDelayed(new Runnable() { // from class: com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        C1288a.m5971a((C1288a.a) null);
                    }
                }, 2000L);
                return;
            default:
                return;
        }
    }

    @InterfaceC2779j(m12528a = ThreadMode.MAIN)
    public void onReceiveElfinFloatViewEvent(ElfinFloatViewEvent elfinFloatViewEvent) {
        C1151ad.m4325c(f4903a, "onReceiveElfinFloatViewEvent");
        int type = elfinFloatViewEvent.getType();
        if (type == 4) {
            C1151ad.m4325c(f4903a, "onReceiveSocketMessage --> 服务端命令:脚本设置更新");
            m6070m();
            return;
        }
        if (type == 10101) {
            C1151ad.m4325c(f4903a, "服务端命令:脚本启动");
            m6046b(true);
        } else if (type == 10103) {
            m6046b(false);
            C1151ad.m4325c(f4903a, "onReceiveSocketMessage --> 服务端命令:脚本停止");
        } else if (type == 10105) {
            C1151ad.m4325c(f4903a, "onReceiveSocketMessage --> 服务端命令:脚本更新");
        } else {
            if (type != 10107) {
                return;
            }
            C1151ad.m4325c(f4903a, "onReceiveSocketMessage --> 服务端命令:脚本设置更新");
        }
    }

    public void setControlbarVisiable(int i) {
        setVisibility(i == 1 ? 0 : 8);
    }
}
