package net.grandcentrix.tray;

import android.content.Context;

@Deprecated
/* loaded from: classes2.dex */
public class TrayAppPreferences extends TrayPreferences {
    private static final int VERSION = 1;

    public TrayAppPreferences(Context context) {
        super(context, context.getPackageName(), 1);
    }
}
