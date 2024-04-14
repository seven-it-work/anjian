package com.cyjh.elfin.p085ui.activity;

import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.graphics.Point;
import android.hardware.Camera;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.support.v4.app.ActivityCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.common.util.C1154ag;
import com.cyjh.elfin.p085ui.view.customview.TitleView;
import com.hjol.R;
import com.umeng.analytics.MobclickAgent;
import com.zbar.p185a.p186a.C2577b;
import com.zbar.p185a.p186a.C2578c;
import com.zbar.p185a.p186a.C2579d;
import com.zbar.p185a.p187b.C2585e;
import com.zbar.p185a.p187b.HandlerC2581a;
import java.io.IOException;

/* loaded from: classes.dex */
public class SweepCodeActivity extends BaseActivity implements SurfaceHolder.Callback {

    /* renamed from: b */
    public static final String f5224b = "SWEEP_RESULT_BACK";

    /* renamed from: o */
    private static final float f5225o = 0.5f;

    /* renamed from: s */
    private static final long f5226s = 200;

    /* renamed from: c */
    public ImageView f5227c;

    /* renamed from: d */
    public HandlerC2581a f5228d;

    /* renamed from: e */
    public C2585e f5229e;

    /* renamed from: g */
    public boolean f5231g;

    /* renamed from: h */
    public boolean f5232h;

    /* renamed from: i */
    public MediaPlayer f5233i;

    /* renamed from: r */
    private boolean f5241r;

    /* renamed from: p */
    private RelativeLayout f5239p = null;

    /* renamed from: q */
    private RelativeLayout f5240q = null;

    /* renamed from: f */
    public boolean f5230f = false;

    /* renamed from: j */
    public int f5234j = 0;

    /* renamed from: k */
    public int f5235k = 0;

    /* renamed from: l */
    public int f5236l = 0;

    /* renamed from: m */
    public int f5237m = 0;

    /* renamed from: n */
    boolean f5238n = true;

    /* renamed from: t */
    private final MediaPlayer.OnCompletionListener f5242t = new MediaPlayer.OnCompletionListener() { // from class: com.cyjh.elfin.ui.activity.SweepCodeActivity.2
        @Override // android.media.MediaPlayer.OnCompletionListener
        public final void onCompletion(MediaPlayer mediaPlayer) {
            mediaPlayer.seekTo(0);
        }
    };

