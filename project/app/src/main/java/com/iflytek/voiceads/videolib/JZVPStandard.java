package com.iflytek.voiceads.videolib;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import com.iflytek.voiceads.utils.C2311e;
import com.iflytek.voiceads.utils.C2313g;
import com.iflytek.voiceads.utils.C2316j;
import com.iflytek.voiceads.utils.C2317k;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: assets/AdDex.4.0.1.dex */
public class JZVPStandard extends JZPlayer {

    /* renamed from: U */
    public ProgressBar f8720U;

    /* renamed from: V */
    public ImageView f8721V;

    /* renamed from: W */
    public TextView f8722W;

    /* renamed from: aa */
    public LinearLayout f8723aa;

    /* renamed from: ab */
    public int f8724ab;

    /* renamed from: ac */
    public int f8725ac;

    /* renamed from: ad */
    public int f8726ad;

    /* renamed from: ae */
    public int f8727ae;

    /* renamed from: af */
    public int f8728af;

    /* renamed from: ag */
    public int f8729ag;

    /* renamed from: ah */
    public int f8730ah;

    /* renamed from: ai */
    public int f8731ai;

    /* renamed from: aj */
    public int f8732aj;

    /* renamed from: ak */
    private Timer f8733ak;

    /* renamed from: al */
    private C2322a f8734al;

