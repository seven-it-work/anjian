package com.cyjh.mobileanjian.screencap;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.media.projection.MediaProjectionManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;

/* loaded from: classes.dex */
public class ForScreenShotActivity extends Activity {

    /* renamed from: a */
    public static final int f6474a = 32896;

    /* renamed from: b */
    private static final String f6475b = "ForScreenShotActivity";

    /* renamed from: a */
    private void m7554a() {
        if (Build.VERSION.SDK_INT >= 21) {
            startActivityForResult(((MediaProjectionManager) getSystemService("media_projection")).createScreenCaptureIntent(), f6474a);
        } else {
            Log.e(f6475b, "The API version is too low,required is >= 21.");
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 32896) {
            return;
        }
        if (i2 != -1 || intent == null) {
            m7554a();
            setResult(0);
        } else {
            setResult(-1);
            ScreenShoterV3.getInstance().init(this, intent);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getWindow().setDimAmount(0.0f);
        m7554a();
    }
}
