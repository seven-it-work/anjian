package com.iflytek.voiceads.p171b;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.iflytek.voiceads.p171b.C2216e;

/* renamed from: com.iflytek.voiceads.b.a */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2212a {

    /* renamed from: c */
    private C2215d f8304c;

    /* renamed from: d */
    private String f8305d;

    /* renamed from: e */
    private a f8306e;

    /* renamed from: a */
    C2216e.b f8302a = new C2213b(this);

    /* renamed from: f */
    private final int f8307f = 1;

    /* renamed from: b */
    Handler f8303b = new HandlerC2214c(this, Looper.getMainLooper());

    /* renamed from: com.iflytek.voiceads.b.a$a */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public interface a {
        /* renamed from: a */
        void mo9787a(Bitmap bitmap);
    }

    public C2212a(Context context, String str) {
        this.f8305d = str;
        this.f8304c = new C2215d(context, str);
    }

    /* renamed from: a */
    public void m9786a(a aVar) {
        this.f8306e = aVar;
        if (TextUtils.isEmpty(this.f8305d)) {
            aVar.mo9787a(null);
            return;
        }
        Bitmap m9793a = this.f8304c.m9793a();
        if (m9793a != null) {
            aVar.mo9787a(m9793a);
        } else {
            new C2216e(this.f8305d, this.f8302a).m9796a();
        }
    }
}
