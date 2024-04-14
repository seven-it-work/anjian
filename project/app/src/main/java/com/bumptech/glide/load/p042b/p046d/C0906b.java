package com.bumptech.glide.load.p042b.p046d;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.load.EnumC0869b;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import com.bumptech.glide.load.p042b.p044b.InterfaceC0897j;
import com.bumptech.glide.load.p042b.p046d.C0908d;
import com.bumptech.glide.util.C1086k;
import java.util.HashMap;

/* renamed from: com.bumptech.glide.load.b.d.b */
/* loaded from: classes.dex */
public final class C0906b {

    /* renamed from: a */
    public final InterfaceC0897j f2665a;

    /* renamed from: b */
    public final InterfaceC0875e f2666b;

    /* renamed from: c */
    public final EnumC0869b f2667c;

    /* renamed from: d */
    public final Handler f2668d = new Handler(Looper.getMainLooper());

    /* renamed from: e */
    public RunnableC0905a f2669e;

    public C0906b(InterfaceC0897j interfaceC0897j, InterfaceC0875e interfaceC0875e, EnumC0869b enumC0869b) {
        this.f2665a = interfaceC0897j;
        this.f2666b = interfaceC0875e;
        this.f2667c = enumC0869b;
    }

    /* renamed from: a */
    private static int m2598a(C0908d c0908d) {
        return C1086k.m3475a(c0908d.f2675b, c0908d.f2676c, c0908d.f2677d);
    }

    @VisibleForTesting
    /* renamed from: a */
    private C0907c m2599a(C0908d... c0908dArr) {
        long mo2554b = (this.f2665a.mo2554b() - this.f2665a.mo2552a()) + this.f2666b.mo2465a();
        int i = 0;
        for (C0908d c0908d : c0908dArr) {
            i += c0908d.f2678e;
        }
        float f = ((float) mo2554b) / i;
        HashMap hashMap = new HashMap();
        for (C0908d c0908d2 : c0908dArr) {
            hashMap.put(c0908d2, Integer.valueOf(Math.round(c0908d2.f2678e * f) / C1086k.m3475a(c0908d2.f2675b, c0908d2.f2676c, c0908d2.f2677d)));
        }
        return new C0907c(hashMap);
    }

    /* renamed from: a */
    private void m2600a(C0908d.a... aVarArr) {
        if (this.f2669e != null) {
            this.f2669e.f2657f = true;
        }
        C0908d[] c0908dArr = new C0908d[aVarArr.length];
        for (int i = 0; i < aVarArr.length; i++) {
            C0908d.a aVar = aVarArr[i];
            if (aVar.f2681c == null) {
                aVar.f2681c = this.f2667c == EnumC0869b.PREFER_ARGB_8888 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
            }
            c0908dArr[i] = new C0908d(aVar.f2679a, aVar.f2680b, aVar.f2681c, aVar.f2682d);
        }
        long mo2554b = (this.f2665a.mo2554b() - this.f2665a.mo2552a()) + this.f2666b.mo2465a();
        int i2 = 0;
        for (C0908d c0908d : c0908dArr) {
            i2 += c0908d.f2678e;
        }
        float f = ((float) mo2554b) / i2;
        HashMap hashMap = new HashMap();
        for (C0908d c0908d2 : c0908dArr) {
            hashMap.put(c0908d2, Integer.valueOf(Math.round(c0908d2.f2678e * f) / C1086k.m3475a(c0908d2.f2675b, c0908d2.f2676c, c0908d2.f2677d)));
        }
        this.f2669e = new RunnableC0905a(this.f2666b, this.f2665a, new C0907c(hashMap));
        this.f2668d.post(this.f2669e);
    }
}
