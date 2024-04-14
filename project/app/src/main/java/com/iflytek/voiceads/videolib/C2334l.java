package com.iflytek.voiceads.videolib;

import android.media.AudioManager;
import com.iflytek.voiceads.utils.C2313g;

/* renamed from: com.iflytek.voiceads.videolib.l */
/* loaded from: assets/AdDex.4.0.1.dex */
class C2334l implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a */
    final /* synthetic */ JZPlayer f8768a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2334l(JZPlayer jZPlayer) {
        this.f8768a = jZPlayer;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i) {
        switch (i) {
            case -3:
            case 0:
            case 1:
            default:
                return;
            case -2:
                try {
                    JZPlayer m10265c = C2337o.m10265c();
                    if (m10265c == null || m10265c.f8697g != 3) {
                        return;
                    }
                    m10265c.f8703m.performClick();
                    return;
                } catch (Exception e) {
                    C2313g.m10138b("JZVideoPlayer", "audio focus" + e.getMessage());
                    return;
                }
            case -1:
                this.f8768a.m10175a();
                return;
        }
    }
}
