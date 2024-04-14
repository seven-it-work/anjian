package com.iflytek.voiceads.view;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.iflytek.voiceads.p171b.C2212a;

/* renamed from: com.iflytek.voiceads.view.g */
/* loaded from: assets/AdDex.4.0.1.dex */
class C2350g implements C2212a.a {

    /* renamed from: a */
    final /* synthetic */ ImageView f8818a;

    /* renamed from: b */
    final /* synthetic */ InterstitialAdView f8819b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2350g(InterstitialAdView interstitialAdView, ImageView imageView) {
        this.f8819b = interstitialAdView;
        this.f8818a = imageView;
    }

    @Override // com.iflytek.voiceads.p171b.C2212a.a
    /* renamed from: a */
    public void mo9787a(Bitmap bitmap) {
        if (bitmap != null) {
            this.f8818a.setImageBitmap(bitmap);
        }
    }
}
