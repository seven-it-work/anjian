package com.cyjh.common.util.toast;

import android.content.res.Resources;
import com.cyjh.elfin.p073a.C1225b;

/* renamed from: com.cyjh.common.util.toast.d */
/* loaded from: classes.dex */
public final class C1181d {
    /* renamed from: a */
    private static int m4747a() {
        Resources resources = C1194q.m5135a().getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", C1225b.f4510b));
    }

    /* renamed from: b */
    private static int m4748b() {
        Resources resources = C1194q.m5135a().getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", C1225b.f4510b);
        if (identifier != 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }
}