    /* renamed from: com.cyjh.elfin.ui.activity.SweepCodeActivity$1 */
    /* loaded from: classes.dex */
    final class ViewOnClickListenerC13661 implements View.OnClickListener {
        ViewOnClickListenerC13661() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SweepCodeActivity sweepCodeActivity = SweepCodeActivity.this;
            if (!sweepCodeActivity.f5238n) {
                sweepCodeActivity.f5238n = true;
                C2578c m11635a = C2578c.m11635a();
                if (m11635a.f9993c != null) {
                    m11635a.f9999i = m11635a.f9993c.getParameters();
                    m11635a.f9999i.setFlashMode("off");
                    m11635a.f9993c.setParameters(m11635a.f9999i);
                    return;
                }
                return;
            }
            sweepCodeActivity.f5238n = false;
            C2578c m11635a2 = C2578c.m11635a();
            Log.e("zzz", "openLight1");
            if (m11635a2.f9993c != null) {
                Log.e("zzz", "openLight2");
                m11635a2.f9999i = m11635a2.f9993c.getParameters();
                m11635a2.f9999i.setFlashMode("torch");
                m11635a2.f9993c.setParameters(m11635a2.f9999i);
            }
        }
    }

    /* renamed from: com.cyjh.elfin.ui.activity.SweepCodeActivity$a */
    /* loaded from: classes.dex */
    private class C1368a implements TitleView.InterfaceC1421a {
        private C1368a() {
        }

        /* synthetic */ C1368a(SweepCodeActivity sweepCodeActivity, byte b2) {
            this();
        }

        @Override // com.cyjh.elfin.p085ui.view.customview.TitleView.InterfaceC1421a
        /* renamed from: a */
        public final void mo6229a() {
            SweepCodeActivity.this.finish();
        }
    }

    /* renamed from: a */
    private void m6343a(int i) {
        this.f5234j = i;
    }

    /* renamed from: a */
    private void m6344a(SurfaceHolder surfaceHolder) {
        try {
            C2578c m11635a = C2578c.m11635a();
            if (m11635a.f9993c == null) {
                m11635a.f9993c = Camera.open();
                if (m11635a.f9993c == null) {
                    throw new IOException();
                }
                m11635a.f9993c.setPreviewDisplay(surfaceHolder);
                if (!m11635a.f9994d) {
                    m11635a.f9994d = true;
                    C2577b c2577b = m11635a.f9992b;
                    Camera.Parameters parameters = m11635a.f9993c.getParameters();
                    c2577b.f9988e = parameters.getPreviewFormat();
                    c2577b.f9989f = parameters.get("preview-format");
                    Display defaultDisplay = ((WindowManager) c2577b.f9985b.getSystemService("window")).getDefaultDisplay();
                    c2577b.f9986c = new Point(defaultDisplay.getWidth(), defaultDisplay.getHeight());
                    Point point = new Point();
                    point.x = c2577b.f9986c.x;
                    point.y = c2577b.f9986c.y;
                    if (c2577b.f9986c.x < c2577b.f9986c.y) {
                        point.x = c2577b.f9986c.y;
                        point.y = c2577b.f9986c.x;
                    }
                    c2577b.f9987d = C2577b.m11626a(parameters, point);
                }
                C2577b c2577b2 = m11635a.f9992b;
                Camera camera = m11635a.f9993c;
                Camera.Parameters parameters2 = camera.getParameters();
                parameters2.setPreviewSize(c2577b2.f9987d.x, c2577b2.f9987d.y);
                C2577b.m11628a(parameters2);
                C2577b.m11631b(parameters2);
                camera.setDisplayOrientation(90);
                camera.setParameters(parameters2);
                C2579d.m11650a();
            }
            Point point2 = C2578c.m11635a().f9992b.f9987d;
            int i = point2.y;
            int i2 = point2.x;
            int left = (this.f5240q.getLeft() * i) / this.f5239p.getWidth();
            int top = (this.f5240q.getTop() * i2) / this.f5239p.getHeight();
            int width = (this.f5240q.getWidth() * i) / this.f5239p.getWidth();
            int height = (this.f5240q.getHeight() * i2) / this.f5239p.getHeight();
            this.f5234j = left;
            this.f5235k = top;
            this.f5236l = width;
            this.f5237m = height;
            this.f5230f = true;
            if (this.f5228d == null) {
                this.f5228d = new HandlerC2581a(this);
            }
        } catch (IOException | RuntimeException unused) {
        }
    }

    /* renamed from: a */
    private void m6345a(String str) {
        this.f5229e.m11660a();
        if (this.f5231g && this.f5233i != null) {
            this.f5233i.start();
        }
        if (this.f5232h) {
            ((Vibrator) getSystemService("vibrator")).vibrate(f5226s);
        }
        m6362b();
        this.f5227c.clearAnimation();
        if (str == null) {
            C1154ag.m4343b(this, (int) R.string.sweep_error_tips);
            return;
        }
        Intent intent = new Intent();
        intent.putExtra("SWEEP_RESULT_BACK", str);
        setResult(-1, intent);
        finish();
    }

    /* renamed from: b */
    private void m6346b(int i) {
        this.f5235k = i;
    }

    /* renamed from: b */
    private void m6347b(String str) {
        if (TextUtils.isEmpty(str)) {
            Toast.makeText(this, "Scan failed!", 0).show();
        }
    }

    /* renamed from: c */
    private void m6348c(int i) {
        this.f5236l = i;
    }

    /* renamed from: c */
    private boolean m6349c() {
        return this.f5230f;
    }

    /* renamed from: d */
    private void m6350d() {
        this.f5230f = true;
    }

    /* renamed from: d */
    private void m6351d(int i) {
        this.f5237m = i;
    }

    /* renamed from: e */
    private int m6352e() {
        return this.f5234j;
    }

    /* renamed from: f */
    private int m6353f() {
        return this.f5235k;
    }

    /* renamed from: g */
    private int m6354g() {
        return this.f5236l;
    }

    /* renamed from: h */
    private int m6355h() {
        return this.f5237m;
    }

    /* renamed from: i */
    private void m6356i() {
        TitleView titleView = (TitleView) findViewById(R.id.id_title);
        titleView.setTitleText(getString(R.string.sweep_code_register_code));
        titleView.setVisibilityRightImage(4);
        titleView.setleftImage(R.drawable.ic_back);
        titleView.setOnLeftImageViewListener(new C1368a(this, (byte) 0));
    }

    /* renamed from: j */
    private void m6357j() {
        C2578c.m11636a(this);
        this.f5241r = false;
        this.f5229e = new C2585e(this);
        this.f5239p = (RelativeLayout) findViewById(R.id.capture_containter);
        this.f5240q = (RelativeLayout) findViewById(R.id.capture_crop_layout);
        int i = getResources().getDisplayMetrics().widthPixels;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f5240q.getLayoutParams();
        int i2 = (i * 2) / 3;
        layoutParams.width = i2;
        layoutParams.height = i2;
        this.f5240q.setLayoutParams(layoutParams);
        this.f5227c = (ImageView) findViewById(R.id.capture_scan_line);
        TranslateAnimation translateAnimation = new TranslateAnimation(0, 0.0f, 0, 0.0f, 2, 0.0f, 2, 0.9f);
        translateAnimation.setDuration(1500L);
        translateAnimation.setRepeatCount(-1);
        translateAnimation.setRepeatMode(2);
        translateAnimation.setInterpolator(new LinearInterpolator());
        this.f5227c.setAnimation(translateAnimation);
        ((LinearLayout) findViewById(R.id.linear_open_light)).setOnClickListener(new ViewOnClickListenerC13661());
    }

    /* renamed from: k */
    private void m6358k() {
        if (!this.f5238n) {
            this.f5238n = true;
            C2578c m11635a = C2578c.m11635a();
            if (m11635a.f9993c != null) {
                m11635a.f9999i = m11635a.f9993c.getParameters();
                m11635a.f9999i.setFlashMode("off");
                m11635a.f9993c.setParameters(m11635a.f9999i);
                return;
            }
            return;
        }
        this.f5238n = false;
        C2578c m11635a2 = C2578c.m11635a();
        Log.e("zzz", "openLight1");
        if (m11635a2.f9993c != null) {
            Log.e("zzz", "openLight2");
            m11635a2.f9999i = m11635a2.f9993c.getParameters();
            m11635a2.f9999i.setFlashMode("torch");
            m11635a2.f9993c.setParameters(m11635a2.f9999i);
        }
    }

    /* renamed from: l */
    private void m6359l() {
        if (this.f5231g && this.f5233i != null) {
            this.f5233i.start();
        }
        if (this.f5232h) {
            ((Vibrator) getSystemService("vibrator")).vibrate(f5226s);
        }
    }

    /* renamed from: m */
    private void m6360m() {
        if (this.f5231g && this.f5233i == null) {
            setVolumeControlStream(3);
            this.f5233i = new MediaPlayer();
            this.f5233i.setAudioStreamType(3);
            this.f5233i.setOnCompletionListener(this.f5242t);
            AssetFileDescriptor openRawResourceFd = getResources().openRawResourceFd(R.raw.beep);
            try {
                this.f5233i.setDataSource(openRawResourceFd.getFileDescriptor(), openRawResourceFd.getStartOffset(), openRawResourceFd.getLength());
                openRawResourceFd.close();
                this.f5233i.setVolume(f5225o, f5225o);
                this.f5233i.prepare();
            } catch (IOException unused) {
                this.f5233i = null;
            }
        }
    }

    /* renamed from: n */
    private Handler m6361n() {
        return this.f5228d;
    }

    /* renamed from: b */
    public final void m6362b() {
        if (this.f5228d != null) {
            HandlerC2581a handlerC2581a = this.f5228d;
            handlerC2581a.f10010c = HandlerC2581a.a.DONE$65384932;
            C2578c m11635a = C2578c.m11635a();
            if (m11635a.f9993c != null && m11635a.f9995e) {
                if (!m11635a.f9996f) {
                    m11635a.f9993c.setPreviewCallback(null);
                }
                m11635a.f9993c.stopPreview();
                m11635a.f9997g.m11654a(null, 0);
                m11635a.f9998h.m11623a(null, 0);
                m11635a.f9995e = false;
            }
            handlerC2581a.removeMessages(R.id.decode_succeeded);
            handlerC2581a.removeMessages(R.id.decode_failed);
            handlerC2581a.removeMessages(R.id.decode);
            handlerC2581a.removeMessages(R.id.auto_focus);
            this.f5228d = null;
        }
        C2578c m11635a2 = C2578c.m11635a();
        if (m11635a2.f9993c != null) {
            C2579d.m11652b();
            m11635a2.f9993c.release();
            m11635a2.f9993c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_sweep_code);
        byte b2 = 0;
        if (ActivityCompat.checkSelfPermission(this, "android.permission.CAMERA") != 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.CAMERA"}, 0);
            return;
        }
        TitleView titleView = (TitleView) findViewById(R.id.id_title);
        titleView.setTitleText(getString(R.string.sweep_code_register_code));
        titleView.setVisibilityRightImage(4);
        titleView.setleftImage(R.drawable.ic_back);
        titleView.setOnLeftImageViewListener(new C1368a(this, b2));
        C2578c.m11636a(this);
        this.f5241r = false;
        this.f5229e = new C2585e(this);
        this.f5239p = (RelativeLayout) findViewById(R.id.capture_containter);
        this.f5240q = (RelativeLayout) findViewById(R.id.capture_crop_layout);
        int i = getResources().getDisplayMetrics().widthPixels;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f5240q.getLayoutParams();
        int i2 = (i * 2) / 3;
        layoutParams.width = i2;
        layoutParams.height = i2;
        this.f5240q.setLayoutParams(layoutParams);
        this.f5227c = (ImageView) findViewById(R.id.capture_scan_line);
        TranslateAnimation translateAnimation = new TranslateAnimation(0, 0.0f, 0, 0.0f, 2, 0.0f, 2, 0.9f);
        translateAnimation.setDuration(1500L);
        translateAnimation.setRepeatCount(-1);
        translateAnimation.setRepeatMode(2);
        translateAnimation.setInterpolator(new LinearInterpolator());
        this.f5227c.setAnimation(translateAnimation);
        ((LinearLayout) findViewById(R.id.linear_open_light)).setOnClickListener(new ViewOnClickListenerC13661());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        C2585e c2585e = this.f5229e;
        c2585e.m11661b();
        c2585e.f10017a.shutdown();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        MobclickAgent.onPause(this);
        m6362b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        MobclickAgent.onResume(this);
        SurfaceHolder holder = ((SurfaceView) findViewById(R.id.capture_preview)).getHolder();
        if (this.f5241r) {
            m6344a(holder);
        } else {
            holder.addCallback(this);
            holder.setType(3);
        }
        this.f5231g = true;
        if (((AudioManager) getSystemService("audio")).getRingerMode() != 2) {
            this.f5231g = false;
        }
        if (this.f5231g && this.f5233i == null) {
            setVolumeControlStream(3);
            this.f5233i = new MediaPlayer();
            this.f5233i.setAudioStreamType(3);
            this.f5233i.setOnCompletionListener(this.f5242t);
            AssetFileDescriptor openRawResourceFd = getResources().openRawResourceFd(R.raw.beep);
            try {
                this.f5233i.setDataSource(openRawResourceFd.getFileDescriptor(), openRawResourceFd.getStartOffset(), openRawResourceFd.getLength());
                openRawResourceFd.close();
                this.f5233i.setVolume(f5225o, f5225o);
                this.f5233i.prepare();
            } catch (IOException unused) {
                this.f5233i = null;
            }
        }
        this.f5232h = true;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        if (this.f5241r) {
            return;
        }
        this.f5241r = true;
        m6344a(surfaceHolder);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f5241r = false;
    }
}
