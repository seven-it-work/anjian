package com.elfin.engin.p124b;

import android.content.Context;
import android.util.Log;
import com.cyjh.common.util.C1176s;
import com.elfin.engin.p124b.p125a.InterfaceC1747a;
import java.io.File;

/* renamed from: com.elfin.engin.b.a */
/* loaded from: classes.dex */
public final class C1746a {
    /* renamed from: a */
    private static InterfaceC1747a m7986a(Context context, String str, String str2, String str3) {
        Log.e("a111111", "getScriptModel " + str2 + C1176s.a.f4108a + str + C1176s.a.f4108a + str3);
        File file = new File(str2);
        return (str2 == null || !file.exists() || file.length() <= 0) ? new C1748b(context, str, str3) : new C1749c(context, str2, str3);
    }
}
