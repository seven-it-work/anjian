package com.cyjh.common.util;

import android.content.Context;
import android.content.res.Resources;
import com.cyjh.common.C1130R;

/* renamed from: com.cyjh.common.util.l */
/* loaded from: classes.dex */
public final class C1169l {

    /* renamed from: a */
    public static final int f4080a = 1440;

    /* renamed from: b */
    public static final int f4081b = 60;

    /* renamed from: a */
    public static String m4449a(Context context, long j) {
        Resources resources = context.getResources();
        resources.getString(C1130R.string.optionfragment_duetime_day);
        return j >= 1440 ? String.format(resources.getString(C1130R.string.optionfragment_duetime_day), Long.valueOf(j / 1440), Long.valueOf((j % 1440) / 60), Long.valueOf(j % 60)) : (j <= 60 || j >= 1440) ? (j > 60 || j <= 0) ? j <= 0 ? resources.getString(C1130R.string.optionfragment_duetime_no) : "" : String.format(resources.getString(C1130R.string.optionfragment_duetime_minute), Long.valueOf(j)) : String.format(resources.getString(C1130R.string.optionfragment_duetime_hour), Long.valueOf(j / 60), Long.valueOf(j % 60));
    }
}
