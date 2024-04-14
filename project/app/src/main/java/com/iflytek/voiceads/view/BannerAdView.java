package com.iflytek.voiceads.view;

import android.content.Context;
import android.os.Message;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.listener.IFLYAdListener;
import com.iflytek.voiceads.listener.InternalListener;
import com.iflytek.voiceads.param.C2293d;
import com.iflytek.voiceads.utils.C2307a;
import com.iflytek.voiceads.utils.C2308b;
import com.iflytek.voiceads.utils.C2313g;

/* loaded from: assets/AdDex.4.0.1.dex */
public class BannerAdView extends AdView {

    /* renamed from: t */
    private boolean f8801t;

    /* renamed from: u */
    private Context f8802u;

    /* renamed from: v */
    private boolean f8803v;

    public BannerAdView(Context context) {
        super(context);
        this.f8801t = false;
        this.f8803v = true;
    }

    public BannerAdView(Context context, RelativeLayout relativeLayout, String str, InternalListener internalListener) {
        super(context, relativeLayout, str, C2307a.a.BANNER, internalListener);
        this.f8801t = false;
        this.f8803v = true;
        this.f8802u = context.getApplicationContext();
    }

    @Override // com.iflytek.voiceads.view.AdView
    /* renamed from: a */
    public synchronized void mo10285a(IFLYAdListener iFLYAdListener) {
        if (!this.f8801t) {
            this.f8801t = true;
            super.mo10285a(iFLYAdListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iflytek.voiceads.view.AdView
    /* renamed from: d */
    public synchronized void mo10294d(Message message) throws Exception {
        if (C2308b.m10113a(this.f8802u) || C2308b.m10118b(this.f8802u)) {
            C2313g.m10136a(SDKConstants.TAG, "Ad is invisible, please check the app's state!");
            this.f8787l.m10312a(this.f8787l.obtainMessage(1), m10295e());
        } else {
            ViewGroup viewGroup = (ViewGroup) this.f8777b.getParent();
            if (viewGroup == null) {
                C2313g.m10136a(SDKConstants.TAG, "Ad has no parent!");
            } else {
                if (this.f8803v) {
                    this.f8803v = false;
                } else if (!this.f8777b.isShown()) {
                    C2313g.m10136a(SDKConstants.TAG, "Ad is invisible, recycle delayed!");
                    this.f8787l.m10312a(this.f8787l.obtainMessage(1), m10295e());
                } else if (!C2308b.m10115a(this.f8802u, viewGroup)) {
                    C2313g.m10136a(SDKConstants.TAG, "Ad is invisible,not in screen, recycle delayed!");
                    this.f8787l.m10312a(this.f8787l.obtainMessage(1), m10295e());
                }
                super.mo10294d(message);
            }
        }
    }

    @Override // com.iflytek.voiceads.view.AdView
    /* renamed from: h */
    protected synchronized void mo10298h() {
        C2313g.m10136a(SDKConstants.TAG, "recycleLoadAd");
        if (this.f8777b.getParent() == null) {
            C2313g.m10136a(SDKConstants.TAG, "There isn't valid parent widget!");
        } else if (C2307a.c.end != this.f8787l.m10309a()) {
            C2313g.m10136a(SDKConstants.TAG, "Ad is requesting, can't recycle load ad!");
        } else if (m10296f()) {
            this.f8787l.m10312a(this.f8787l.obtainMessage(1), m10295e());
        } else {
            this.f8801t = false;
        }
    }

    @Override // com.iflytek.voiceads.view.AdView
    /* renamed from: k */
    public void mo10301k() {
        int min = Math.min(C2293d.m10042c(this.f8802u), C2293d.m10044d(this.f8802u));
        int m10029b = (this.f8780e.m10029b() * min) / this.f8780e.m10025a();
        this.f8777b.setGravity(17);
        m10283a(min, m10029b);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }
}
