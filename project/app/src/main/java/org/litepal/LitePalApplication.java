package org.litepal;

import android.app.Application;
import android.content.Context;
import org.litepal.p239c.C3022c;

/* loaded from: classes.dex */
public class LitePalApplication extends Application {

    /* renamed from: a */
    public static Context f10932a;

    public LitePalApplication() {
        f10932a = this;
    }

    /* renamed from: a */
    public static Context m13404a() {
        if (f10932a == null) {
            throw new C3022c(C3022c.APPLICATION_CONTEXT_IS_NULL);
        }
        return f10932a;
    }
}
