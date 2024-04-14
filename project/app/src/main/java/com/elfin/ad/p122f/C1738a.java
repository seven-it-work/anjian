package com.elfin.ad.p122f;

import android.content.Context;
import android.content.Intent;
import com.elfin.ad.activity.FullScreenTwoAdActivity;

/* renamed from: com.elfin.ad.f.a */
/* loaded from: classes.dex */
public final class C1738a {
    /* renamed from: a */
    private static void m7969a(Context context) {
        Intent intent = new Intent(context, (Class<?>) FullScreenTwoAdActivity.class);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    /* renamed from: a */
    private static void m7970a(Context context, String str, String str2) {
        try {
            Intent intent = new Intent(context, Class.forName("com.cyjh.elfin.ui.activity.H5LinkJumpPageActivity"));
            intent.addFlags(268435456);
            intent.putExtra("com.cyjh.elfin.ui.activity.H5LinkJumpPageActivity", str);
            intent.putExtra("H5LinkJumpPageActivity", str2);
            context.startActivity(intent);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    private static void m7971b(Context context) {
        try {
            Intent intent = new Intent(context, Class.forName("com.cyjh.elfin.ui.activity.ElfinFreeActivity"));
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