    /* renamed from: com.iflytek.voiceads.videolib.JZVPStandard$a */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public class C2322a extends TimerTask {
        public C2322a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            JZVPStandard.this.m10231Y();
        }
    }

    public JZVPStandard(Context context) {
        super(context);
    }

    public JZVPStandard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    /* renamed from: L */
    public void mo10174L() {
        super.mo10174L();
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage("您当前正在使用移动网络，继续播放将消耗流量！");
        builder.setPositiveButton("继续", new DialogInterfaceOnClickListenerC2338p(this));
        builder.setNegativeButton("取消", new DialogInterfaceOnClickListenerC2339q(this));
        builder.setOnCancelListener(new DialogInterfaceOnCancelListenerC2340r(this));
        builder.create().show();
    }

    /* renamed from: M */
    public void m10219M() {
        switch (this.f8697g) {
            case 1:
                m10221O();
                return;
            case 2:
            case 4:
            default:
                return;
            case 3:
                if (this.f8709s.getVisibility() == 0) {
                    m10223Q();
                    return;
                } else {
                    m10222P();
                    return;
                }
            case 5:
                if (this.f8709s.getVisibility() == 0) {
                    m10225S();
                    return;
                } else {
                    m10224R();
                    return;
                }
        }
    }

    /* renamed from: N */
    public void m10220N() {
        m10232a(4, 0, 4, 0, 4);
        m10228V();
    }

    /* renamed from: O */
    public void m10221O() {
        m10232a(4, 4, 0, 0, 4);
        m10228V();
    }

    /* renamed from: P */
    public void m10222P() {
        m10232a(0, 0, 4, 4, 4);
        m10228V();
    }

    /* renamed from: Q */
    public void m10223Q() {
        m10232a(4, 4, 4, 4, 4);
    }

    /* renamed from: R */
    public void m10224R() {
        m10232a(0, 0, 4, 4, 4);
        m10228V();
    }

    /* renamed from: S */
    public void m10225S() {
        m10232a(4, 4, 4, 4, 4);
    }

    /* renamed from: T */
    public void m10226T() {
        m10232a(4, 0, 4, 0, 4);
        m10228V();
    }

    /* renamed from: U */
    public void m10227U() {
        m10232a(4, 0, 4, 4, 0);
        m10228V();
    }

    /* renamed from: V */
    public void m10228V() {
        if (this.f8697g == 3) {
            this.f8703m.setVisibility(0);
            this.f8703m.setImageResource(this.f8731ai);
            return;
        }
        if (this.f8697g == 7) {
            this.f8703m.setVisibility(4);
            return;
        }
        if (this.f8697g != 6) {
            this.f8703m.setImageResource(this.f8730ah);
        } else if (this.f8691S != 0) {
            this.f8703m.setVisibility(4);
        } else {
            this.f8703m.setVisibility(0);
            this.f8703m.setImageResource(this.f8732aj);
        }
    }

    /* renamed from: W */
    public void m10229W() {
        m10230X();
        this.f8733ak = new Timer();
        this.f8734al = new C2322a();
        this.f8733ak.schedule(this.f8734al, 2000L);
    }

    /* renamed from: X */
    public void m10230X() {
        if (this.f8733ak != null) {
            this.f8733ak.cancel();
        }
        if (this.f8734al != null) {
            this.f8734al.cancel();
        }
    }

    /* renamed from: Y */
    public void m10231Y() {
        if (this.f8697g == 0 || this.f8697g == 7 || this.f8697g == 6 || getContext() == null || !(getContext() instanceof Activity)) {
            return;
        }
        ((Activity) getContext()).runOnUiThread(new RunnableC2341s(this));
    }

    /* renamed from: a */
    public void m10232a(int i, int i2, int i3, int i4, int i5) {
        this.f8709s.setVisibility(i);
        this.f8703m.setVisibility(i2);
        this.f8720U.setVisibility(i3);
        this.f8721V.setVisibility(i4);
        this.f8723aa.setVisibility(i5);
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    /* renamed from: a */
    public void mo10179a(int i, long j) {
        super.mo10179a(i, j);
        this.f8720U.setVisibility(0);
        this.f8703m.setVisibility(4);
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    /* renamed from: a */
    public void mo10181a(Context context) {
        super.mo10181a(context);
        mo10190b(context);
        this.f8721V.setOnClickListener(this);
        this.f8722W.setOnClickListener(this);
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    /* renamed from: a */
    public void mo10186a(C2323a c2323a, int i, Object... objArr) {
        super.mo10186a(c2323a, i, objArr);
        if (this.f8698h == 1) {
            this.f8704n.setImageResource(this.f8728af);
            m10233e(C2336n.m10257a(getContext(), 62.0f));
        } else if (this.f8698h == 0) {
            this.f8704n.setImageResource(this.f8729ag);
            m10233e(C2336n.m10257a(getContext(), 45.0f));
        }
        if (this.f8699i == 0) {
            this.f8705o.setImageResource(this.f8675C);
        } else if (this.f8699i == 1) {
            this.f8705o.setImageResource(this.f8674B);
        }
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    /* renamed from: b */
    public void mo10190b(Context context) {
        super.mo10190b(context);
        this.f8724ab = C2311e.m10129a(context, "id", "ifly_ad_loading_progress");
        this.f8725ac = C2311e.m10129a(context, "id", "ifly_ad_thumb");
        this.f8726ad = C2311e.m10129a(context, "id", "ifly_ad_retry_btn");
        this.f8727ae = C2311e.m10129a(context, "id", "ifly_ad_layout_retry");
        this.f8728af = C2311e.m10129a(context, "drawable", "ifly_ad_jz_shrink");
        this.f8729ag = C2311e.m10129a(context, "drawable", "ifly_ad_jz_enlarge");
        this.f8730ah = C2311e.m10129a(context, "drawable", "ifly_ad_jz_click_play_selector");
        this.f8731ai = C2311e.m10129a(context, "drawable", "ifly_ad_jz_click_pause_selector");
        this.f8732aj = C2311e.m10129a(context, "drawable", "ifly_ad_jz_click_replay_selector");
        this.f8720U = (ProgressBar) findViewById(this.f8724ab);
        this.f8721V = (ImageView) findViewById(this.f8725ac);
        this.f8722W = (TextView) findViewById(this.f8726ad);
        this.f8723aa = (LinearLayout) findViewById(this.f8727ae);
    }

    /* renamed from: e */
    public void m10233e(int i) {
        ViewGroup.LayoutParams layoutParams = this.f8703m.getLayoutParams();
        layoutParams.height = i;
        layoutParams.width = i;
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    /* renamed from: g */
    public int mo10198g() {
        return C2311e.m10129a(getContext(), "layout", "ifly_ad_jz_layout_standard");
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    /* renamed from: m */
    public void mo10204m() {
        super.mo10204m();
        m10220N();
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    /* renamed from: n */
    public void mo10205n() {
        super.mo10205n();
        m10221O();
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        int id = view.getId();
        if (id == this.f8725ac) {
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
            if (this.f8697g == 6) {
                m10202k();
                if (this.f8688P.f8600k) {
                    return;
                }
                C2316j.m10151a(this.f8687O.f8584s);
                this.f8688P.f8600k = true;
                return;
            }
            return;
        }
        if (id == this.f8716z) {
            if (this.f8691S != 0) {
                if (this.f8689Q != null) {
                    this.f8689Q.onAdClick();
                    return;
                }
                return;
            } else if (!this.f8701k) {
                m10229W();
                m10219M();
                return;
            } else {
                if (this.f8689Q != null) {
                    this.f8689Q.onAdClick();
                    return;
                }
                return;
            }
        }
        if (id == this.f8726ad) {
            if (!this.f8695e.m10234a().toString().startsWith("file") && !this.f8695e.m10234a().toString().startsWith("/") && !C2317k.m10156b(getContext()) && this.f8692T) {
                mo10174L();
                return;
            }
            m10213v();
            m10214w();
            TextureViewSurfaceTextureListenerC2325c.m10248a(this.f8695e);
            mo10205n();
        }
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        super.onStartTrackingTouch(seekBar);
        m10230X();
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        super.onStopTrackingTouch(seekBar);
        if (this.f8697g == 3) {
            m10231Y();
        } else if (this.f8691S == 0) {
            m10229W();
        }
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer, android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (view.getId() == this.f8714x) {
            switch (motionEvent.getAction()) {
                case 0:
                    m10230X();
                    break;
                case 1:
                    m10229W();
                    break;
            }
        }
        return super.onTouch(view, motionEvent);
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    /* renamed from: p */
    public void mo10207p() {
        super.mo10207p();
        m10223Q();
        if (this.f8688P.f8590a) {
            return;
        }
        C2316j.m10151a(this.f8687O.f8574i);
        this.f8688P.f8590a = true;
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    /* renamed from: q */
    public void mo10208q() {
        super.mo10208q();
        m10224R();
        m10229W();
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    /* renamed from: r */
    public void mo10209r() {
        super.mo10209r();
        m10227U();
        if (this.f8689Q != null) {
            this.f8689Q.onAdPlayError();
        }
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    /* renamed from: s */
    public void mo10210s() {
        super.mo10210s();
        m10226T();
        m10230X();
        this.f8705o.setImageResource(this.f8675C);
        if (this.f8688P.f8594e) {
            return;
        }
        C2316j.m10151a(this.f8687O.f8578m);
        this.f8688P.f8594e = true;
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    /* renamed from: t */
    public void mo10211t() {
        super.mo10211t();
        m10230X();
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    /* renamed from: u */
    public void mo10212u() {
        super.mo10212u();
        m10230X();
    }
}
