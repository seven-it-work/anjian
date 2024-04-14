package com.iflytek.voiceads.p171b;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.utils.C2313g;
import java.io.File;
import java.io.FileOutputStream;

/* renamed from: com.iflytek.voiceads.b.d */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2215d {

    /* renamed from: a */
    private String f8310a;

    /* renamed from: b */
    private Context f8311b;

    public C2215d(Context context, String str) {
        this.f8311b = context;
        this.f8310a = str;
    }

    /* renamed from: a */
    private String m9790a(String str) {
        return str.split("/")[r0.length - 1];
    }

    /* renamed from: b */
    private String m9791b() {
        return m9792c() + File.separator + "ifly_image_cache";
    }

    /* renamed from: c */
    private String m9792c() {
        File cacheDir = this.f8311b.getCacheDir();
        return (cacheDir == null || TextUtils.isEmpty(cacheDir.getPath())) ? "" : cacheDir.getPath();
    }

    /* renamed from: a */
    public Bitmap m9793a() {
        String str = m9792c() + File.separator + "ifly_image_cache" + File.separator + m9790a(this.f8310a) + ".cache";
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        if (!file.exists()) {
            return null;
        }
        Bitmap decodeFile = BitmapFactory.decodeFile(str);
        if (decodeFile != null) {
            return decodeFile;
        }
        file.delete();
        return null;
    }

    /* renamed from: a */
    public void m9794a(Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        String str = m9790a(this.f8310a) + ".cache";
        String m9791b = m9791b();
        File file = new File(m9791b);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(m9791b + File.separator + str);
        try {
            file2.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            if (this.f8310a.contains("png")) {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            } else if (this.f8310a.contains("jpg")) {
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            }
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "saveBitmap:" + e.getMessage());
        }
    }
}
