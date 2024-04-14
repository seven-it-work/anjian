package com.iflytek.voiceads.view;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.URLUtil;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.config.AdKeys;
import com.iflytek.voiceads.config.ErrorCode;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.download.C2261d;
import com.iflytek.voiceads.listener.IFLYAdListener;
import com.iflytek.voiceads.listener.InternalListener;
import com.iflytek.voiceads.p173d.C2239a;
import com.iflytek.voiceads.p173d.C2240b;
import com.iflytek.voiceads.p182f.C2286a;
import com.iflytek.voiceads.p182f.C2287b;
import com.iflytek.voiceads.p182f.InterfaceC2288c;
import com.iflytek.voiceads.p182f.InterfaceC2289d;
import com.iflytek.voiceads.param.C2290a;
import com.iflytek.voiceads.request.C2298a;
import com.iflytek.voiceads.request.C2302e;
import com.iflytek.voiceads.request.C2303f;
import com.iflytek.voiceads.utils.C2307a;
import com.iflytek.voiceads.utils.C2313g;
import com.iflytek.voiceads.utils.C2316j;
import com.iflytek.voiceads.view.HandlerC2345b;
import org.json.JSONArray;

/* loaded from: assets/AdDex.4.0.1.dex */
public abstract class AdView extends WebView implements HandlerC2345b.a {

    /* renamed from: a */
    protected Context f8776a;

    /* renamed from: b */
    protected RelativeLayout f8777b;

    /* renamed from: c */
    protected C2287b f8778c;

    /* renamed from: d */
    protected C2286a f8779d;

    /* renamed from: e */
    protected C2290a f8780e;

    /* renamed from: f */
    protected C2240b f8781f;

    /* renamed from: g */
    protected C2239a f8782g;

    /* renamed from: h */
    protected C2307a.a f8783h;

    /* renamed from: i */
    protected C2307a.b f8784i;

    /* renamed from: j */
    protected IFLYAdListener f8785j;

    /* renamed from: k */
    protected InternalListener f8786k;

    /* renamed from: l */
    protected HandlerC2345b f8787l;

    /* renamed from: m */
    protected HandlerThread f8788m;

    /* renamed from: n */
    protected HandlerC2344a f8789n;

    /* renamed from: o */
    protected HandlerC2343a f8790o;

    /* renamed from: p */
    protected int f8791p;

    /* renamed from: q */
    C2298a.a f8792q;

    /* renamed from: r */
    InterfaceC2289d f8793r;

    /* renamed from: s */
    InterfaceC2288c f8794s;

    /* renamed from: t */
    private int f8795t;

    /* renamed from: u */
    private boolean f8796u;

    /* renamed from: v */
    private final int f8797v;

    /* renamed from: w */
    private final int f8798w;

