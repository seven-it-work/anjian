package com.cyjh.common.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.provider.MediaStore;
import android.support.v4.app.Fragment;

/* renamed from: com.cyjh.common.util.i */
/* loaded from: classes.dex */
public final class C1166i {

    /* renamed from: a */
    private static final String f4077a = "ElfinCompat";

    /* renamed from: a */
    private static Intent m4431a(Context context) {
        Intent intent;
        if (Build.VERSION.SDK_INT >= 29 && context.getApplicationInfo().targetSdkVersion >= 29) {
            intent = new Intent("android.intent.action.OPEN_DOCUMENT");
        } else {
            if (Build.VERSION.SDK_INT >= 19) {
                intent = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
                intent.addFlags(3);
                intent.setType("image/*");
                return intent;
            }
            intent = new Intent("android.intent.action.GET_CONTENT");
        }
        intent.addCategory("android.intent.category.OPENABLE");
        intent.addFlags(3);
        intent.setType("image/*");
        return intent;
    }

    /* renamed from: a */
    private static void m4432a(Activity activity, int i) {
        activity.startActivityForResult(m4431a(activity), i);
    }

    /* renamed from: a */
    private static void m4433a(Fragment fragment, int i) {
        fragment.startActivityForResult(m4431a(fragment.getActivity()), i);
    }
}
