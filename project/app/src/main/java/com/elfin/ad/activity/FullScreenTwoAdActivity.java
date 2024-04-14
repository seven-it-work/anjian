package com.elfin.ad.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.load.p042b.AbstractC0913i;
import com.bumptech.glide.request.C1066g;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.common.p068c.AbstractCountDownTimerC1136a;
import com.cyjh.common.util.C1147a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1152ae;
import com.cyjh.common.util.C1163f;
import com.cyjh.common.util.C1174q;
import com.cyjh.http.p096c.p099c.C1546c;
import com.elfin.ad.C1716R;
import com.elfin.ad.p118b.C1727b;
import com.elfin.ad.p120d.AbstractC1732a;
import com.elfin.ad.p121e.C1733a;
import com.iflytek.voiceads.IFLYNativeAd;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.config.AdKeys;
import com.iflytek.voiceads.conn.NativeDataRef;
import com.umeng.analytics.MobclickAgent;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class FullScreenTwoAdActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: b */
    public static final int f6730b = 8;

    /* renamed from: c */
    public static final int f6731c = 200;

    /* renamed from: d */
    public static final int f6732d = 1000;

    /* renamed from: e */
    public static final int f6733e = 3;

    /* renamed from: f */
    public static final int f6734f = 1001;

    /* renamed from: g */
    public static final int f6735g = 1002;

    /* renamed from: h */
    public static final int f6736h = 1003;

    /* renamed from: i */
    private static final String f6737i = "FullScreenTwoAdActivity";

    /* renamed from: q */
    private static final int f6738q = 5;

    /* renamed from: u */
    private static final int f6739u = 100;

    /* renamed from: v */
    private static final int f6740v = 101;

    /* renamed from: w */
    private static final int f6741w = 102;

    /* renamed from: x */
    private static final int f6742x = 103;

    /* renamed from: j */
    private ImageView f6743j;

    /* renamed from: k */
    private TextView f6744k;

    /* renamed from: l */
    private TextView f6745l;

    /* renamed from: m */
    private NativeDataRef f6746m;

    /* renamed from: p */
    private CountDownTimerC1724b f6749p;

    /* renamed from: n */
    private int f6747n = 0;

    /* renamed from: o */
    private int f6748o = 0;

    /* renamed from: r */
    private boolean f6750r = false;

    /* renamed from: s */
    private HandlerC1723a f6751s = new HandlerC1723a(this, 0);

    /* renamed from: t */
    private boolean f6752t = false;

    /* renamed from: y */
    private int f6753y = 100;

    /* renamed from: z */
    private AbstractC1732a f6754z = new AbstractC1732a() { // from class: com.elfin.ad.activity.FullScreenTwoAdActivity.4
        @Override // com.iflytek.voiceads.listener.IFLYNativeListener
        public final void onAdFailed(AdError adError) {
            C1151ad.m4325c(FullScreenTwoAdActivity.f6737i, "IFLYADListener --> adError message=" + adError.getMessage());
            C1152ae.m4329a(FullScreenTwoAdActivity.this, "讯飞广告加载失败 message=" + adError.getMessage());
            FullScreenTwoAdActivity.this.f6751s.obtainMessage(1002).sendToTarget();
        }

        @Override // com.iflytek.voiceads.listener.IFLYNativeListener
        public final void onAdLoaded(NativeDataRef nativeDataRef) {
            C1152ae.m4329a(FullScreenTwoAdActivity.this, "讯飞广告加载成功");
            FullScreenTwoAdActivity.this.f6746m = nativeDataRef;
            FullScreenTwoAdActivity.this.m7829a(FullScreenTwoAdActivity.this.f6746m.getImgUrl());
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.elfin.ad.activity.FullScreenTwoAdActivity$2 */
    /* loaded from: classes.dex */
    public final class RunnableC17202 implements Runnable {
        RunnableC17202() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            FullScreenTwoAdActivity.this.m7848n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.elfin.ad.activity.FullScreenTwoAdActivity$3 */
    /* loaded from: classes.dex */
    public final class C17213 implements C1546c.a {
        C17213() {
        }

        @Override // com.cyjh.http.p096c.p099c.C1546c.a
        /* renamed from: a */
        public final void mo6086a() {
            C1546c.m6918a().m6927d();
            C1733a.m7908a().m7910a(FullScreenTwoAdActivity.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.elfin.ad.activity.FullScreenTwoAdActivity$a */
    /* loaded from: classes.dex */
    public static class HandlerC1723a extends Handler {

        /* renamed from: a */
        private WeakReference<FullScreenTwoAdActivity> f6759a;

        private HandlerC1723a(FullScreenTwoAdActivity fullScreenTwoAdActivity) {
            this.f6759a = new WeakReference<>(fullScreenTwoAdActivity);
        }

        /* synthetic */ HandlerC1723a(FullScreenTwoAdActivity fullScreenTwoAdActivity, byte b2) {
            this(fullScreenTwoAdActivity);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            FullScreenTwoAdActivity fullScreenTwoAdActivity = this.f6759a.get();
            if (fullScreenTwoAdActivity != null) {
                switch (message.what) {
                    case 1001:
                        C1546c.m6918a().m6922a(fullScreenTwoAdActivity, 2, 2, 2L);
                        return;
                    case 1002:
                        FullScreenTwoAdActivity.m7831b(fullScreenTwoAdActivity);
                        return;
                    case 1003:
                        C1546c.m6918a().m6922a(fullScreenTwoAdActivity, 1, 2, C1733a.m7908a().f6808b.f5816Id);
                        return;
                    default:
                        return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.elfin.ad.activity.FullScreenTwoAdActivity$b */
    /* loaded from: classes.dex */
    public class CountDownTimerC1724b extends AbstractCountDownTimerC1136a {
        private CountDownTimerC1724b(int i) {
            super(i);
        }

        /* synthetic */ CountDownTimerC1724b(FullScreenTwoAdActivity fullScreenTwoAdActivity, int i, byte b2) {
            this(i);
        }

        @Override // com.cyjh.common.p068c.AbstractCountDownTimerC1137b
        /* renamed from: a */
        protected final void mo4222a(int i) {
            FullScreenTwoAdActivity.m7832c(FullScreenTwoAdActivity.this);
            if (FullScreenTwoAdActivity.this.f6750r) {
                FullScreenTwoAdActivity.this.f6745l.setText(FullScreenTwoAdActivity.this.getString(C1716R.string.countdown_time, new Object[]{Integer.valueOf(i)}));
                FullScreenTwoAdActivity.this.f6745l.setVisibility(0);
            }
        }

        @Override // android.os.CountDownTimer
        public final void onFinish() {
            FullScreenTwoAdActivity.this.m7848n();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7829a(String str) {
        if (str.endsWith(".gif")) {
            C1066g m4505a = C1174q.m4505a();
            m4505a.mo3360b(AbstractC0913i.f2752c);
            C1174q.m4511a(this, str, this.f6743j, m4505a);
        } else {
            C1066g m4505a2 = C1174q.m4505a();
            m4505a2.mo3360b(AbstractC0913i.f2751b);
            C1174q.m4518b(this, str, this.f6743j, m4505a2);
        }
        byte b2 = 0;
        if (this.f6746m != null) {
            this.f6746m.onExposure(this.f6743j);
            if (!TextUtils.isEmpty(this.f6746m.getAdSourceMark())) {
                this.f6744k.setText(String.format(getString(C1716R.string.ad_source_mark), this.f6746m.getAdSourceMark()));
                this.f6744k.setVisibility(0);
            }
            this.f6747n = this.f6746m.getActionType();
        }
        this.f6750r = true;
        m7847m();
        if (this.f6749p == null) {
            this.f6749p = new CountDownTimerC1724b(this, 5, b2);
        }
        this.f6749p.start();
        this.f6743j.setOnClickListener(this);
        if (this.f6753y == 100 && this.f6746m != null) {
            this.f6751s.obtainMessage(1001).sendToTarget();
        } else if (this.f6753y == 102) {
            this.f6751s.obtainMessage(1003).sendToTarget();
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m7831b(FullScreenTwoAdActivity fullScreenTwoAdActivity) {
        if (!C1733a.m7908a().m7911a(2)) {
            fullScreenTwoAdActivity.m7848n();
            return;
        }
        fullScreenTwoAdActivity.f6749p = new CountDownTimerC1724b(fullScreenTwoAdActivity, 8, (byte) 0);
        fullScreenTwoAdActivity.f6749p.start();
        String str = C1733a.m7908a().f6808b.ImageUrl;
        if (TextUtils.isEmpty(str)) {
            fullScreenTwoAdActivity.m7848n();
            return;
        }
        C1152ae.m4329a(fullScreenTwoAdActivity, "后台广告加载成功");
        fullScreenTwoAdActivity.f6753y = 102;
        fullScreenTwoAdActivity.m7829a(str);
    }

    /* renamed from: c */
    static /* synthetic */ int m7832c(FullScreenTwoAdActivity fullScreenTwoAdActivity) {
        int i = fullScreenTwoAdActivity.f6748o;
        fullScreenTwoAdActivity.f6748o = i + 1;
        return i;
    }

    /* renamed from: c */
    private void m7833c() {
        this.f6745l.setOnClickListener(this);
    }

    /* renamed from: d */
    private void m7834d() {
        this.f6743j = (ImageView) findViewById(C1716R.id.iv_splash_ad_fullscreen);
        this.f6744k = (TextView) findViewById(C1716R.id.tv_splash_ad_mark);
        this.f6745l = (TextView) findViewById(C1716R.id.tv_close_ad);
    }

    /* renamed from: e */
    private void m7837e() {
        boolean m4407a = C1163f.m4407a(this);
        String m4405a = C1163f.m4405a();
        boolean z = true;
        boolean z2 = m4405a.contains("intel") || m4405a.contains("amd");
        if (m4407a && !z2) {
            z = false;
        }
        if (z) {
            this.f6751s.obtainMessage(1002).sendToTarget();
            return;
        }
        C1727b m7909a = C1733a.m7908a().m7909a(2, AbstractC1732a.f6803g);
        C1151ad.m4325c(f6737i, "loadIFLYAd --> ilfyAd.isDisplay=" + m7909a.f6773a);
        if (!m7909a.f6773a) {
            this.f6751s.obtainMessage(1002).sendToTarget();
            return;
        }
        IFLYNativeAd iFLYNativeAd = new IFLYNativeAd(this, m7909a.f6774b, this.f6754z);
        iFLYNativeAd.setParameter(AdKeys.APP_VER, C1147a.m4262c(this));
        iFLYNativeAd.loadAd();
    }

    /* renamed from: f */
    private void m7839f() {
        boolean m4407a = C1163f.m4407a(this);
        String m4405a = C1163f.m4405a();
        boolean z = true;
        boolean z2 = m4405a.contains("intel") || m4405a.contains("amd");
        if (m4407a && !z2) {
            z = false;
        }
        if (z) {
            this.f6751s.obtainMessage(1002).sendToTarget();
            return;
        }
        C1727b m7909a = C1733a.m7908a().m7909a(2, AbstractC1732a.f6803g);
        C1151ad.m4325c(f6737i, "loadIFLYAd --> ilfyAd.isDisplay=" + m7909a.f6773a);
        if (!m7909a.f6773a) {
            this.f6751s.obtainMessage(1002).sendToTarget();
            return;
        }
        IFLYNativeAd iFLYNativeAd = new IFLYNativeAd(this, m7909a.f6774b, this.f6754z);
        iFLYNativeAd.setParameter(AdKeys.APP_VER, C1147a.m4262c(this));
        iFLYNativeAd.loadAd();
    }

    /* renamed from: g */
    private void m7841g() {
        C1727b m7909a = C1733a.m7908a().m7909a(2, AbstractC1732a.f6803g);
        C1151ad.m4325c(f6737i, "loadIFLYAd --> ilfyAd.isDisplay=" + m7909a.f6773a);
        if (!m7909a.f6773a) {
            this.f6751s.obtainMessage(1002).sendToTarget();
            return;
        }
        IFLYNativeAd iFLYNativeAd = new IFLYNativeAd(this, m7909a.f6774b, this.f6754z);
        iFLYNativeAd.setParameter(AdKeys.APP_VER, C1147a.m4262c(this));
        iFLYNativeAd.loadAd();
    }

    /* renamed from: h */
    private void m7842h() {
        this.f6753y = 102;
    }

    /* renamed from: i */
    private void m7843i() {
        m7847m();
        if (this.f6746m != null) {
            this.f6752t = this.f6746m.onClick(this.f6743j);
            if (this.f6747n == 3) {
                this.f6751s.postDelayed(new RunnableC17202(), 1000L);
                return;
            }
            return;
        }
        this.f6752t = true;
        C1546c m6918a = C1546c.m6918a();
        m6918a.f5832b = new C17213();
        m6918a.m6922a(this, 1, 3, C1733a.m7908a().f6808b.f5816Id);
    }

    /* renamed from: j */
    private void m7844j() {
        if (!C1733a.m7908a().m7911a(2)) {
            m7848n();
            return;
        }
        this.f6749p = new CountDownTimerC1724b(this, 8, (byte) 0);
        this.f6749p.start();
        String str = C1733a.m7908a().f6808b.ImageUrl;
        if (TextUtils.isEmpty(str)) {
            m7848n();
            return;
        }
        C1152ae.m4329a(this, "后台广告加载成功");
        this.f6753y = 102;
        m7829a(str);
    }

    /* renamed from: k */
    private void m7845k() {
        byte b2 = 0;
        if (this.f6746m != null) {
            this.f6746m.onExposure(this.f6743j);
            if (!TextUtils.isEmpty(this.f6746m.getAdSourceMark())) {
                this.f6744k.setText(String.format(getString(C1716R.string.ad_source_mark), this.f6746m.getAdSourceMark()));
                this.f6744k.setVisibility(0);
            }
            this.f6747n = this.f6746m.getActionType();
        }
        this.f6750r = true;
        m7847m();
        if (this.f6749p == null) {
            this.f6749p = new CountDownTimerC1724b(this, 5, b2);
        }
        this.f6749p.start();
        this.f6743j.setOnClickListener(this);
        if (this.f6753y == 100 && this.f6746m != null) {
            this.f6751s.obtainMessage(1001).sendToTarget();
        } else if (this.f6753y == 102) {
            this.f6751s.obtainMessage(1003).sendToTarget();
        }
    }

    /* renamed from: l */
    private void m7846l() {
        if (this.f6749p == null) {
            this.f6749p = new CountDownTimerC1724b(this, 5, (byte) 0);
        }
        this.f6749p.start();
    }

    /* renamed from: m */
    private void m7847m() {
        if (this.f6749p != null) {
            this.f6749p.cancel();
            this.f6748o = 0;
            this.f6749p = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public void m7848n() {
        try {
            Intent intent = new Intent(this, Class.forName("com.cyjh.elfin.ui.activity.ElfinFreeActivity"));
            intent.addFlags(268435456);
            startActivity(intent);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        finish();
    }

    /* renamed from: o */
    private void m7849o() {
        this.f6752t = this.f6746m.onClick(this.f6743j);
        if (this.f6747n == 3) {
            this.f6751s.postDelayed(new RunnableC17202(), 1000L);
        }
    }

    /* renamed from: p */
    private void m7850p() {
        this.f6752t = true;
        C1546c m6918a = C1546c.m6918a();
        m6918a.f5832b = new C17213();
        m6918a.m6922a(this, 1, 3, C1733a.m7908a().f6808b.f5816Id);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != C1716R.id.tv_close_ad) {
            if (id == C1716R.id.iv_splash_ad_fullscreen) {
                m7843i();
            }
        } else if (this.f6748o < 3) {
            m7843i();
        } else {
            m7848n();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        boolean z = true;
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        setContentView(C1716R.layout.activity_fullscreen_ad_two);
        this.f6743j = (ImageView) findViewById(C1716R.id.iv_splash_ad_fullscreen);
        this.f6744k = (TextView) findViewById(C1716R.id.tv_splash_ad_mark);
        this.f6745l = (TextView) findViewById(C1716R.id.tv_close_ad);
        boolean m4407a = C1163f.m4407a(this);
        String m4405a = C1163f.m4405a();
        boolean z2 = m4405a.contains("intel") || m4405a.contains("amd");
        if (m4407a && !z2) {
            z = false;
        }
        if (!z) {
            C1727b m7909a = C1733a.m7908a().m7909a(2, AbstractC1732a.f6803g);
            C1151ad.m4325c(f6737i, "loadIFLYAd --> ilfyAd.isDisplay=" + m7909a.f6773a);
            if (m7909a.f6773a) {
                IFLYNativeAd iFLYNativeAd = new IFLYNativeAd(this, m7909a.f6774b, this.f6754z);
                iFLYNativeAd.setParameter(AdKeys.APP_VER, C1147a.m4262c(this));
                iFLYNativeAd.loadAd();
                this.f6745l.setOnClickListener(this);
            }
        }
        this.f6751s.obtainMessage(1002).sendToTarget();
        this.f6745l.setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m7847m();
        this.f6751s.removeCallbacksAndMessages(null);
        this.f6750r = false;
        this.f6752t = false;
        this.f6746m = null;
        C1546c.m6918a().m6925b();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return i == 4;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        MobclickAgent.onPause(this);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        MobclickAgent.onResume(this);
        if (this.f6752t) {
            this.f6751s.postDelayed(new Runnable() { // from class: com.elfin.ad.activity.FullScreenTwoAdActivity.1
                @Override // java.lang.Runnable
                public final void run() {
                    FullScreenTwoAdActivity.this.m7848n();
                }
            }, 200L);
        }
    }
}
