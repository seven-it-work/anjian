package com.iflytek.voiceads.download;

import android.content.Context;
import android.os.Environment;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.utils.C2313g;
import com.iflytek.voiceads.utils.C2318l;
import java.io.File;

/* renamed from: com.iflytek.voiceads.download.c */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2257c {

    /* renamed from: a */
    private static final String f8472a = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "IFlyAdDownload";

    /* renamed from: a */
    public static String m9908a(Context context) {
        try {
            File file = C2318l.m10158a(context, "android.permission.WRITE_EXTERNAL_STORAGE") ? new File(f8472a) : new File(context.getFilesDir().getAbsolutePath() + File.separator + "IFlyAdDownload");
            if (!file.exists()) {
                file.mkdir();
            }
            long j = 0;
            for (File file2 : file.listFiles()) {
                j += file2.length();
            }
            if (j > 314572800) {
                C2247a.m9880a(context).mo9888b();
                for (File file3 : file.listFiles()) {
                    file3.delete();
                }
            }
            return file.getAbsolutePath();
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "get pre path:" + e.getMessage());
            return "";
        }
    }
}
