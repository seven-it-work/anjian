package com.didi.virtualapk.delegate;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.support.annotation.Nullable;

/* loaded from: classes.dex */
public class StubActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(getPackageName());
        if (launchIntentForPackage == null) {
            launchIntentForPackage = new Intent("android.intent.action.MAIN");
            launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
            launchIntentForPackage.setPackage(getPackageName());
            ResolveInfo resolveActivity = getPackageManager().resolveActivity(launchIntentForPackage, 0);
            if (resolveActivity != null) {
                launchIntentForPackage.setClassName(this, resolveActivity.activityInfo.name);
            }
        }
        startActivity(launchIntentForPackage);
        finish();
    }
}
