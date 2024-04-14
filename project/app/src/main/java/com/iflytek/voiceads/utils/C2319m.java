package com.iflytek.voiceads.utils;

import android.content.Context;
import android.media.MediaRecorder;
import com.cyjh.common.p067b.InterfaceC1133a;
import java.io.File;

/* renamed from: com.iflytek.voiceads.utils.m */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2319m {

    /* renamed from: a */
    private Context f8669a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2319m(Context context) {
        this.f8669a = context;
    }

    /* renamed from: a */
    public boolean m10159a() throws Throwable {
        File file = null;
        MediaRecorder mediaRecorder = new MediaRecorder();
        try {
            try {
                file = File.createTempFile("permission", InterfaceC1133a.f3934aI);
                mediaRecorder.setAudioSource(1);
                mediaRecorder.setOutputFormat(3);
                mediaRecorder.setAudioEncoder(1);
                mediaRecorder.setOutputFile(file.getAbsolutePath());
                mediaRecorder.prepare();
                mediaRecorder.start();
                try {
                    mediaRecorder.stop();
                } catch (Exception e) {
                }
                try {
                    mediaRecorder.release();
                } catch (Exception e2) {
                }
                if (file != null && file.exists()) {
                    file.delete();
                }
            } finally {
            }
        } catch (Throwable th) {
            r0 = this.f8669a.getPackageManager().hasSystemFeature("android.hardware.microphone") ? false : true;
            try {
                mediaRecorder.stop();
            } catch (Exception e3) {
            }
            try {
                mediaRecorder.release();
            } catch (Exception e4) {
            }
            if (file != null && file.exists()) {
                file.delete();
            }
        }
        return r0;
    }
}
