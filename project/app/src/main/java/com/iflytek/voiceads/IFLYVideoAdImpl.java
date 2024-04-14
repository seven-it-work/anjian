package com.iflytek.voiceads;

import android.content.Context;
import android.view.ViewGroup;
import com.iflytek.voiceads.listener.IFLYVideoListener;
import com.iflytek.voiceads.p181e.C2278a;

/* loaded from: assets/AdDex.4.0.1.dex */
public class IFLYVideoAdImpl extends IFLYVideoAd {

    /* renamed from: a */
    private C2278a f8296a;

    public IFLYVideoAdImpl(Context context, String str, int i, IFLYVideoListener iFLYVideoListener) {
        this.f8296a = new C2278a(context, str, i, iFLYVideoListener);
    }

    @Override // com.iflytek.voiceads.IFLYVideoAd
    public boolean backPressed() {
        if (this.f8296a != null) {
            return this.f8296a.m10006j();
        }
        return false;
    }

    @Override // com.iflytek.voiceads.IFLYVideoAd
    public void cacheVideo() {
        if (this.f8296a != null) {
            this.f8296a.m9996b();
        }
    }

    @Override // com.iflytek.voiceads.IFLYVideoAd
    public ViewGroup getVideoView() {
        if (this.f8296a != null) {
            return this.f8296a.f8543a;
        }
        return null;
    }

    @Override // com.iflytek.voiceads.IFLYVideoAd
    public boolean isPlaying() {
        if (this.f8296a != null) {
            return this.f8296a.m10005i();
        }
        return false;
    }

    @Override // com.iflytek.voiceads.IFLYVideoAd
    public void loadAd() {
        if (this.f8296a != null) {
            this.f8296a.m9992a();
        }
    }

    @Override // com.iflytek.voiceads.IFLYVideoAd
    public void onPause() {
        if (this.f8296a != null) {
            this.f8296a.m10003g();
        }
    }

    @Override // com.iflytek.voiceads.IFLYVideoAd
    public void onResume() {
        if (this.f8296a != null) {
            this.f8296a.m10004h();
        }
    }

    @Override // com.iflytek.voiceads.IFLYVideoAd
    public void release() {
        if (this.f8296a != null) {
            this.f8296a.m10001e();
        }
    }

    @Override // com.iflytek.voiceads.IFLYVideoAd
    public void setDirectJump(boolean z) {
        if (this.f8296a != null) {
            this.f8296a.m9999c(z);
        }
    }

    @Override // com.iflytek.voiceads.IFLYVideoAd
    public void setParameter(String str, Object obj) {
        if (this.f8296a != null) {
            this.f8296a.m9993a(str, obj);
        }
    }

    @Override // com.iflytek.voiceads.IFLYVideoAd
    public void setVolume(boolean z) {
        if (this.f8296a != null) {
            this.f8296a.m9994a(z);
        }
    }

    @Override // com.iflytek.voiceads.IFLYVideoAd
    public void setWifiTip(boolean z) {
        if (this.f8296a != null) {
            this.f8296a.m9997b(z);
        }
    }

    @Override // com.iflytek.voiceads.IFLYVideoAd
    public void showAd(Object... objArr) {
        if (this.f8296a != null) {
            this.f8296a.m9995a(objArr);
        }
    }

    @Override // com.iflytek.voiceads.IFLYVideoAd
    public void skipAd() {
        if (this.f8296a != null) {
            this.f8296a.m10002f();
        }
    }

    @Override // com.iflytek.voiceads.IFLYVideoAd
    public void startPlay() {
        if (this.f8296a != null) {
            this.f8296a.m10000d();
        }
    }

    @Override // com.iflytek.voiceads.IFLYVideoAd
    public void videoDownScroll() {
        if (this.f8296a != null) {
            this.f8296a.m10008l();
        }
    }

    @Override // com.iflytek.voiceads.IFLYVideoAd
    public void videoUpScroll() {
        if (this.f8296a != null) {
            this.f8296a.m10007k();
        }
    }
}