    /* renamed from: x */
    private final int f8799x;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.iflytek.voiceads.view.AdView$a */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public class HandlerC2343a extends Handler {
        private HandlerC2343a(Looper looper) {
            super(looper);
        }

        /* synthetic */ HandlerC2343a(AdView adView, Looper looper, C2346c c2346c) {
            this(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 1:
                    C2313g.m10136a(SDKConstants.TAG, "procMsgShow");
                    AdView.this.m10282a(0);
                    AdView.this.m10293d();
                    AdView.this.mo10300j();
                    ViewGroup viewGroup = (ViewGroup) AdView.this.f8777b.getParent();
                    if (viewGroup == null || viewGroup.getVisibility() != 0) {
                        AdView.this.f8785j.onAdFailed(new AdError(ErrorCode.ERROR_INVALID_REQUEST));
                        C2313g.m10138b(SDKConstants.TAG, "Ad is invisible, invalid exposure!");
                        return;
                    } else {
                        if (AdView.this.f8780e.m10033c(AdKeys.BANNER_RECYCLE)) {
                            AdView.this.mo10298h();
                        }
                        AdView.this.f8785j.onAdExposure();
                        return;
                    }
                case 2:
                    C2313g.m10136a(SDKConstants.TAG, "procMsgTimeout:" + AdView.this.getProgress() + "% , " + AdView.this.getContentHeight());
                    if (AdView.this.getContentHeight() > 0 || AdView.this.m10278q() == C2307a.b.success) {
                        return;
                    }
                    if (AdView.this.f8795t >= 2) {
                        AdView.this.f8795t = 0;
                        AdView.this.f8787l.m10311a(5, ErrorCode.ERROR_PAGE_LOAD_TIMEOUT);
                        return;
                    } else {
                        AdView.m10273c(AdView.this);
                        AdView.this.m10277p();
                        C2313g.m10136a(SDKConstants.TAG, "Loading ad timeout, reload again!");
                        return;
                    }
                case 3:
                    try {
                        String optString = AdView.this.f8782g.f8394e.optString("adm");
                        if (TextUtils.isEmpty(optString)) {
                            AdView.this.f8787l.m10311a(5, ErrorCode.ERROR_INVALID_REQUEST);
                        } else {
                            try {
                                AdView.this.loadDataWithBaseURL(null, optString, "text/html", "utf-8", null);
                                AdView.this.mo10301k();
                            } catch (Exception e) {
                                AdView.this.f8787l.m10311a(5, ErrorCode.ERROR_PAGE_LOAD_ERROR);
                                AdView.this.f8786k.onAdDestroy();
                            }
                        }
                        return;
                    } catch (Exception e2) {
                        AdView.this.f8787l.m10311a(5, ErrorCode.ERROR_PAGE_LOAD_ERROR);
                        C2313g.m10138b(SDKConstants.TAG, "html load:" + e2.getMessage());
                        return;
                    }
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AdView(Context context) {
        super(context);
        this.f8784i = C2307a.b.init;
        this.f8791p = 0;
        this.f8795t = 0;
        this.f8792q = new C2346c(this);
        this.f8796u = false;
        this.f8793r = new C2347d(this);
        this.f8794s = new C2348e(this);
        this.f8797v = 1;
        this.f8798w = 2;
        this.f8799x = 3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AdView(Context context, RelativeLayout relativeLayout, String str, C2307a.a aVar, InternalListener internalListener) {
        super(context.getApplicationContext());
        this.f8784i = C2307a.b.init;
        this.f8791p = 0;
        this.f8795t = 0;
        this.f8792q = new C2346c(this);
        this.f8796u = false;
        this.f8793r = new C2347d(this);
        this.f8794s = new C2348e(this);
        this.f8797v = 1;
        this.f8798w = 2;
        this.f8799x = 3;
        this.f8776a = context.getApplicationContext();
        this.f8777b = relativeLayout;
        this.f8783h = aVar;
        this.f8786k = internalListener;
        this.f8790o = new HandlerC2343a(this, context.getMainLooper(), null);
        this.f8781f = new C2240b(this.f8776a.getApplicationContext());
        this.f8780e = new C2290a(str);
        m10275n();
    }

    /* renamed from: a */
    private synchronized void m10269a(C2307a.b bVar) {
        this.f8784i = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m10272b(String str) throws AdError {
        int optInt;
        int optInt2;
        this.f8781f.m9854a(str);
        this.f8782g = this.f8781f.f8421f;
        if (70200 != this.f8781f.f8416a) {
            this.f8787l.m10311a(5, this.f8781f.f8416a);
            return;
        }
        try {
            optInt = this.f8782g.f8394e.optInt("width");
            optInt2 = this.f8782g.f8394e.optInt("height");
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "html parse2:" + e.getMessage());
        }
        if (optInt <= 0 || optInt2 <= 0) {
            this.f8787l.m10311a(5, ErrorCode.ERROR_PAGE_LOAD_ERROR);
            return;
        }
        this.f8780e.m10027a(optInt);
        this.f8780e.m10031b(optInt2);
        this.f8787l.m10311a(2, this.f8781f.f8416a);
    }

    /* renamed from: c */
    static /* synthetic */ int m10273c(AdView adView) {
        int i = adView.f8795t;
        adView.f8795t = i + 1;
        return i;
    }

    /* renamed from: n */
    private void m10275n() {
        setScrollContainer(false);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        getSettings().setJavaScriptEnabled(true);
        this.f8787l = new HandlerC2345b(m10276o().getLooper(), this);
        this.f8789n = new HandlerC2344a();
        this.f8789n.m10308a(this.f8786k);
        setBackgroundColor(0);
        getSettings().setCacheMode(2);
        if (Build.VERSION.SDK_INT >= 16) {
            getSettings().setAllowUniversalAccessFromFileURLs(true);
        }
        getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        m10282a(8);
        this.f8778c = new C2287b(this.f8793r);
        setWebViewClient(this.f8778c);
        this.f8779d = new C2286a(this.f8794s);
        setWebChromeClient(this.f8779d);
    }

    /* renamed from: o */
    private HandlerThread m10276o() {
        this.f8788m = new HandlerThread("" + this.f8783h);
        this.f8788m.start();
        return this.f8788m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public synchronized void m10277p() {
        try {
            m10269a(C2307a.b.start);
            Message message = new Message();
            message.obj = this.f8781f;
            message.what = 3;
            this.f8790o.sendMessage(message);
        } catch (Exception e) {
            this.f8787l.m10311a(5, ErrorCode.ERROR_PAGE_LOAD_ERROR);
            C2313g.m10138b(SDKConstants.TAG, "ShowAd:" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public synchronized C2307a.b m10278q() {
        return this.f8784i;
    }

    /* renamed from: r */
    private void m10279r() {
        if (this.f8789n.hasMessages(4)) {
            C2313g.m10136a(SDKConstants.TAG, "移除关闭广告msg");
            this.f8789n.removeMessages(4);
            this.f8796u = true;
        }
    }

    /* renamed from: s */
    private void m10280s() {
        if (this.f8796u) {
            C2313g.m10136a(SDKConstants.TAG, "添加关闭广告msg");
            this.f8789n.m10305a(4, 2000);
        }
    }

    @Override // com.iflytek.voiceads.view.HandlerC2345b.a
    /* renamed from: a */
    public void mo10281a() {
        m10277p();
    }

    /* renamed from: a */
    public void m10282a(int i) {
        if (this.f8777b == null) {
            return;
        }
        setVisibility(i);
        this.f8777b.setVisibility(i);
        for (int i2 = 0; i2 < this.f8777b.getChildCount(); i2++) {
            this.f8777b.getChildAt(i2).setVisibility(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m10283a(int i, int i2) {
        C2313g.m10136a(SDKConstants.TAG, "AdView setLayoutParam()");
        RelativeLayout.LayoutParams m10288b = m10288b(i, i2);
        if (getParent() == null) {
            this.f8777b.removeAllViews();
            this.f8777b.addView(this, m10288b);
        }
    }

    @Override // com.iflytek.voiceads.view.HandlerC2345b.a
    /* renamed from: a */
    public void mo10284a(Message message) {
        try {
            mo10294d(message);
        } catch (AdError e) {
            this.f8787l.m10311a(5, e.getErrorCode());
        } catch (Exception e2) {
            this.f8787l.m10311a(5, ErrorCode.ERROR_NETWORK);
            C2313g.m10138b(SDKConstants.TAG, "Request:" + e2.getMessage());
        }
    }

    /* renamed from: a */
    public synchronized void mo10285a(IFLYAdListener iFLYAdListener) {
        if (iFLYAdListener == null) {
            C2313g.m10138b(SDKConstants.TAG, "invalid IFLYAdListener!");
        } else if (C2307a.c.exit == this.f8787l.m10309a()) {
            C2313g.m10136a(SDKConstants.TAG, "ad is exited!");
        } else if (C2307a.c.init == this.f8787l.m10309a() || C2307a.c.end == this.f8787l.m10309a()) {
            if (this.f8780e.m10033c(AdKeys.DEBUG_MODE)) {
                C2313g.m10137a(true);
            } else {
                C2313g.m10137a(false);
            }
            this.f8785j = iFLYAdListener;
            this.f8789n.m10307a(iFLYAdListener);
            this.f8787l.m10310a(1);
        } else {
            C2313g.m10136a(SDKConstants.TAG, "ad is requesting, please retry a little later!");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m10286a(String str) {
        int i = this.f8782g.f8388M;
        C2313g.m10136a(SDKConstants.TAG, "clickAd: actionType=" + i);
        if (!URLUtil.isValidUrl(str) || str.equals("about:blank")) {
            C2313g.m10136a(SDKConstants.TAG, "Invalid click url: " + str);
            return;
        }
        switch (i) {
            case 3:
                C2261d m9914a = C2261d.m9914a(this.f8776a.getApplicationContext());
                m9914a.m9948a(this.f8785j);
                m9914a.m9949a(this.f8780e.m10033c(AdKeys.DOWNLOAD_ALERT));
                m9914a.m9946a(this.f8776a, this.f8781f.f8421f, str);
                C2313g.m10136a(SDKConstants.TAG, "AdView startDownload");
                break;
            default:
                C2302e.m10109a(this.f8776a, str, this.f8780e, this.f8781f.f8418c);
                break;
        }
        C2313g.m10136a(SDKConstants.TAG, "点击监控");
        try {
            if (this.f8782g.f8385J != null && this.f8782g.f8385J.has("click_urls")) {
                C2316j.m10151a(this.f8782g.f8385J.optJSONArray("click_urls"), this.f8776a, 2);
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "html click:" + e.getMessage());
        }
        this.f8785j.onAdClick();
    }

    /* renamed from: a */
    public void m10287a(String str, Object obj) {
        this.f8780e.m10028a(str, obj);
    }

    /* renamed from: b */
    protected RelativeLayout.LayoutParams m10288b(int i, int i2) {
        return new RelativeLayout.LayoutParams(i, i2);
    }

    @Override // com.iflytek.voiceads.view.HandlerC2345b.a
    /* renamed from: b */
    public void mo10289b() {
        this.f8790o.sendEmptyMessage(1);
        this.f8787l.m10314a(C2307a.c.end);
        try {
            if (this.f8782g.f8385J != null && this.f8782g.f8385J.has("impress_urls")) {
                JSONArray m10150a = C2316j.m10150a(this.f8780e.m10035e(AdKeys.AUCTION_PRICE), this.f8782g.f8385J.optJSONArray("impress_urls"));
                if (m10150a != null) {
                    C2316j.m10151a(m10150a, this.f8776a, 1);
                } else {
                    C2313g.m10138b(SDKConstants.TAG, "impArray null");
                }
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "Show:" + e.getMessage());
        }
        C2313g.m10136a(SDKConstants.TAG, "procMsgShow successfully!");
    }

    @Override // com.iflytek.voiceads.view.HandlerC2345b.a
    /* renamed from: b */
    public void mo10290b(Message message) {
        this.f8790o.sendEmptyMessage(2);
        C2313g.m10136a(SDKConstants.TAG, "procMsgTimeout " + message.obj);
    }

    @Override // com.iflytek.voiceads.view.HandlerC2345b.a
    /* renamed from: c */
    public void mo10291c() {
        this.f8785j.onAdClose();
        m10299i();
        this.f8776a = null;
    }

    @Override // com.iflytek.voiceads.view.HandlerC2345b.a
    /* renamed from: c */
    public void mo10292c(Message message) {
        C2313g.m10136a(SDKConstants.TAG, "procMsgEnd:" + message.obj);
        int i = 0;
        if (message.obj != null) {
            AdError adError = new AdError(((Integer) message.obj).intValue());
            i = adError.getErrorCode();
            this.f8789n.m10306a(1, adError);
        }
        if (70403 == i || !this.f8780e.m10033c(AdKeys.BANNER_RECYCLE)) {
            return;
        }
        mo10298h();
    }

    /* renamed from: d */
    protected void m10293d() {
        if (C2307a.a.BANNER != this.f8783h) {
            requestFocus();
        }
        setFocusable(true);
        setFocusableInTouchMode(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public synchronized void mo10294d(Message message) throws Exception {
        C2303f.m10110a(this.f8776a.getApplicationContext(), this.f8780e, this.f8792q);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public int m10295e() {
        int m10034d = this.f8780e.m10034d(AdKeys.BANNER_INTERVAL);
        if (m10034d < 15 || m10034d > 40) {
            return 30000;
        }
        return m10034d * 1000;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public boolean m10296f() {
        return this.f8780e.m10033c(AdKeys.BANNER_RECYCLE);
    }

    /* renamed from: g */
    public synchronized void m10297g() {
        this.f8787l.m10311a(3, ErrorCode.SUCCESS);
    }

    /* renamed from: h */
    protected synchronized void mo10298h() {
    }

    /* renamed from: i */
    protected void m10299i() {
        this.f8787l.removeCallbacksAndMessages(null);
        this.f8788m.quit();
    }

    /* renamed from: j */
    protected void mo10300j() {
    }

    /* renamed from: k */
    protected abstract void mo10301k();

    /* renamed from: l */
    public void m10302l() {
        mo10291c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: m */
    public void m10303m() {
        if (m10278q() != C2307a.b.success) {
            int visibility = getVisibility();
            m10269a(C2307a.b.success);
            this.f8785j.onAdReceive();
            C2313g.m10136a(SDKConstants.TAG, "onAdPageFinished:" + visibility);
        }
    }

    @Override // android.webkit.WebView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        switch (i) {
            case 4:
                if (C2307a.a.INTERSTITIAL.equals(this.f8783h) && this.f8780e.m10033c(AdKeys.BACK_KEY_ENABLE)) {
                    this.f8786k.onAdDestroy();
                    this.f8785j.onAdClose();
                    return true;
                }
                break;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 1:
                this.f8778c.m10016a(true);
                break;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        this.f8791p = i;
        C2313g.m10136a(SDKConstants.TAG, "ad view visibility=" + this.f8791p);
        if (this.f8791p == 8 || this.f8791p == 4) {
            m10279r();
        }
        if (this.f8791p == 0) {
            m10280s();
        }
    }
}
