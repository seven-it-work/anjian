package com.cyjh.mobileanjian.ipc.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import com.cyjh.mqsdk.C1696R;
import java.io.File;
import java.io.FileInputStream;

/* renamed from: com.cyjh.mobileanjian.ipc.view.b */
/* loaded from: classes.dex */
public final class C1668b {

    /* renamed from: a */
    WindowManager f6467a;

    /* renamed from: b */
    View f6468b;

    /* renamed from: c */
    private Handler f6469c;

    /* renamed from: d */
    private Context f6470d;

    /* renamed from: e */
    private Handler.Callback f6471e = new Handler.Callback() { // from class: com.cyjh.mobileanjian.ipc.view.b.1
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            C1668b.this.f6467a.removeView(C1668b.this.f6468b);
            return false;
        }
    };

    public C1668b(Context context) {
        this.f6470d = context;
        this.f6467a = (WindowManager) context.getSystemService("window");
    }

    /* renamed from: a */
    public final void m7553a(int i, int i2, String str) {
        Bitmap decodeStream;
        try {
            if (new File(str).exists() && (decodeStream = BitmapFactory.decodeStream(new FileInputStream(str))) != null) {
                int width = decodeStream.getWidth();
                int height = decodeStream.getHeight();
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                if (Build.VERSION.SDK_INT >= 26) {
                    layoutParams.type = 2038;
                } else {
                    layoutParams.type = 2002;
                }
                layoutParams.format = 1;
                layoutParams.gravity = 51;
                layoutParams.flags = 792;
                layoutParams.width = width;
                layoutParams.height = height;
                layoutParams.x = i - (width / 2);
                layoutParams.y = i2 - (height / 2);
                this.f6469c = new Handler(this.f6470d.getMainLooper(), this.f6471e);
                this.f6468b = LayoutInflater.from(this.f6470d).inflate(C1696R.layout.ui_show_image, (ViewGroup) null);
                ((ImageView) this.f6468b.findViewById(C1696R.id.tap_imageview)).setImageBitmap(decodeStream);
                this.f6467a.addView(this.f6468b, layoutParams);
                this.f6469c.sendEmptyMessageDelayed(0, 1000L);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
