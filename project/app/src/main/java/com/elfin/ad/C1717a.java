package com.elfin.ad;

import android.content.Context;
import com.iflytek.voiceads.dex.DexLoader;

/* renamed from: com.elfin.ad.a */
/* loaded from: classes.dex */
public class C1717a {

    /* renamed from: b */
    private static volatile C1717a f6725b;

    /* renamed from: a */
    public Context f6726a;

    /* renamed from: a */
    public static C1717a m7823a() {
        if (f6725b == null) {
            synchronized (C1717a.class) {
                if (f6725b == null) {
                    f6725b = new C1717a();
                }
            }
        }
        return f6725b;
    }

    /* renamed from: b */
    private Context m7824b() {
        return this.f6726a;
    }

    /* renamed from: a */
    public final void m7825a(Context context) {
        this.f6726a = context;
        DexLoader.initIFLYADModule(context);
    }
}
