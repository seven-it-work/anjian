package com.iflytek.voiceads.videolib;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.hjol.R;
import com.iflytek.voiceads.listener.IFLYVideoListener;
import com.iflytek.voiceads.p181e.C2284g;
import com.iflytek.voiceads.p181e.C2285h;
import com.iflytek.voiceads.param.C2290a;
import com.iflytek.voiceads.utils.C2311e;
import com.iflytek.voiceads.utils.C2313g;
import com.iflytek.voiceads.utils.C2316j;
import com.iflytek.voiceads.utils.C2317k;
import java.util.TimerTask;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import mobi.oneway.export.p197d.InterfaceC2667e;

/* loaded from: assets/AdDex.4.0.1.dex */
public abstract class JZPlayer extends FrameLayout implements View.OnClickListener, View.OnTouchListener, SeekBar.OnSeekBarChangeListener {

    /* renamed from: a */
    public static int f8670a = 1;

    /* renamed from: b */
    public static int f8671b = 0;

    /* renamed from: c */
    public static long f8672c = 0;

    /* renamed from: A */
    public int f8673A;

    /* renamed from: B */
    public int f8674B;

    /* renamed from: C */
    public int f8675C;

    /* renamed from: D */
    public int f8676D;

    /* renamed from: E */
    public int f8677E;

    /* renamed from: F */
    public int f8678F;

    /* renamed from: G */
    public int f8679G;

    /* renamed from: H */
    protected int f8680H;

    /* renamed from: I */
    protected int f8681I;

    /* renamed from: J */
    protected AudioManager f8682J;

    /* renamed from: K */
    protected Handler f8683K;

    /* renamed from: L */
    protected ScheduledExecutorService f8684L;

    /* renamed from: M */
    protected C2321a f8685M;

    /* renamed from: N */
    protected boolean f8686N;

    /* renamed from: O */
    public C2284g f8687O;

    /* renamed from: P */
    public C2285h f8688P;

    /* renamed from: Q */
    public IFLYVideoListener f8689Q;

    /* renamed from: R */
    public C2290a f8690R;

    /* renamed from: S */
    public int f8691S;

    /* renamed from: T */
    public boolean f8692T;

    /* renamed from: U */
    private final int f8693U;

    /* renamed from: d */
    public AudioManager.OnAudioFocusChangeListener f8694d;

    /* renamed from: e */
    public C2323a f8695e;

    /* renamed from: f */
    public Object[] f8696f;

    /* renamed from: g */
    public int f8697g;

    /* renamed from: h */
    public int f8698h;

    /* renamed from: i */
    public int f8699i;

    /* renamed from: j */
    public long f8700j;

    /* renamed from: k */
    public boolean f8701k;

    /* renamed from: l */
    public SeekBar f8702l;

    /* renamed from: m */
    public ImageView f8703m;

    /* renamed from: n */
    public ImageView f8704n;

    /* renamed from: o */
    public ImageView f8705o;

    /* renamed from: p */
    public TextView f8706p;

    /* renamed from: q */
    public TextView f8707q;

    /* renamed from: r */
    public ViewGroup f8708r;

    /* renamed from: s */
    public ViewGroup f8709s;

    /* renamed from: t */
    public int f8710t;

    /* renamed from: u */
    public int f8711u;

    /* renamed from: v */
    public int f8712v;

    /* renamed from: w */
    public int f8713w;

    /* renamed from: x */
    public int f8714x;

    /* renamed from: y */
    public int f8715y;

    /* renamed from: z */
    public int f8716z;

