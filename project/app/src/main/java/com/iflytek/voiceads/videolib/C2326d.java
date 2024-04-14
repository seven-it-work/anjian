package com.iflytek.voiceads.videolib;

import android.media.MediaPlayer;
import android.view.Surface;
import com.iflytek.voiceads.utils.C2313g;
import java.util.Map;

/* renamed from: com.iflytek.voiceads.videolib.d */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2326d extends AbstractC2324b implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {

    /* renamed from: b */
    public MediaPlayer f8756b;

    @Override // com.iflytek.voiceads.videolib.AbstractC2324b
    /* renamed from: a */
    public void mo10237a() {
        if (this.f8756b != null) {
            try {
                this.f8756b.start();
            } catch (Exception e) {
                C2313g.m10138b("JZVideoPlayer", "media start" + e.getMessage());
            }
        }
    }

    @Override // com.iflytek.voiceads.videolib.AbstractC2324b
    /* renamed from: a */
    public void mo10238a(long j) {
        if (this.f8756b != null) {
            try {
                this.f8756b.seekTo((int) j);
            } catch (Exception e) {
                C2313g.m10138b("JZVideoPlayer", "media seek:" + e.getMessage());
            }
        }
    }

    @Override // com.iflytek.voiceads.videolib.AbstractC2324b
    /* renamed from: a */
    public void mo10239a(Surface surface) {
        if (this.f8756b != null) {
            this.f8756b.setSurface(surface);
        }
    }

    @Override // com.iflytek.voiceads.videolib.AbstractC2324b
    /* renamed from: a */
    public void mo10240a(boolean z) {
        if (this.f8756b != null) {
            if (z) {
                this.f8756b.setVolume(0.0f, 0.0f);
            } else {
                this.f8756b.setVolume(1.0f, 1.0f);
            }
        }
    }

    @Override // com.iflytek.voiceads.videolib.AbstractC2324b
    /* renamed from: b */
    public void mo10241b() {
        try {
            this.f8756b = new MediaPlayer();
            this.f8756b.setVolume(0.0f, 0.0f);
            this.f8756b.setAudioStreamType(3);
            this.f8756b.setLooping(this.f8743a.f8741f);
            this.f8756b.setOnPreparedListener(this);
            this.f8756b.setOnCompletionListener(this);
            this.f8756b.setOnBufferingUpdateListener(this);
            this.f8756b.setScreenOnWhilePlaying(true);
            this.f8756b.setOnSeekCompleteListener(this);
            this.f8756b.setOnErrorListener(this);
            this.f8756b.setOnInfoListener(this);
            this.f8756b.setOnVideoSizeChangedListener(this);
            MediaPlayer.class.getDeclaredMethod("setDataSource", String.class, Map.class).invoke(this.f8756b, this.f8743a.m10234a().toString(), this.f8743a.f8740e);
            this.f8756b.prepareAsync();
        } catch (Exception e) {
            C2313g.m10138b("JZVideoPlayer", "media prepare:" + e.getMessage());
        }
    }

    @Override // com.iflytek.voiceads.videolib.AbstractC2324b
    /* renamed from: c */
    public void mo10242c() {
        if (this.f8756b != null) {
            try {
                this.f8756b.pause();
            } catch (Exception e) {
                C2313g.m10138b("JZVideoPlayer", "media pause:" + e.getMessage());
            }
        }
    }

    @Override // com.iflytek.voiceads.videolib.AbstractC2324b
    /* renamed from: d */
    public void mo10243d() {
        if (this.f8756b != null) {
            this.f8756b.release();
        }
    }

    @Override // com.iflytek.voiceads.videolib.AbstractC2324b
    /* renamed from: e */
    public long mo10244e() {
        if (this.f8756b != null) {
            return this.f8756b.getCurrentPosition();
        }
        return 0L;
    }

    @Override // com.iflytek.voiceads.videolib.AbstractC2324b
    /* renamed from: f */
    public long mo10245f() {
        if (this.f8756b != null) {
            return this.f8756b.getDuration();
        }
        return 0L;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        TextureViewSurfaceTextureListenerC2325c.m10246a().f8754k.post(new RunnableC2329g(this, i));
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        TextureViewSurfaceTextureListenerC2325c.m10246a().f8754k.post(new RunnableC2328f(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        TextureViewSurfaceTextureListenerC2325c.m10246a().f8754k.post(new RunnableC2331i(this, i, i2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        TextureViewSurfaceTextureListenerC2325c.m10246a().f8754k.post(new RunnableC2332j(this, i));
        return false;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        mediaPlayer.start();
        String lowerCase = this.f8743a.m10234a().toString().toLowerCase();
        if (lowerCase.contains("mp3") || lowerCase.contains("wav")) {
            TextureViewSurfaceTextureListenerC2325c.m10246a().f8754k.post(new RunnableC2327e(this));
        }
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(MediaPlayer mediaPlayer) {
        TextureViewSurfaceTextureListenerC2325c.m10246a().f8754k.post(new RunnableC2330h(this));
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        TextureViewSurfaceTextureListenerC2325c.m10246a().f8750g = i;
        TextureViewSurfaceTextureListenerC2325c.m10246a().f8751h = i2;
        TextureViewSurfaceTextureListenerC2325c.m10246a().f8754k.post(new RunnableC2333k(this));
    }
}
