package com.cyjh.elfin.p085ui.activity;

import android.content.Intent;
import android.hardware.Camera;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1154ag;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.p085ui.view.customview.TitleView;
import com.cyjh.elfin.sweepcode.C1310b;
import com.cyjh.elfin.sweepcode.C1311c;
import com.cyjh.elfin.sweepcode.C1312d;
import com.cyjh.elfin.sweepcode.CameraSurfaceView;
import com.hjol.R;
import net.sourceforge.zbar.Image;
import net.sourceforge.zbar.ImageScanner;

/* loaded from: classes.dex */
public class SweepCodeZbarActivity extends BaseActivity implements C1312d.a {

    /* renamed from: b */
    public static final String f5246b = "SWEEP_RESULT_BACK";

    /* renamed from: c */
    public static final int f5247c = 99;

    /* renamed from: d */
    public static final int f5248d = 100;

    /* renamed from: i */
    private static final int f5249i = 17;

    /* renamed from: j */
    private static final int f5250j = 18;

    /* renamed from: e */
    C1312d f5251e;

    /* renamed from: m */
    private ImageView f5257m;

    /* renamed from: k */
    private RelativeLayout f5255k = null;

    /* renamed from: l */
    private RelativeLayout f5256l = null;

    /* renamed from: n */
    private FrameLayout f5258n = null;

    /* renamed from: f */
    public boolean f5252f = false;

    /* renamed from: g */
    Camera.PreviewCallback f5253g = new Camera.PreviewCallback() { // from class: com.cyjh.elfin.ui.activity.SweepCodeZbarActivity.1
        @Override // android.hardware.Camera.PreviewCallback
        public final void onPreviewFrame(byte[] bArr, Camera camera) {
            SweepCodeZbarActivity sweepCodeZbarActivity = SweepCodeZbarActivity.this;
            RelativeLayout relativeLayout = SweepCodeZbarActivity.this.f5256l;
            if (sweepCodeZbarActivity.f5252f || sweepCodeZbarActivity.f5251e == null) {
                return;
            }
            sweepCodeZbarActivity.f5252f = true;
            C1312d c1312d = sweepCodeZbarActivity.f5251e;
            try {
                if (c1312d.f5031b != null && c1312d.f5031b.f5035a) {
                    throw new Exception();
                }
                Camera.Size previewSize = camera.getParameters().getPreviewSize();
                Image image = new Image(previewSize.width, previewSize.height, "Y800");
                int m6148a = C1311c.m6148a(AppContext.m5350a());
                C1311c.m6150b(AppContext.m5350a());
                float f = (float) ((m6148a * 1.0d) / previewSize.height);
                image.setData(bArr);
                image.setCrop((int) (relativeLayout.getTop() / f), (int) (relativeLayout.getLeft() / f), (int) (relativeLayout.getBottom() / f), (int) (relativeLayout.getRight() / f));
                c1312d.f5031b = new C1312d.b(image, sweepCodeZbarActivity);
                c1312d.f5031b.start();
            } catch (Exception unused) {
                if (sweepCodeZbarActivity != null) {
                    sweepCodeZbarActivity.mo6170a();
                }
            }
        }
    };