    /* renamed from: com.iflytek.voiceads.videolib.JZPlayer$a */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public class C2321a extends TimerTask {
        public C2321a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (JZPlayer.this.f8697g == 3 || JZPlayer.this.f8697g == 5) {
                JZPlayer.this.f8683K.post(new RunnableC2335m(this));
            }
        }
    }

    public JZPlayer(Context context) {
        super(context);
        this.f8693U = R.drawable.abc_btn_check_to_on_mtrl_015;
        this.f8694d = new C2334l(this);
        this.f8696f = null;
        this.f8697g = -1;
        this.f8698h = -1;
        this.f8699i = 0;
        this.f8700j = 0L;
        this.f8701k = false;
        this.f8676D = 0;
        this.f8677E = 0;
        this.f8678F = -1;
        this.f8679G = 0;
        mo10181a(context);
    }

    public JZPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8693U = R.drawable.abc_btn_check_to_on_mtrl_015;
        this.f8694d = new C2334l(this);
        this.f8696f = null;
        this.f8697g = -1;
        this.f8698h = -1;
        this.f8699i = 0;
        this.f8700j = 0L;
        this.f8701k = false;
        this.f8676D = 0;
        this.f8677E = 0;
        this.f8678F = -1;
        this.f8679G = 0;
        mo10181a(context);
    }

    /* renamed from: b */
    public static boolean m10161b() {
        if (System.currentTimeMillis() - f8672c < 300) {
            return false;
        }
        if (C2337o.m10263b() != null) {
            f8672c = System.currentTimeMillis();
            if (C2337o.m10261a().f8695e.m10236a(TextureViewSurfaceTextureListenerC2325c.m10250b())) {
                C2337o.m10261a().m10172J();
            } else {
                m10162c();
            }
            return true;
        }
        if (C2337o.m10261a() == null || C2337o.m10261a().f8698h != 1) {
            return false;
        }
        f8672c = System.currentTimeMillis();
        m10162c();
        return false;
    }

    /* renamed from: c */
    public static void m10162c() {
        C2337o.m10261a().m10217z();
        TextureViewSurfaceTextureListenerC2325c.m10246a().m10255g();
        C2337o.m10266d();
    }

    /* renamed from: A */
    public void m10163A() {
        C2313g.m10136a("JZVideoPlayer", "onVideoSizeChanged");
        if (TextureViewSurfaceTextureListenerC2325c.f8744a != null) {
            if (this.f8679G != 0) {
                TextureViewSurfaceTextureListenerC2325c.f8744a.setRotation(this.f8679G);
            }
            TextureViewSurfaceTextureListenerC2325c.f8744a.m10218a(TextureViewSurfaceTextureListenerC2325c.m10246a().f8750g, TextureViewSurfaceTextureListenerC2325c.m10246a().f8751h);
        }
    }

    /* renamed from: B */
    public void m10164B() {
        C2313g.m10136a("JZVideoPlayer", "startProgressTimer");
        m10165C();
        this.f8684L = Executors.newScheduledThreadPool(1);
        this.f8685M = new C2321a();
        this.f8684L.scheduleAtFixedRate(this.f8685M, 0L, 300L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: C */
    public void m10165C() {
        C2313g.m10136a("JZVideoPlayer", "cancelProgressTimer");
        if (this.f8684L != null) {
            this.f8684L.shutdown();
        }
        if (this.f8685M != null) {
            this.f8685M.cancel();
        }
    }

    /* renamed from: D */
    public void m10166D() {
        this.f8702l.setProgress(0);
        this.f8702l.setSecondaryProgress(0);
        this.f8706p.setText(C2336n.m10259a(0L));
        this.f8707q.setText(C2336n.m10259a(0L));
    }

    /* renamed from: E */
    public long m10167E() {
        if (this.f8697g != 3 && this.f8697g != 5) {
            return 0L;
        }
        try {
            return TextureViewSurfaceTextureListenerC2325c.m10251c();
        } catch (Exception e) {
            C2313g.m10138b("JZVideoPlayer", "get position" + e.getMessage());
            return 0L;
        }
    }

    /* renamed from: F */
    public long m10168F() {
        try {
            return TextureViewSurfaceTextureListenerC2325c.m10252d();
        } catch (Exception e) {
            C2313g.m10138b("JZVideoPlayer", "get dur" + e.getMessage());
            return 0L;
        }
    }

    /* renamed from: G */
    public void m10169G() {
        try {
            if (this.f8687O.f8568c > this.f8687O.f8569d) {
                C2336n.m10260a(getContext(), 0);
            } else {
                C2336n.m10260a(getContext(), 1);
            }
            Activity m10258a = C2336n.m10258a(getContext());
            if (m10258a == null) {
                C2313g.m10136a("JZVideoPlayer", "startWindowFullscreen curActivity is null!");
                return;
            }
            ViewGroup viewGroup = (ViewGroup) m10258a.findViewById(android.R.id.content);
            View findViewById = viewGroup.findViewById(R.drawable.abc_btn_check_to_on_mtrl_015);
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            this.f8708r.removeView(TextureViewSurfaceTextureListenerC2325c.f8744a);
            JZPlayer jZPlayer = (JZPlayer) getClass().getConstructor(Context.class).newInstance(getContext());
            jZPlayer.setId(R.drawable.abc_btn_check_to_on_mtrl_015);
            viewGroup.addView(jZPlayer, new FrameLayout.LayoutParams(-1, -1));
            int i = Build.VERSION.SDK_INT;
            int i2 = getContext().getApplicationInfo().targetSdkVersion;
            if (i >= 19 && i2 >= 19) {
                jZPlayer.setSystemUiVisibility(2054);
            } else if (i < 16 || i2 < 16) {
                jZPlayer.setSystemUiVisibility(2);
            } else {
                jZPlayer.setSystemUiVisibility(6);
            }
            jZPlayer.m10182a(this.f8687O);
            jZPlayer.m10185a(this.f8690R);
            jZPlayer.m10176a(this.f8691S);
            jZPlayer.m10184a(this.f8689Q);
            jZPlayer.m10189b(this.f8699i);
            jZPlayer.m10183a(this.f8688P);
            jZPlayer.mo10186a(this.f8695e, 1, this.f8696f);
            jZPlayer.m10192c(this.f8697g);
            jZPlayer.m10214w();
            C2337o.m10264b(jZPlayer);
            mo10204m();
            jZPlayer.f8702l.setSecondaryProgress(this.f8702l.getSecondaryProgress());
            jZPlayer.m10164B();
            f8672c = System.currentTimeMillis();
        } catch (Exception e) {
            C2313g.m10138b("JZVideoPlayer", "window full" + e.getMessage());
        }
    }

    /* renamed from: H */
    public boolean m10170H() {
        return m10171I() && this.f8695e.m10236a(TextureViewSurfaceTextureListenerC2325c.m10250b());
    }

    /* renamed from: I */
    public boolean m10171I() {
        return C2337o.m10265c() != null && C2337o.m10265c() == this;
    }

    /* renamed from: J */
    public void m10172J() {
        this.f8699i = C2337o.m10263b().f8699i;
        if (this.f8699i == 0) {
            this.f8705o.setImageResource(this.f8675C);
        } else if (this.f8699i == 1) {
            this.f8705o.setImageResource(this.f8674B);
        }
        this.f8697g = C2337o.m10263b().f8697g;
        m10217z();
        m10192c(this.f8697g);
        m10214w();
    }

    /* renamed from: K */
    public void m10173K() {
    }

    /* renamed from: L */
    public void mo10174L() {
    }

    /* renamed from: a */
    public void m10175a() {
        if (System.currentTimeMillis() - f8672c > 300) {
            C2337o.m10266d();
            TextureViewSurfaceTextureListenerC2325c.m10246a().f8749f = -1;
            TextureViewSurfaceTextureListenerC2325c.m10246a().m10255g();
        }
    }

    /* renamed from: a */
    public void m10176a(int i) {
        this.f8691S = i;
    }

    /* renamed from: a */
    public void m10177a(int i, int i2) {
        C2313g.m10136a("JZVideoPlayer", "onError");
        if (i == 38 || i2 == -38 || i == -38 || i2 == 38 || i2 == -19) {
            return;
        }
        mo10209r();
        if (m10170H()) {
            TextureViewSurfaceTextureListenerC2325c.m10246a().m10255g();
        }
    }

    /* renamed from: a */
    public void m10178a(int i, int i2, int i3) {
        switch (i) {
            case 0:
                mo10204m();
                return;
            case 1:
                mo10205n();
                return;
            case 2:
                mo10179a(i2, i3);
                return;
            case 3:
                mo10207p();
                return;
            case 4:
            default:
                return;
            case 5:
                mo10208q();
                return;
            case 6:
                mo10210s();
                return;
            case 7:
                mo10209r();
                return;
        }
    }

    /* renamed from: a */
    public void mo10179a(int i, long j) {
        C2313g.m10136a("JZVideoPlayer", "onStatePreparingChangingUrl");
        this.f8697g = 2;
        this.f8700j = j;
        this.f8695e.f8737b = i;
        TextureViewSurfaceTextureListenerC2325c.m10248a(this.f8695e);
        TextureViewSurfaceTextureListenerC2325c.m10246a().m10256h();
    }

    /* renamed from: a */
    public void m10180a(int i, long j, long j2) {
        if (!this.f8686N && i != 0) {
            this.f8702l.setProgress(i);
            if (21 < i && i < 29 && !this.f8688P.f8591b) {
                C2316j.m10151a(this.f8687O.f8575j);
                this.f8688P.f8591b = true;
            }
            if (46 < i && i < 54 && !this.f8688P.f8592c) {
                C2316j.m10151a(this.f8687O.f8576k);
                this.f8688P.f8592c = true;
            }
            if (71 < i && i < 79 && !this.f8688P.f8593d) {
                C2316j.m10151a(this.f8687O.f8577l);
                this.f8688P.f8593d = true;
            }
        }
        if (j != 0) {
            this.f8706p.setText(C2336n.m10259a(j));
        }
        this.f8707q.setText(C2336n.m10259a(j2));
    }

    /* renamed from: a */
    public void mo10181a(Context context) {
        try {
            View.inflate(context, mo10198g(), this);
            mo10190b(context);
            this.f8703m = (ImageView) findViewById(this.f8710t);
            this.f8704n = (ImageView) findViewById(this.f8711u);
            this.f8705o = (ImageView) findViewById(this.f8712v);
            this.f8702l = (SeekBar) findViewById(this.f8714x);
            this.f8706p = (TextView) findViewById(this.f8713w);
            this.f8707q = (TextView) findViewById(this.f8715y);
            this.f8709s = (ViewGroup) findViewById(this.f8673A);
            this.f8708r = (ViewGroup) findViewById(this.f8716z);
            this.f8703m.setOnClickListener(this);
            this.f8704n.setOnClickListener(this);
            this.f8705o.setOnClickListener(this);
            this.f8702l.setOnSeekBarChangeListener(this);
            this.f8709s.setOnClickListener(this);
            this.f8708r.setOnClickListener(this);
            this.f8708r.setOnTouchListener(this);
            this.f8680H = getContext().getResources().getDisplayMetrics().widthPixels;
            this.f8681I = getContext().getResources().getDisplayMetrics().heightPixels;
            this.f8682J = (AudioManager) getContext().getSystemService("audio");
            this.f8683K = new Handler();
            this.f8688P = new C2285h();
            if (m10170H() && (context instanceof Activity)) {
                f8670a = ((Activity) context).getRequestedOrientation();
            }
        } catch (Exception e) {
            C2313g.m10138b("JZVideoPlayer", "jz init" + e.getMessage());
        }
    }

    /* renamed from: a */
    public void m10182a(C2284g c2284g) {
        this.f8687O = c2284g;
    }

    /* renamed from: a */
    public void m10183a(C2285h c2285h) {
        this.f8688P = c2285h;
    }

    /* renamed from: a */
    public void m10184a(IFLYVideoListener iFLYVideoListener) {
        this.f8689Q = iFLYVideoListener;
    }

    /* renamed from: a */
    public void m10185a(C2290a c2290a) {
        this.f8690R = c2290a;
    }

    /* renamed from: a */
    public void mo10186a(C2323a c2323a, int i, Object... objArr) {
        if (this.f8695e == null || c2323a.m10234a() == null || !this.f8695e.m10236a(c2323a.m10234a())) {
            if (m10171I() && c2323a.m10236a(TextureViewSurfaceTextureListenerC2325c.m10250b())) {
                TextureViewSurfaceTextureListenerC2325c.m10246a().m10255g();
            }
            this.f8698h = i;
            this.f8695e = c2323a;
            this.f8696f = objArr;
            this.f8695e.f8742g = objArr;
            mo10204m();
        }
    }

    /* renamed from: a */
    public void m10187a(String str, String str2, int i, Object... objArr) {
        mo10186a(new C2323a(str, str2), i, objArr);
    }

    /* renamed from: a */
    public void m10188a(boolean z) {
        this.f8692T = z;
    }

    /* renamed from: b */
    public void m10189b(int i) {
        this.f8699i = i;
    }

    /* renamed from: b */
    public void mo10190b(Context context) {
        this.f8710t = C2311e.m10129a(context, "id", "ifly_ad_play_state_btn");
        this.f8711u = C2311e.m10129a(context, "id", "ifly_ad_fullscreen_btn");
        this.f8712v = C2311e.m10129a(context, "id", "ifly_ad_volume_btn");
        this.f8713w = C2311e.m10129a(context, "id", "ifly_ad_cur_time");
        this.f8714x = C2311e.m10129a(context, "id", "ifly_ad_bottom_seek_bar");
        this.f8715y = C2311e.m10129a(context, "id", "ifly_ad_total_time");
        this.f8716z = C2311e.m10129a(context, "id", "ifly_ad_surface_container");
        this.f8673A = C2311e.m10129a(context, "id", "ifly_ad_layout_bottom");
        this.f8674B = C2311e.m10129a(context, "drawable", "ifly_ad_jz_open_volume");
        this.f8675C = C2311e.m10129a(context, "drawable", "ifly_ad_jz_close_volume");
    }

    /* renamed from: b */
    public void m10191b(boolean z) {
        TextureViewSurfaceTextureListenerC2325c.m10249a(z);
        if (z) {
            this.f8699i = 0;
            if (this.f8688P.f8598i) {
                return;
            }
            C2316j.m10151a(this.f8687O.f8582q);
            this.f8688P.f8598i = true;
            return;
        }
        this.f8699i = 1;
        if (this.f8688P.f8599j) {
            return;
        }
        C2316j.m10151a(this.f8687O.f8583r);
        this.f8688P.f8599j = true;
    }

    /* renamed from: c */
    public void m10192c(int i) {
        m10178a(i, 0, 0);
    }

    /* renamed from: c */
    public void m10193c(boolean z) {
        this.f8701k = z;
    }

    /* renamed from: d */
    public void m10194d() {
        JZPlayer m10265c = C2337o.m10265c();
        if (m10265c == null || m10265c.f8697g != 5) {
            return;
        }
        m10265c.mo10207p();
        TextureViewSurfaceTextureListenerC2325c.m10254f();
        if (this.f8688P.f8596g || this.f8687O == null) {
            return;
        }
        C2316j.m10151a(this.f8687O.f8580o);
        this.f8688P.f8596g = true;
    }

    /* renamed from: d */
    public void m10195d(int i) {
        if (i != 0) {
            this.f8702l.setSecondaryProgress(i);
        }
    }

    /* renamed from: e */
    public void m10196e() {
        JZPlayer m10265c = C2337o.m10265c();
        if (m10265c == null || m10265c.f8697g == 6 || m10265c.f8697g == 0 || m10265c.f8697g == 7) {
            return;
        }
        m10265c.mo10208q();
        TextureViewSurfaceTextureListenerC2325c.m10253e();
        if (this.f8688P.f8595f || this.f8687O == null) {
            return;
        }
        C2316j.m10151a(this.f8687O.f8579n);
        this.f8688P.f8595f = true;
    }

    /* renamed from: f */
    public void m10197f() {
        JZPlayer m10265c = C2337o.m10265c();
        if (m10265c != null) {
            m10265c.m10173K();
            m10175a();
            if (this.f8688P.f8601l) {
                return;
            }
            C2316j.m10151a(this.f8687O.f8585t);
            this.f8688P.f8601l = true;
        }
    }

    /* renamed from: g */
    public abstract int mo10198g();

    /* renamed from: h */
    public void m10199h() {
        m10161b();
        if (this.f8688P.f8597h) {
            return;
        }
        C2316j.m10151a(this.f8687O.f8581p);
        this.f8688P.f8597h = true;
    }

    /* renamed from: i */
    public void m10200i() {
        if (this.f8688P.f8604o) {
            return;
        }
        C2316j.m10151a(this.f8687O.f8588w);
        this.f8688P.f8604o = true;
    }

    /* renamed from: j */
    public void m10201j() {
        if (this.f8688P.f8605p) {
            return;
        }
        C2316j.m10151a(this.f8687O.f8589x);
        this.f8688P.f8605p = true;
    }

    /* renamed from: k */
    public void m10202k() {
        C2337o.m10266d();
        m10213v();
        m10214w();
        ((AudioManager) getContext().getSystemService("audio")).requestAudioFocus(this.f8694d, 3, 2);
        Activity m10258a = C2336n.m10258a(getContext());
        if (m10258a != null) {
            m10258a.getWindow().addFlags(128);
        }
        TextureViewSurfaceTextureListenerC2325c.m10248a(this.f8695e);
        TextureViewSurfaceTextureListenerC2325c.m10246a().f8749f = this.f8678F;
        mo10205n();
        C2337o.m10262a(this);
    }

    /* renamed from: l */
    public void m10203l() {
        m10206o();
        mo10207p();
        if (this.f8689Q != null) {
            this.f8689Q.onVideoStart();
        }
    }

    /* renamed from: m */
    public void mo10204m() {
        C2313g.m10136a("JZVideoPlayer", "onStateNormal");
        this.f8697g = 0;
        m10165C();
    }

    /* renamed from: n */
    public void mo10205n() {
        C2313g.m10136a("JZVideoPlayer", "onStatePreparing");
        this.f8697g = 1;
        m10166D();
    }

    /* renamed from: o */
    public void m10206o() {
        C2313g.m10136a("JZVideoPlayer", "onStatePrepared");
        if (this.f8700j == 0) {
            TextureViewSurfaceTextureListenerC2325c.m10247a(0L);
        } else {
            TextureViewSurfaceTextureListenerC2325c.m10247a(this.f8700j);
            this.f8700j = 0L;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != this.f8710t) {
            if (id == this.f8711u) {
                if (this.f8697g != 6) {
                    if (this.f8698h == 1) {
                        m10161b();
                        if (this.f8688P.f8603n) {
                            return;
                        }
                        C2316j.m10151a(this.f8687O.f8587v);
                        this.f8688P.f8603n = true;
                        return;
                    }
                    m10169G();
                    if (this.f8688P.f8602m) {
                        return;
                    }
                    C2316j.m10151a(this.f8687O.f8586u);
                    this.f8688P.f8602m = true;
                    return;
                }
                return;
            }
            if (id == this.f8712v) {
                if (this.f8699i == 0) {
                    TextureViewSurfaceTextureListenerC2325c.m10249a(false);
                    this.f8699i = 1;
                    this.f8705o.setImageResource(this.f8674B);
                    if (this.f8688P.f8599j) {
                        return;
                    }
                    C2316j.m10151a(this.f8687O.f8583r);
                    this.f8688P.f8599j = true;
                    return;
                }
                if (this.f8699i == 1) {
                    TextureViewSurfaceTextureListenerC2325c.m10249a(true);
                    this.f8699i = 0;
                    this.f8705o.setImageResource(this.f8675C);
                    if (this.f8688P.f8598i) {
                        return;
                    }
                    C2316j.m10151a(this.f8687O.f8582q);
                    this.f8688P.f8598i = true;
                    return;
                }
                return;
            }
            return;
        }
        if (this.f8695e == null || this.f8695e.f8738c.isEmpty() || this.f8695e.m10234a() == null) {
            C2313g.m10136a("JZVideoPlayer", "播放地址无效");
            return;
        }
        if (this.f8697g == 0) {
            if (this.f8695e.m10234a().toString().startsWith("file") || this.f8695e.m10234a().toString().startsWith("/") || C2317k.m10156b(getContext()) || !this.f8692T) {
                m10202k();
                return;
            } else {
                mo10174L();
                return;
            }
        }
        if (this.f8697g == 3) {
            TextureViewSurfaceTextureListenerC2325c.m10253e();
            mo10208q();
            if (this.f8688P.f8595f) {
                return;
            }
            C2316j.m10151a(this.f8687O.f8579n);
            this.f8688P.f8595f = true;
            return;
        }
        if (this.f8697g == 5) {
            TextureViewSurfaceTextureListenerC2325c.m10254f();
            mo10207p();
            if (this.f8688P.f8596g) {
                return;
            }
            C2316j.m10151a(this.f8687O.f8580o);
            this.f8688P.f8596g = true;
            return;
        }
        if (this.f8697g == 6) {
            m10202k();
            if (!this.f8688P.f8600k) {
                C2316j.m10151a(this.f8687O.f8584s);
                this.f8688P.f8600k = true;
            }
            if (this.f8689Q != null) {
                this.f8689Q.onVideoReplay();
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f8698h == 1) {
            super.onMeasure(i, i2);
            return;
        }
        if (this.f8676D == 0 || this.f8677E == 0) {
            super.onMeasure(i, i2);
            return;
        }
        int size = View.MeasureSpec.getSize(i);
        int i3 = (int) ((size * this.f8677E) / this.f8676D);
        setMeasuredDimension(size, i3);
        getChildAt(0).measure(View.MeasureSpec.makeMeasureSpec(size, InterfaceC2667e.f10237e), View.MeasureSpec.makeMeasureSpec(i3, InterfaceC2667e.f10237e));
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        m10165C();
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        m10164B();
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        if (this.f8697g == 3 || this.f8697g == 5) {
            TextureViewSurfaceTextureListenerC2325c.m10247a((seekBar.getProgress() * m10168F()) / 100);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return false;
    }

    /* renamed from: p */
    public void mo10207p() {
        C2313g.m10136a("JZVideoPlayer", "onStatePlaying");
        this.f8697g = 3;
        m10164B();
    }

    /* renamed from: q */
    public void mo10208q() {
        C2313g.m10136a("JZVideoPlayer", "onStatePause");
        this.f8697g = 5;
        m10164B();
    }

    /* renamed from: r */
    public void mo10209r() {
        C2313g.m10136a("JZVideoPlayer", "onStateError");
        this.f8697g = 7;
        m10165C();
    }

    /* renamed from: s */
    public void mo10210s() {
        C2313g.m10136a("JZVideoPlayer", "onStateAutoComplete");
        this.f8697g = 6;
        m10165C();
        this.f8702l.setProgress(100);
        this.f8706p.setText(this.f8707q.getText());
    }

    /* renamed from: t */
    public void mo10211t() {
        C2313g.m10136a("JZVideoPlayer", "onAutoCompletion");
        Runtime.getRuntime().gc();
        mo10210s();
        if (this.f8698h == 1) {
            m10161b();
        }
        TextureViewSurfaceTextureListenerC2325c.m10246a().m10255g();
        Activity m10258a = C2336n.m10258a(getContext());
        if (m10258a != null) {
            m10258a.getWindow().clearFlags(128);
        }
        if (this.f8689Q != null) {
            this.f8689Q.onVideoComplete();
        }
    }

    /* renamed from: u */
    public void mo10212u() {
        C2313g.m10136a("JZVideoPlayer", "onCompletion");
        m10165C();
        mo10204m();
        this.f8708r.removeView(TextureViewSurfaceTextureListenerC2325c.f8744a);
        TextureViewSurfaceTextureListenerC2325c.m10246a().f8750g = 0;
        TextureViewSurfaceTextureListenerC2325c.m10246a().f8751h = 0;
        ((AudioManager) getContext().getSystemService("audio")).abandonAudioFocus(this.f8694d);
        Activity m10258a = C2336n.m10258a(getContext());
        if (m10258a != null) {
            m10258a.getWindow().clearFlags(128);
        }
        m10216y();
        C2336n.m10260a(getContext(), f8670a);
        if (TextureViewSurfaceTextureListenerC2325c.f8747d != null) {
            TextureViewSurfaceTextureListenerC2325c.f8747d.release();
        }
        if (TextureViewSurfaceTextureListenerC2325c.f8746c != null) {
            TextureViewSurfaceTextureListenerC2325c.f8746c.release();
        }
        TextureViewSurfaceTextureListenerC2325c.f8744a = null;
        TextureViewSurfaceTextureListenerC2325c.f8746c = null;
    }

    /* renamed from: v */
    public void m10213v() {
        C2313g.m10136a("JZVideoPlayer", "initTextureView");
        m10215x();
        TextureViewSurfaceTextureListenerC2325c.f8744a = new JZTextureView(getContext());
        TextureViewSurfaceTextureListenerC2325c.f8744a.setSurfaceTextureListener(TextureViewSurfaceTextureListenerC2325c.m10246a());
    }

    /* renamed from: w */
    public void m10214w() {
        C2313g.m10136a("JZVideoPlayer", "addTextureView");
        this.f8708r.addView(TextureViewSurfaceTextureListenerC2325c.f8744a, new FrameLayout.LayoutParams(-1, -1, 17));
    }

    /* renamed from: x */
    public void m10215x() {
        C2313g.m10136a("JZVideoPlayer", "removeTextureView");
        TextureViewSurfaceTextureListenerC2325c.f8746c = null;
        if (TextureViewSurfaceTextureListenerC2325c.f8744a == null || TextureViewSurfaceTextureListenerC2325c.f8744a.getParent() == null) {
            return;
        }
        ((ViewGroup) TextureViewSurfaceTextureListenerC2325c.f8744a.getParent()).removeView(TextureViewSurfaceTextureListenerC2325c.f8744a);
    }

    /* renamed from: y */
    public void m10216y() {
        ViewGroup viewGroup;
        View findViewById;
        C2313g.m10136a("JZVideoPlayer", "clearFullscreenLayout");
        Activity m10258a = C2336n.m10258a(getContext());
        if (m10258a == null || (findViewById = (viewGroup = (ViewGroup) m10258a.findViewById(android.R.id.content)).findViewById(R.drawable.abc_btn_check_to_on_mtrl_015)) == null) {
            return;
        }
        viewGroup.removeView(findViewById);
    }

    /* renamed from: z */
    public void m10217z() {
        C2313g.m10136a("JZVideoPlayer", "clearFloatScreen");
        C2336n.m10260a(getContext(), f8670a);
        JZPlayer m10265c = C2337o.m10265c();
        m10265c.f8708r.removeView(TextureViewSurfaceTextureListenerC2325c.f8744a);
        Activity m10258a = C2336n.m10258a(getContext());
        if (m10258a != null) {
            ((ViewGroup) m10258a.findViewById(android.R.id.content)).removeView(m10265c);
        }
        C2337o.m10264b(null);
    }
}