    /* renamed from: o */
    private final Handler f5259o = new Handler() { // from class: com.cyjh.elfin.ui.activity.SweepCodeZbarActivity.2
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what != 17) {
                return;
            }
            try {
                SweepCodeZbarActivity.m6364a(SweepCodeZbarActivity.this, (String) message.obj);
            } catch (Exception e) {
                e.printStackTrace();
                SweepCodeZbarActivity.this.f5252f = false;
            }
        }
    };

    /* renamed from: h */
    boolean f5254h = true;

    /* renamed from: com.cyjh.elfin.ui.activity.SweepCodeZbarActivity$3 */
    /* loaded from: classes.dex */
    final class ViewOnClickListenerC13713 implements View.OnClickListener {
        ViewOnClickListenerC13713() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SweepCodeZbarActivity sweepCodeZbarActivity = SweepCodeZbarActivity.this;
            if (!sweepCodeZbarActivity.f5254h) {
                sweepCodeZbarActivity.f5254h = true;
                C1310b m6134a = C1310b.m6134a();
                if (m6134a.f5021a != null) {
                    m6134a.f5022b = m6134a.f5021a.getParameters();
                    m6134a.f5022b.setFlashMode("off");
                    m6134a.f5021a.setParameters(m6134a.f5022b);
                    return;
                }
                return;
            }
            sweepCodeZbarActivity.f5254h = false;
            C1310b m6134a2 = C1310b.m6134a();
            Log.e("zzz", "openLight1");
            if (m6134a2.f5021a != null) {
                Log.e("zzz", "openLight2");
                m6134a2.f5022b = m6134a2.f5021a.getParameters();
                m6134a2.f5022b.setFlashMode("torch");
                m6134a2.f5021a.setParameters(m6134a2.f5022b);
            }
        }
    }

    /* renamed from: com.cyjh.elfin.ui.activity.SweepCodeZbarActivity$a */
    /* loaded from: classes.dex */
    private class C1372a implements TitleView.InterfaceC1421a {
        private C1372a() {
        }

        /* synthetic */ C1372a(SweepCodeZbarActivity sweepCodeZbarActivity, byte b2) {
            this();
        }

        @Override // com.cyjh.elfin.p085ui.view.customview.TitleView.InterfaceC1421a
        /* renamed from: a */
        public final void mo6229a() {
            SweepCodeZbarActivity.this.finish();
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m6364a(SweepCodeZbarActivity sweepCodeZbarActivity, String str) {
        System.out.println("result:" + str);
        if (TextUtils.isEmpty(str)) {
            C1154ag.m4343b(sweepCodeZbarActivity, (int) R.string.sweep_error_tips);
            return;
        }
        Intent intent = new Intent();
        intent.putExtra("SWEEP_RESULT_BACK", str);
        sweepCodeZbarActivity.setResult(-1, intent);
        sweepCodeZbarActivity.finish();
    }

    /* renamed from: a */
    private void m6365a(byte[] bArr, Camera camera, View view) {
        if (this.f5252f || this.f5251e == null) {
            return;
        }
        this.f5252f = true;
        C1312d c1312d = this.f5251e;
        try {
            if (c1312d.f5031b != null && c1312d.f5031b.f5035a) {
                throw new Exception();
            }
            Camera.Size previewSize = camera.getParameters().getPreviewSize();
            Image image = new Image(previewSize.width, previewSize.height, "Y800");
            int m6148a = C1311c.m6148a(AppContext.m5350a());
            C1311c.m6150b(AppContext.m5350a());
            float f = (float) ((m6148a * 1.0d) / previewSize.height);
            image.setData(bArr);
            image.setCrop((int) (view.getTop() / f), (int) (view.getLeft() / f), (int) (view.getBottom() / f), (int) (view.getRight() / f));
            c1312d.f5031b = new C1312d.b(image, this);
            c1312d.f5031b.start();
        } catch (Exception unused) {
            if (this != null) {
                mo6170a();
            }
        }
    }

    /* renamed from: b */
    private void m6366b() {
        this.f5251e = new C1312d();
        C1312d c1312d = this.f5251e;
        c1312d.f5030a = new ImageScanner();
        c1312d.f5030a.setConfig(0, 256, 3);
        c1312d.f5030a.setConfig(0, 257, 3);
    }

    /* renamed from: b */
    private void m6367b(String str) {
        System.out.println("result:" + str);
        if (TextUtils.isEmpty(str)) {
            C1154ag.m4343b(this, (int) R.string.sweep_error_tips);
            return;
        }
        Intent intent = new Intent();
        intent.putExtra("SWEEP_RESULT_BACK", str);
        setResult(-1, intent);
        finish();
    }

    /* renamed from: c */
    private void m6368c() {
        TitleView titleView = (TitleView) findViewById(R.id.id_title);
        titleView.setTitleText(getString(R.string.sweep_code_register_code));
        titleView.setVisibilityRightImage(4);
        titleView.setleftImage(R.drawable.ic_back);
        titleView.setOnLeftImageViewListener(new C1372a(this, (byte) 0));
    }

    /* renamed from: d */
    private void m6369d() {
        this.f5258n = (FrameLayout) findViewById(R.id.capture_preview);
        this.f5255k = (RelativeLayout) findViewById(R.id.capture_containter);
        this.f5256l = (RelativeLayout) findViewById(R.id.capture_crop_layout);
        int i = getResources().getDisplayMetrics().widthPixels;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f5256l.getLayoutParams();
        int i2 = (i * 2) / 3;
        layoutParams.width = i2;
        layoutParams.height = i2;
        this.f5256l.setLayoutParams(layoutParams);
        this.f5257m = (ImageView) findViewById(R.id.capture_scan_line);
        TranslateAnimation translateAnimation = new TranslateAnimation(0, 0.0f, 0, 0.0f, 2, 0.0f, 2, 0.9f);
        translateAnimation.setDuration(1500L);
        translateAnimation.setRepeatCount(-1);
        translateAnimation.setRepeatMode(2);
        translateAnimation.setInterpolator(new LinearInterpolator());
        this.f5257m.setAnimation(translateAnimation);
        ((LinearLayout) findViewById(R.id.linear_open_light)).setOnClickListener(new ViewOnClickListenerC13713());
    }

    /* renamed from: e */
    private void m6370e() {
        if (!this.f5254h) {
            this.f5254h = true;
            C1310b m6134a = C1310b.m6134a();
            if (m6134a.f5021a != null) {
                m6134a.f5022b = m6134a.f5021a.getParameters();
                m6134a.f5022b.setFlashMode("off");
                m6134a.f5021a.setParameters(m6134a.f5022b);
                return;
            }
            return;
        }
        this.f5254h = false;
        C1310b m6134a2 = C1310b.m6134a();
        Log.e("zzz", "openLight1");
        if (m6134a2.f5021a != null) {
            Log.e("zzz", "openLight2");
            m6134a2.f5022b = m6134a2.f5021a.getParameters();
            m6134a2.f5022b.setFlashMode("torch");
            m6134a2.f5021a.setParameters(m6134a2.f5022b);
        }
    }

    /* renamed from: f */
    private void m6371f() {
        this.f5251e = new C1312d();
        C1312d c1312d = this.f5251e;
        c1312d.f5030a = new ImageScanner();
        c1312d.f5030a.setConfig(0, 256, 3);
        c1312d.f5030a.setConfig(0, 257, 3);
    }

    /* renamed from: g */
    private void m6372g() {
        ActivityCompat.requestPermissions(this, new String[]{"android.permission.CAMERA"}, 99);
    }

    /* renamed from: h */
    private void m6373h() {
        this.f5258n.addView(new CameraSurfaceView(this));
        C1310b.m6134a().f5025e = this.f5253g;
    }

    @Override // com.cyjh.elfin.sweepcode.C1312d.a
    /* renamed from: a */
    public final void mo6170a() {
        this.f5252f = false;
    }

    @Override // com.cyjh.elfin.sweepcode.C1312d.a
    /* renamed from: a */
    public final void mo6171a(String str) {
        Message obtainMessage = this.f5259o.obtainMessage();
        obtainMessage.obj = str;
        obtainMessage.what = 17;
        this.f5259o.sendMessage(obtainMessage);
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_sweep_code_zbar);
        TitleView titleView = (TitleView) findViewById(R.id.id_title);
        titleView.setTitleText(getString(R.string.sweep_code_register_code));
        titleView.setVisibilityRightImage(4);
        titleView.setleftImage(R.drawable.ic_back);
        titleView.setOnLeftImageViewListener(new C1372a(this, (byte) 0));
        this.f5258n = (FrameLayout) findViewById(R.id.capture_preview);
        this.f5255k = (RelativeLayout) findViewById(R.id.capture_containter);
        this.f5256l = (RelativeLayout) findViewById(R.id.capture_crop_layout);
        int i = getResources().getDisplayMetrics().widthPixels;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f5256l.getLayoutParams();
        int i2 = (i * 2) / 3;
        layoutParams.width = i2;
        layoutParams.height = i2;
        this.f5256l.setLayoutParams(layoutParams);
        this.f5257m = (ImageView) findViewById(R.id.capture_scan_line);
        TranslateAnimation translateAnimation = new TranslateAnimation(0, 0.0f, 0, 0.0f, 2, 0.0f, 2, 0.9f);
        translateAnimation.setDuration(1500L);
        translateAnimation.setRepeatCount(-1);
        translateAnimation.setRepeatMode(2);
        translateAnimation.setInterpolator(new LinearInterpolator());
        this.f5257m.setAnimation(translateAnimation);
        ((LinearLayout) findViewById(R.id.linear_open_light)).setOnClickListener(new ViewOnClickListenerC13713());
        this.f5251e = new C1312d();
        C1312d c1312d = this.f5251e;
        c1312d.f5030a = new ImageScanner();
        c1312d.f5030a.setConfig(0, 256, 3);
        c1312d.f5030a.setConfig(0, 257, 3);
        if ((ActivityCompat.checkSelfPermission(this, "android.permission.CAMERA") != 0 ? (byte) 1 : (byte) 0) == 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.CAMERA"}, 99);
        } else {
            m6373h();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f5259o.removeCallbacksAndMessages(null);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        C1151ad.m4325c("TAG", "onRequestPermissionsResult --> permissions[0]=" + strArr[0] + ",grantResults[0]=" + iArr[0]);
        if (i != 99) {
            return;
        }
        if (iArr.length <= 0 || iArr[0] != 0) {
            finish();
        } else {
            m6373h();
        }
    }
}
